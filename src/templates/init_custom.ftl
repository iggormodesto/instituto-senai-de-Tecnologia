<#--  VARIÁVEIS GLOBAIS  -->
<#assign preferences = freeMarkerPortletPreferences.getPreferences({"portletSetupPortletDecoratorId": "barebone", "destination": "/search"}) />

<#--  CAMPOS DE CONFIGURAÇÃO  -->
<#assign wrap_widget_page_content = getterUtil.getBoolean(themeDisplay.getThemeSetting("wrap-widget-page-content")) />
<#assign facebookUrl = getterUtil.getString(themeDisplay.getThemeSetting("facebook-url")) />
<#assign XTwitterUrl = getterUtil.getString(themeDisplay.getThemeSetting("x-twitter-url")) />
<#assign youtubeUrl = getterUtil.getString(themeDisplay.getThemeSetting("youtube-url")) />
<#assign privacyPolicyUrl = getterUtil.getString(themeDisplay.getThemeSetting("POLÍTICA DE PRIVACIDADE URL")) />

<#--  GRID  -->
<#if wrap_widget_page_content && ((layout.isTypeContent() && themeDisplay.isStateMaximized()) || (layout.getType() == "portlet"))>
	<#assign portal_content_css_class = "container" />
<#else>
	<#assign portal_content_css_class = "" />
</#if>