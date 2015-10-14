// Plain javascript that runs before AUI is ready (to prevent content flashing

// Body
addCssClassName(document.body, 'js');

//Dockbar
var plainOldJsDockbarNode = document.getElementById('dockbarWrap');
addCssClassName(plainOldJsDockbarNode, 'aui-helper-hidden');

function addCssClassName(node, cssClassName) {
	if(node) {
		var newClassName = node.className + ' ' + cssClassName;
		node.className = newClassName;
	}
}

AUI().ready('vgr-theme', function(A) {

	var vgrTheme = new A.VgrTheme().render();

});

Liferay.on('allPortletsReady',function() {

});
