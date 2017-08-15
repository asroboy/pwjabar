<%@ page import="org.pwjabar.data.Test" %>



<div class="fieldcontain ${hasErrors(bean: testInstance, field: 'name', 'error')} ">
	<label for="name">
		<g:message code="test.name.label" default="Name" />
		
	</label>
	<g:textField name="name" value="${testInstance?.name}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: testInstance, field: 'books', 'error')} ">
	<label for="books">
		<g:message code="test.books.label" default="Books" />
		
	</label>
	<g:select name="books" from="${org.pwjabar.data.SubTest.list()}" multiple="multiple" optionKey="id" size="5" value="${testInstance?.books*.id}" class="many-to-many"/>

</div>

