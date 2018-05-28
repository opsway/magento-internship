# Урок 2: Устройство модулей, контроллеры и роутинг

### Цели и задачи

- Получить базовое представление об архитектуре модулей
- Ознакомиться с особенностями реализации MVC в Magento
- Структура файлов и папок, роутинг запросов
- Функциональность автолоадера
- Создать простой модуль "Hello World"

### Теория

Изучение теории будет проходить через серию различных видео-курсов и статей:

**Magento Fundamentals by TutsPlus**
- [Lesson 1: Course Introduction](https://www.youtube.com/watch?v=Db5aHqUsPp0&list=PLrnEd5W-MoDQ9JhrhFFmN54dtD0YN_wsU)
- [Lesson 3: MVC Overview In Magento](https://www.youtube.com/watch?v=J3q4xruWIpE&list=PLrnEd5W-MoDQ9JhrhFFmN54dtD0YN_wsU&index=3)
- [Lesson 4: Writing Our First Module](https://www.youtube.com/watch?v=0UVxD4gXlJQ&list=PLrnEd5W-MoDQ9JhrhFFmN54dtD0YN_wsU&index=4)

**Magento University: Magento Basics**
- [Lesson 1: MVC concept in magento](https://www.youtube.com/watch?v=vleOf_hhNH8)
- [Lesson 2: Event driven architecture](https://www.youtube.com/watch?v=WmLbie1QtNw)
- [Lesson 3: Modular architecture](https://www.youtube.com/watch?v=06kPU-ZQit4)
- [Lesson 4: Folder structure](https://www.youtube.com/watch?v=uAalBOK8dXM)
- [Lesson 5: Configuration XML](https://www.youtube.com/watch?v=rr6kkgk80Xc)
- [Lesson 6: Functional and Factory Class Groups (core code review)](https://www.youtube.com/watch?v=v6SHjRapSgg)

**Полезные статьи**
- [Magento Hello world module (extension)](http://inchoo.net/magento/programming-magento/magento-hello-world-module-extension/)
- [Magento for Developers: Part 2 — The Magento Config](https://devdocs.magento.com/guides/m1x/magefordev/mage-for-dev-2.html)
- [Magento for Developers: Part 3 — Magento Controller Dispatch](https://devdocs.magento.com/guides/m1x/magefordev/mage-for-dev-3.html)
- [Magento fundamentals for developers (Chapter 1)](https://books.google.com.ua/books?id=nrVJCgAAQBAJ&lpg=PA5&ots=gyVSlWfq2F&dq=magento%20autoloader%20tutorial&pg=PA1#v=onepage&q&f=false)

### Практика

После прохождения теории вам предстоит создать свой первый простой модуль (extension). Ваш модуль должен называться "OpsWay HelloWorld". Все что он будет делать - это при переходе по адресу http://magento.loc/hello выводить сообщение "Hello World" на пустой странице.

**ВАЖНО!** Теоретические вопросы из этой темы, крайне важны. Посмотрите, прочитайте, объяснение одних и тех же вещей несколько раз в разных формулировках. 
