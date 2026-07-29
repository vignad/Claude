<footer class="py-5 bg-dark text-white mt-5">
	<div class="container">
		<div class="row g-4">
			<div class="col-md-6">
				<h5 class="fw-bold mb-2"><cfoutput>#application.siteName#</cfoutput></h5>
				<p class="text-white-50 small mb-0">
					<cfoutput>Serving clients since #dateFormat(application.founded, "yyyy")#.</cfoutput>
				</p>
			</div>
			<div class="col-md-6 text-md-end">
				<p class="text-white-50 small mb-0">
					<cfoutput>&copy; #year(now())# #application.siteName#. All rights reserved.</cfoutput>
				</p>
				<p class="text-white-50 small mb-0">
					<cfoutput>Visits this session run: #numberFormat(application.visitCount)#</cfoutput>
				</p>
			</div>
		</div>
	</div>
</footer>

<script src="../assets/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
</body>
</html>
