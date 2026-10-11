# Week 06 — Dockerfile & Image Deployment

## 1. 나만의 방명록 V2 배포

- Image: `ghcr.io/dukieju-crypto/guestbook:v2`
- Tag: `v2`
- 테마: 보라색
- 제목: Dukie's Little Garden

## 2. Dockerfile 명령어 설명

- `FROM`: Python 3.12 기반 이미지를 선택한다.
- `WORKDIR`: 작업 디렉터리를 `/app`으로 설정한다.
- `COPY`: 필요한 파일을 이미지 내부로 복사한다.
- `RUN`: 이미지 빌드 과정에서 필요한 명령을 실행한다.
- `ENV`: 애플리케이션의 기본 환경 변수를 설정한다.
- `EXPOSE`: 컨테이너가 사용할 포트를 명시한다.
- `CMD`: 컨테이너 실행 시 애플리케이션을 시작한다.
- `USER`: root가 아닌 사용자로 애플리케이션을 실행한다.

## 3. 이미지 빌드 및 배포

```bash
docker build -t guestbook:v2 .
docker tag guestbook:v2 ghcr.io/dukieju-crypto/guestbook:v2
docker push ghcr.io/dukieju-crypto/guestbook:v2
```

이미지를 GHCR에 성공적으로 업로드했다.

## 4. 환경 변수 설정

- 코드 기본값: `app.py`에서 설정한다.
- Dockerfile의 `ENV`: 이미지 빌드 시 기본값을 설정한다.
- `docker run -e`: 컨테이너 실행 시 환경 변수를 지정하며, Dockerfile의 기본값보다 우선한다.

## 5. 빌드 캐시

`requirements.txt`를 먼저 복사하고 라이브러리를 설치한 다음 나머지 코드를 복사한다. 코드만 변경하면 이전 빌드의 캐시를 재사용할 수 있다.

## 6. 실행 결과

- 나만의 방명록: Dukie's Little Garden
- 테마: 보라색
- GHCR 배포 결과: 성공

## 7. 추가 실습

- 친구 이미지 실행 결과: (실행 후 캡처 추가)
- 빌드 캐시 로그: (CACHED 로그 캡처 추가)
- 이미지 주소: `ghcr.io/dukieju-crypto/guestbook:v2`

