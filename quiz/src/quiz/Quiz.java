/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package quiz;

import java.io.IOException;
import javafx.application.Application;
import javafx.event.ActionEvent;
import javafx.fxml.FXMLLoader;
import javafx.scene.Node;
import javafx.scene.Parent;
import javafx.scene.Scene;
import javafx.stage.Stage;

/**
 *
 * @author Mohamed Sarhan
 */
public class Quiz extends Application {

    /**
     *
     * @param event
     * @param fxmlfile
     * @throws IOException
     */
    public void changescreen(ActionEvent event,String fxmlfile)throws IOException
    
    {
    Parent loginparent = FXMLLoader.load(getClass().getResource(fxmlfile));
        Scene loginscene = new Scene(loginparent);
        
        // this line gets the stage info
        Stage window =(Stage)((Node)event.getSource()).getScene().getWindow();
         window.setScene(loginscene);
         window.show();
        
    } 
    
    
    @Override
    public void start(Stage stage) throws Exception {
        Parent root = FXMLLoader.load(getClass().getResource("FXMLDocument.fxml"));
        
        Scene scene = new Scene(root);
        
        stage.setScene(scene);
        stage.setFullScreen(true);
        stage.show();
    }

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
        
        launch(args);
    }
    
}
