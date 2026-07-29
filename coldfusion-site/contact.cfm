<cfset pageTitle = "Contact — " & application.siteName>
<cfset activePage = "contact">

<cfparam name="form.submitted" default="0">
<cfset errors = []>
<cfset formSent = false>

<cfif form.submitted EQ 1>
	<cfparam name="form.name" default="">
	<cfparam name="form.email" default="">
	<cfparam name="form.message" default="">

	<cfif NOT len(trim(form.name))>
		<cfset arrayAppend(errors, "Please enter your name.")>
	</cfif>
	<cfif NOT len(trim(form.email)) OR NOT reFind("^[^@\s]+@[^@\s]+\.[^@\s]+$", trim(form.email))>
		<cfset arrayAppend(errors, "Please enter a valid email address.")>
	</cfif>
	<cfif NOT len(trim(form.message))>
		<cfset arrayAppend(errors, "Please enter a message.")>
	</cfif>

	<cfif arrayLen(errors) EQ 0>
		<cftry>
			<cfmail
				to="hello@example.com"
				from="website@example.com"
				replyto="#trim(form.email)#"
				subject="New contact form submission from #trim(form.name)#"
				type="text">
#trim(form.message)#

From: #trim(form.name)# <#trim(form.email)#>
			</cfmail>
			<cfcatch type="any">
				<cfset arrayAppend(errors, "We couldn't send your message right now. Please try again later or email us directly.")>
				<cflog text="Contact form mail failure: #cfcatch.message#" file="aurora-site" type="error">
			</cfcatch>
		</cftry>
		<cfif arrayLen(errors) EQ 0>
			<cfset formSent = true>
		</cfif>
	</cfif>
</cfif>

<cfinclude template="includes/header.cfm">

<section class="py-5">
	<div class="container py-5">
		<div class="row justify-content-center">
			<div class="col-lg-6">
				<h1 class="fw-bold text-center mb-4">Get in touch</h1>

				<cfif formSent>
					<div class="alert alert-success">
						Thanks! Your message has been sent — we'll be in touch soon.
					</div>
				<cfelse>
					<cfif arrayLen(errors)>
						<div class="alert alert-danger">
							<ul class="mb-0">
								<cfloop array="#errors#" index="err">
									<li><cfoutput>#err#</cfoutput></li>
								</cfloop>
							</ul>
						</div>
					</cfif>

					<form method="post" action="contact.cfm">
						<input type="hidden" name="submitted" value="1">
						<div class="mb-3">
							<label class="form-label" for="name">Name</label>
							<cfoutput>
							<input type="text" class="form-control" id="name" name="name" value="#htmlEditFormat(form.name ?: '')#" required>
							</cfoutput>
						</div>
						<div class="mb-3">
							<label class="form-label" for="email">Email</label>
							<cfoutput>
							<input type="email" class="form-control" id="email" name="email" value="#htmlEditFormat(form.email ?: '')#" required>
							</cfoutput>
						</div>
						<div class="mb-3">
							<label class="form-label" for="message">Message</label>
							<cfoutput>
							<textarea class="form-control" id="message" name="message" rows="5" required>#htmlEditFormat(form.message ?: '')#</textarea>
							</cfoutput>
						</div>
						<button type="submit" class="btn btn-brand btn-lg w-100">Send message</button>
					</form>
				</cfif>
			</div>
		</div>
	</div>
</section>

<cfinclude template="includes/footer.cfm">
