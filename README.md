$ cd ~/devops/week05/
$ docker --version > docker-version.txt
$ docker info > docker-info.txt
$ docker run --rm hello-world > docker-run-hello-world.txt
$ docker run -d -p 8080:80 --name web nginx # 포트 번호, 이름 충돌 조심
$ curl -I http://localhost:8080 > curl-result.txt
$ docker ps > docker-ps.txt
$ cat > README.md << 'EOF'
> # 5주차 - Docker
> ... (이하 중략)
> EOF

# Week 05 - Docker Nginx 실습

## 1. Nginx 컨테이너 실행

* nginx1 → 8091 포트
* nginx2 → 8092 포트
* nginx3 → 8093 포트

## 2. 각 컨테이너 페이지 확인

* nginx1: `Welcome to nginx1`
* nginx2: `Welcome to nginx2`
* nginx3: `Welcome to nginx3`

## 3. curl 확인 결과

```bash
curl http://localhost:8091
```

결과:

```text
Welcome to nginx1
```

```bash
curl http://localhost:8092
```

결과:

```text
Welcome to nginx2
```

```bash
curl http://localhost:8093
```

결과:

```text
Welcome to nginx3
```

## 4. Docker 컨테이너 확인

`docker ps` 명령어를 통해 nginx1, nginx2, nginx3 컨테이너가 실행 중인 것을 확인하였다.

## 5. 실습 화면

![nginx1](images/nginx1.png)

![nginx2](images/nginx2.png)

![nginx3](images/nginx3.png)

![docker ps](images/docker-ps.png)
