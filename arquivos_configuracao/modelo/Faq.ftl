<#--  
  IMPORTANTE HABILITAR JQUERY  
-->

<#if entry.getSiblings()?has_content>
  <div class="row justify-content-center faq">
    <div class="col-lg-8">
      <h2 class="text-primary-000 text-center pb-3 mb-3 pb-3">${.vars["reserved-article-title"].data}</h2>    
      
      <div class="accordion" id="accordion_${.vars['reserved-article-id'].data}">
        <#list entry.getSiblings() as curEntry>
          <div class="card">
            <div 
              class="card-header" 
              id="heading_${.vars['reserved-article-id'].data}_${curEntry?index}"
            >
              <h2 class="mb-0">
                <button 
                  class="btn btn-link btn-block text-left collapsed" 
                  type="button" 
                  data-toggle="collapse" 
                  data-target="#collapse_${.vars['reserved-article-id'].data}_${curEntry?index}" 
                  aria-expanded="false" 
                  aria-controls="collapse_${.vars['reserved-article-id'].data}_${curEntry?index}"
                >
                  ${curEntry.title.getData()}
                  <i class="fa-solid fa-angle-down"></i>
                </button>
              </h2>
            </div>

            <div 
              id="collapse_${.vars['reserved-article-id'].data}_${curEntry?index}" 
              class="collapse" 
              aria-labelledby="heading_${.vars['reserved-article-id'].data}_${curEntry?index}" 
              data-parent="#accordion_${.vars['reserved-article-id'].data}"
            >
              <div class="card-body">
                ${curEntry.content.getData()}
              </div>
            </div>
          </div>
        </#list>
      </div>
    </div>
  </div>
</#if>