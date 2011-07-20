global class ConsoleCleanUpBatch implements Database.Batchable<sObject> {

	global Database.QueryLocator start(Database.BatchableContext bc){
		return Database.getQueryLocator('SELECT Id FROM ConsoleLog__c WHERE CreatedDate < today');	
	}

	global void execute(Database.BatchableContext BC, List<ConsoleLog__c> objs){
		delete objs;
	}
	
	global void finish(Database.BatchableContext BC){
	
	}

}