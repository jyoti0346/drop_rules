drop_rules = {
  "rule1" = {
    accountId   = 4439967
    description = "Drop rule for high CPU usage"
    action      = "drop_data"
    query       = "SELECT * FROM Transaction WHERE cpuUsage > 80"
  },
  rule2 = {
    accountId   = 4439967
    description = "Drop rule for error transactions"
    action      =  "drop_attributes"
    query       = "SELECT appName FROM Transaction WHERE error IS True"
  }
  rule3 = {
    accountId = 4439967
    description = "Drop rule for metric aggregates"
    action = "drop_attributes_from_metric_aggregates"
    query = "SELECT containerId FROM Metric"
  }
}
