view: current_state {
  derived_table: {
    sql:
      SELECT * FROM Events t1
        join(SELECT PageID, max(Date) as Date
        FROM Events
        WHERE {% condition articles_by_date %} date {% endcondition %}
        GROUP BY PageID) t2 USING (PageID, Date) ;;
  }

  filter: articles_by_date {
    type: date
  }

  dimension: author {
    type: string
    sql: ${TABLE}.Author ;;
  }

  dimension: author_groups {
    type: string
    sql: ${TABLE}.`Author Groups` ;;
  }

  dimension: confidence {
    type: string
    sql: ${TABLE}.Confidence ;;
  }

  dimension_group: created {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.Created ;;
  }

  dimension_group: date {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.Date ;;
  }

  dimension_group: edited {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.Edited ;;
  }

  dimension: editor_groups {
    type: string
    sql: ${TABLE}.`Editor Groups` ;;
  }

  dimension: event {
    type: string
    sql: ${TABLE}.Event ;;
  }

  dimension: flagged {
    type: yesno
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

  dimension: published {
    type: yesno
    sql: ${TABLE}.Published ;;
  }

  dimension: rating {
    type: yesno
    sql: ${TABLE}.Rating ;;
  }

  dimension_group: time_to_publish {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.TimeToPublish ;;
  }

  dimension: url {
    type: string
    sql: ${TABLE}.URL ;;
  }

  dimension: visibility {
    type: string
    sql: ${TABLE}.Visibility ;;
  }

  measure: total_rating  {
    type: sum
    sql: ${rating} ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
