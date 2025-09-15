# EMA Frontend (WebApp)

Este repositorio contiene el código fuente del frontend para la aplicación **EMA (Espacio de Monitoreo y Apoyo)**. Esta aplicación web ha sido desarrollada con Flutter y está diseñada para consumir la [API del Backend de EMA](https://github.com/Nicofon1/ema_backend).

El propósito de esta aplicación es proporcionar una interfaz para que los docentes puedan visualizar listas de estudiantes y acceder a plantillas de sondeos basados en la edad.

Este proyecto representa la contraparte visual y de cliente del "esqueleto funcional" para el primer avance del curso.

## Integrantes

**Sergio Nicolas Fonseca Niño:** 000532259.

**Luisa García Gallego:** 000531822.

**Salomé Trujillo Berrío:** 000530107.

**Valentina Martínez Tribiño:** 000509695.

## UML Implementación Actual

<img width="3840" height="898" alt="Untitled diagram _ Mermaid Chart-2025-09-15-012220" src="https://github.com/user-attachments/assets/4ce19984-2299-443d-ae21-d2dfcbe64dd6" />



## Arquitectura y Tecnologías Utilizadas

*   **Framework:** Flutter
*   **Arquitectura:** MVVM (Model-View-ViewModel)
*   **Gestión de Estado:** Provider
*   **Comunicación HTTP:** Paquete `http`

---

## Uso de la Aplicación

Esta aplicación es un cliente web y ya ha sido desplegada. **No es necesario clonar este repositorio ni ejecutar el código localmente para probar la funcionalidad.**


### 1. Ejecutar el Servidor Backend Localmente

La aplicación web está configurada para comunicarse con el servidor backend que debe estar corriendo en tu máquina local.

**Sigue las instrucciones del [repositorio del Backend](https://github.com/Nicofon1/ema_backend) para ponerlo en marcha.**


### 2. Acceder a la Aplicación Web

Con el servidor local corriendo, abre tu navegador web y dirígete a la siguiente URL para usar la aplicación:

[**https://nicofon1.github.io/ema_webApp/**](https://nicofon1.github.io/ema_webApp/)

Desde esta página, podrás:
*   Navegar a la sección "Ver Lista de Estudiantes" para ver los datos de prueba servidos por tu backend local.
*   Ir a "Iniciar Nuevo Sondeo", ingresar una edad y ver cómo la aplicación solicita y muestra el cuestionario correspondiente desde tu backend local.
