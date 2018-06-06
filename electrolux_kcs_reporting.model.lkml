connection: "kcs_reporting"

# include all the views
include: "*.view"

# include all the dashboards
include: "*.dashboard"

datagroup: electrolux_kcs_reporting_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: electrolux_kcs_reporting_default_datagroup

explore: events {}

explore: kcs {}

explore: state {}

explore: current_state {}
