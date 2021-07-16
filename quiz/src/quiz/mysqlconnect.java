
package quiz;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import javafx.collections.FXCollections;
import javafx.collections.ObservableList;
import javax.swing.JOptionPane;

public class mysqlconnect {
    
    Connection conn = null;
    public static Connection ConnectDb() throws SQLException{
        
        Connection conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/onlinequizplatform","root","");
        return conn;
       
    
    
}}