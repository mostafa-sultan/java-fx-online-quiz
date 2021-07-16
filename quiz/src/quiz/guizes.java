
package quiz;

public class guizes {
 private int     quizid  ;
 private String  name    ;   
 private String  start_time;     
 private String  end_time; 
 private int     total_marks  ; 
 private int     nom_of_questions ;

    public guizes(int quizid, String name, String start_time, String end_time, int total_marks, int nom_of_questions) {
        this.quizid = quizid;
        this.name = name;
        this.start_time = start_time;
        this.end_time = end_time;
        this.total_marks = total_marks;
        this.nom_of_questions = nom_of_questions;
    }

    public int getQuizid() {
        return quizid;
    }

    public void setQuizid(int quizid) {
        this.quizid = quizid;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getStart_time() {
        return start_time;
    }

    public void setStart_time(String start_time) {
        this.start_time = start_time;
    }

    public String getEnd_time() {
        return end_time;
    }

    public void setEnd_time(String end_time) {
        this.end_time = end_time;
    }

    public int getTotal_marks() {
        return total_marks;
    }

    public void setTotal_marks(int total_marks) {
        this.total_marks = total_marks;
    }

    public int getNom_of_questions() {
        return nom_of_questions;
    }

    public void setNom_of_questions(int nom_of_questions) {
        this.nom_of_questions = nom_of_questions;
    }
 
}