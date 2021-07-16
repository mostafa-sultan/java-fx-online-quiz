/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package quiz;

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
import javafx.scene.web.WebEngine;
import javafx.scene.web.WebView;
import javafx.stage.Stage;

/**
 * FXML Controller class
 *
 * @author Mohamed Sarhan
 */
public class TeacherController implements Initializable {

    /**
     * Initializes the controller class.
     */
    @FXML
	private WebView web2;
	private WebEngine e;
    
     public void backtodashboard(ActionEvent event)throws IOException
    
    {
    Parent back = FXMLLoader.load(getClass().getResource("FXMLDocument.fxml"));
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
          web2.getEngine().load("http://localhost:3001/login_testsetter/m/m");
         // System.out.println(" done youtube");
          
    }    
    
}
