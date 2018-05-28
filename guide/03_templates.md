# Урок 3: Шаблоны, layouts, валидация

### Цели и задачи

Теперь мы приступаем к созданию более сложного модуля. Он будет представлять из себя классическую форму обратной связи.
Создание полной версии модуля будет разделено на несколько уроков, на каждом из которых мы будем расширять функционал модуля.

На этом уроке вам предстоит:

- При помощи утилиты n98-magerun создать каркас нового модуля
- Научиться подключать собственные шаблоны к модулю
- Научиться создавать блоки для расширения возможностей шаблонов
- Научиться валидировать формы используя штатные средства Magento
- Отправлять письма при помощи Magento

### Теория и полезные материалы

- [Обзор возможностей супер-полезной утилиты n98-magerun](extra/n98-magerun.md)
- [Demystifying Magento’s Layout XML – Part 1](http://magebase.com/magento-tutorials/demystifying-magentos-layout-xml-part-1/)
- [Digging Deeper Into Magento’s Layout XML – Part 2 (optional)](http://magebase.com/magento-tutorials/digging-deeper-into-magentos-layout-xml-part-2/)
- [Include CSS and JavaScript files on frontend](https://blog.magestore.com/magento-css-and-javascript-files-on-frontend/)
- [Out of the box Form Validation in Magento](http://inchoo.net/magento/out-of-the-box-form-validation-in-magento/)
- [Request and Post parameters in controllers](https://www.techdilate.com/code/magento-request-and-post-parameters-in-controllers/)

### Практика

#### Создание нового модуля

На этот раз каркас модуля мы будем создавать не в ручную, а при помощи утилиты n98-magerun (более подробно [читай здесь](extra/n98-magerun.md)). Новый модуль должен называться _OpsWay Feedback_.

Далее необходимо подготовить контроллер и роут для обработки адреса вида http://magento.loc/feedback. Именно на этой странице будет выводиться форма обратной связи.

Настройте для модуля соответствующим образом _layout_ и подключите шаблон с формой (путь _opsway/feedback/form.phtml_). Сама форма должна иметь следующие поля:
- Name (input, required)
- Email (input, required)
- Phone (input, optional)
- Message (textarea, required)

У вас должно быть подключено 2 файла: CSS файл со стилями для оформления формы и JS файл содержащий логику отправки запроса и валидацию.

Перед отправкой формы мы должны валидировать введенные пользователем данные. Сама отправка данных должна осуществляться через AJAX (можно через уже подключенный jQuery). В случае успеха или ошибки над формой должен выводиться блок с ответом сервера.

На бэкенде также должны валидироваться данные. Рекомендую использовать библиотеку [Zend Validate](https://framework.zend.com/manual/1.10/en/zend.validate.html) которая также уже идет в составе Magento (см. директорию _/lib/Zend/_). Отправку почты также необходимо осуществлять [при помощи Magento](https://magento.stackexchange.com/a/85375).
