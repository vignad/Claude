<cfparam name="pageTitle" default="#application.siteName#">
<cfparam name="activePage" default="">
<!doctype html>
<html lang="en" data-bs-theme="light">
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title><cfoutput>#pageTitle#</cfoutput></title>
	<link href="../assets/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
	<style>
		:root { --brand: #6d5efc; --brand-dark: #4b3df5; }
		body { font-family: system-ui, -apple-system, "Segoe UI", Roboto, sans-serif; }
		.btn-brand { background-color: var(--brand); border-color: var(--brand); color: #fff; }
		.btn-brand:hover { background-color: var(--brand-dark); border-color: var(--brand-dark); color: #fff; }
		.text-brand { color: var(--brand); }
		.navbar-brand { font-weight: 800; letter-spacing: -0.02em; }
	</style>
</head>
<body>

<nav class="navbar navbar-expand-lg bg-white border-bottom sticky-top">
	<div class="container">
		<a class="navbar-brand text-brand" href="index.cfm"><cfoutput>#application.siteName#</cfoutput></a>
		<button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navMenu">
			<span class="navbar-toggler-icon"></span>
		</button>
		<div class="collapse navbar-collapse" id="navMenu">
			<ul class="navbar-nav ms-auto align-items-lg-center gap-lg-2">
				<cfoutput>
				<li class="nav-item"><a class="nav-link #(activePage EQ 'home') ? 'active fw-semibold text-brand' : ''#" href="index.cfm">Home</a></li>
				<li class="nav-item"><a class="nav-link #(activePage EQ 'about') ? 'active fw-semibold text-brand' : ''#" href="about.cfm">About</a></li>
				<li class="nav-item"><a class="nav-link #(activePage EQ 'services') ? 'active fw-semibold text-brand' : ''#" href="services.cfm">Services</a></li>
				<li class="nav-item"><a class="nav-link #(activePage EQ 'contact') ? 'active fw-semibold text-brand' : ''#" href="contact.cfm">Contact</a></li>
				</cfoutput>
				<li class="nav-item ms-lg-2">
					<a class="btn btn-brand" href="contact.cfm">Get in touch</a>
				</li>
			</ul>
		</div>
	</div>
</nav>
