# Usar nginx como base
FROM nginx:alpine

# Copiar archivo HTML al directorio por defecto de nginx
COPY index.html /usr/share/nginx/html/index.html

# Copiar configuración personalizada para servir el HTML
COPY default.conf /etc/nginx/conf.d/default.conf

# Exponer el puerto 80
EXPOSE 80

# Comando por defecto
CMD ["nginx", "-g", "daemon off;"]
