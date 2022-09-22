require 'pg'
require "benchmark"
def print_memory_usage
      memory_before = `ps -o rss= -p #{Process.pid}`.to_i
      yield
      memory_after = `ps -o rss= -p #{Process.pid}`.to_i

      puts "Memory: #{((memory_after - memory_before) / 1024.0).round(2)} MB"
    end
def time
time = Benchmark.realtime do
        yield
end
        puts "Time: #{time.round(2)}"
end


def inputPG
  # Initialize connection variables.
    host = String('localhost')
    database = String('datahomework')
    user = String('zero')
    password = String('minh21052002')
    # Initialize connection object.
    conn = PG::Connection.new(:host => host, :user => user, :dbname => database, :port => '5432', :password => password)
    puts 'Successfully created connection to database'
=begin
    # run the query
    res = conn.exec("SELECT * FROM databestarion")

    # Ran only once in order to get field Name
    fieldArray=res.fields()
    fieldArray.each do |elem|
    print "elem="+elem+"\n"
    end 
   # print data from the query
    res.each{ |row|
    puts "Code="+row["code"]  +" title="+row["title"] +" did="+row["did"] +" date_prod="+row["date_prod"] +" kind="+row["kind"] +" len="+row["len"]}
=end
end

inputPG

