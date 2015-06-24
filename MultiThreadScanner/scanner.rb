require 'socket'

def open_port(host,port)
	sock=Socket.new(:INET,:STREAM)
	raw=Socket.sockaddr_in(port,host)
	puts "#{port} alive" if sock.connect(raw)

rescue(Errno::ECONNREFUSED)
rescue(Errno::ETIMEDOUT)
end

def main(host,start_port,end_port)
	until start_port==end_port do
		open_port(host,start_port)
		start_port+=1
	end
end

main ARGV[0],ARGV[1].to_i,ARGV[2].to_i