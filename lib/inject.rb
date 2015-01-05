class Array

	def my_inject(arg=nil, op = nil)
		starter = arg ? arg : self.shift
		self.each {|number| starter = yield(starter,number) }
		starter	
	end
end