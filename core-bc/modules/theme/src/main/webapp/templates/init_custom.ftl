<#------ Taglibs ----------------------------------------------------------------------------------------------------------------->

<#assign liferay_ui=PortalJspTagLibs["/WEB-INF/tld/liferay-ui.tld"]>
<#assign aui=PortalJspTagLibs["/WEB-INF/tld/liferay-aui.tld"]>

<#------ Define services ----------------------------------------------------------------------------------------------------------------->

<#assign expandoValueLocalService = serviceLocator.findService("com.liferay.portlet.expando.service.ExpandoValueLocalService") />
<#assign layoutLocalService = serviceLocator.findService("com.liferay.portal.service.LayoutLocalService") />
<#assign journalArticleLocalService = serviceLocator.findService("com.liferay.portlet.journal.service.JournalArticleLocalService") />

<#assign portletItemLocalService = serviceLocator.findService("com.liferay.portal.service.PortletItemLocalService") />
<#assign portletPreferencesLocalService = serviceLocator.findService("com.liferay.portal.service.PortletPreferencesLocalService") />
<#assign roleLocalService = serviceLocator.findService("com.liferay.portal.service.RoleLocalService") />
<#assign userGroupLocalService = serviceLocator.findService("com.liferay.portal.service.UserGroupLocalService") />

<#------ Define variables ----------------------------------------------------------------------------------------------------------------->

<#------ Portlet Ids ----------------------------------------------------------------------------------------------------------------->

<#------ Theme Settings ----------------------------------------------------------------------------------------------------------------->

<#assign show_breadcrumbs = false />

<#assign theme_setting_show_breadcrumbs = theme_display.getThemeSetting("show-breadcrumbs")! />

<#if theme_setting_show_breadcrumbs = "true">
	<#assign show_breadcrumbs = true />
</#if>

<#------ Dockbar ----------------------------------------------------------------------------------------------------------------->

<#assign css_class = css_class + " dockbar-split" />

<#assign showDockbar = permissionChecker.isOmniadmin() || permissionChecker.isCompanyAdmin(company_id) || permissionChecker.isCommunityAdmin(group_id) || permissionChecker.isCommunityOwner(group_id) />


<#------ Phrases ----------------------------------------------------------------------------------------------------------------->

<#assign portal_name = "" />
<#assign breadcrumbs_label = "Du &auml;r h&auml;r" />

<#------ RP Admin ----------------------------------------------------------------------------------------------------------------->

<#if permissionChecker.isOmniadmin()>
	<#assign css_class = css_class + " rp-admin" />
</#if>

<#------ Theme Javascript ----------------------------------------------------------------------------------------------------------------->

<#assign js_full_path = full_templates_path + "/../js" />

<#-- If set to true, theme_js_scripts are loaded inline in page (i.e. directly inside a script tag) which reduces the number of http requests -->
<#assign theme_js_inline = false />

<#assign theme_js_scripts = [
	"fixes/ios-orientationchange-fix.js",
	"modules/rp-theme-2.js",
	"theme-main.js"]
/>
