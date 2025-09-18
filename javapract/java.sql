package sqlplus;

import java.sql.*;
import java.util.*;

public class Student {
    public static void main(String[] args) {
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/studdemo", "root", "root");
            Statement stm = con.createStatement();
            
            //String str = "CREATE DATABASE studdemo";
            //stm.executeUpdate(str);
            //System.out.println("Database created successfully!");
            //System.out.println("use studdemo");
            
            //String str = "Create table Student(rollno int,Name varchar(20),Address varchar(20))";
            //stm.executeUpdate(str);
            //System.out.println("Table is created!");
            
            Scanner sc = new Scanner(System.in);
            int rollno;
            String Name;
            String address;

            //System.out.println("Enter the rollno:");
            //rollno = sc.nextInt();
            //System.out.println("Enter the Name:");
            //Name = sc.next();
            //System.out.println("Enter the address:");
            //address = sc.next();
            
            //String str = "INSERT INTO student VALUES(" + rollno + ", '" + Name + "', '" + address + "')";
            //stm.executeUpdate(str);
            //System.out.println("Values are inserted");
            
            //System.out.println("Enter the rollno to update:");
            //rollno = sc.nextInt();
           
            //System.out.println("Enter the new Name:");
            //Name = sc.next();
           
            //String str = "UPDATE student SET Name='" + Name + "' WHERE rollno=" + rollno;
            //stm.executeUpdate(str);
            //System.out.println("updated!!");
            
            System.out.println("Enter the rollno of the student to delete:");
            rollno = sc.nextInt();
            
            String str = "delete from student where rollno="+rollno;
            stm.executeUpdate(str);
            System.out.println("Deleted!!");
    
            stm.close();
            con.close();
        } catch (Exception e) {
            System.out.println(e);
        }
    }
}

