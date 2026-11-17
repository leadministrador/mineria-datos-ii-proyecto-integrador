# Proyecto Integrador · Minería de Datos II

ISTEA · 2C 2026 · Prof. Diego Mosquera

Pipeline de datos con PySpark, Data Lake en Parquet y Cassandra.

## Archivos

docs/DISENO.md → documento de diseño

docs/CORRECCIONES.md → correcciones de la primera entrega

docs/MATRIZ.md → matriz requisito-componente

docs/BACKLOG.md → backlog final priorizado

DECISIONS.md → decisiones

notebooks/01_exploracion_landing.ipynb → exploración de los datos

notebooks/02_streaming_bronze.ipynb → streaming, Bronze, Silver, Quarantine y Gold

config/ → configuración de ejemplo, sin credenciales

evidence/ → evidencias

## Quickstart (Google Colab)

1. Abrir notebooks/02_streaming_bronze.ipynb y tocar "Open in Colab".

2. Si aparece "Este cuaderno no lo ha creado Google", tocar "Ejecutar de todos modos".

3. Panel Archivos → carpeta content → subir cloud_provider_challenge_dataset_v1.zip.

4. Astra DB: en Connection details, bajar el Secure Connect Bundle y subirlo a content como secure-connect-mineria-datos-ii.zip (no descomprimir).

5. Astra DB: generar un token (Database Administrator) y guardarlo en Colab → Secretos (llave) con el nombre ASTRA_TOKEN y acceso al notebook activado.

6. Astra DB: crear las 2 tablas en la CQL console con el CREATE TABLE de DECISIONS.md (D13).

7. Entorno de ejecución → Ejecutar todas.

8. Resultados esperados:

Bronze eventos 43.200 · re-ejecución 43.200 (no duplica)

Silver 40.956 · Quarantine 2.244 (costo_negativo 211 · unit_vacio 2.033)

Maestros 80 · 800 · 240 · Silver billing 240

Gold org_daily_usage_by_service 11.050

Astra DB: 11.050 filas en org_daily_usage_by_service · 262 en top_services_14d_by_org · 2 consultas CQL (ver evidence/)

El token y el bundle nunca se suben al repo.

La exploración de los datos está en notebooks/01_exploracion_landing.ipynb.
