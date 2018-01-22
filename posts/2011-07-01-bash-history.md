Title: bash history
Date: 2011-07-01
Tags: 
  - bash
  - tips

<div class="text">Чтобы каждая сессия bash объединяла историю в один глобальный файл, надо в ~/.bash_logout добавить строку:<br /><br />
<code>history -a $HISTFILE</code><br /><br />
Ну, а про CTRL+R  вы же знаете, да? :)</div>