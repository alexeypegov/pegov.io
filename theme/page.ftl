<#include "header.ftl">
<article>
  <section>
    ${body}
  </section>
  <#if updated?exists>
  <p>
  Обновлено: ${updated}
  </p>
  </#if>
</article>
<#include "footer.ftl">