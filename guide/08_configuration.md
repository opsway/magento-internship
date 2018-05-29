# Урок 8: Конфигурирование модуля

### Цели и задачи

Улучшим наш модуль добавив в него возможность конфигурирования через админку.

### Теория

- [Create configuration for your Magento extension](http://inchoo.net/magento/create-configuration-for-your-magento-extension/)
- [Custom backend configuration in Magento](https://code.tutsplus.com/tutorials/custom-back-end-configuration-in-magento--cms-23265)
- [Setting a default values in module](https://magento.stackexchange.com/questions/1086/setting-a-default-value-for-a-config-defined-value/1087#1087)

### Практика

Модуль в админке должен включать в себя следующие настройки:

- **Включить/отключить отображение блока**  
Тип: Selectbox (Yes / No)  
Значение по умолчанию: No
- **Количество продуктов отображаемых в блоке**  
Тип: Text  
Значение по умолчанию: 5

Обе опции должны находиться в одной секции _General_. Значения по умолчанию должны выставлять автоматически при первой инициализации модуля.

Опции должны соответствующим образом быть интегрированы в основную логику модуля.
 