package grailapp

import java.util.Date;

class Task {
	String name
	String dept
	Date duedate
	String  toString() {
		"${name}"
	};
	static belongsTo = [assignee:EndUser, project:ListProjects]
	
    static constraints = {
		name()
		duedate()
		dept()
    }
}
