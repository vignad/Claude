<cfset pageTitle = application.siteName & " — Consulting that ships">
<cfset activePage = "home">
<cfinclude template="includes/header.cfm">

<section class="py-5" style="background: radial-gradient(circle at top right, #efeaff 0%, #ffffff 55%);">
	<div class="container py-5">
		<div class="row align-items-center g-5">
			<div class="col-lg-7">
				<h1 class="display-4 fw-bold mb-3">We help teams ship software faster</h1>
				<p class="lead text-secondary mb-4">
					<cfoutput>#application.siteName#</cfoutput> is a small consultancy that plans, builds, and
					supports web applications — from CFML legacy systems to modern front ends.
				</p>
				<a href="contact.cfm" class="btn btn-brand btn-lg px-4">Start a project</a>
				<a href="services.cfm" class="btn btn-outline-secondary btn-lg px-4">Our services</a>
			</div>
			<div class="col-lg-5">
				<div class="card p-4 shadow-sm">
					<h5 class="fw-semibold mb-3">By the numbers</h5>
					<cfset yearsActive = dateDiff("yyyy", application.founded, now())>
					<div class="row text-center g-3">
						<div class="col-4">
							<div class="fs-3 fw-bold text-brand"><cfoutput>#yearsActive#</cfoutput>+</div>
							<div class="small text-secondary">Years active</div>
						</div>
						<div class="col-4">
							<div class="fs-3 fw-bold text-brand">40+</div>
							<div class="small text-secondary">Projects shipped</div>
						</div>
						<div class="col-4">
							<div class="fs-3 fw-bold text-brand">12</div>
							<div class="small text-secondary">Team members</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</section>

<section class="py-5 bg-light">
	<div class="container py-5">
		<h2 class="fw-bold text-center mb-5">What we do</h2>
		<div class="row g-4">
			<cfset offerings = [
				{icon: "🛠️", title: "Application development", desc: "New builds and modernization for CFML, Java, and JS stacks."},
				{icon: "🚀", title: "Performance tuning", desc: "Find and fix the bottlenecks slowing your app down."},
				{icon: "🔧", title: "Ongoing support", desc: "Retained engineering time for bug fixes and small features."}
			]>
			<cfloop array="#offerings#" index="item">
				<div class="col-md-4">
					<div class="card h-100 p-4 border-0 shadow-sm">
						<div class="fs-2 mb-2"><cfoutput>#item.icon#</cfoutput></div>
						<h5 class="fw-semibold"><cfoutput>#item.title#</cfoutput></h5>
						<p class="text-secondary mb-0"><cfoutput>#item.desc#</cfoutput></p>
					</div>
				</div>
			</cfloop>
		</div>
	</div>
</section>

<cfinclude template="includes/footer.cfm">
