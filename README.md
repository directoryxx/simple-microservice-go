# simple-microservice-go

This project's purpose is trying to implement how to microservice and practice writing rest API with Golang. So there are a lot of improvements and so far from best practices.

## List Services:
1. Auth Service (https://github.com/directoryxx/auth-service Branch:v1)
2. File Service (https://github.com/directoryxx/file-service Branch:v1)
3. Log Service (TBD)
4. Mail Service (https://github.com/directoryxx/mail-service Branch:v1)


## Installation:
1. Run Command "git clone https://github.com/directoryxx/simple-microservice-go.git"
2. Run Command "make download-source"
3. Run Command "docker-compose up -d minio"
4. Navigate to http://127.0.0.1:9001
5. Login with u: minioroot p:password2022
6. Create Bucket
7. Generate Access Key
8. Adjustment MINIO_BUCKET, MINIO_ACCESS_KEY, MINIO_SECRET_KEY in docker-compose.yml (Line 256-258)
9. Run Command "docker-compose down"
10. Run Command "make up"
11. Run Command "make db-migrate"

## List Endpoint:
1. http://localhost:8000/api/v1/auth/login
2. http://localhost:8000/api/v1/auth/register
3. http://localhost:8000/api/v1/auth/logout
4. http://localhost:8000/api/v1/file/upload

## List Credentials (Access From Host)
1. DB File Service (Port : 5436, username: postgres, password: password, db: file)
2. DB Auth Service (Port : 5435, username: postgres, password: password, db: auth)
3. Redis Auth Service (Port : 6385, password: p4ssw0rd)
4. Redis File Service (Port : 6387, password: p4ssw0rd)
5. MongoDB Log Service (Port : 27018, username: root, password: rootpassword)

## List Dependant Service
1. MailHog (Port: 8025)
2. Kafka
3. Zookeeper
4. Kafka-UI (Port: 8050)
