<%@ page
	import="com.google.appengine.api.blobstore.BlobstoreServiceFactory"%>
<%@ page import="com.google.appengine.api.blobstore.BlobstoreService"%>


<%@ page import="com.google.cloud.vision.v1.EntityAnnotation"%>
<%@ page import="java.util.ArrayList"%>
<%@ page import="java.util.List"%>

<%
	BlobstoreService blobstoreService = BlobstoreServiceFactory.getBlobstoreService();
%>

<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<html>
<head>
<title>Labels</title>
<style>
b,th{
  text-shadow: 2px 2px red;
}
table,th{
width: 100%;
  border-collapse: collapse;
    border: 2px solid black;
}

</style>
</head>
<body>
<body style="background-color:LightBlue;">
</body>
<center>
	<table>
		<tr>
			<th align="center"><b style="color: black;"> Software as a Service - Cloud Vision API

 
		</b></th>
		</tr>
		<tr>
			<td><br></td>
		</tr>

	</table>

	<table>
		<tr>
			<center>Image Uploaded </center>
			
			<center><img src="<%=request.getAttribute("imageUrl")%>" width=150px height=150px></center>
		</tr>
		<tr>
			<td><br></td>
		</tr>
		<tr>
			<td><br></td>
		</tr>
		<%
			List<EntityAnnotation> imageLabels = (List<EntityAnnotation>) request.getAttribute("imageLabels");
		%>
		<tr>
			<th> List of detected labels </th></tr>
			<tr>
			<td>
				<table>
					<tr>
						<td>Label</td>
						<td>Score</td>

					</tr>

					<c:forEach items="${imageLabels}" var="label">
						<tr>
							<td>${label.getDescription()}</td>
							<td>${label.getScore()}</td>
						</tr>
					</c:forEach>

				</table>

			</td>
		</tr>
		<tr>
			<td><a href="/">Reset</</a></td>
		</tr>
	</table>
</center>
</body>
</html>