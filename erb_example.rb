require 'erb'

x = 42
template = ERB.new "The value of x is: <%= x %>"
puts template.result(binding)

name = "porf"
final_string = "#{name} is the man that is going to learn ruby nice"
output_string = ERB.new "<%= final_string %>"
puts output_string.result(binding)

time_out = ERB.new "<%= Time.now.hour %>"
puts time_out.result(binding)

animal = ["porf", "kirk", "willy"]
animal_out = ERB.new "<%= animal %>"
puts animal_out.result(binding)

a_out = ERB.new '<% animal.each do |p| %>
				  <%= puts "killa #{p}"%>
				 <% end %>'
puts a_out.result(binding)				 
