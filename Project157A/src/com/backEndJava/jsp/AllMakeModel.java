package com.backEndJava.jsp;

public class AllMakeModel {
	
	public static String[] make = {"Acura","Alfa Romeo","Audi","BMW","Chevrolet",
			"Chrysler","Dogde","FIAT","Ford","GMC",
			"Honda","Hyundai","INFINITY","Jaguar","Jeep",
			"Kia","Land Rover","Lexus","Lincoln","Maserati",
			"Mazda","Mercedes Benz","MINI","Mitsubishi","Nissan",
			"Porsche","Scion","Smart","Subaru","Tesla",
			"Toyota","Volkswagen","Volvo"};
	
	public static String[] currentModel;

	public String[] Porsche = {"Boxster", "Cayenne", "Macan", "Panamera"};
	public String[] Acura = {"ILX", "MDX", "RDX", "TLX", "TSX"};
	public String[] AlfaRomeo = {"Giulia"};
	public String[] Audi = {"A3 e-tron", "A3", "A4", "A5", "A6", "Q3", "Q5", "Q7", "S3", "S4", "S5", "TTS", "allroad"};
	public String[] BMW = {"1 Series", "2 Series", "3 Series", "4 Series", "5 Series", "M3", "X1", "X3", "X4", "X5", "i3"};
	public String[] Chevrolet = {"Bolt EV", "Camaro", "Covette", "Cruze Limited", "Cruze", "Equinox","Malibu Limited", "Malibu", "Silverado 1500",
	"Sonic", "Spark EV", "Spark", "Tahoe", "Traverse", "Volt"};
	
	public String[] Chrysler= {"200", "Pacifica"};
	public String[] Dodge = {"Avenger", "Challenger", "Charger", "Dart", "Durango", "Journey"}; 
	public String [] FIAT= {"124 spider", "500", "500L", "500X","500e"}; 
	public String[] Ford = {"C-Max Energi", "C-Max Hybrid", "Edge", "Escape", "Explorer", "Fiesta", "Flex", "Focus Electric",
	"Focus", "Fusion Energi", "Fusion", "Mustang"};
	public String[] GMC = {"Acadia" , "Sierra 1500"};
	
	public String[] Honda = {"Accord Hybrid", "Accord", "GR-V", "Civic Hybrid", "Civic Type R", "Civic", "Element", "Fit",
	"HR-V", "Odyssey", "Pilot"};
	
	public String[] Hyundai = {"Accent", "Elantra GT", "Elantra Touring", "Elantra", "Genesis Coupe", "Genesis","Loniq Hybrid",
	"Santa Fe Sport", "Santa Fe", "Sonata Hybrid", "Sonata Plug-In Hybrid","Sonata","Tucson","Veracruz"};
	
	public String[] INFINITY = {"Q50", "QX60", "QX80"};
	
	public String[] Jaguar = {"E-PACE", "F-PACE", "F-TYPE", "XF"};
	
	public String[] Jeep= {"Cherokee", "Compass", "Grand Cherokee", "Renegade", "Wrangler Unlimited" , "Wrangler"}; 
	
	public String[] kia = {"Forte", "Niro", "Optima Hybrid", "Optimia", "Sorento", "Soul"};
	
	public String[] LandRover = {"Discovery Sport", "Range Rover Evoque", "Range Rover Velar"}; 
	
	public String[] Lexux = {"CT 200h", "ES 300h", "ES 350", "ES", "GX 460", "is 200t", "is 250", "is 350", "LS 460",
	"NX 300h", "RX 350", "RX 400h", "RX 450h", "RX"};
	
	public String[] Lincoln = {"MKT"};
	
	public String[] Maserati = {"Levante"};
	
	public String[] Mazda= {"CX-3", "CX-5","CX-9", "MX-5 Miata RF", "MX-5 Miata", "Mazda2", "Mazda3", "Mazda5", "Mazda6"};
	
	public String[] MercedesBenz = {"AMG C 43", "AMG E 63", "C 250", "CS 300", "C 63", "CLA 250", "E 350", "GL 450",
	"GL 550", "GLA 250", "GLC 300", "GLE 350", "GLK 350", "GLS 450"};
	public String[] MINI = {"Cooper Countryman", "Cooper", "Countryman", "Hardtop"};
	
	public String[] Mitsubishi = {"Outlander Sport"}; 
	public String[] Nissan = {"Altima", "Juke", "Leaf", "Maxima", "Murano", "Pathfinder", "Quest", "Rogue Sport",
	"Rogue", "Sentra", "Versa Note", "Versa"};
	
	public String[] Scion = {"iA", "xB", "xD"};
	
	public String[] Smart = {"fortwo"};
	public String[] Subaru = {"BRZ", "Crosstrek", "Forester", "Impreza WRX", "Impreza", "Lexacy", "Outback", 
	"WRX STI", "WRX", "XV Crosstrek"};		
	
	
	public String[] Tesla = {"Model 3", "Model 5"};
	
	public String[] Toyota = {"4Runner", "Avalon Hybird", "Camry Hybrid", "Camry", "Corolla", "Highlander", 
	"Prius Plug-in", "Prius Prime", "Prius C", "Prius V", "Prius", "RAV4 Hybrid", "RAV4", "Sienna", "Tacoma", "Yaris"};
	
	public String[] Volkswagen = {"Beetle", "CC", "GTI", "Golf Alltrack", "Golf GTI", "Golf R", "Golf","Jetta SportWagen",
	  "Jetta", "Passat", "Tiguan", "Touareg", "e-Golf"};		
	public String[] Volvo = {"S60", "V60 Cross Country", "V60", "XC60"};
	
	public static String[] getMake() {
	
		
		
	return make;
	
	}
	
	public static String[] getModel(String make) {
		
		System.out.print(make);
		
		return currentModel;
	}
}
