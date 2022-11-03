# crear un archivo miServicio.service dentro de /etc/systemd/system
# Poner lo siguiente dentro del achivo
[Service]
ExecStart=/ruta/scriptOprograma/script.sh

# Si quieres que se pueda usar systemctl enable:
[Service]
ExecStart=/ruta/scriptOprograma/script.sh
[Install]
WantedBy=multi-user.target

# Después de agregar un servicio es necesario recargar systemd
sudo systemctl daemon-reload

# Hay muchas más opciones, pero estas son las básicas
