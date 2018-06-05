view: kcs {
  sql_table_name: kcs.KCS ;;

  dimension: author {
    type: string
    sql: ${TABLE}.Author ;;
  }

  dimension: confidence {
    type: string
    sql: ${TABLE}.Confidence ;;
  }

  dimension_group: date {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.Date ;;
  }

  dimension: event {
    type: string
    sql: ${TABLE}.Event ;;
  }

  dimension: flagged {
    type: string
    sql: ${TABLE}.Flagged ;;
  }

  dimension: last_editor {
    type: string
    sql: ${TABLE}.`Last Editor` ;;
  }

  dimension: page_id {
    type: number
    sql: ${TABLE}.PageID ;;
  }

  dimension: rating {
    type: number
    sql: ${TABLE}.Rating ;;
  }

  dimension: url {
    type: string
    sql: ${TABLE}.URL ;;
  }

  dimension: visibility {
    type: string
    sql: ${TABLE}.Visibility ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
