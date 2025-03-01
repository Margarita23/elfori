# HEXA Web Application

## Опис проєкту

Цей веб-додаток розроблений на Ruby on Rails (версія 6.1.7.3) з використанням стандартного MVC-підходу. Він дозволяє адміністраторам керувати колекціями плитки та їх варіаціями, а також надає RESTful API для взаємодії з іншими системами.

## Основні можливості
- **Адмін-панель** (CRUD-функціонал для колекцій та плитки)
- **Головна сторінка** (список колекцій)
- **API** (CRUD для Collections, захищений JWT-токенами)
- **Аутентифікація** (Devise)
- **Надсилання Email** (при створенні Invoice)
- **Використання Active Storage** (для збереження зображень)
- **Тестування** (RSpec для контролерів API)

---

## Встановлення та запуск

### Вимоги:
- Ruby 3.0.0
- Rails 6.1.7.3
- PostgreSQL
- Node.js та Yarn

### Кроки встановлення:

1. **Клонуйте репозиторій**:
   ```
   git clone https://github.com/your-repository.git
   cd your-repository
   ```

2. **Встановіть gems**:
   ```
   bundle install
   ```

3. ## Додайте файл .env
    ```
    touch .env
    ```

4. **Налаштуйте базу даних**:
   ```
   rails db:create db:migrate db:seed
   ```

5. **Запустіть сервер**:
   ```
   rails server
   ```

6. **Перейдіть до додатку в браузері**:
   ```
   http://localhost:3000
   ```


### Запуск тестів
    ```
    rspec
    ```

### Автори

Проєкт розроблений у межах тестового завдання. Виконавець [Marharyta Andriukhina](https://github.com/Margarita23) ([go to linkedin](https://www.linkedin.com/in/marharyta-andriukhina/))
