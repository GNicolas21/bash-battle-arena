## Práctica - Bash Battle Arena II
### Alumno: Giorgio Nicolas Osorio Bautista
### Fecha: 09/11/12 

### Niveles completados: 5/5
### Tiempo aproximado: 4 horas

---
### Nivel 6  Bash Scripting y Gestión de Ramas

En este nivel primero **creé una nueva rama** y me moví a ella para trabajar de forma aislada.  
Luego desarrollé el script (que muestro al final) junto con el archivo `testarchivolevel6.txt`.

El mayor desafío fue **entender y adaptarme al lenguaje Bash**, ya que su sintaxis y forma de pensar son muy diferentes a otros lenguajes que había usado antes.  
Tuvo un **nivel de dificultad alto**, especialmente al comprender cómo funcionan los comandos, los permisos y las redirecciones.

---
### Relación con los Niveles 7, 8, 9 y 10
Los niveles posteriores (**7, 8, 9 y 10**) mantienen una **estructura y funcionalidad muy similar** a la del nivel 6.  
En todos ellos se crean y ejecutan **scripts Bash** que automatizan tareas específicas dentro del sistema, como ordenar archivos, buscar contenido en logs o monitorear cambios en directorios.

---

###  Lección aprendida  Commits por rama
Después entendí que **no hacer commits dentro de cada rama antes de hacer `push`** fue un error (aunque común).  
Esto provocó que, al subir las ramas al repositorio remoto, **parecieran idénticas a la rama `main`**, ya que no tenían ningún cambio registrado todavía.

En Git, cuando se crea una rama, esta **copia el estado actual** de la rama base (normalmente `main`).  
Si no se realizan commits nuevos en esa rama, entonces **no hay diferencias reales** entre ambas.
