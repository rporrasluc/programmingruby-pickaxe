require 'gserver'

class LogServer < GServer

  def initialize
    super(60501)
  end

  def serve(client)
    puts 'Serving a client...'
    #client.puts get_end_of_log_file
    clients.puts 'Hola amigo'
    puts 'And stop the server...'
    self.stop
  end


private

  def get_end_of_log_file
    File.open('/var/log/system.log') do |log|
      log.seek(-500, IO::SEEK_END)
      log.gets
      log.read
    end
  end
end

server = LogServer.new
server.start.join