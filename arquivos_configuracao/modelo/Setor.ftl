<#if entry.getSiblings()?has_content>
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
              ${curEntry.city.getData()}
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
            <#if curEntry.mail.getData() != "">
              <p class="m-0"><b>E-mail</b>: ${curEntry.mail.getData()}</p>
            </#if>

            <#if curEntry.phone.getData() != "">
              <p class="m-0"><b>Telefone</b>: ${curEntry.phone.getData()}</p>
            </#if>

            <#if curEntry.address.getData() != "">
              <p class="m-0"><b>Endereço</b>: ${curEntry.address.getData()}</p>
            </#if>

            <#if curEntry.services.getSiblings()?has_content>
              <p class="mt-4 mb-0"><b>Portfólio de Serviços</b>:</p>
              <ul class="list-unstyled m-0">
                <#list curEntry.services.getSiblings() as curService>
                  <#if curService.getData() != "">
                    <li>${curService.getData()}</li>
                  </#if>
                </#list>
              </ul>
            </#if>
          </div>
        </div>
      </div>
    </#list>
  </div>
</#if>