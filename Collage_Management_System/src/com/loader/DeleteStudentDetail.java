package com.loader;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import com.cms.Helper;


public class DeleteStudentDetail {
	int db_pin;
	long db_Id;

	public void DltAcc(long stu_id, int pin) throws SQLException {

		Connection conn = Helper.con();
		Statement stmt = conn.createStatement(); // create statement
		ResultSet rs = stmt.executeQuery("select * from Bank where account_no= " + stu_id + " and pin= " + pin);
		while (rs.next()) {
			db_Id = rs.getLong(1);
			db_pin = rs.getInt(8);
			
			if (db_Id != stu_id) {
				System.err.println("!! WRONG ID INSERTED !!");
			}
			if (db_pin != pin) {
				System.err.println("!! WRONG PIN INSERTED !!");
			} else

				stmt.executeUpdate("delete  from student_details where Id =" + stu_id + " and pin= " + pin);
			System.err.println("___DELETED SUCCESFULLY___");

		}}}
