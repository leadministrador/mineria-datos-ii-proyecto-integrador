# Proyecto Integrador · Minería de Datos II

ISTEA · 2C 2026 · Prof. Diego Mosquera

Pipeline de datos con PySpark, Data Lake en Parquet y Cassandra.

## Archivos

docs/DISENO.md → documento de diseño

docs/CORRECCIONES.md → correcciones de la primera entrega

docs/MATRIZ.md → matriz requisito-componente

DECISIONS.md → decisiones

notebooks/01_exploracion_landing.ipynb → exploración de los datos

notebooks/02_streaming_bronze.ipynb → streaming, Bronze, Silver, Quarantine y Gold

config/ → configuración de ejemplo, sin credenciales

evidence/ → evidencias

## Quickstart (Google Colab)

1. Abrir notebooks/02_streaming_bronze.ipynb y tocar "Open in Colab".

2. Si aparece "Este cuaderno no lo ha creado Google", tocar "Ejecutar de todos modos".

3. Panel Archivos (carpeta) → subir cloud_provider_challenge_dataset_v1.zip.

4. Entorno de ejecución → Ejecutar todas.

5. Resultados esperados:

Bronze eventos 43.200 · re-ejecución 43.200 (no duplica)

Silver 40.956 · Quarantine 2.244 (costo_negativo 211 · unit_vacio 2.033)

Maestros 80 · 800 · 240 · Silver billing 240

Gold org_daily_usage_by_service 11.050

La exploración de los datos está en notebooks/01_exploracion_landing.ipynb.
