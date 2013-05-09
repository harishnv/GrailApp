package grailapp

class EndUser {
	String username
	String password
	String fullname
	String  toString() {
		"${fullname}"
	};
	
	static hasMany = [projetcs:ListProjects,tasks:Task]
	
    static constraints = {
		fullname()
		username()
		password(password:true ) 
    }
}
