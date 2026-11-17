# Decisiones

> [!TIP]
> Corrección 6: decisiones con alternativa y trade-off.

D1. Lambda en vez de Kappa: batch para maestros, streaming para eventos (consigna 4.3). Costo: dos códigos (Clase 03).

D2. Parquet en vez de CSV: columnar y eficiente (consigna 4.2).

D3. Partición por fecha y no por servicio: evita archivos chicos (Clase 03).

D4. Guardar todo el histórico: permite reprocesar (consigna 3.2).

D5. Quarantine en vez de descartar: lo pide la consigna 4.4.

D6. Esquema explícito en vez de inferSchema: value llega como texto (consigna 4.4).

D7. Cassandra en DataStax Astra DB: lo nombra la consigna 2.2.

D8. Umbral de anomalía cost_usd_increment < -0,01 → Quarantine con motivo, en vez de descartar (consigna 6.2).

D9. Watermark de 60 días en vez de 10 minutos: cada archivo mezcla eventos de los 60 días del dataset (README del ZIP). Costo: más estado en memoria (Clase 03).

D10. Gold en batch en vez de streaming: en append, una agregación espera a que cierre el watermark (Clase 04/11).

D11. Maestros en batch con overwrite: re-ejecutar no duplica (Clase 02_01). Orgs y users sin partición porque son chicos (Clase 03).

D12. Sin cleanSource: Landing se conserva para reprocesar (consigna 3.2). Costo: con miles de archivos, listar la carpeta tarda más (Clase 04/11).

D13. Cassandra con una tabla por consulta (Clase 11/11): org_daily_usage_by_service con PRIMARY KEY ((org_id, service), usage_date) para la consulta 1, y top_services_14d_by_org con PRIMARY KEY ((org_id), cost_14d_usd, service) para la consulta 2. El total de 14 días se calcula en Spark porque Cassandra no tiene GROUP BY entre particiones. Costo: datos duplicados. Cassandra es AP: el Gold se carga en batch y después solo se lee.

D14. Token de Astra en el gestor de secretos de Colab y Secure Connect Bundle fuera del repo: nunca en el código ni en git (Clase 11/11).
