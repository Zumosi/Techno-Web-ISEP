package re;
import java.util.ArrayList;
import java.util.HashMap;


public class Reservation {
	HashMap<String,Boolean> livre= new HashMap<String,Boolean>();
	private String book1;
	
	public void addlivre(){
		livre.put("Oui",false);
		livre.put("Harry Potter 1",false);
		livre.put("Harry Potter 2",false);
		livre.put("Harry Potter 3",false);
		livre.put("Harry Potter 4",false);
		livre.put("Harry Potter 5",false);
		livre.put("Harry Potter 6",false);
		livre.put("Harry Potter 7",false);
	}
	

	public HashMap<String, Boolean> getLivre() {
		return livre;
	}


	public void setLivre(HashMap<String, Boolean> livre) {
		this.livre = livre;
	}


	public boolean cherchLivre(String book){
		return livre.containsKey(book);
	}


	public String getBook1() {
		return book1;
	}


	public void setBook1(String book1) {
		this.book1 = book1;
	}


	public void reserver(String book1) {
		livre.put(book1, true);
	}
	
	
}
