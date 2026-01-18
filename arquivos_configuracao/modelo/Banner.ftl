<div class="row no-gutters page-banner">
  <div class="col-lg-6">
    <#if (logo.getData())?? && logo.getData() != "">
      <img 
        class="logo mb-5"
        alt="${logo.getAttribute('alt')}" 
        data-fileentryid="${logo.getAttribute('fileEntryId')}" 
        src="${logo.getData()}" 
        height="60"
      />
    </#if>

    <#if title.getData()?? && title.getData() != "">
      <h1 class="pt-3 mb-2 text-white">${title.getData()}</h1>
    </#if>

    <#if (content.getData())??>
      <div class="content text-white">${content.getData()}</div>
    </#if>
  </div>
</div>

<#if (background.getData())?? && background.getData() != "">
  <style>
    .portlet-boundary:has(.page-banner) {
      background-image: url('${background.getData()}');
      background-size: cover;
      background-position: center;
    }
  </style>
</#if>