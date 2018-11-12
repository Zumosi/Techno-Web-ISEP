
public class Authentification {
	private String Username;
	private String Password;
	
	
	public String getUsername() {
		return Username;
	}
	public void setUsername(String username) {
		Username = username;
	}
	
	public String getPassword() {
		return Password;
	}
	public void setPassword(String password) {
		Password = password;
	}
	
	public int bonlogin( String Username, String Password){
		if (Username.equals("franck") && Password.equals("nguyen")){
			return 1;
		}return 0;
	}
	
}
