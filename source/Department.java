package department;

public class Department {
  public static void main (String[] args) {
       System.out.println("You work with Department!");
	   workDB();
       System.out.println("End work with Departments.");
  }
  private static void workDB(){
	   DataBase db = new DataBase();
	   if (db.connectionDb("Department")) {
		   System.out.println("Connection to Department!");
		   Dialog cycle = new Dialog();
		   Command cmd;
		   boolean go = true;
		   while (go){
			   cmd = cycle.inputCommand();
			   go = !cmd.isStop(); 
			   if (go){
				   if (cmd.iswf(db)) {
					   cmd.eval(db);
				   };
				   //System.out.println("...");
				   System.out.println(cmd.getMsg());
			   }
     	   }
		   db.disConnect();
		   System.out.println("Disconnect from Department!");
	   }     
  }
}   
