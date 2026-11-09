# Week 11 - Kubernetes 설정과 상태 점검

## 1. Secret
Secret은 민감한 정보를 저장할 때 사용한다. Base64는 암호화가 아니라 인코딩이기 때문에 누구나 쉽게 디코딩할 수 있다. 따라서 Base64만으로는 비밀번호를 안전하게 보호할 수 없다.

## 2. ConfigMap
ConfigMap의 APP_TITLE과 THEME_COLOR 값을 변경하여 애플리케이션 화면이 변경되는 것을 확인했다.

## 3. Probe
- Readiness Probe: Redis 연결이 끊겼을 때 Pod가 READY 0/1 상태가 되는 것을 확인했다.
- Liveness Probe: 잘못된 경로를 설정했을 때 컨테이너가 재시작되는 것을 확인했다.
- 설정을 원래대로 복구한 후 Pod가 정상적으로 실행되는 것을 확인했다.

## 4. Troubleshooting 3단계
1. `kubectl get pods`: Pod의 현재 상태를 확인한다.
2. `kubectl describe pod`: Events를 확인하여 오류 원인을 찾는다.
3. `kubectl logs`: 애플리케이션 로그를 확인한다. CrashLoopBackOff 상태에서는 `--previous` 옵션을 사용한다.

## 5. 느낀 점
ConfigMap과 Secret을 사용하여 설정과 민감한 정보를 분리하는 방법을 배웠다. 또한 Readiness Probe와 Liveness Probe의 차이와 Kubernetes 오류를 확인하는 방법을 이해했다.
