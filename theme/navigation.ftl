<nav class="paging">
<#if prev_page?exists>
<a id="prev" class="arrow" href="${prev_page}">&larr;</a>
<#elseif prev??>
<a id="prev" class="arrow" href="${next}.html">&larr;</a>
</#if>
<div class="key"></div>
<#if next_page?exists>
<a id="next" class="arrow" href="${next_page}">&rarr;</a>
<#elseif next??>
<a id="next" class="arrow" href="${prev}.html">&rarr;</a>
</#if>
</nav>
<script src="js/swiped-events.min.js"></script>
<script src="js/kbd.js"></script>
<script>
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
  document.addEventListener('arrow-left', f('prev'));
  document.addEventListener('arrow-right', f('next'));
</script>
