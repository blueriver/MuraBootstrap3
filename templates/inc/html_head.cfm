<cfoutput>
<!DOCTYPE html>
<html lang="en"<cfif m.hasFETools()> class="mura-edit-mode"</cfif>>
<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<meta name="description" content="#esapiEncode('html_attr', m.content('metaDesc'))#">
	<meta name="keywords" content="#esapiEncode('html_attr', m.content('metaKeywords'))#">
	<cfif len(m.content('credits'))><meta name="author" content="#esapiEncode('html_attr', m.content('credits'))#"></cfif>
	<meta name="generator" content="Mura CMS #m.globalConfig('version')#">

	<title>#esapiEncode('html', m.content('HTMLTitle'))# - #esapiEncode('html', m.siteConfig('site'))#</title>
	<link rel="canonical" href="#m.getCurrentURL(complete=true)#">

	<!--- Mura CSS Styles--->
	#m.outputMuraCSS(version="7.1", includeskin=true)#

	<!--- Bootstrap core CSS --->
	<link rel="stylesheet" href="#m.siteConfig('themeAssetPath')#/assets/bootstrap/css/bootstrap.min.css">

	<!--- Font Awesome --->
	<link rel="stylesheet" href="#m.siteConfig('themeAssetPath')#/assets/font-awesome/css/font-awesome.css">

	<!---
				THEME CSS
				This has been compiled using a pre-processor such as CodeKit or Prepros
	--->
	<link rel="stylesheet" href="#m.siteConfig('themeAssetPath')#/css/theme/theme.min.css">

	<!--[if IE]>
	<link rel="stylesheet" href="#m.siteConfig('themeAssetPath')#/css/ie/ie.min.css">
	<![endif]-->

	<!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
	<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
	<!--[if lt IE 9]>
	<script src="#m.siteConfig('themeAssetPath')#/js/html5shiv/html5shiv.js"></script>
	<script src="#m.siteConfig('themeAssetPath')#/js/respond/respond.min.js"></script>
	<![endif]-->

	<!--- jQuery --->
	<script src="#m.globalConfig('corePath')#/vendor/jquery/jquery.min.js"></script>

	<!--- FAV AND TOUCH ICONS --->
	<link rel="shortcut icon" href="#$.globalConfig('corePath')#/modules/v1/core_assets/images/favicon.ico">
	<!--- <link rel="apple-touch-icon-precomposed" sizes="144x144" href="#m.siteConfig('themeAssetPath')#/images/ico/ico/apple-touch-icon-144-precomposed.png">
	<link rel="apple-touch-icon-precomposed" sizes="114x114" href="#m.siteConfig('themeAssetPath')#/images/ico/ico/apple-touch-icon-114-precomposed.png">
	<link rel="apple-touch-icon-precomposed" sizes="72x72" href="#m.siteConfig('themeAssetPath')#/images/ico/ico/apple-touch-icon-72-precomposed.png">
	<link rel="apple-touch-icon-precomposed" href="#m.siteConfig('themeAssetPath')#/images/ico/ico/apple-touch-icon-57-precomposed.png"> --->

	<!--- MURA FEEDS --->
	<cfset rs=m.getBean('feedManager').getFeeds(m.event('siteID'),'Local',true,true) />
	<cfset apiEndpoint=m.siteConfig().getApi('feed','v1').getEndpoint() />
	<cfloop query="rs"><link rel="alternate" type="application/rss+xml" title="#esapiEncode('html_attr', m.siteConfig('site'))# - #esapiEncode('html_attr', rs.name)#" href="#XMLFormat('#apiEndpoint#/?feedID=#rs.feedID#')#"></cfloop>
</head>
</cfoutput>
