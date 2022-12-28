## Описание
Практиковался в работе с Spring JDBC, попутно закрепляя уже пройденные темы. Написал приложение для работы с БД, используя скрипты, который вы написал ранее.

1. Создал spring boot приложение, с зависимостями на два starter'а - `spring-boot-starter-jdbc` и `spring-boot-starter-web`

2. Перенес скрипт создания таблицы в файл `schema.sql`, чтобы spring boot автоматически создавал таблицу.

2. Перенес скрипт запроса в папку `resources`. Переписал скрипт так, чтобы он возвращал `product_name` для именованного параметра `name`(а не только для `alexey`), который вы буду передавать в методы выполнения скрипта `NamedParameterJdbcTemplate` вместе со скриптом запроса.

3. Написал репозиторий для работы с БД. Для этого:
 - создал класс и пометил его аннотацией Repository
 - добавил поле  в классе String, которое содержит мой скрипт. Само содержание я смогу считать с помощью кода ниже. Надо будет передать в метод `read` название скрипта, который лежит в папке `resources`. Например так: `read(myScript.sql)`.
 - создал метод `getProductName(String name)`, который принимает имя и возвращает название продукта из базы данных.
```java
private static String read(String scriptFileName) {
        try (InputStream is = new ClassPathResource(scriptFileName).getInputStream();
             BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(is))) {
            return bufferedReader.lines().collect(Collectors.joining("\n"));
        } catch (IOException e) {
            throw new RuntimeException(e);
        }
    }
``` 

4. Написал контроллер, с методом-обработчиком GET-метода запроса с маппингом на endpoint `/products/fetch-product`. В query params запроса приходит строковый параметр `name`, который я передаю дальше в репозиторий. То есть, мой метод умеет обрабатывать запрос вида `localhost:8080/products/fetch-product?name=Ivan`.
Контроллер возвращает название продукта, который он получит от репозитория.
