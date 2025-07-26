package com.myPack;

import java.io.File;
import java.io.IOException;
import java.sql.*;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

import com.databases.Conn;

/**
 * Servlet implementation class FileUploadServlet
 */
@WebServlet("/FileUploadServlet")
@MultipartConfig(
	    fileSizeThreshold = 1024 * 1024 * 2,  // 2MB
	    maxFileSize = 1024 * 1024 * 10,       // 10MB
	    maxRequestSize = 1024 * 1024 * 50     // 50MB
	)
public class FileUploadServlet extends HttpServlet {
	public static final String UPLOAD_DIR = "images";
       
	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		
		response.setContentType("text/html;charset=UTF-8");
		String trainerName = request.getParameter("trainerName");
		String technicalSkills = request.getParameter("technicalSkills");
		String experience = request.getParameter("experience");
		Part part = request.getPart("file");
		String originalFileName = extractFileName(part);
		String contentType = part.getContentType();
		
		// allow only image file
		if(!contentType.startsWith("image/"))
		{
			response.getWriter().println("Error: Only image file are allowed.");
			return;
		}
		// generate unique file name
		String fileExtension = originalFileName.substring(originalFileName.lastIndexOf("."));
		String newFileName = System.currentTimeMillis()+fileExtension;
		
		// build upload path
		String applicationPath = getServletContext().getRealPath("");
		String uploadPath = applicationPath + File.separator + UPLOAD_DIR;
		
		File uploadDir = new File(uploadPath);
        if (!uploadDir.exists()) {
            uploadDir.mkdirs();
        }

        String fullSavePath = uploadPath + File.separator + newFileName;
        part.write(fullSavePath);  // Save file to disk

        String dbFilePath = UPLOAD_DIR + File.separator + newFileName;

        // Save metadata to DB
        try {
            Connection dbs=Conn.getConn();
            PreparedStatement pst = dbs.prepareStatement(
                "insert into trainer(name, skill, experience, filename, path) VALUES (?, ?, ?, ?, ?)"
            );
            pst.setString(1, trainerName);
            pst.setString(2, technicalSkills);
            pst.setString(3, experience);
            pst.setString(4, dbFilePath);
            pst.setString(5, fullSavePath);

            pst.executeUpdate();
           

            // Redirect to view page
            response.sendRedirect("Admin/ViewTrainersData.jsp");

        } catch (Exception e) {
            response.getWriter().println("Error: " + e.getMessage());
            e.printStackTrace();
        }
    }

    // Extract filename from HTTP header
    private String extractFileName(Part part) {
        String contentDisp = part.getHeader("content-disposition");
        for (String token : contentDisp.split(";")) {
            if (token.trim().startsWith("filename")) {
                return token.substring(token.indexOf("=") + 2, token.length() - 1);
            }
        }
        return "";
    }
}
