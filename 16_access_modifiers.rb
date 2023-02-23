class MyClass
  
	def pub(obj)
		puts "from public method"
		obj.prot

		begin
			obj.priv
		rescue
			puts "ERROR: Private Methods can not be called by using objects"
		end

		priv
	end

	protected
	def prot
		puts "from protected method"
	end

	private
	def priv
		puts "from private method"
	end

end


obj = MyClass.new

obj.pub(obj)

begin
	obj.prot
rescue
	puts "ERROR: Protected method can not be called outside of class"
end

begin
	obj.priv
rescue
	puts "ERROR: Private method can not be called outside of class"
end