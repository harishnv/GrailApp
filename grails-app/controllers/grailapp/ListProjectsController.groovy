package grailapp

class ListProjectsController {
	
	def scaffold = true

    def index= { 
		render "Hello from render app function."
	}
	
	def overdue ={
		def allproject= ListProjects.list();
		[allprojects:allproject ]
	}
}
