FROM nginx:alpine
COPY ./index.html /usr/share/nginx/html/index.html
# 放到 /etc/nginx/templates/ 且以 .template 结尾，启动时自动 envsubst
COPY ./default.conf.template /etc/nginx/templates/default.conf.template
# 千万不要覆盖 entrypoint / CMD，保持默认即可