<header id="banner">
  <div class="navbar navbar-classic navbar-top py-3 px-0">
    <div class="container-fluid container-fluid-max-xl user-personal-bar">
      <div class="justify-content-center justify-content-lg-start align-items-center autofit-row">
        <a 
          class="${logo_css_class} d-flex align-items-center logo-md" 
          href="${site_default_url}" 
          title="<@liferay.language_format arguments='${site_name}' key='go-to-x' />"
        >
          <img 
            alt="${logo_description}" 
            class="mr-2" 
            height="40" 
            src="${site_logo}" 
          />

          <#if show_site_name>
            <h1 
              aria-hidden="${show_control_menu?then('true', 'false')}"
              class="site-name d-none d-lg-block"
            >
              ${(site_name != "igormodesto")?then(site_name, "Instituto SENAI de Tecnologia")}
            </h1>
          </#if>
        </a>

        <div class="autofit-col autofit-col-expand d-none d-lg-flex">
          <@liferay.navigation_menu default_preferences="${preferences}" />
        </div>

        <div class="autofit-col d-none d-lg-flex">
          <@liferay.user_personal_bar />
        </div>
      </div>
    </div>
  </div>
</header>