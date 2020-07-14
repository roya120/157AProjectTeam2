import java.util.ArrayList;

public class Controller {
	
	static DataModel model;
	
	static View view;

	public static void main(String[] args) {
		
		model = new DataModel();
		
		view = new View();

	}
	
	public boolean createUserAccount(ArrayList<String> userInput) throws Exception {
		
		if(userInput.size() != 9){
			
			return false;
		}
		
		model.startConnection();
		
		model.createUsername(userInput.get(0), userInput.get(1));
		
		model.createPrivateData(userInput.get(2), userInput.get(3), userInput.get(4), userInput.get(5));
		
		model.createAddress(userInput.get(6), userInput.get(7), Integer.parseInt(userInput.get(8)));
		
		model.closeConnection();
		
		return true;
	}
	
	public boolean createListing() {
		
		return true;
	}

}
