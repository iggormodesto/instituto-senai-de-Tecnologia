<div class="row no-gutters mb-3 pb-3">
  <div class="col-lg-7">
    <h2 class="text-primary-000 mb-3">Notícias</h2>

    <p class="neutral-dark">
      Lorem ipsum dolor sit amet consectetur. Imperdiet scelerisque 
      vestibulum consequat viverra quam in purus consectetur pulvinar.
    </p>
  </div>
</div>

<#if entries?has_content>
  <div class="row">
    <#list entries as curEntry>
      <#assign assetRenderer = curEntry.getAssetRenderer() />
      <#assign journalArticle = assetRenderer.getArticle() />
      <#assign docXml = saxReaderUtil.read(journalArticle.getContent()) />
      <#assign imageXml = docXml.valueOf("//dynamic-element[@field-reference='img']/dynamic-content[@language-id='${locale}' ]")!"" />
      <#assign imgJson = jsonFactoryUtil.createJSONObject(imageXml) />
      
      <div class="col-lg-4">
        <a 
          class="card card-type-asset image-card mb-lg-0"
          href="${assetPublisherHelper.getAssetViewURL(renderRequest, renderResponse, assetRenderer, curEntry, !stringUtil.equals(assetLinkBehavior, 'showFullContent' ))?keep_before_last('?')}"
          data-senna-off="true"
        >
          <div class="aspect-ratio card-item-first">
            <img
              alt="thumbnail"
              class="aspect-ratio-item aspect-ratio-item-center-middle aspect-ratio-item-fluid"
              src="${imgJson.url}" 
            />
          </div>
          <div class="card-body">
            <div class="card-row">
              <div class="autofit-col autofit-col-expand">
                <div class="autofit-section">
                  <h3 class="card-title" title="thumbnail_coffee.jpg">${curEntry.getTitle(locale)}</h3>
                  <div class="card-subtitle">${curEntry.getDescription(locale)}</div>
                </div>
              </div>
            </div>
          </div>
        </a>
      </div>
    </#list>
  </div>
</#if>