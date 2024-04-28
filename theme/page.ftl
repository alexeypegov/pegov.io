<#assign ld_type="page">
<#include "header.ftl">
<article>
  <div class="text">
    ${body}
  </div>
  <#if updated?exists>
  <p>
  Обновлено: ${updated}
  </p>
  </#if>
</article>
<#include "footer.ftl">
