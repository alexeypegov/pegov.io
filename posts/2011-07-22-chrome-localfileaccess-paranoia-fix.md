---
Title: Chrome local-file-access paranoia fix
Date: 2011-07-22
Tags: 
  - mac
  - chrome
  - html5
---

<div class="text">Чтобы подебажить html5 dnd картинок в хроме надо немного запариться:
<pre>
cd /Applications/Google\ Chrome.app/Contents/MacOS
sudo mv Google\ Chrome Chrome
sudo sh -c 'echo "/Applications/Google\ Chrome.app/Contents/MacOS/Chrome --allow-file-access-from-files 
                                                           --allow-file-access" &gt; Google\ Chrome'
sudo chmod +x Google\ Chrome
</pre></div>