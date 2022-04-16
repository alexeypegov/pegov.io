<#include "header.ftl">
<article>
  <h1>${title}</h1>
  ${body}
  <#if updated?exists>
  <p>
  Обновлено: ${updated}
  </p>
  </#if>
</article>
<#include "footer.ftl">