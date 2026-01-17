<header id="banner">
  <div class="navbar navbar-classic navbar-top py-3">
    <div class="container-fluid container-fluid-max-xl user-personal-bar">
      <div class="align-items-center autofit-row">
        <a 
          class="${logo_css_class} align-items-center d-md-inline-flex d-sm-none d-none logo-md" 
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
              class="site-name"
            >
              ${(site_name != "igormodesto")?then(site_name, "Instituto SENAI de Tecnologia")}
            </h1>
          </#if>
        </a>

        <div class="autofit-col autofit-col-expand">
          <@liferay.navigation_menu default_preferences="${preferences}" />
        </div>

        <div class="autofit-col">
          <@liferay.user_personal_bar />
        </div>
      </div>
    </div>
  </div>
</header>