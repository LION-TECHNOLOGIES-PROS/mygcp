/**
 * Copyright 2019 Google LLC
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *      http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */


provider "null" {
  version = "~> 2.1"
}

provider "google" {
  version = "~> 3.45.0"
}

# [START vpc_auto_create]
resource "google_compute_network" "project-a-322719" {
  project                 = "project-a-322719" # Replace this with your project ID in quotes
  name                    = "testing"
  auto_create_subnetworks = true
  mtu                     = 1460
}
# [END vpc_auto_create]
