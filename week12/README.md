# 12주차 과제 – GitHub Actions

## 1. 실습 목표
GitHub Actions를 이용하여 코드 검사, 앱 동작 테스트, Docker 이미지 빌드 및 GHCR 게시 과정을 자동화한다.

## 2. GitHub Actions CI 파이프라인
- GitHub Actions 워크플로 파일: `.github/workflows/build.yml`
- Python 코드 검사: Ruff
- 앱 동작 테스트: unittest
- Docker 이미지 빌드: Docker Buildx
- 이미지 저장소: GitHub Container Registry (GHCR)

## 3. 테스트 및 오류 확인
- 문법 오류를 추가하여 Lint 단계의 실패를 확인하였다.
- `healthz` 응답 코드를 200에서 500으로 변경하였다.
- Lint 검사는 성공했지만 `test_health` 테스트에서 `500 != 200` 오류가 발생하는 것을 확인하였다.
- 이를 통해 앱 동작 테스트가 실제 실행 결과의 오류를 발견할 수 있음을 확인하였다.

## 4. 실습 결과
GitHub Actions에서 코드 검사와 앱 동작 테스트 결과를 확인하였다. 테스트 실패 원인을 확인하고 코드를 수정한 후 다시 검사하여 성공 여부를 확인한다.

## 5. 결론
GitHub Actions를 사용하면 코드를 Push하거나 Pull Request를 생성할 때 자동으로 검사할 수 있다. 또한 브랜치 보호 규칙을 설정하여 검사에 실패한 코드가 main 브랜치에 병합되는 것을 방지할 수 있다.
