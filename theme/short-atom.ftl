<?xml version="1.0" encoding="utf-8"?>
<feed xmlns="http://www.w3.org/2005/Atom">
  <title>${vars.blog_title}</title>
  <link href="${vars.blog_url}/atom.xml" rel="self" />
  <link href="${vars.blog_url}" />
  <id>${vars.blog_url}/</id>
  <#assign date = items[0].rfc_3339>
  <updated>${date}</updated>
  <#list items as note>
    <entry>
      <title><![CDATA[${note.title}]]></title>
      <link href="${vars.blog_url}${note.link}" />
      <link rel="alternate" type="text/html" href="${vars.blog_url}${note.link}" />
      <id>urn:uuid:${note.uuid}</id>
      <updated>${note.rfc_3339}</updated>
      <#if description?exists>
      <content type="html" xml:base="${base_url}">
        <![CDATA[${note.body}]]>
      </content>
      <author>
        <name>${vars.feed_author}</name>
        <email>${vars.feed_email}</email>
      </author>
      </#if>
    </entry>
  </#list>
</feed>