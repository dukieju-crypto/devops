# Week 10 - Kubernetes 배포와 서비스

## 1. 실습 목표

- Kubernetes와 Minikube 환경 이해
- Deployment를 이용한 애플리케이션 배포
- Service를 이용한 네트워크 연결
- Pod Scaling 및 Self-healing 확인
- Rolling Update와 Rollback 실습

## 2. 사용 환경

- Ubuntu
- Docker
- Minikube
- kubectl
- Guestbook Docker Image

## 3. Minikube 실행

```bash
minikube start --driver=docker
kubectl get nodes
>>

