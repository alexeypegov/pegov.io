<#setting date_format="yyyy-MM-dd'T00:00:00+00:00'">
<?xml version="1.0" encoding="utf-8"?>
<feed xmlns="http://www.w3.org/2005/Atom" xml:base="${base_url}">
  <title>${vars.blog.title}</title>
  <link href="${vars.blog.url}/${name}.xml" rel="self" />
  <link href="${vars.blog.url}" />
  <id>${vars.blog.url}/</id>
  <updated>${items[0].date?date("yyyy-MM-dd")?date}</updated>
  <#list items as note>
    <entry>
      <title><![CDATA[${note.title}]]></title>
      <link href="${vars.blog.url}${note.link}" />
      <id>urn:uuid:${note.uuid}</id>
      <updated>${note.date?date("yyyy-MM-dd")?date}</updated>
      <#if description?exists>
      <content type="html">
	<![CDATA[
        ${note.body}
	]]>
      </content>
      <#else>
      <content type="text">
      <#switch note.view!"full">
      <#case "tweet">
      <#if note.tweet??>
      ${note.tweet}
      <#else>
      ${note.body?replace('<[^>]+>','','r')}
      </#if>
      <#break/>
      <#case "image">
      ${vars.blog.url}/${note.cover}
      <#break/>
      <#case "video">
      ${note.video}
      <#break/>
      <#default>
      ${note.title}
      <#break/>
      </#switch>
      </content>
      </#if>
      <author>
        <name>${vars.author.name}</name>
        <email>${vars.author.email}</email>
      </author>
    </entry>
  </#list>
</feed>
