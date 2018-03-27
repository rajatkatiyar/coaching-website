<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
	
<script type="text/javascript" src="Quize/Quize.js"></script>
	<%@page import="java.sql.*"%>
<%@page import="java.io.*"%>
	<%
Connection con=null;
	PreparedStatement ps = null;
	ResultSet rs=null;
	int id=0;
	InputStream inputStream=null;
	String email=request.getParameter("email");
	String password=request.getParameter("password");
	email="rishabh@gmail.com";
	password="1234";
	
	Class.forName("com.mysql.jdbc.Driver");
	con = DriverManager.getConnection(
			"jdbc:mysql://localhost:3306/Kvmaths", "root", "");
	ps=con.prepareStatement("select * from registration where email=? and password=?");
	ps.setString(1,email);
	ps.setString(2,password);
	rs=ps.executeQuery();
rs.next();
id=rs.getInt("id");
inputStream=rs.getBinaryStream("image");
FileOutputStream fos=new FileOutputStream("abc.jpg");
int x;
while((x=inputStream.read())!=-1){
	fos.write(x);}
System.out.println("input Stream            :       "+inputStream);	
System.out.println("output Stream            :       "+fos);	
System.out.println("email and password is------------"+email+"   ----------"+password+"---------------"+id);
	%>
<html lang="en">
<head>
<title>Bootstrap Example</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

<script type="text/javascript" src="Quize/QuizeTimer.js"></script>
<link rel="stylesheet" type="text/css" href="Quize/Quize.css">

</head>
<body>
<!--  navigation bar ==================================================================-->
<nav class="navbar navbar-inverse navbar-fixed-top">
  <div class="container-fluid">
    <div class="navbar-header">
      <a class="navbar-brand" href="#">Welcome user</a>
    </div>
    <ul class="nav navbar-nav">
      <li ><a href="#">Quiz</a></li>
      <li class="active" style="padding-left:340px;"><a href="#">Time left</a></li>
      <li class="active" style="padding-left:1px;"><a id="demo"></a></li>
    </ul>
    <ul class="nav navbar-nav navbar-right">
      <li><a href="#"><span class="glyphicon glyphicon-user"></span> report problem</a></li>
      <li><a href="#"><span class="glyphicon glyphicon-log-in"></span> Final submit</a></li>
    </ul>
  </div>
</nav>
<br/><br/><br>
	<!-- <div class="row"> -->
	<!--left block===============================================================================  -->
	<div class="col-sm-3 ">
	<div id="myleftblock">
	<div class="conatiner">               
	 <div class="progress">
    <div class="progress-bar progress-bar-success progress-bar-striped" role="progressbar"  id="progressbar"
    aria-valuenow="50" aria-valuemin="0" aria-valuemax="100" >
      40% Complete (success)
    </div>
  </div>
	<h4 id="leftsection">Section A </h4>
	<h6>Question attempted       :</h6>
	<h6>Question visited         :</h6>
	<h6>Question unsolved        :</h6>
	<h4 id="leftsection">Section B </h4>
	<h6>Question attempted       :</h6>
	<h6>Question visited         :</h6>
	<h6>Question unsolved        :</h6>
	<h4 id="leftsection">Section C </h4>
	<h6>Question attempted       :</h6>
	<h6>Question visited         :</h6>
	<h6>Question unsolved        :</h6>
	<h4 id="leftsection">Section D </h4>
	<h6>Question attempted       :</h6>
	<h6>Question visited         :</h6>
	<h6>Question unsolved        :</h6>
	</div>
	</div>
	</div>
	<!-- middle block================================================================================== -->
		<div class="col-sm-5 " id="middleblock">
		<div class="panel-group" id="sec">
		<!--section 1 --------------------------==========================---------  -->
	<form method="post">
		<div id="sectionA" >
			<div class="panel panel-default" name="panelHide" id="Q1S1" >
				<div class="panel-heading">
					<p id="Q1">
						<span>Q1.S1 </span><label for="Q1">who is the president of
							india</label>
					</p>
				</div>
				
				<div class="panel-body">
					<input type="radio" name="Ans1" id="r1">ram nath kovind <br>
					<input type="radio" name="Ans1" id="r2">atal bhihari <br>
					<input type="radio" name="Ans1" id="r3">narendra modi <br>
					<input type="radio" name="Ans1" id="r4">rahul ghandi <br>
				</div>
			</div>


			<div class="panel panel-default" id="panelHide2" id="Q2S1">
				<div class="panel-heading">
					<p id="Q2">
						<span>Q2. S1</span><label for="Q1">who is the president of
							india</label>
					</p>
				</div>
				<div class="panel-body">
					<input type="radio" name="Ans1" id="r1">ram nath kovind <br>
					<input type="radio" name="Ans1" id="r2">atal bhihari <br>
					<input type="radio" name="Ans1" id="r3">narendra modi <br>
					<input type="radio" name="Ans1" id="r4">rahul ghandi <br>
				</div>
			</div>


			<div class="panel panel-default"  id="Q3S1"  id="panelHide">
				<div class="panel-heading">
					<p id="Q3">
						<span>Q3. S1</span><label for="Q1">who is the president of
							india</label>
					</p>
				</div>
				<div class="panel-body">
					<input type="radio" name="Ans1" id="r1">ram nath kovind <br>
					<input type="radio" name="Ans1" id="r2">atal bhihari <br>
					<input type="radio" name="Ans1" id="r3">narendra modi <br>
					<input type="radio" name="Ans1" id="r4">rahul ghandi <br>
				</div>
			</div>



			<div class="panel panel-default" id="panelHide" id="Q4S1">
				<div class="panel-heading">
					<p id="Q4">
						<span>Q4.S1 </span><label for="Q1">who is the president of
							india</label>
					</p>
				</div>
		<div class="panel-body">
					<input type="radio" name="Ans1" id="r1">ram nath kovind <br>
					<input type="radio" name="Ans1" id="r2">atal bhihari <br>
					<input type="radio" name="Ans1" id="r3">narendra modi <br>
					<input type="radio" name="Ans1" id="r4">rahul ghandi <br>
				</div>
			</div>



			<div class="panel panel-default" id="panelHide" id="Q5S1">
				<div class="panel-heading">
					<p id="Q5">
						<span>Q5.S1 </span><label for="Q1">who is the president of
							india</label>
					</p>
				</div>
			<div class="panel-body">
					<input type="radio" name="Ans1" id="r1">ram nath kovind <br>
					<input type="radio" name="Ans1" id="r2">atal bhihari <br>
					<input type="radio" name="Ans1" id="r3">narendra modi <br>
					<input type="radio" name="Ans1" id="r4">rahul ghandi <br>
				</div>
			</div>



			<div class="panel panel-default" id="panelHide" id="Q6S1">
				<div class="panel-heading">
					<p id="Q6">
						<span>Q6. S1</span><label for="Q1">who is the president of
							india</label>
					</p>
				</div>
				<div class="panel-body">
					<input type="radio" name="Ans1" id="r1">ram nath kovind <br>
					<input type="radio" name="Ans1" id="r2">atal bhihari <br>
					<input type="radio" name="Ans1" id="r3">narendra modi <br>
					<input type="radio" name="Ans1" id="r4">rahul ghandi <br>
				</div>
			</div>
			
			
</div>
<!--section 2 --------------------------==========================---------  -->
		<div id="sectionB" id="panelHide"  id="Q1S2">
			<div class="panel panel-default" >
				<div class="panel-heading">
					<p id="Q1s2">
						<span>Q1.S2 </span><label for="Q1">who is the president of
							india</label>
					</p>
				</div>
				
				<div class="panel-body">
					<input type="radio" name="Ans1" id="r1">ram nath kovind <br>
					<input type="radio" name="Ans1" id="r2">atal bhihari <br>
					<input type="radio" name="Ans1" id="r3">narendra modi <br>
					<input type="radio" name="Ans1" id="r4">rahul ghandi <br>
				</div>
			</div>


			<div class="panel panel-default" class="panelHide" id="Q2S2">
				<div class="panel-heading">
					<p id="Q2S2">
						<span>Q2S2 </span><label for="Q1">who is the president of
							india</label>
					</p>
				</div>
				<div class="panel-body">
					<input type="radio" name="Ans1" id="r1">ram nath kovind <br>
					<input type="radio" name="Ans1" id="r2">atal bhihari <br>
					<input type="radio" name="Ans1" id="r3">narendra modi <br>
					<input type="radio" name="Ans1" id="r4">rahul ghandi <br>
				</div>
			</div>


			<div class="panel panel-default" class="panelHide" id="Q3S2">
				<div class="panel-heading">
					<p id="Q3S2">
						<span>Q3.S2 </span><label for="Q1">who is the president of
							india</label>
					</p>
				</div>
				<div class="panel-body">
					<input type="radio" name="Ans1" id="r1">ram nath kovind <br>
					<input type="radio" name="Ans1" id="r2">atal bhihari <br>
					<input type="radio" name="Ans1" id="r3">narendra modi <br>
					<input type="radio" name="Ans1" id="r4">rahul ghandi <br>
				</div>
			</div>



			<div class="panel panel-default" class="panelHide" id="Q4S2">
				<div class="panel-heading">
					<p id="Q4S2">
						<span>Q4.S2 </span><label for="Q1">who is the president of
							india</label>
					</p>
				</div>
		<div class="panel-body">
					<input type="radio" name="Ans1" id="r1">ram nath kovind <br>
					<input type="radio" name="Ans1" id="r2">atal bhihari <br>
					<input type="radio" name="Ans1" id="r3">narendra modi <br>
					<input type="radio" name="Ans1" id="r4">rahul ghandi <br>
				</div>
			</div>



			<div class="panel panel-default" class="panelHide" id="Q5S2">
				<div class="panel-heading">
					<p id="Q5S2">
						<span>Q5.S2 </span><label for="Q1">who is the president of
							india</label>
					</p>
				</div>
			<div class="panel-body">
					<input type="radio" name="Ans1" id="r1">ram nath kovind <br>
					<input type="radio" name="Ans1" id="r2">atal bhihari <br>
					<input type="radio" name="Ans1" id="r3">narendra modi <br>
					<input type="radio" name="Ans1" id="r4">rahul ghandi <br>
				</div>
			</div>



			<div class="panel panel-default" class="panelHide" id="Q6S2">
				<div class="panel-heading">
					<p id="Q6S2">
						<span>Q6. S2</span><label for="Q1">who is the president of
							india</label>
					</p>
				</div>
				<div class="panel-body">
					<input type="radio" name="Ans1" id="r1">ram nath kovind <br>
					<input type="radio" name="Ans1" id="r2">atal bhihari <br>
					<input type="radio" name="Ans1" id="r3">narendra modi <br>
					<input type="radio" name="Ans1" id="r4">rahul ghandi <br>
				</div>
			</div>
			
			
</div>
<button type="submit" class="btn btn-info">save and continue</button>
</form>
		<!--section 3 -----------------==================================------------------  -->

	<!-- 	<div id="sectionC"> -->
			<div class="panel panel-default" id="S3Q1" class="panelHide" id="Q1S3">
				<div class="panel-heading">
					<p id="Q1">
						<span>Q1.S3 </span><label for="Q1">who is the president of
							india</label>
					</p>
				</div>
				
				<div class="panel-body">
					<input type="radio" name="Ans1" id="r1">ram nath kovind <br>
					<input type="radio" name="Ans1" id="r2">atal bhihari <br>
					<input type="radio" name="Ans1" id="r3">narendra modi <br>
					<input type="radio" name="Ans1" id="r4">rahul ghandi <br>
				</div>
			</div>


			<div class="panel panel-default" id="S3Q2" class="panelHide" id="Q2S3">
				<div class="panel-heading">
					<p id="Q2S3">
						<span>Q2.S3 </span><label for="Q1">who is the president of
							india</label>
					</p>
				</div>
				<div class="panel-body">
					<input type="radio" name="Ans1" id="r1">ram nath kovind <br>
					<input type="radio" name="Ans1" id="r2">atal bhihari <br>
					<input type="radio" name="Ans1" id="r3">narendra modi <br>
					<input type="radio" name="Ans1" id="r4">rahul ghandi <br>
				</div>
			</div>


			<div class="panel panel-default" class="panelHide" id="Q3S3">
				<div class="panel-heading">
					<p id="Q3">
						<span>Q3.S3 </span><label for="Q1">who is the president of
							india</label>
					</p>
				</div>
				<div class="panel-body">
					<input type="radio" name="Ans1" id="r1">ram nath kovind <br>
					<input type="radio" name="Ans1" id="r2">atal bhihari <br>
					<input type="radio" name="Ans1" id="r3">narendra modi <br>
					<input type="radio" name="Ans1" id="r4">rahul ghandi <br>
				</div>
			</div>



			<div class="panel panel-default" class="panelHide" id="Q4S3">
				<div class="panel-heading">
					<p id="Q4">
						<span>Q4.S3 </span><label for="Q1">who is the president of
							india</label>
					</p>
				</div>
		<div class="panel-body">
					<input type="radio" name="Ans1" id="r1">ram nath kovind <br>
					<input type="radio" name="Ans1" id="r2">atal bhihari <br>
					<input type="radio" name="Ans1" id="r3">narendra modi <br>
					<input type="radio" name="Ans1" id="r4">rahul ghandi <br>
				</div>
			</div>



			<div class="panel panel-default" class="panelHide" id="Q5S3">
				<div class="panel-heading">
					<p id="Q5">
						<span>Q5.S3 </span><label for="Q1">who is the president of
							india</label>
					</p>
				</div>
			<div class="panel-body">
					<input type="radio" name="Ans1" id="r1">ram nath kovind <br>
					<input type="radio" name="Ans1" id="r2">atal bhihari <br>
					<input type="radio" name="Ans1" id="r3">narendra modi <br>
					<input type="radio" name="Ans1" id="r4">rahul ghandi <br>
				</div>
			</div>



			<div class="panel panel-default" class="panelHide" id="Q6S3">
				<div class="panel-heading">
					<p id="Q6">
						<span>Q6.S3 </span><label for="Q1">who is the president of
							india</label>
					</p>
				</div>
				<div class="panel-body">
					<input type="radio" name="Ans1" id="r1">ram nath kovind <br>
					<input type="radio" name="Ans1" id="r2">atal bhihari <br>
					<input type="radio" name="Ans1" id="r3">narendra modi <br>
					<input type="radio" name="Ans1" id="r4">rahul ghandi <br>
				</div>
			</div>
			
			
<!-- </div>	
 -->		
		<!--section 4 --------------========================================---------------------  -->

		<div id="sectionD">
			<div class="panel panel-default" class="panelHide" id="Q1S4">
				<div class="panel-heading">
					<p id="Q1">
						<span>Q1.S4 </span><label for="Q1">who is the president of
							india</label>
					</p>
				</div>
				
				<div class="panel-body">
					<input type="radio" name="Ans1" id="r1">ram nath kovind <br>
					<input type="radio" name="Ans1" id="r2">atal bhihari <br>
					<input type="radio" name="Ans1" id="r3">narendra modi <br>
					<input type="radio" name="Ans1" id="r4">rahul ghandi <br>
				</div>
			</div>


			<div class="panel panel-default" class="panelHide" id="Q2S4">
				<div class="panel-heading">
					<p id="Q2">
						<span>Q2.S4 </span><label for="Q1">who is the president of
							india</label>
					</p>
				</div>
				<div class="panel-body">
					<input type="radio" name="Ans1" id="r1">ram nath kovind <br>
					<input type="radio" name="Ans1" id="r2">atal bhihari <br>
					<input type="radio" name="Ans1" id="r3">narendra modi <br>
					<input type="radio" name="Ans1" id="r4">rahul ghandi <br>
				</div>
			</div>


			<div class="panel panel-default" class="panelHide" id="Q3S3">
				<div class="panel-heading">
					<p id="Q3">
						<span>Q3.S4 </span><label for="Q1">who is the president of
							india</label>
					</p>
				</div>
				<div class="panel-body">
					<input type="radio" name="Ans1" id="r1">ram nath kovind <br>
					<input type="radio" name="Ans1" id="r2">atal bhihari <br>
					<input type="radio" name="Ans1" id="r3">narendra modi <br>
					<input type="radio" name="Ans1" id="r4">rahul ghandi <br>
				</div>
			</div>



			<div class="panel panel-default" class="panelHide" id="Q4S4">
				<div class="panel-heading">
					<p id="Q4">
						<span>Q4.S4 </span><label for="Q1">who is the president of
							india</label>
					</p>
				</div>
		<div class="panel-body">
					<input type="radio" name="Ans1" id="r1">ram nath kovind <br>
					<input type="radio" name="Ans1" id="r2">atal bhihari <br>
					<input type="radio" name="Ans1" id="r3">narendra modi <br>
					<input type="radio" name="Ans1" id="r4">rahul ghandi <br>
				</div>
			</div>



			<div class="panel panel-default" class="panelHide" id="Q5S4">
				<div class="panel-heading">
					<p id="Q5">
						<span>Q5.S4 </span><label for="Q1">who is the president of
							india</label>
					</p>
				</div>
			<div class="panel-body">
					<input type="radio" name="Ans1" id="r1">ram nath kovind <br>
					<input type="radio" name="Ans1" id="r2">atal bhihari <br>
					<input type="radio" name="Ans1" id="r3">narendra modi <br>
					<input type="radio" name="Ans1" id="r4">rahul ghandi <br>
				</div>
			</div>



			<div class="panel panel-default" class="panelHide" id="Q6S4">
				<div class="panel-heading">
					<p id="Q6S4">
						<span>Q6.S4 </span><label for="Q1">who is the president of
							india</label>
					</p>
				</div>
				<div class="panel-body">
					<input type="radio" name="Ans1" id="r1">ram nath kovind <br>
					<input type="radio" name="Ans1" id="r2">atal bhihari <br>
					<input type="radio" name="Ans1" id="r3">narendra modi <br>
					<input type="radio" name="Ans1" id="r4">rahul ghandi <br>
				</div>
			</div>
			
			
</div>
</div>
		</div>

		<!-- right container====================================================== -->
	
		<div class="col-sm-4">
			<div id="myrightblock"  >
		<!--    name and image    =========  ===-->
	<div class="container-fluid">
	
	<div class="row jumbotron" id="info">
	<div >
	<div class="col-sm-7">
	<h4 id="name" style="color:DodgerBlue;" > <label for="name">Name:</label> <%=email %> </h4>
		<h4 id="id" style="color:DodgerBlue;"> <label for="id">id:</label>   <%=id %></h4>
	</div>
	<div class="col-sm-5">
	
	<img src=sjdj.jpg id="imges" >
	
	</div>
	
	</div>
	</div>
	</div>
	
	<!--    sections============================ ==     ===-->
	<div class="container-fluid" >
	<div id="accordion">
	<!--  section 1  ----------------------------------------------------- -->	
	<div class="panel">
	<button type="button" class="btn btn-success btn-block" data-toggle="collapse"  data-parent="#accordion" data-target="#section1" >SectionA</button>
	<div id="section1" class="collapse">
	<a type="button" class="btn btn-info" href="#Q1S1" class="paneltoggle">Q1</a>
	<a type="button" class="btn btn-info" href="#Q2S1" class="paneltoggle">Q2</a>
			<a type="button" class="btn btn-info" href="#Q3S1" class="paneltoggle">Q3</a>
				<a type="button" class="btn btn-info" href="#Q4S1" class="paneltoggle">Q4</a><br>
				<a type="button" class="btn btn-info" href="#Q5S1" class="paneltoggle">Q5</a>
	<a type="button" class="btn btn-info" href="#Q6S1" class="paneltoggle">Q6</a>
			<a type="button" class="btn btn-info" href="#Q7S1" class="paneltoggle">Q7</a>
				<a type="button" class="btn btn-info" href="#Q8S1" class="paneltoggle">Q8</a>
	</div>
	</div>
	<!-- section 2 ---------------------------------------------------------- -->
	<div class="panel">
	<button type="button" class="btn btn-success btn-block" data-toggle="collapse"  data-parent="#accordion" data-target="#section2" >SectionB</button>
	<div id="section2" class="collapse">
	<a type="button" class="btn btn-info" href="#Q1S2" class="paneltoggle">Q1</a>
	<a type="button" class="btn btn-info" href="#Q2S2" class="paneltoggle">Q2</a>
			<a type="button" class="btn btn-info" href="#Q3S2" class="paneltoggle">Q3</a>
		<a type="button" class="btn btn-info" href="#Q4S2" class="paneltoggle">Q4</a><br>
	<a type="button" class="btn btn-info" href="#Q5S2" class="paneltoggle">Q5</a>
		<a type="button" class="btn btn-info" href="#Q6S2" class="paneltoggle">Q6</a>
			
<a type="button" class="btn btn-info" href="#Q8S2" class="paneltoggle">Q8</a>
	</div>
	</div>
	<!-- section 3 ---------------------------------------------------------- -->
	<div class="panel">
	<button type="button" class="btn btn-success btn-block" data-toggle="collapse"  data-parent="#accordion" data-target="#section3" >SectionC</button>
	<div id="section3" class="collapse">
	<a type="button" class="btn btn-info" href="#Q1S3" class="paneltoggle">S3Q1</a>
	<a type="button" class="btn btn-info" href="#Q2S3" class="paneltoggle">S3Q2</a>
			<a type="button" class="btn btn-info" href="#Q3S3" class="paneltoggle">Q3</a>
				<a type="button" class="btn btn-info" href="#Q4S3" class="paneltoggle">Q4</a><br>
				<a type="button" class="btn btn-info" data-target="#Q5S3" class="paneltoggle">Q5</a>
		<a type="button" class="btn btn-info" href="#Q6S3" class="paneltoggle">Q6</a>
		<a type="button" class="btn btn-info" href="#Q7S3" class="paneltoggle">Q7</a>
				<a type="button" class="btn btn-info" href="#Q8S3" class="paneltoggle">Q7</a>
	</div>
	</div>
	<!-- section 4 ---------------------------------------------------------- -->
	<div class="panel">
	<button type="button" class="btn btn-success btn-block" data-toggle="collapse"  data-parent="#accordion" data-target="#section4" >SectionD</button>
	<div id="section4" class="collapse">
	<a type="button" class="btn btn-info" href="#Q1S4" class="paneltoggle">Q1</a>
		<a type="button" class="btn btn-info" href="#Q2S4" class="paneltoggle">Q2</a>
			<a type="button" class="btn btn-info" href="#Q3S4" class="paneltoggle">Q3</a>
				<a type="button" class="btn btn-info" href="#Q4S4" class="paneltoggle">Q4</a><br>
				<a type="button" class="btn btn-info" href="#Q5S4" class="paneltoggle">Q5</a>
		<a type="button" class="btn btn-info" href="#Q6S4" class="paneltoggle">Q6</a>
			<a type="button" class="btn btn-info" href="#Q7S4" class="paneltoggle">Q7</a>
				<a type="button" class="btn btn-info" href="#Q8S4" class="paneltoggle">Q8</a>
	</div>
	</div>
	<!--  end of section 4-->
	</div>
	</div>
	<!-- end of sections---------- -->
	</div>
	</div>
	<!-- end of left area -->
	
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</body>
</html>
