resource "aws_cloudwatch_dashboard" "main" {
  dashboard_name = var.prefix
  dashboard_body = <<THEREBEDRAGONS
{
  "widgets": [
    {
        "view": "timeSeries",
        "stacked": false,
        "metrics": [
            [ "kandidat2022", "scan-ppe.duration" ],
            [ "kandidat2022", "scan-danger.duration" ]
        ],
        "region": "eu-west-1"
    },
    {
      "type": "metric",
      "x": 0,
      "y": 0,
      "width": 12,
      "height": 6,
      "properties": {
        "metrics": [
          [
            "${var.prefix}",
            "scan.count",
            "PPE",
            "violations"
          ]
        ],
        "period": 300,
        "stat": "Maximum",
        "region": "eu-west-1",
        "title": "Total number of violations"
      }
    },
    {
      "type": "metric",
      "x": 0,
      "y": 0,
      "width": 12,
      "height": 6,
      "properties": {
        "metrics": [
          [
            "${var.prefix}",
            "scan.count",
            "PPE",
            "none-violations"
          ]
        ],
        "period": 300,
        "stat": "Maximum",
        "region": "eu-west-1",
        "title": "Total number of non violations"
      }
    },
    {
      "type": "metric",
      "x": 0,
      "y": 0,
      "width": 12,
      "height": 6,
      "properties": {
        "metrics": [
          [
            "${var.prefix}",
            "danger-violation.value",
            "Weapon",
            "Found"
          ]
        ],
        "period": 300,
        "stat": "Maximum",
        "region": "eu-west-1",
        "title": "DANGER",
        "view": "gauge",
        "yAxis": {
            "left": {
                "min": 0,
                "max": 10
            }
        }
      }
    }
  ]
}
THEREBEDRAGONS
}