/*

    Licensed under the Apache License, Version 2.0 (the "License");
    you may not use this file except in compliance with the License.
    You may obtain a copy of the License at

        http://www.apache.org/licenses/LICENSE-2.0

    Unless required by applicable law or agreed to in writing, software
    distributed under the License is distributed on an "AS IS" BASIS,
    WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
    See the License for the specific language governing permissions and
    limitations under the License.
*/


-- +goose Up
-- SQL in section 'Up' is executed when this migration is applied
ALTER TABLE steering_target
DROP CONSTRAINT fk_steering_target_target,
ADD CONSTRAINT fk_steering_target_target
  FOREIGN KEY (target)
  REFERENCES deliveryservice (id)
  ON DELETE CASCADE
  ON UPDATE CASCADE;

-- +goose Down
-- SQL section 'Down' is executed when this migration is rolled back

