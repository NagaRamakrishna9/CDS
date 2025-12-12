sap.ui.define(
    ["sap/fe/core/AppComponent"],
    function (Component) {
        "use strict";

        return Component.extend("custom.Component", {
            metadata: {
                manifest: "json"
            }
        });
    }
);