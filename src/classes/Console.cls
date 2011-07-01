public class Console{
	
	public static void Write(string message){
		Write(message, false);
	}
	
	public static void Write(string message, boolean doItNow){
		long timeStamp = dateTime.now().getTime();
		
		if(doItNow)
			LogNow(timeStamp, message);
		else
			Console.Log(timeStamp, message);
	}
	
	@future
	private static void Log(long timeStamp, string message){
		Console.CreateLog(timeStamp, message);
	}
	
	private static void LogNow(long timeStamp, string message){
		Console.CreateLog(timeStamp, message);
	}  
	
	private static void CreateLog(long timeStamp, string message){
		ConsoleLog__c log = new ConsoleLog__c(Updated__c = timeStamp, Message__c = message);
		insert log;
	}

}