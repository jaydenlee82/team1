# NGINX 이미지 기반으로 빌드
FROM nginx:latest

# 로컬의 index.html을 컨테이너의 웹 서버 루트로 복사
COPY index.html /usr/share/nginx/html/index.html
