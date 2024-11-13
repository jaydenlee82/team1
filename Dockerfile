FROM nginx:latest

# /workspace/source 내의 index.html을 컨테이너의 웹 서버 루트로 복사
COPY src/index.html /usr/share/nginx/html/index.html

# 권한 변경 (필요한 경우)
RUN chmod 644 /usr/share/nginx/html/index.html

# NGINX 캐시 디렉토리 생성 및 권한 부여
USER root
RUN mkdir -p /var/cache/nginx/client_temp && \
    chmod -R 777 /var/cache/nginx

# 기본 사용자로 돌아감
USER nginx

