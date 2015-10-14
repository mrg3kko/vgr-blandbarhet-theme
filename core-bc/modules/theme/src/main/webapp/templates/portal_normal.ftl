<!DOCTYPE html>

<#include init />

<html class="${root_css_class}" dir="<@liferay.language key="lang.dir" />" lang="${w3c_language_id}">

<head>
	<title>${the_title} - ${company_name}</title>

	<meta content="initial-scale=1.0, width=device-width" name="viewport" />
	<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">

	${theme.include(top_head_include)}

	<script src="${javascript_folder}/fixes/modernizr.custom.js"></script>
	<!--[if (gte IE 6)&(lte IE 8)]>
		<script type="text/javascript" src="${javascript_folder}/selectivizr.js"></script>
	<![endif]-->
</head>

<body class="${css_class}">

<a href="#main-content" id="skip-to-content"><@liferay.language key="skip-to-content" /></a>

${theme.include(body_top_include)}

<div class="container-fluid" id="wrapper">

	<header id="banner" role="banner">
		<div id="heading" class="clearfix">
			<h1 class="site-title">
				<a class="${logo_css_class} ${theme.getSetting('additional-logo-class')}" href="${site_default_url}" title="${site_name}">
					<img alt="${logo_description}" height="${site_logo_height}" src="${site_logo}" width="${site_logo_width}" />
				</a>
			</h1>

      <div class="top-wrap">
      	<div class="dockbar-wrap">
					<@liferay.dockbar />
        </div>
			</div>

		</div>

		<#if has_navigation || is_signed_in>
				<#include "${full_templates_path}/navigation.ftl" />
		</#if>
	</header>

	<div id="content">

		<#if selectable>
			${theme.include(content_include)}
		<#else>
			${portletDisplay.recycle()}

			${portletDisplay.setTitle(the_title)}

			${theme.wrapPortlet("portlet.ftl", content_include)}
		</#if>

	</div>

</div>

${theme.include(body_bottom_include)}

<#include "${full_templates_path}/theme_js_bottom.ftl" />

${theme.include(bottom_include)}

</body>

</html>
