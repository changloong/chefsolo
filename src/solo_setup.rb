workdir = File.absolute_path( File.join( File.dirname(__FILE__), '..' ) )

cookbook_path [
                File.join(workdir, "site-cookbooks"),
                File.join(workdir, "cookbooks")
              ]

file_store_path File.join(workdir, 'cache')
file_cache_path File.join(workdir, 'cache')
data_bag_path File.join(workdir, 'data_bags')

log_level :debug
Chef::Log::Formatter.show_time = false
