#!/bin/bash

# Script: sp60ap30esther
# Muestra servicios según el estado elegido por el usuario

echo "Seleccione una de las siguientes opciones:"
echo "[1] loaded"
echo "[2] not-found"
echo "[3] active"
echo "[4] inactive"
echo "[5] dead"
echo "[6] running"
read -p "Ingrese el número de la opción: " opcion

# Asociar número con estado
case $opcion in
  1) estado="loaded" ;;
  2) estado="not-found" ;;
  3) estado="active" ;;
  4) estado="inactive" ;;
  5) estado="dead" ;;
  6) estado="running" ;;
  *) echo "Opción no válida"; exit 1 ;;
esac

echo ""
echo "Servicios con estado: $estado"
echo "-------------------------------------"

# Filtrar servicios según el estado
systemctl list-units --type=service --all | grep "$estado"
