component {

	this.name = "AuroraConsultingSite";
	this.applicationTimeout = createTimeSpan(1, 0, 0, 0);
	this.sessionManagement = true;
	this.sessionTimeout = createTimeSpan(0, 0, 30, 0);
	this.setClientCookies = true;

	function onApplicationStart() {
		application.siteName = "Aurora Consulting";
		application.founded = createDate(2015, 3, 1);
		application.visitCount = 0;
		return true;
	}

	function onSessionStart() {
		session.hasVisited = false;
	}

	function onRequestStart(targetPage) {
		lock name="aurora-visit-counter" type="exclusive" timeout="5" {
			if (!session.hasVisited) {
				application.visitCount++;
				session.hasVisited = true;
			}
		}
		return true;
	}

	function onError(exception, eventName) {
		writeLog(text="Unhandled error on #eventName#: #exception.message#", type="error", file="aurora-site");
		writeOutput("<h1>Something went wrong</h1><p>Please try again later.</p>");
	}

}
