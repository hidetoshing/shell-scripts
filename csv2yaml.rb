require 'csv'
require 'yaml'
require 'pp'
 
file_name=ARGV[0]
path_to_csv="#{file_name}.csv"
path_to_yaml="#{file_name}.yml"

csv = CSV.read(path_to_csv, :headers => true).map(&:to_hash)

hash = csv

File.open(path_to_yaml, 'w') { |f| f.write(hash.to_yaml) }
pp YAML.load_file(path_to_yaml)

