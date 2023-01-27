#!/usr/bin/env bash
# Program to understand the arguments

nombreCurso=$1
horarioCurso=$2

echo "El nombre del curso es $nombreCurso, dictado en el horario de $horarioCurso"
echo "El numero de parametros recibidos fue $#"
echo "Los argumentos son $*"
echo "El script ejecutado tiene como nombre $*"
