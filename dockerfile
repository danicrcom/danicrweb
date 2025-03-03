# Usar Nginx como base
FROM nginx:alpine

# Copiar el contenido de la carpeta dist al directorio de Nginx
COPY dist /usr/share/nginx/html

# Copiar la configuración personalizada de Nginx
COPY nginx.conf /etc/nginx/conf.d/default.conf

# Exponer el puerto 80
EXPOSE 8081

# Iniciar Nginx
CMD ["nginx", "-g", "daemon off;"]
