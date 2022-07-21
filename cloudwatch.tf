resource "aws_cloudwatch_log_group" "example1" {
  name = "example1"

  tags = {
    Environment = "production"
    Application = "serviceA"
    yor_trace   = "96cd21a6-900c-4311-bea0-7a65666d54e2"
  }
}

resource "aws_cloudwatch_log_group" "example2" {
  name = "example2"

  kms_key_id        = "cwKey"
  retention_in_days = 90
  tags = {
    Environment = "production"
    Application = "serviceA"
    yor_trace   = "ef37c550-921f-43d7-bf7e-c16a426933c5"
  }
}

resource "aws_cloudwatch_log_group" "example3" {
  name = "example3"

  kms_key_id        = "cwKey"
  retention_in_days = 90
  tags = {
    Environment = "production"
    Application = "serviceA"
    yor_trace   = "4c2a25ae-898f-4ebd-a778-c4fdf2a7cb35"
  }
}

resource "aws_cloudwatch_log_group" "example4" {
  name = "example4"

  kms_key_id        = "cwKey"
  retention_in_days = 90
  tags = {
    Environment = "production"
    Application = "serviceA"
    yor_trace   = "512bca0e-ba2e-44f2-adbe-0ebdc754c62b"
  }
}

resource "aws_cloudwatch_log_group" "example5" {
  name = "example5"

  kms_key_id        = "cwKey"
  retention_in_days = 90
  tags = {
    Environment = "production"
    Application = "serviceA"
    yor_trace   = "a661e37e-6e0a-4e88-8bdb-0c1bcb78b4da"
  }
}

resource "aws_cloudwatch_log_group" "example6" {
  name = "example6"

  kms_key_id        = "cwKey"
  retention_in_days = 90
  tags = {
    Environment = "production"
    Application = "serviceA"
    yor_trace   = "0a1217b3-d1be-4fd5-b00f-0221e70f13a4"
  }
}

resource "aws_cloudwatch_log_group" "example7" {
  name = "example7"

  kms_key_id        = "cwKey"
  retention_in_days = 90
  tags = {
    Environment = "production"
    Application = "serviceA"
    yor_trace   = "9ed44cd2-362f-4618-a942-d03cf73b3f75"
  }
}