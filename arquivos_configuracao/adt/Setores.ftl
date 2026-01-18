<div class="sectores">
  <div class="row no-gutters mb-3 pb-3">
    <div class="col-lg-7">
      <h2 class="text-primary-000 mb-3">Conheça os setores onde atuam os Institutos</h2>

      <p class="neutral-dark">
        Os Institutos SENAI de tecnologia desempenham um papel crucial no fornecimento 
        de apoio tecnológico às empresas de todos os portes, permitindo que elas 
        permaneçam atualizadas. Com 62 unidades distribuídas por todo o país, esses 
        institutos atuam em uma ampla gama de setores. São eles:
      </p>
    </div>
  </div>

  <#if entries?has_content>
    <div class="row">
      <#list entries as curEntry>
        <#assign assetRenderer = curEntry.getAssetRenderer() />
        <#assign journalArticle = assetRenderer.getArticle() />
        <#assign docXml = saxReaderUtil.read(journalArticle.getContent()) />
        <#assign imageXml = docXml.valueOf("//dynamic-element[@field-reference='icon']/dynamic-content[@language-id='${locale}' ]")!"" />
        <#assign imgJson = jsonFactoryUtil.createJSONObject(imageXml) />

        <div class="col-6 col-lg-3">
          <div
            class="card card-interactive card-interactive-primary card-type-template template-card mb-lg-0"
            tabindex="0"
          >
            <div class="aspect-ratio">
              <div
                class="aspect-ratio-item aspect-ratio-item-center-middle aspect-ratio-item-flush"
              >
                <img
                  alt="icon"
                  class="aspect-ratio-item aspect-ratio-item-center-middle aspect-ratio-item-fluid icon"
                  src="${imgJson.url}"
                />
              </div>
            </div>

            <div class="card-body">
              <h3 class="card-title">${curEntry.getTitle(locale)}</h3>

              <button 
                class="btn btn-link" 
                type="button"
              >
                <span class="inline-item inline-item-before">
                  <i class="fa-solid fa-plus"></i>
                </span>
                Conheça
              </button>
            </div>
          </div>    
        </div>
      </#list>
    </div>
  </#if>
</div>