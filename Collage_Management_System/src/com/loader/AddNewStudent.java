package com.loader;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.Scanner;

import com.cms.Helper;



public class AddNewStudent {
         long stu_id,db_Id;
         int pin,db_pin,stu_year,stu_Phno,stu_Age,From_no,db_From;
         double stu_fees;         
         String stu_Fname,stu_Lname,stu_Addr,stu_Email;
         Scanner sc = new Scanner(System.in);
         
         public void AddNewStuDetails(long stu_id,int pin) throws SQLException {
     		Connection conn = Helper.con();
     		Statement stmt = conn.createStatement();
     		ResultSet rs = stmt.executeQuery("select * from Student_details where Id=" + stu_id + " and pin =" + pin);
    		while (rs.next()) {
    			db_Id = rs.getLong(1);
    			db_pin = rs.getInt(8);
    			
    			if (db_Id == stu_id) {
    				System.err.println(" !! Id Already Exist !!");
    			}else if (db_From == From_no) {
    				System.out.println("!! FROM NUMBER Already Exist !!");

    			}
    			else {
    				
    				System.out.println("Enter Id: ");

					stu_id = sc.nextLong();

    				System.out.println("Enter First Name: ");

					stu_Fname = sc.next();

    				System.out.println("Enter Last Name: ");
    				stu_Lname = sc.next();

    				System.out.println("Enter Age: ");
    				stu_Age = sc.nextInt();
    				
    				System.out.println("Enter Fees: ");
    				stu_fees = sc.nextDouble();
    				
    				System.out.println("Enter Pin: ");
    				pin = sc.nextInt();
    				

    				PreparedStatement stmt1 = conn.prepareStatement("insert into Student_details values(?,?,?,?,?,?,?)");
    				stmt1.setLong(1,stu_id);
    				stmt1.setString(2,stu_Fname);
    				stmt1.setString(3,stu_Lname);
    				stmt1.setInt(4, stu_Age);
    				stmt1.setDouble(5, stu_fees);
    				stmt1.setString(6,stu_Addr);
    				stmt1.setString(7,stu_Email);
    				stmt1.setInt(8, pin);
    				stmt1.setInt(9,stu_year);
    				stmt1.setInt(10,From_no);

    				stmt1.executeUpdate(); // execute
    				System.err.println("_______ADMISSION SUCCESSFUL_______");
    		}}}}