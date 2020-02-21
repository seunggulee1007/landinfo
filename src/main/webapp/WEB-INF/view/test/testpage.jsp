<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<script src="/resources/js/testpage.js"></script>

<div id="appcontroller" class="section">
		<form action="attachments" method="post" enctype="multipart/form-data">
			<input type="file" name = "sourceFile">
			<input type="submit" value="submit">
		</form> 
		<img src="/upload/4.gif">
		
		
		
		<form name="form1" method="post" enctype="multipart/form-data">
			<input type="file" name = "sourceFile" @change="handleFileUpload">
			<button @click="submitFile()">submit</button>
		</form>
		
		<form name="form2" method="post" enctype="multipart/form-data" action="/multifile">
			<input type="file" name="file1">
			<input type="file" name="file2">
			<input type="submit" value="전송!!!">
		</form>
		
		<form name="form3" method="post">
		  <input type="file" name="file1">
		  <input type="file" name="file2">
		  <input type="button" @click="goFile()" value="전송">
		</form>
		<c:forEach var="list" items="${list.content }">
		
			<div class="">
				<ul>
					<li>${list }</li>
				</ul>
				
				
			</div>
		</c:forEach>
		<ul class="pager">
	    <c:if test="${!list.first}">
		    <li class="previous">
		        <a href="?page=${list.number-1}">&larr; Newer Posts</a>
		    </li>
		    </c:if>
		    <c:if test="${!list.last}">
		    <li class="next">
		        <a href="?page=${list.number+1}">Older Posts &rarr;</a>
		    </li>
	    </c:if>
</ul>
</div>
