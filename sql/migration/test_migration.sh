#!/usr/bin/env sh
# Copyright 2021 The Vitess Authors.
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

mysql -u root < ./000_old_schema.sql
mysql -u root < ./001_New_parent_table_for_executions_125.sql
mysql -u root < ./002_add_foreign_key_to_microbenchmark_details.sql
mysql -u root < ./003_add_type_to_execution.sql
mysql -u root < ./004_add_pull_request_to_execution.sql
mysql -u root < ./005_add_vtgate_planner_version_to_macrobenchmarks.sql
mysql -u root < ./006_drop_foreign_key_constraints.sql