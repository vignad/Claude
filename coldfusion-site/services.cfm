<cfset pageTitle = "Services — " & application.siteName>
<cfset activePage = "services">
<cfinclude template="includes/header.cfm">

<section class="py-5">
	<div class="container py-5">
		<h1 class="fw-bold text-center mb-2">Services</h1>
		<p class="text-secondary text-center mb-5">Fixed-scope engagements or ongoing retained support — whichever fits.</p>

		<cfset services = [
			{name: "Application Development", price: "Project-based", details: ["New feature builds", "API integrations", "Database design"]},
			{name: "Modernization", price: "Project-based", details: ["Legacy CFML upgrades", "Framework migrations", "Dependency updates"]},
			{name: "Retained Support", price: "From $2,500/mo", details: ["Bug fixes & patches", "Monthly reporting", "Priority response time"]}
		]>

		<div class="row g-4 justify-content-center">
			<cfloop array="#services#" index="svc">
				<div class="col-md-4">
					<div class="card h-100 p-4">
						<h5 class="fw-semibold"><cfoutput>#svc.name#</cfoutput></h5>
						<div class="text-brand fw-bold mb-3"><cfoutput>#svc.price#</cfoutput></div>
						<ul class="list-unstyled text-secondary mb-4">
							<cfloop array="#svc.details#" index="line">
								<li class="mb-2"><cfoutput>✔ #line#</cfoutput></li>
							</cfloop>
						</ul>
						<a href="contact.cfm" class="btn btn-outline-secondary mt-auto">Ask about this</a>
					</div>
				</div>
			</cfloop>
		</div>
	</div>
</section>

<cfinclude template="includes/footer.cfm">
