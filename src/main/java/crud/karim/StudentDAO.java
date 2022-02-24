package crud.karim;

import java.sql.*;
import java.util.*;

public class StudentDAO {

	public static Connection getConnection() throws SQLException {
		Connection conn = null;
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");

			conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/application", "root", "");
		} catch (ClassNotFoundException ex) {
			System.out.println("Database Disconnected ..");
		}

		return conn;
	}

	public static int save(Student s) {

		int status = 0;

		try {
			Connection conn = getConnection();
			String sqlQu = "insert into student(id,FName,LName,email,pass,gender,country) values(?,?,?,?,?,?,?)";
			PreparedStatement ps = conn.prepareStatement(sqlQu);

			ps.setInt(1, s.getId());
			ps.setString(2, s.getFname());
			ps.setString(3, s.getLname());
			ps.setString(4, s.getEmail());
			ps.setString(5, s.getPass());
			ps.setString(6, s.getGender());
			ps.setString(7, s.getCountry());

			status = ps.executeUpdate();

		} catch (SQLException ex) {
			System.out.println(ex.toString());
		}

		return status;
	}

	public static List<Student> getAllRecords() {
		List<Student> list = new ArrayList<Student>();

		try {
			Connection con = getConnection();
			PreparedStatement ps = con.prepareStatement("select * from student");
			ResultSet rs = ps.executeQuery();

			while (rs.next()) {
				Student s = new Student();
				s.setId(rs.getInt("id"));
				s.setFname(rs.getString("fname"));
				s.setLname(rs.getString("lname"));
				s.setEmail(rs.getString("email"));
				s.setPass(rs.getString("pass"));
				s.setGender(rs.getString("gender"));
				s.setCountry(rs.getString("country"));

				list.add(s);
			}
		} catch (Exception e) {
			System.out.println(e);
		}
		return list;
	}

	public static Student getRecordById(int id) {
		Student s = null;
		try {
			Connection con = getConnection();
			PreparedStatement ps = con.prepareStatement("select * from student where id=?");
			ps.setInt(1, id);
			ResultSet rs = ps.executeQuery();

			while (rs.next()) {
				s = new Student();
				s.setId(rs.getInt("id"));
				s.setFname(rs.getString("fname"));
				s.setLname(rs.getString("lname"));
				s.setEmail(rs.getString("email"));
				s.setPass(rs.getString("pass"));
				s.setGender(rs.getString("gender"));
				s.setCountry(rs.getString("country"));
			}
		} catch (Exception e) {
			System.out.println(e);
		}
		return s;
	}

	public static int update(Student s) {
		int status = 0;
		try {
			Connection con = getConnection();
			PreparedStatement ps = con.prepareStatement("update student set FName=?,LName=?,email=?,pass=?,gender=?,country=? where id=?");
			ps.setString(1, s.getFname());
			ps.setString(2, s.getLname());
			ps.setString(3, s.getEmail());
			ps.setString(4, s.getPass());
			ps.setString(5, s.getGender());
			ps.setString(6, s.getCountry());
			ps.setInt(7, s.getId());
			status = ps.executeUpdate();
		} catch (Exception e) {
			System.out.println(e);
		}
		return status;
	}

	public static int delete(Student s) {
		int status = 0;
		try {
			Connection con = getConnection();
			PreparedStatement ps = con.prepareStatement("delete from student where id=?");
			ps.setInt(1, s.getId());
			status = ps.executeUpdate();
		} catch (Exception e) {
			System.out.println(e);
		}

		return status;
	}
}
