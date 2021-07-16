/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package quiz;

import com.jfoenix.controls.JFXButton;
import com.jfoenix.controls.JFXPasswordField;
import com.jfoenix.controls.JFXTextField;
import java.io.IOException;
import java.net.URL;
import java.util.ResourceBundle;
import javafx.event.ActionEvent;
import javafx.fxml.FXML;
import javafx.fxml.FXMLLoader;
import javafx.fxml.Initializable;
import javafx.scene.Node;
import javafx.scene.Parent;
import javafx.scene.Scene;
import javafx.scene.control.Alert;
import javafx.scene.control.Alert.AlertType;
import javafx.scene.image.Image;
import javafx.stage.Stage;
import javax.swing.JOptionPane;

/**
 * FXML Controller class
 *
 * @author Mohamed Sarhan
 */
public class LoginController implements Initializable {
   
    /**
     * Initializes the controller class.
     * @param event
     * @throws java.io.IOException
     */
    
    
    @FXML
    private JFXTextField loginuser;

    @FXML
    private JFXPasswordField loginpass;
    
    
    
         @FXML
         public void login(ActionEvent event) throws IOException{
           
        String username = loginuser.getText();
        String pass = loginpass.getText();
        if (username.equals("mo")&& pass.equals("mm") ){
        changescreen(event);
        
        }
        else
        {
        
                      Alert alert = new Alert(AlertType.INFORMATION);
                      alert.setTitle("Quiz System");
                      alert.setHeaderText(null);
                      alert.setContentText("username or password is incorrect");
                      alert.showAndWait();  
                      
                      loginpass.setText("");
            
            
        }
         
         }
    
    
    
    public void changescreen(ActionEvent event)throws IOException
    {
    Parent loginparent = FXMLLoader.load(getClass().getResource("webview.fxml"));
        Scene loginscene = new Scene(loginparent);
        
        // this line gets the stage info
        Stage window =(Stage)((Node)event.getSource()).getScene().getWindow();
         window.setScene(loginscene);
         window.setFullScreen(true);
         window.show();
        
    } 
     /* 
        this method is to change the scene when the button pushed
    
    */
    @FXML
    public void backtodashboard(ActionEvent event)throws IOException
    
    {
    Parent back= FXMLLoader.load(getClass().getResource("FXMLDocument.fxml"));
        Scene backscene = new Scene(back);
        
        // this line gets the stage info
        Stage window =(Stage)((Node)event.getSource()).getScene().getWindow();
         window.setScene(backscene);
         window.setFullScreen(true);
         window.show();
        
    }
  
    @Override
    public void initialize(URL url, ResourceBundle rb) {
        // TODO
    }    
    
}
