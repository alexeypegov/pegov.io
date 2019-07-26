<#include "header.ftl">
<#list items as note>
  <#include "note_body.ftl">
</#list>
<div class="paging">
<#if prev_page?exists>
<a id="prev" href="${prev_page}.html">позднее</a>
<#else>
<a nohref>позднее</a>
</#if>
&#151;
<#if next_page?exists>
<a id="next" href="${next_page}.html">ранее</a>
<#else>
<a id="next" nohref>ранее</a>
</#if>
</div>
<script src="js/pure-swipe.min.js"></script>
<script type="text/javascript">
  const f = function(id) {
    return function() {
      const anchor = document.getElementById(id);
      if (anchor && anchor.getAttribute("href")) {
        anchor.click();
      }
    }
  };

  document.addEventListener('swiped-left', f('next'));
  document.addEventListener('swiped-right', f('prev'));
</script>
<#include "footer.ftl">