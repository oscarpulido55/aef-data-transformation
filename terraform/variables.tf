/**
 * Copyright 2024 Google LLC
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

variable "domain" {
  description = "Your organization or domain name, organization if centralized data management, domain name if one repository for each data domain in a Data mesh environment."
  type        = string
  nullable    = false
}

variable "project" {
  description = "The project where the GCS buckets for storing your artifacts and job definitions will be created."
  type        = string
  nullable    = false
}

variable "region" {
  description = "The region where the GCS buckets for storing your artifacts and job definitions will be created."
  type        = string
  nullable    = false
}

variable "environment" {
  description = "Environment folder name you want to deploy. ../jobs/<<ENVIRONMENT>>/.. If not set wherever is in the dev environment folder will be deployed."
  type        = string
  default     = "dev"
  nullable    = false
}