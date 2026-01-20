<#if entries?has_content>
  <ul class="navbar-blank navbar-nav navbar-site">
    <#list entries as navigationEntry>
      <li class="nav-item">
        <a 
          class="nav-link nav-link-anchor" 
          href="#${navigationEntry.getURL()?keep_after('#')}"
        >
          ${navigationEntry.getName()}
        </a>
      </li>
    </#list>
  </ul>
</#if>

<script>
  document.querySelectorAll('.nav-link-anchor').forEach(link => {
    link.addEventListener('click', event => {
      event.preventDefault();
      const targetId = link.getAttribute('href').substring(1);
      const targetElement = document.getElementById(targetId);
      if (targetElement) {
        const parentPortlet = targetElement.closest('.portlet-boundary');
        if (parentPortlet) {
          parentPortlet.scrollIntoView({ behavior: 'smooth' });
        } else {
          targetElement.scrollIntoView({ behavior: 'smooth' });
        }
      }
    });
  });
</script>