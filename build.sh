#!/bin/bash
set -e

# Continue with other build steps
echo "Generating client..."
openapi-generator generate -i https://slipstream.hsone.app/swagger/v1/swagger.json -g ruby -c openapi-generator-gem-config.yaml -o . --git-repo-id slipstream-gem --git-user-id dentally

# Apply patch config patch to remove dup hash key
echo "Applying patch..."

ruby build/increment_version.rb
git apply dedup_configuration_auth_settings.patch