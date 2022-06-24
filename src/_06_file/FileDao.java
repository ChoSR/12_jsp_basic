package _06_file;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Vector;

public class FileDao {

	private FileDao() {}
	private static FileDao instance = new FileDao();
	public static FileDao getInstance() {
		return instance;
	}
	
	private Connection conn 		= null;   			
    private PreparedStatement pstmt = null;
    private ResultSet rs 			= null;  			
	
    public Connection getConnection() {
    	
		String dbURL      = "jdbc:mysql://localhost:3306/file_ex?serverTimezone=UTC";                             
        String dbID       = "root";
        String dbPassword = "1234";
        try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			conn = DriverManager.getConnection(dbURL,dbID,dbPassword);
		} catch (Exception e) {
			e.printStackTrace();
		}	
	    return conn;
	}	
	
    
    public void insertFiles(ArrayList<FileDto> fileList) {
    	
    	try {
			
			conn = getConnection();
			
			for (FileDto fileDto : fileList) {
				pstmt = conn.prepareStatement("INSERT INTO FILE VALUES(?, ?, ?, ?, ?, ?, NOW())");
				pstmt.setString(1, fileDto.getUserName());
				pstmt.setString(2, fileDto.getTitle());
				pstmt.setString(3, fileDto.getOriginalFileName());
				pstmt.setString(4, fileDto.getFilesystemName());
				pstmt.setString(5, fileDto.getContentType());
				pstmt.setLong(6, fileDto.getLength());
				pstmt.executeUpdate();
			}
		
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			if (pstmt != null) try {pstmt.close();} catch (SQLException e) {e.printStackTrace();}
			if (conn != null)  try {conn.close();} catch (SQLException e) {e.printStackTrace();}
		}
    }
    
    public ArrayList<FileDto> getFileList() {
    	
    	ArrayList<FileDto> fileList = new ArrayList<FileDto>();
    	
    	try {
			
			conn = getConnection();
		
			pstmt = conn.prepareStatement("SELECT * FROM FILE");
			rs = pstmt.executeQuery();
			
			while (rs.next()) {
				
				FileDto fileDto = new FileDto();
				
				fileDto.setUserName(rs.getString("USER_NAME"));
				fileDto.setTitle(rs.getString("TITLE"));
				fileDto.setOriginalFileName(rs.getString("ORIGINAL_FILE_NAME"));
				fileDto.setFilesystemName(rs.getString("FILESYSTEM_NAME"));
				fileDto.setContentType(rs.getString("CONTENT_TYPE"));
				fileDto.setLength(rs.getLong("LENGTH"));
				fileDto.setFileUploadDate(rs.getDate("FILE_UPLOAD_DATE"));
				
				fileList.add(fileDto);
				
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			if (rs != null)    try {rs.close();} catch (SQLException e) {e.printStackTrace();}
			if (pstmt != null) try {pstmt.close();} catch (SQLException e) {e.printStackTrace();}
			if (conn != null)  try {conn.close();} catch (SQLException e) {e.printStackTrace();}
		}
    	
    	return fileList;
    	
    }
    
    
    
    
	
}
