package crud.karim;

public class Student {

	int id;
	String fname, lname, email, pass, gender, country;

	public Student(int id, String fname, String lname, String email, String pass, String gender, String country) {
        this.id = id;
        this.fname = fname;
        this.lname = lname;
        this.email = email;
        this.pass = pass;
        this.gender = gender;
        this.country = country;

    }

	public Student() {
        //To change body of generated methods, choose Tools | Templates.
    }

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getFname() {
		return fname;
	}

	public void setFname(String fname) {
		this.fname = fname;
	}

	public String getLname() {
		return lname;
	}

	public void setLname(String lname) {
		this.lname = lname;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getPass() {
		return pass;
	}

	public void setPass(String pass) {
		this.pass = pass;
	}

	public String getCountry() {
		return country;
	}

	public void setCountry(String country) {
		this.country = country;
	}

	public String getGender() {
		return gender;
	}

	public void setGender(String gender) {
		this.gender = gender;
	}

}
