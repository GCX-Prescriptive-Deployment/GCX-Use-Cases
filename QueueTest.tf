resource "genesyscloud_routing_queue" "testingthis" {
  acw_wrapup_prompt       = "MANDATORY_TIMEOUT"
  auto_answer_only        = false
  enable_transcription    = true
  skill_evaluation_method = "BEST"
  media_settings_email {
    alerting_timeout_sec      = 300
    service_level_duration_ms = 86400000
    service_level_percentage  = 0.9
  }
  media_settings_call {
    alerting_timeout_sec      = 20
    service_level_duration_ms = 60000
    service_level_percentage  = 0.9
  }
  media_settings_callback {
    service_level_duration_ms = 20000
    service_level_percentage  = 0.8
    alerting_timeout_sec      = 30
  }
  media_settings_chat {
    alerting_timeout_sec      = 30
    service_level_duration_ms = 20000
    service_level_percentage  = 0.8
  }
  acw_timeout_ms           = 60000
  enable_manual_assignment = true
  media_settings_message {
    alerting_timeout_sec      = 30
    service_level_duration_ms = 20000
    service_level_percentage  = 0.8
  }
  name = "testing this"
}

