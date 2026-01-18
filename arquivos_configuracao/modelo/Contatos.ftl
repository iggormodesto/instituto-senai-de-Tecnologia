<div class="contacts row justify-content-center">
  <div class="col-lg-10">
    <h2 class="text-primary-000 text-center mb-0 pb-3">${.vars["reserved-article-title"].data}</h2>

    <hr />

    <div class="h4 text-center article-description text-secondary-100 py-3 m-0">${.vars["reserved-article-description"].data}</div>
    
    <#if entry.getSiblings()?has_content>
      <ul class="list-unstyled d-flex justify-content-center m-0 pt-3">
        <#list entry.getSiblings() as curEntry>
          <li class="px-1">
            <a 
              class="d-flex align-items-center h5 mb-0 px-3"
              href="${curEntry.url.getData()}"
            >
              <div class="mr-2">
                ${curEntry.icon.getData()}
              </div>
              ${curEntry.title.getData()}
            </a>
          </li>
        </#list>
      </ul>
    </#if>
  </div>
</div>