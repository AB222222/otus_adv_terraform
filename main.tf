terraform {
  required_providers {
    ah = {
      source  = "advancedhosting/ah"
      version = "0.1.3"
    }
  }
}

provider "ah" {
  access_token = "5BjtUwudXUEHxMX8xuXDoCTP"
}

resource "ah_cloud_server" "example" {
  name       = "Sample server"
  datacenter = "ams1"
  image      = "centos-7-x64"
  product    = "start-xs"
  ssh_keys   = ["YOURS_SSH_KEY_FINGERTIP"]

}
