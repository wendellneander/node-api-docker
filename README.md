# Api Node Docker Boilerplate
This is a boilerplate for api's with the following stack.
- Api with Express
- Sequelize as ORM
- Vue as frontend
- MySql as database

## Docker
To run the project locally, you must follow the steps below.
#### Add local URL in hosts:
* Linux ou Mac:
```bash
echo "127.0.0.1 my-house-app" >> /etc/hosts
echo "127.0.0.1 api.my-house-app" >> /etc/hosts
```
* Windows (Execute CMD as administrator):
```bash
echo 127.0.0.1 my-house-app >> c:\windows\system32\drivers\etc\hosts
echo 127.0.0.1 api.my-house-app >> c:\windows\system32\drivers\etc\hosts
```
#### Running the project:
```bash
docker-compose up --build -d
```
