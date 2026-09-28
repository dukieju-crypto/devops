# Week 05 - Docker Nginx 실습

## 1. Docker 컨테이너 실행

nginx 컨테이너 3개를 각각 다른 포트와 이름으로 실행하였다.

* nginx1 → 8091 포트
* nginx2 → 8092 포트
* nginx3 → 8093 포트

```bash
docker run -d --name nginx1 -p 8091:80 nginx
docker run -d --name nginx2 -p 8092:80 nginx
docker run -d --name nginx3 -p 8093:80 nginx
```

## 2. index.html 수정

각 컨테이너에 `exec`로 접속하여 `index.html`을 수정하였다.

* nginx1 → `Welcome to nginx1`
* nginx2 → `Welcome to nginx2`
* nginx3 → `Welcome to nginx3`

## 3. 브라우저 확인

각 페이지를 브라우저에서 확인하였다.

* http://localhost:8091
* http://localhost:8092
* http://localhost:8093

확인 결과는 `images/` 폴더에 캡처하여 저장하였다.

## 4. curl 확인

### n
