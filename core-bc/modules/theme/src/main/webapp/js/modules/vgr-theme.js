AUI().add('vgr-theme',function(A) {
    var Lang = A.Lang,

        NAME = 'vgr-theme',
        NS = 'vgr-theme'
    ;

    var VgrTheme = A.Component.create(
            {
                ATTRS: {

                    someAttribute: {
                        value: ''
                    }

                },
                EXTENDS: A.Component,
                NAME: NAME,
                NS: NS,
                prototype: {

                    initializer: function(config) {
                        var instance = this;
                    },

                    renderUI: function() {
                        var instance = this;

                        instance._initBreadcrumbs();
                        instance._initNavigationButton();
                        instance._initMainNavigation();
                    },

                    bindUI: function() {
                        var instance = this;
                    },

                    _initBreadcrumbs: function() {
                    	var instance = this;

                    	var breadcrumbItems = A.all('#breadcrumbs ul.breadcrumbs li');
                    	if(breadcrumbItems.size() > 0) {
                    		var firstItem = breadcrumbItems.item(0);
                    		var lastItem = breadcrumbItems.item(breadcrumbItems.size() - 1);

                    		firstItem.addClass('first');
                    		lastItem.addClass('last');
                    	}
                    },

            		_initMainNavigation: function() {
            			var instance = this;

            			var mainNavList = A.one('#navigation ul.nav-list');

            			if(mainNavList) {
            				var mainNavListItems = mainNavList.all('> li');

                			mainNavListItems.on('mouseenter', instance._onMainNavItemEnter, instance);
                			mainNavListItems.on('mouseleave', instance._onMainNavItemLeave, instance);

                			// Extra callback method that ensures that no hover classes are left behind in ie
                			mainNavList.on('mouseenter', instance._onMainNavEnter, instance);
                			mainNavList.on('mouseleave', instance._onMainNavLeave, instance);
            			}
            		},

            		_initNavigationButton: function() {
            			var instance = this;

            			var vgrNavigationButton = new A.VgrNavigationButton();

            			vgrNavigationButton.render();
            		},

            		_onMainNavEnter: function(e) {
            			var instance = this;
            		},

            		_onMainNavLeave: function(e) {
            			var instance = this;

            			var mainNavList = e.currentTarget;

            			var mainNavListItems = mainNavList.all('li');
            			mainNavListItems.removeClass('hover');
            		},

            		_onMainNavItemEnter: function(e) {
            			var instance = this;

            			var navListItem = e.currentTarget;

            			var allNavListItems = A.all('#navigation li');
            			allNavListItems.removeClass('hover');

            			navListItem.addClass('hover');
            		},

            		_onMainNavItemLeave: function(e) {
            			var instance = this;

            			var navListItem = e.currentTarget;
            			navListItem.removeClass('hover');
            		},

                    _someFunction: function(e) {
                        var instance = this;
                    }

                }
            }
    );

    A.VgrTheme = VgrTheme;

    },1, {
        requires: [
            'aui-base',
            'event',
            'vgr-navigation-button'

      ]
    }
);
