package com.cms;

import java.sql.SQLException;
import java.util.Scanner;

import com.loader.AddNewStudent;
import com.loader.DeleteStudentDetail;
import com.loader.PinChange;

public class CMS_Main {
	static Scanner sc = new Scanner(System.in);

	public static void main(String[] args) throws SQLException {
		int var;
		do {
			System.out.println("""
					  ||   Welcome To Our Collage  ||

					Press 1 to Add New Student :-
					Press 2 to Change your pin  :-
					Press 3 to Delete Student Details :-
					Press 4 to  Exit :-

					""");
			var = sc.nextInt();
			switch (var) {
			case 1:
				System.out.println("Enter Id: ");
				long id = sc.nextLong();
				System.out.println("Enter First Name: ");
				String Fname = sc.next();
				System.out.println("Enter Last Name: ");
				String Lname = sc.next();
				System.out.println("Enter 4 digit to create a new Id pin");
				int pin = sc.nextInt();
	            AddNewStudent a=new AddNewStudent();
				a.AddNewStuDetails(id,pin);
				System.err.println("____ADMISSION SUCCESSFUL____");
				break;
			case 2:
				System.out.println("Enter your Id: ");
				long e = sc.nextLong();
				System.out.println("Enter your current pin: ");
				int f = sc.nextInt();
				PinChange pc = new PinChange();
				pc.pinChange(e, f);
				System.err.println("____PIN HAS BEEN CHANGED___");
				break;
			case 3:
				System.out.println("Enter your acc no: ");
				long g = sc.nextLong();
				System.out.println("Enter your current pin: ");
				int h = sc.nextInt();
				DeleteStudentDetail dt = new DeleteStudentDetail();
				dt. DltAcc(g,h);
				System.out.println();
				break;
			case 4:
				System.err.println("You have sucessfully logged out");
				System.out.println("___THANK YOU___");
				System.out.println();
				System.exit(0);
				break;

			}
		} while (var > 0 && var < 8);

				
				
	}}

