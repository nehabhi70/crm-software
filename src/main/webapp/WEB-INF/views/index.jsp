<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Home Page</title>
		
		<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet">
		<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"></script>
		<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js"></script>
		
		<link rel="stylesheet" type="text/css" href="css/style.css">
		
	</head>
	<body>
		<jsp:include page="header-crm.jsp" />
		<div class="container-fluid">
			<div class="row main_page_banner">
				<div class="col-8 p-5 text-white">
					<span class="main_page_title">Activate all your customer data across Salesforce applications with Data Cloud.
						 Empower teams to engage customers, at every touchpoint, with relevant insights and
						 contextual data in the flow of work.</span>
				</div>
				<div class="col-4 p-5">
					<img src="images/crm-logo.png" height="250"/>
				</div>
			</div>
		</div>
		<div class="container-fluid p-5">
			<div class="container">
				<div class="row">
					<div class="col-6">
						<h3>How a CRM works?</h3>
						<span>A good CRM doesn’t stop at collecting information. It helps you harness all of that data to:</span>
						<ul>
						<li>Get personal at scale, sending the right messages at the right times to leads and clients</li>
						<li>Focus sales teams on the hottest prospects</li>
						<li>Shorten the sales cycle</li>
						<li>Monitor, analyze and improve results</li>
						</ul>
					</div>
					<div class="col-6">
						<h3>How Do I Get Started with CRM?</h3>
						<span>The best way to fully understand how to use the right software to organize and grow your business is to test out the best CRM for small business.</span>
						<ul>
						<li>Import your list of contacts and map your fields</li>
						<li>Add custom fields to capture any new data points you’d like to store for your leads or customers</li>
						<li>Categorize your contacts with tags for easy segmentation (website leads, repeat customers, vendors, partners)</li>
						<li>Add tasks, notes, files, and other details to a contact record</li>
						<li>Create a lead capture form or landing page to collect lead data directly in your CRM</li>
						<li>Explore additional features that will help you level up your business like Easy Automations, Appointments and email marketing</li>
						</ul>
					</div>
				</div>
			</div>
		</div>
	</body>
</html>