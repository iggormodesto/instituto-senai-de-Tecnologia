<div class="row align-items-end">
  <div class="col-lg-6 mb-3 pb-3 mb-lg-0 pb-lg-0">
    <h2 class="text-primary-000 mb-4">${.vars["reserved-article-title"].data}</h2>
    <div class="article-description text-neutral-dark">${.vars["reserved-article-description"].data}</div>
  </div>

  <#if entry.getSiblings()?has_content>
    <div class="col-lg-6">
      <div class="row">
        <#list entry.getSiblings() as curEntry>
          <div class="col-lg-4 mb-3 pb-3 mb-lg-0 pb-lg-0">
            <div class="big-number text-center">
              <h3 class="title mb-4">${curEntry.number.getData()}</h3>
              <p class="description m-0">${curEntry.description.getData()}</p>
            </div>
          </div>
        </#list>
      </div>
    </div>
  </#if>  
</div>