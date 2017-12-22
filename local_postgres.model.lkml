connection: "local_postgres"

# include all the views
include: "*.view"

# include all the dashboards
include: "*.dashboard"

datagroup: local_postgres_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

datagroup: 24_hour {
  sql_trigger: select current_date ;;
}

persist_with: local_postgres_default_datagroup

explore: weather {}

explore: pdt_1 {}
