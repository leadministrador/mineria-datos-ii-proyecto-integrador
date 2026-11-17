-- Tablas de Astra DB (Cassandra). Ejecutar en la CQL console.
USE proyecto_integrador;

-- Consulta 1: costos y requests diarios por organización y servicio en un rango de fechas
CREATE TABLE org_daily_usage_by_service (
  org_id          text,
  service         text,
  usage_date      date,
  daily_cost_usd  double,
  requests        double,
  genai_tokens    double,
  carbon_kg       double,
  PRIMARY KEY ((org_id, service), usage_date)
) WITH CLUSTERING ORDER BY (usage_date DESC);

-- Consulta 2: Top-N servicios por costo de los últimos 14 días para una organización
CREATE TABLE top_services_14d_by_org (org_id text, cost_14d_usd double, service text, PRIMARY KEY ((org_id), cost_14d_usd, service)) WITH CLUSTERING ORDER BY (cost_14d_usd DESC, service ASC);
