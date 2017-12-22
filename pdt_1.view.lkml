view: pdt_1 {
  derived_table: {
    sql: select 1 as col_1;
      ;;
  datagroup_trigger: 24_hour
  indexes: ["col_1"]
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  dimension: col_1 {
    type: string
    sql: ${TABLE}.col_1 ;;
  }

  set: detail {
    fields: [col_1]
  }
}
