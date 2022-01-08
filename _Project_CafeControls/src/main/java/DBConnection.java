/*

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

private Connection conn;private PreparedStatement pstmt;private ResultSet rs;private String url="jdbc:oracle:thin:@localhost:1521:orcl"; // DB접속정보
private privateString userid="ora_user";private String passcode="human123";

public void closeConnection(){try{if(pstmt!=null)pstmt.close();if(conn!=null)conn.close();}catch(SQLException e){e.printStackTrace();}}

*/