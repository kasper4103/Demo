package tw.com.pcschool.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
@Table(name="mytable")
@Entity
public class User {
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Id
	private int id;
	private String username;
	private String firstname;
	private String lastname;
	private int age;
	private String password;

	
	
	public User(String username, String firstname, String lastname, int age, String password) {
		super();
		this.username = username;
		this.firstname = firstname;
		this.lastname = lastname;
		this.age = age;
		this.password = password;
	}



	public User() {
		super();
	}



	public int getId() {
		return id;
	}



	public void setId(int id) {
		this.id = id;
	}



	public String getUsername() {
		return username;
	}



	public void setUsername(String username) {
		this.username = username;
	}



	public String getFirstname() {
		return firstname;
	}



	public void setFirstname(String firstname) {
		this.firstname = firstname;
	}



	public String getLastname() {
		return lastname;
	}



	public void setLastname(String lastname) {
		this.lastname = lastname;
	}



	public int getAge() {
		return age;
	}



	public void setAge(int age) {
		this.age = age;
	}



	public String getPassword() {
		return password;
	}



	public void setPassword(String password) {
		this.password = password;
	}



	@Override
	public String toString() {
		return "User [id=" + id + ", username=" + username + ", firstName=" + firstname + ", lastName=" + lastname
				+ ", age=" + age + ", password=" + password + "]";
	}
	
	

}
