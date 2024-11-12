FROM nginx:latest

# 로컬의 index.html을 컨테이너의 웹 서버 루트로 복사
COPY index.html /usr/share/nginx/html/index.html

# 권한 변경 (필요한 경우)
RUN chmod 644 /usr/share/nginx/html/index.html