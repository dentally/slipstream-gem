#!/bin/bash
set -e

# Continue with other build steps
current_version=$(grep -oE "VERSION = '[0-9]+\.[0-9]+\.[0-9]+'" lib/slipstream_client/version.rb | grep -oE "[0-9]+\.[0-9]+\.[0-9]+")
echo "current version $current_version"
echo "Generating client..."
openapi-generator generate -i https://slipstream.hsone.app/swagger/v1/swagger.json -g ruby -c openapi-generator-gem-config.yaml -o . --git-repo-id slipstream-gem --git-user-id dentally

# Apply patch config patch to remove dup hash key
echo "Applying patch..."

ruby build-client-gem/increment_version.rb $current_version
git apply build-client-gem/dedup_configuration_auth_settings.diff