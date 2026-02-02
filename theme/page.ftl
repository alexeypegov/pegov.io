<#assign ld_type="page">
<#include "header.ftl">
<article data-view="post">
  <div class="text">
    ${body}
  </div>
  <#if updated??>
  <p>
  Обновлено: ${updated}
  </p>
  </#if>
</article>
<#include "footer.ftl">
