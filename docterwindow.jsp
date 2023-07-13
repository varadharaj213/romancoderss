<!DOCTYPE html>
<!-- Website template by freewebsitetemplates.com -->
<html>
<head>
<meta charset="UTF-8">
<title>Medical Hospital Website Template</title>
<link rel="stylesheet" href="css/style.css" type="text/css">
</head>
<body>
<%@ page import="java.util.List" %>
 <%@ page import="java.sql.*" %>
  <%@ page import="com.Connection.*" %>
 <%  PreparedStatement ps = null;
 	ResultSet resultSet= null;
Statement st=null;
PreparedStatement ps1 = null;
	ResultSet resultSet1= null;
Statement st1=null;
String query=null;
%>
<% HttpSession session1=request.getSession(false);  
String id=(String)session.getAttribute("id");  

String name=request.getParameter("id");
%>
	<div class="background">
		<div class="page">
			<a href="index.html" id="logo">Apollo Hospital</a>
			<div class="sidebar">
				<ul>
					<li class="selected"><a href="index.html">Home</a></li>
					<li><a href="programs.html">Programs</a></li>
					<li><a href="about.html">About</a></li>
					<li><a href="services.html">Services</a></li>
					<li><a href="blog.html">Blog</a></li>
					<li><a href="contact.html">Contact</a></li>
				</ul>
				<div class="first">
					<div>
						<h3>This is just a place holder</h3>
						<img src="images/man.jpg" alt="">
						<p>This is just a place holder, so you can see what the site
							would look like.</p>
					</div>
				</div>
				<div>
					<div>
						<h3>This is just a place holder</h3>
						<p>You can replace all this text with your own text.</p>
						<img src="images/doctors-and-nurse.jpg" alt="">
						<p>You can remove any link to our website from this website
							template, you&#39;re free to use this website template without
							linking back to us. You can remove any link to our website from
							this website template, you&#39;re free to use this website
							template without linking back to us. This is a place holder, so
							you can see what the site would look like.</p>
					</div>
				</div>
			</div>
			<div class="body">
				<div class="home">
					<div class="featured">
						<img src="images/doctors.jpg" alt="">
						<div>
							<p>Apollo Hospitals is India's leading super speciality
								hospital. Our team of over 5000 doctors give you the best of
								modern healthcare to ensure you stay healthy.</p>
						</div>
					</div>
					<div>
						<div>
							<div>
								<h4>ID = <%=id %></h4>
								<h3>Welcome Sir</h3>

								<p>
					 <br />
		<a href="logout.jsp" title="" style="margin-left: 375px;"><font face="TimesNewRoman" color="blue" size="4">LogOut</font></a>
<a href="patientreceive.jsp" title="" style="margin-left: 375px;"><font face="TimesNewRoman" color="blue" size="4">Messages</font></a>
			<h4><a href="#"></a></h4><br />
			<fieldset>
			<form action="Reply" method="post">
			<table border=1>
			<tr bgcolor="yellow"><td>Patient ID</td><td>Name</td><td>Message</td><td>Reply</td></tr>
         <%
		
			
				query="select user_id,user_name,user_msg from messages where dr_id='"+id+"' and dr_msg='---' and user_name='"+name+"'";
				ps1=Database.con().prepareStatement(query);
				resultSet1=ps1.executeQuery();
			    while(resultSet1.next())
			    {
			    %>
			    <tr>
			    <td ><%=resultSet1.getString(1) %></td>
			    <td ><%=resultSet1.getString(2) %></td>
			    <td ><%=resultSet1.getString(3) %></td>
			    <td><textarea rows=3 cols=12 name="reply"></textarea><input type="submit" value="<%=resultSet1.getString(2) %>" name="sub"/></td>
			    </tr>
			    <%
			    	
			    }
           
         %>
            
         </table>
         </form>
         </fieldset>
         <br><br>
            Replied Messages
            <fieldset><table border=1>
			<tr bgcolor="yellow"><td>Patient ID</td><td>Name</td><td>Message</td><td>Reply</td></tr>
         <%
		
			
				String query1="select user_id,user_name,user_msg,dr_msg from messages where dr_id='"+id+"' and dr_msg!='---'";
				ps=Database.con().prepareStatement(query1);
				resultSet=ps.executeQuery();
			    while(resultSet.next())
			    {
			    %>
			    <tr>
			    <td><%=resultSet.getString(1) %></td>
			    <td><%=resultSet.getString(2) %></td>
			    <td><%=resultSet.getString(3) %></td>
			    <td><%=resultSet.getString(4) %></td>
			    </tr>
			    <%
			    	
			    
				}
         %>
            
         </table>
            </fieldset>
								<br>
								<br>
								</p>
								
							</div>
							<div>
								<h4>Therapy</h4>
								<h2>You can replace all this text with your own text</h2>
								<ul>
									<li>This is just a place holder, so you can see what the
										site would look like.</li>
									<li>This is just a place holder</li>
									<li>You can remove any link to our website from this
										website template.</li>
									<li>This is just a place holder</li>
									<li>You&#39;re free to use this website template without
										linking back to us.</li>
								</ul>
								<span><a href="programs.html">Learn more</a></span>
							</div>
						</div>
						<div>
							<h4>Services</h4>
							<a href="services.html"><img src="images/services.jpg" alt=""></a>
							<ul>
								<li><a href="services.html">Lorem ipsum dolor</a></li>
								<li><a href="services.html">Consectetur adipiscing</a></li>
								<li><a href="services.html">This is just a place holder</a>
								</li>
								<li><a href="services.html">Nullam eu diam eros</a></li>
								<li><a href="services.html">Vestibulum fermentum</a></li>
								<li><a href="services.html">Donec risus nulla</a></li>
								<li><a href="services.html">This is just a place holder</a>
								</li>
								<li><a href="services.html">Nullam eu diam eros</a></li>
								<li><a href="services.html">Lorem ipsum dolor</a></li>
								<li><a href="services.html">Consectetur adipiscing</a></li>
								<li><a href="services.html">This is just a place holder</a>
								</li>
								<li><a href="services.html">Nullam eu diam eros</a></li>
								<li><a href="services.html">Lorem ipsum dolor</a></li>
								<li><a href="services.html">Consectetur adipiscing</a></li>
							</ul>
							<span><a href="programs.html">Learn More</a></span>
						</div>
					</div>
				</div>
			</div>
			<div class="footer">
				<div>
					<div>
						<h4>Blog</h4>
						<p>This website template has been designed by Free Website
							Templates for you, for free. You can replace all this text with
							your own text.</p>
						<a href="blog.html">Go To Blog</a>
					</div>
					<div>
						<h4>Links</h4>
						<ul>
							<li><a href="index.html">Home</a></li>
							<li><a href="programs.html">Programs</a></li>
							<li><a href="about.html">About</a></li>
							<li><a href="services.html">Services</a></li>
							<li><a href="blog.html">Blog</a></li>
							<li><a href="contact.html">Contact</a></li>
						</ul>
					</div>
					<div class="connect">
						<h4>Keep In Touch</h4>
						<a href="http://freewebsitetemplates.com/go/twitter/" id="twitter">twitter</a>
						<a href="http://freewebsitetemplates.com/go/facebook/"
							id="facebook">facebook</a> <a
							href="http://freewebsitetemplates.com/go/googleplus/"
							id="googleplus">google+</a>
					</div>
				</div>
				<p>&#169; Copyright 2012. All rights reserved</p>
			</div>
		</div>
	</div>
</body>
</html>