<?xml version='1.0' encoding='UTF-8'?>
<rss version='2.0' xmlns:atom='http://www.w3.org/2005/Atom' xml:base='${base_url}'>
<channel>
  <atom:link href='${vars.blog_url}' rel='self' type='application/rss+xml'/>
  <title>${vars.blog_title}</title>
  <link>${vars.blog_url}</link>
  <description>${vars.blog_title}</description>
  <#assign date = items[0].rfc_822>
  <lastBuildDate>${date}</lastBuildDate>
  <pubDate>${date}</pubDate>
  <ttl>60</ttl>
  <generator>${vars.statique}</generator>
  <#list items as note>
    <item>
      <title><![CDATA[${note.title}]]></title>
      <link>${note.link}</link>
      <guid>${note.slug}</guid>
      <pubDate>${note.rfc_822}</pubDate>
      <#if description?exists>
      <description>
        <![CDATA[${note.body}]]>
      </description>
      </#if>
    </item>
  </#list>
</channel>
</rss>