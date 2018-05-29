# Урок 9: Кэширование в Magento

### Цели и задачи

- Научиться кэшировать данные

### Теория

- [A Developer's Guide to using the Magento Cache](https://www.nicksays.co.uk/developers-guide-magento-cache/)
- [Magento block cache optimizations](https://www.ifuelinteractive.com/magento-block-cache-optimizations/)

### Практика

Поскольку генерация блока рекомендаций может быть довольно ресурсоемкой, то стоит позаботиться о его кэшировании. Кэшировать необходимо весь блок (html) индивидуально для каждого пользователя сроком на 24 часа.

А также необходимо добавить возможность в настройках включать/выключать кэширование блока.
