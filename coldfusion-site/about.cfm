<cfset pageTitle = "About — " & application.siteName>
<cfset activePage = "about">
<cfinclude template="includes/header.cfm">

<section class="py-5">
	<div class="container py-5">
		<div class="row g-5 align-items-center">
			<div class="col-lg-6">
				<h1 class="fw-bold mb-3">About us</h1>
				<cfset yearsActive = dateDiff("yyyy", application.founded, now())>
				<cfoutput>
				<p class="text-secondary">
					Founded in #dateFormat(application.founded, "yyyy")#, #application.siteName# has spent
					#yearsActive# years helping teams plan, build, and maintain web applications.
					We're a small, senior team that prefers direct communication over process overhead.
				</p>
				</cfoutput>
				<p class="text-secondary">
					We work across the stack, but we have particular depth in CFML application
					modernization, database-backed reporting tools, and integration work.
				</p>
			</div>
			<div class="col-lg-6">
				<div class="row g-3">
					<cfset team = [
						{name: "Jordan Reyes", role: "Founder & Lead Engineer"},
						{name: "Priya Nandan", role: "Senior Developer"},
						{name: "Sam O'Connor", role: "Project Manager"},
						{name: "Wei Zhang", role: "QA & Automation"}
					]>
					<cfloop array="#team#" index="member">
						<div class="col-sm-6">
							<div class="card p-3 h-100">
								<h6 class="fw-semibold mb-1"><cfoutput>#member.name#</cfoutput></h6>
								<p class="text-secondary small mb-0"><cfoutput>#member.role#</cfoutput></p>
							</div>
						</div>
					</cfloop>
				</div>
			</div>
		</div>
	</div>
</section>

<cfinclude template="includes/footer.cfm">
