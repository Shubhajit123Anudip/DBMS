package com.loader;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.Scanner;

import com.cms.Helper;


public class PinChange {
	int db_pin;
	long db_id;
	Scanner sc = new Scanner(System.in);

	public void pinChange(long stu_id, int pin) throws SQLException {

		Connection conn = Helper.con();
		Statement stmt = conn.createStatement(); // create statement

		System.out.println("Enter New PIN: ");
		int n_pin = sc.nextInt();

		ResultSet rs = stmt.executeQuery("select * from student_details where id= " + stu_id);
		while (rs.next()) {
			db_id = rs.getLong(1);
			db_pin = rs.getInt(8);
		}
		if (db_id != stu_id) {
			System.err.println("!! WRONG ID INSERTED !!");
		}
		if (db_pin != pin) {
			System.err.println("!! WRONG PIN INSERTED !!");
		} else

			stmt.executeUpdate("update set pin =" + n_pin + " where Id= " + stu_id);
		System.out.println("___PIN SET SUCCESSFULLY___");

}}
