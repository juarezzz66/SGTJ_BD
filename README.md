# SGTJ_BD — Base de Datos del Sistema SGTJ

Base de datos SQL Server para el sistema de gestión de **SERVICIOS GENERALES TRANSPORTES JUAREZ S.R.L.**

## Descripción

Este repositorio contiene los scripts SQL necesarios para crear y cargar la base de datos del sistema SGTJ, orientado a la gestión de clientes, proyectos, contratos, equipos, personal, combustible, mantenimiento, facturación y pagos.

## Contenido del repositorio

| Archivo | Descripción |
|---|---|
| `BD_SGTJ.sql` | Script para crear la estructura de la base de datos. |
| `DATOS_SGTJ.sql` | Script para insertar los datos iniciales. |

## Requisitos

- Microsoft SQL Server.
- SQL Server Management Studio (SSMS).
- Permisos para crear y modificar bases de datos en la instancia de SQL Server.

## Instalación y ejecución

1. Clonar o descargar este repositorio.
2. Abrir SQL Server Management Studio y conectarse a la instancia correspondiente.
3. Abrir `BD_SGTJ.sql` y revisar el nombre de la base de datos y las instrucciones antes de ejecutar el script.
4. Ejecutar el script de estructura.
5. Abrir `DATOS_SGTJ.sql` y comprobar que apunte a la base de datos correcta.
6. Ejecutar el script de datos después de crear las tablas.
7. Verificar que las tablas se hayan creado y que los registros se hayan insertado correctamente.

**Importante:** el orden de ejecución es necesario para evitar errores al insertar datos en tablas que todavía no existen.

## Tecnologías

- Microsoft SQL Server
- SQL Server Management Studio
- Transact-SQL (T-SQL)
- Git y GitHub para el control de versiones

## Seguridad

No publicar contraseñas, credenciales de conexión ni información confidencial. Antes de compartir los scripts, verificar que los datos incluidos estén autorizados para su uso en desarrollo o demostración.

## Autoría y mantenimiento

Repositorio destinado al desarrollo, documentación y mantenimiento de la base de datos del sistema SGTJ.

