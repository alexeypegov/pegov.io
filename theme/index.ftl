<#include "header.ftl">
<div class="notes">
<#list items as note>
  <#include "note_body.ftl">
</#list>
</div>
<div class="paging">
<#if prev gt 1>
<a id="prev" href="page-${prev}.html">предыдущая</a>
<#elseif prev == 1>
<a id="prev" href="index.html">предыдущая</a>
<#else>
<a nohref>предыдущая</a>
</#if>
&#151;
<#if next gt 0>
<a id="next" href="page-${next}.html">следующая</a>
<#else>
<a id="next" nohref>следующая</a>
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