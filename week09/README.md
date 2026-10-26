# Week 09 - Kubernetes 첫 배포

## 1. Kubernetes Node 확인

- 사용 도구: Minikube
- `kubectl get nodes` 결과에서 `minikube` 노드의 상태가 `Ready`임을 확인했다.

## 2. Pod 자가 치유(Self-healing)

- Nginx Deployment를 3개의 Pod로 실행했다.
- Pod 하나를 삭제한 뒤 Kubernetes가 새로운 Pod를 자동으로 생성하는 것을 확인했다.
- 최종적으로 3개의 Pod가 모두 `Running` 상태였다.

## 3. Guestbook 배포

- `guestbook:v1` 이미지를 사용해 Kubernetes Deployment를 생성했다.
- Guestbook Pod가 `Running` 상태임을 확인했다.
- `kubectl port-forward deployment/guestbook 8080:5000` 명령어로 브라우저에서 Guestbook을 열고 글을 작성했다.

## 4. 선언형 관리

원하는 상태를 선언하면 Kubernetes가 그 상태를 유지하도록 자동으로 조정한다.

## 5. 문제와 해결 방법

- `brew` 명령어가 없는 문제: Ubuntu 환경이므로 Homebrew 대신 Linux용 Minikube 설치 방법을 사용했다.
- Pod 삭제 명령어 오류: Pod 이름을 입력할 때 `< >` 기호를 제거해 해결했다.
