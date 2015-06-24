#多线程端口扫描器
##单线程扫描
ruby条件判断中只有false和nil被判定为假，其他都判定为真

code if condition是if分支语句的简写

```
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
```

##多线程扫描
端口号为0的端口不可使用，扫描时记得跳过这个端口号

```
require 'celluloid'
require 'socket'

class ScanPort
	include Celluloid
	def initialize(start_port,end_port,host)
		@start_port=start_port
		@end_port=end_port
		@host=host
	end
	def run
		until @start_port==@end_port do
			scan(@start_port)
			@start_port += 1
		end
	end
	def scan(port)
		begin
			sock=Socket.new(:INET,:STREAM)
			raw=Socket.sockaddr_in(port,@host)
			puts "#{port} open!" if sock.connect(raw)
		rescue
			if sock!=nil then
				sock.close
			end
		end
	end
end

def main
	host=ARGV[0]
	start_port=ARGV[1].to_i
	end_port=ARGV[2].to_i
	segment_size=100
	until start_port>=end_port do
		sp=ScanPort.new(start_port,start_port+segment_size,host)
		sp.async.run()
		start_port+=segment_size
	end
end

main()
```

##写在最后
安装celluloid的时候记得用sudo，在Mac里，默认的gem安装第三方库需要root权限。该程序实现了异步的程序运行。