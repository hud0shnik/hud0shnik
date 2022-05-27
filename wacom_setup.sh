#!/bin/bash

# Мой скрипт для конфигурации графического планшета

# Поиск ID пена
stylus_id=$(xsetwacom list devices | grep 'type: STYLUS')

# Обрезка до одного числа
stylus_id=${stylus_id#*id: }
stylus_id=${stylus_id%t*}
stylus_id=${stylus_id:0:-1}

# Вывод ID
echo "Stylus id: $stylus_id"

# Бинд на вторую кнопку пена прокрутки
xsetwacom set "$stylus_id" button 2 pan 

# Настройка прокрутки (скорость и направление)
xsetwacom set "$stylus_id" "PanScrollThreshold" "-100"
