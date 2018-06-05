view: state {
  sql_table_name: kcs.state ;;

  dimension: confidence {
    type: string
    sql: ${TABLE}.Confidence ;;
  }

  dimension: flagged {
    type: string
    sql: ${TABLE}.Flagged ;;
  }

  dimension: page_id {
    type: number
    sql: ${TABLE}.PageID ;;
  }

  dimension: rating {
    type: number
    sql: ${TABLE}.Rating ;;
  }

  dimension: reuse {
    type: number
    sql: ${TABLE}.Reuse ;;
  }

  dimension: time {
    type: number
    sql: ${TABLE}.Time ;;
  }

  dimension: url {
    type: string
    sql: ${TABLE}.URL ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
