---
Title: bash history
Date: 2011-07-01
Tags:
  - софт
---

Чтобы каждая сессия bash объединяла историю в один глобальный файл, надо в `~/.bash_logout` добавить строку: `history -a $HISTFILE`

Ну, а про CTRL+R  вы же знаете, да? :)