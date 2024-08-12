file_path = 'lib/slipstream_client/version.rb'
content = File.read(file_path)

# Match the current version number
current_version = ARGV[0].to_s.split(".")
major = current_version[0].to_i
minor = current_version[1].to_i
patch = current_version[2].to_i

patch += 1

new_version = "#{major}.#{minor}.#{patch}"
new_content = content.gsub(/VERSION\s*=\s*'\d+\.\d+\.\d+'/, "VERSION = '#{new_version}'")

File.open(file_path, 'w') { |file| file.write(new_content) }

puts "Version updated to #{new_version}"
