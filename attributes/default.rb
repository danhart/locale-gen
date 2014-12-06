default[:localegen][:lang] = ["en_GB.UTF-8 UTF-8", "en_GB.ISO-8859-15 ISO-8859-15"]

if platform?("ubuntu") then
    default['localegen']['locale_file'] = '/var/lib/locales/supported.d/local'
else
    default['localegen']['locale_file'] = '/etc/locale.gen'
end
