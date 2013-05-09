<%@ page import="grailapp.EndUser" %>



<div class="fieldcontain ${hasErrors(bean: endUserInstance, field: 'fullname', 'error')} ">
	<label for="fullname">
		<g:message code="endUser.fullname.label" default="Fullname" />
		
	</label>
	<g:textField name="fullname" value="${endUserInstance?.fullname}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: endUserInstance, field: 'username', 'error')} ">
	<label for="username">
		<g:message code="endUser.username.label" default="Username" />
		
	</label>
	<g:textField name="username" value="${endUserInstance?.username}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: endUserInstance, field: 'password', 'error')} ">
	<label for="password">
		<g:message code="endUser.password.label" default="Password" />
		
	</label>
	<g:field type="password" name="password" value="${endUserInstance?.password}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: endUserInstance, field: 'projetcs', 'error')} ">
	<label for="projetcs">
		<g:message code="endUser.projetcs.label" default="Projetcs" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${endUserInstance?.projetcs?}" var="p">
    <li><g:link controller="listProjects" action="show" id="${p.id}">${p?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="listProjects" action="create" params="['endUser.id': endUserInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'listProjects.label', default: 'ListProjects')])}</g:link>
</li>
</ul>

</div>

<div class="fieldcontain ${hasErrors(bean: endUserInstance, field: 'tasks', 'error')} ">
	<label for="tasks">
		<g:message code="endUser.tasks.label" default="Tasks" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${endUserInstance?.tasks?}" var="t">
    <li><g:link controller="task" action="show" id="${t.id}">${t?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="task" action="create" params="['endUser.id': endUserInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'task.label', default: 'Task')])}</g:link>
</li>
</ul>

</div>

