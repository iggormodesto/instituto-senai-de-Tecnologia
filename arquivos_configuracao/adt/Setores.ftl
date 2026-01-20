<div class="sectores">
  <div class="row no-gutters mb-3 pb-3">
    <div class="col-lg-7">
      <h2 class="text-primary-000 mb-3">Conheça os setores onde atuam os Institutos</h2>

      <p class="text-neutral-dark">
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

        <div class="col-6 col-lg-3 pb-3 pb-lg-0">
          <button
            class="card card-interactive card-interactive-primary card-type-template template-card mb-3 mb-lg-0 w-100 p-0"
            data-target="#modal_${journalArticle.getArticleId()}"
            data-toggle="modal"
            type="button"
          >
            <div class="aspect-ratio">
              <div class="aspect-ratio-item aspect-ratio-item-center-middle aspect-ratio-item-flush">
                <img
                  alt="icon"
                  class="aspect-ratio-item aspect-ratio-item-center-middle aspect-ratio-item-fluid icon"
                  src="${imgJson.url}"
                />
              </div>
            </div>

            <div class="card-body">
              <h3 class="card-title">${curEntry.getTitle(locale)}</h3>

              <div class="btn btn-link">
                <span class="inline-item inline-item-before">
                  <i class="fa-solid fa-plus"></i>
                </span>
                Conheça
              </div>
            </div>
          </button>    
        </div>
      </#list>
    </div>

    <#list entries as curEntry>
      <#assign assetRenderer = curEntry.getAssetRenderer() />
      <#assign journalArticle = assetRenderer.getAssetObject() />  

      <div
        aria-labelledby="modal_${journalArticle.getArticleId()}_Label"
        class="fade modal"
        id="modal_${journalArticle.getArticleId()}"
        role="dialog"
        tabindex="-1"
        aria-hidden="true"
        style="display: none;"
      >
        <div class="modal-dialog modal-dialog-centered modal-dialog-scrollable">
          <div class="modal-content">
            <div class="modal-header">
              <div 
                class="modal-title" 
                id="modal_${journalArticle.getArticleId()}_Label"
              >
                ${curEntry.getTitle(locale)}
                <small class="d-block text-neutral-dark">Conheça os estados que atuam neste setor</small>
              </div>
              
              <button
                aria-label="Close"
                title="Close"
                class="close"
                data-dismiss="modal"
                role="button"
                type="button"
              >
                <i class="fa-solid fa-xmark"></i>
              </button>
            </div>
            
            <div class="modal-body text-brand-corporate-medium">
              <div class="mb-4 text-neutral-dark">${curEntry.getDescription(locale)}</div>
              
              <@liferay_journal["journal-article"]
                articleId=journalArticle.getArticleId()
                ddmTemplateKey=journalArticle.getDDMTemplateKey()
                groupId=journalArticle.getGroupId()
              />
            </div>
          </div>
        </div>
      </div>
    </#list>
  </#if>
</div>