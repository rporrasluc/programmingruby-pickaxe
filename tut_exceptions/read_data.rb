def read_data(socket)
  data = socket.read(512)
  if data.nil?
    raise RetryException.new(true), "transient read error"
  end
  # ..
end

begin
  stuff = read_data(socket)
rescue RetryException => detail
  retry if detail.ok_to_retry
  raise
end