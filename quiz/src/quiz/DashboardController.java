/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package quiz;

import java.io.IOException;
import java.net.URL;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ResourceBundle;
import java.util.logging.Level;
import java.util.logging.Logger;
import javafx.collections.FXCollections;
import javafx.collections.ObservableList;
import javafx.event.ActionEvent;
import javafx.fxml.FXML;
import javafx.fxml.FXMLLoader;
import javafx.fxml.Initializable;
import javafx.scene.Node;
import javafx.scene.Parent;
import javafx.scene.Scene;
import javafx.scene.control.TableColumn;
import javafx.scene.control.TableView;
import javafx.scene.control.cell.PropertyValueFactory;
import javafx.stage.Stage;

/**
 * FXML Controller class
 *
 * @author Mohamed Sarhan
 */
public class DashboardController implements Initializable {

    /**
     * Initializes the controller class.
     */
    
    
     @FXML
    private TableView<guizes> table_guizes;

    @FXML
    private TableColumn<guizes, Integer> col_quizid;

    @FXML
    private TableColumn<guizes, String> col_name;

    @FXML
    private TableColumn<guizes, String> col_start_time;

    @FXML
    private TableColumn<guizes, String> col_end_time;

    @FXML
    private TableColumn<guizes, Integer> col_total_marks;
    
    @FXML
    private TableColumn<guizes, Integer> col_nom_of_questions;
    
    
       
      
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
   
   public void print()throws IOException
    {
     ObservableList<guizes> oblist=FXCollections.observableArrayList();
    
     
         try {
             
             Connection conn= mysqlconnect.ConnectDb();
             ResultSet res =conn.createStatement().executeQuery("select * from listofquizzes");
             while(res.next()){
                 oblist.add(new guizes(res.getInt("quizid"), res.getString("name"),
                            res.getString("start_time") , res.getString("end_time"),
                         res.getInt("total_marks"), res.getInt("num_of_questions")));
                 
             }
             
         } catch (SQLException ex) {
             System.out.println(ex.getMessage());
         }
      
      
      
       col_quizid.setCellValueFactory(new PropertyValueFactory<guizes,Integer>("quizid"));
        col_name.setCellValueFactory(new PropertyValueFactory<guizes,String>("name"));
        col_start_time.setCellValueFactory(new PropertyValueFactory<guizes,String>("start_time"));
        col_end_time.setCellValueFactory(new PropertyValueFactory<guizes,String>("end_time"));
        col_total_marks.setCellValueFactory(new PropertyValueFactory<guizes,Integer>("total_marks"));
        col_nom_of_questions.setCellValueFactory(new PropertyValueFactory<guizes,Integer>("nom_of_questions"));
      
      table_guizes.setItems(oblist);
    }
    
     
      
    @Override
    public void initialize(URL url, ResourceBundle rb) {
         try {
             print();
         } catch (IOException ex) {
             Logger.getLogger(DashboardController.class.getName()).log(Level.SEVERE, null, ex);
         }
    }
}
