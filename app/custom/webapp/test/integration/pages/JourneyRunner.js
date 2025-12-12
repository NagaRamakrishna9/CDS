sap.ui.define([
    "sap/fe/test/JourneyRunner",
	"custom/test/integration/pages/ProjectsMain"
], function (JourneyRunner, ProjectsMain) {
    'use strict';

    var runner = new JourneyRunner({
        launchUrl: sap.ui.require.toUrl('custom') + '/test/flpSandbox.html#custom-tile',
        pages: {
			onTheProjectsMain: ProjectsMain
        },
        async: true
    });

    return runner;
});

