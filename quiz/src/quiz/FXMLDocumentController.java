/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package quiz;

import com.jfoenix.controls.JFXButton;
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
import javafx.stage.Stage;

/**
 *
 * @author Mohamed Sarhan
 */
public class FXMLDocumentController implements Initializable {
    
  
    /* 
        this method is to change the scene when the button pushed
    
    */
      public void changescreen(ActionEvent event)throws IOException
    {
    Parent loginparent = FXMLLoader.load(getClass().getResource("login.fxml"));
        Scene loginscene = new Scene(loginparent);
        
        // this line gets the stage info
        Stage window =(Stage)((Node)event.getSource()).getScene().getWindow();
         window.setScene(loginscene);
         window.setFullScreen(true);
         window.show();
        
    } 
      
       public void teacherfun(ActionEvent event)throws IOException
    {
    Parent teacherparent = FXMLLoader.load(getClass().getResource("teacher.fxml"));
    //System.out.println(" done");
        Scene teacherscene = new Scene(teacherparent);
        
        // this line gets the stage info
        Stage window =(Stage)((Node)event.getSource()).getScene().getWindow();
         window.setScene(teacherscene);
         window.setFullScreen(true);
         window.show();
        
    } 
       
       
       public void dashboardfun(ActionEvent event)throws IOException
    {
    Parent dashboard = FXMLLoader.load(getClass().getResource("dashboard.fxml"));
    
        Scene dashboardscene = new Scene(dashboard);
        
        // this line gets the stage info
        Stage window =(Stage)((Node)event.getSource()).getScene().getWindow();
         window.setScene(dashboardscene);
         window.setFullScreen(true);
         window.show();
        
         
    } 
            
   // exit button fun
    public void exitbtn(ActionEvent event) throws IOException{
    
    System.exit(0);
    
    }
    
    @Override
    public void initialize(URL url, ResourceBundle rb) {
        // TODO
    }    
    
}
