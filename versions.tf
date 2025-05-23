terraform {
  required_providers {
    harness = {
      source  = "harness/harness"
      version = ">= 0.34.0"
    }
  }

  required_version = ">= 1.2.0"
}