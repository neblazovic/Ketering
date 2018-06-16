/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package beans;
import java.sql.*;
import java.sql.DriverManager;
/**
 *
 * @author Nebojsa Lazovic
 */
public final class Konekcija {
    public Connection conn;
    public Statement statement;
    public static Konekcija db;
    private Konekcija(){
        String url= "jdbc:mysql://localhost:3306";
        String dbName = "/ketering";
        String driver = "com.mysql.jdbc.Driver";
        String userName = "root";
        String password = "";
        try {
            Class.forName(driver).newInstance();
            this.conn = (Connection)DriverManager.getConnection(url+dbName,userName,password);
        }
        catch (ClassNotFoundException sqle) {
            System.out.println("Ne postoji trazena klasa!!!"+sqle);}
         catch (InstantiationException sqle) {
            System.out.println("Greska u radu sa bazom!!!"+sqle);
        } catch (IllegalAccessException sqle) {
            System.out.println("Ne mozete pristupiti podacima!!!"+sqle);
        } 
        catch (SQLException sqle) {
            System.out.println("Greska u radu sa bazom!!!"+sqle);
        }
    }
    public static synchronized Konekcija getDbCon() {
        if ( db == null ) {
            db = new Konekcija();
        }
        return db; 
    }
    public ResultSet query(String query) throws SQLException{
        statement =conn.createStatement();
        ResultSet res = statement.executeQuery(query);
        return res;
    }
    public void insert(String insertQuery) throws SQLException {
        if(conn!=null){
            try{
        statement=conn.createStatement();        
        statement.executeUpdate(insertQuery);
            }
            catch(SQLException e){
                System.out.println("Greska u radu sa bazom"+e);
            }
        }
 
    } 
}