package grailapp

import org.grails.datastore.gorm.finders.MethodExpression.InList;

class ListProjects {
  
	String name
	String dept
	String billingType
	Date duedate 
	
	String  toString() {
		"${name}"
	};
	static belongsTo = [owner:EndUser]
	static hasMany = [tasks:Task]
	
    static constraints = {
		name(blank:false,unique:true)
		dept()
		duedate(min: new Date())
		
		billingType(InList :["Hourly","Milestone","Nonbillable"])
    }
}
