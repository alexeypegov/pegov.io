<#setting date_format="dd MMMM yyyy">

<#macro schema type url description id="" headline="" name=headline image="" created="" updated=created tags=[] isPartOf=false>
<script type="application/ld+json">
{
  "@context": "https://schema.org",
<#if id?has_content>
  "@id": "${id}",
</#if>
  "@type": "${type}",
  "mainEntityOfPage": "${url}",
<#if headline?has_content>
  "headline": "${headline}",
</#if>
<#if name?has_content>
  "name": "${name}",
</#if>
<#if isPartOf>
  "isPartOf": {
    "@type": "Blog",
	"@id": "${vars.blog.url}#Blog"
  },
</#if>
<#if image?has_content>
  "image": "${vars.blog.url}/${image}",
</#if>
  "url": "${url}",
<#if created?has_content>
  "datePublished": "${created}",
</#if>
<#if updated?has_content>
  "dateModified": "${updated}",
</#if>
<#if tags?has_content>
<#list tags>
  "keywords": [
  <#items as tag>
    "${tag}"<#sep>,</#sep>
  </#items>
  ],
</#list>
</#if>
<#if description?has_content>
  "description": "${description}",
</#if>
  "publisher": {
	"@id": "Author#Person",
    "@type": "Person",
	"name": "${vars.author.name}",
	"url": "${vars.author.url}" 	
  },
  "author": {
    "@type": "Person",
	"@id": "Author#Person"
  }
}
</script>
</#macro>

<#switch ld_type>
<#case "index">
<@schema type="Blog" url="${vars.blog.url}" description="${vars.blog.description}" id="${vars.blog.url}#Blog" created="2009-03-27"/>
<#break/>
<#case "page">
<@schema type="WebPage" url="${vars.blog.url}${link}" description="${summary}" id="${vars.blog.url}${link}#Page" created="${created}" updated="${updated!created}"/>
<#break/>
<#case "full">
<@schema type="BlogPosting" url="${vars.blog.url}${link}" description=summary!"" id="${vars.blog.url}${link}#Post" headline="title" image=cover!"" created=date updated=date!updated tags=tags isPartOf=true/>
<#break/>
<#default>
<#break/>
</#switch>
