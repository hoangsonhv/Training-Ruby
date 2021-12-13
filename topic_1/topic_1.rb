# Bài 1 
# 1_a
params = {
	"supplier"=>{
		"name"=>"Test lay params", 
		"tax_number"=>"0110254854", 
		"address"=>"Tokyo", 
		"supplier_type"=>"personal", 
		"bank_accounts"=>{
			"0"=>{
				"account"=>"847445", 
				"branch_name"=>"VCB"
			}, 
			"1"=>{
				"account"=>"985784", 
				"branch_name"=>"ACB", 
				"_destroy"=>"false"
			}
		}
	}
}
puts params["supplier"]["bank_accounts"]["1"]["branch_name"]

# 1_b
params["type"] = "personal"
puts params

# Bài 2

# 2_a
a = [2,20,1,"/a","/c"]
b = [1,"/c/a/","/b","/a",50]
c = 1
puts b.include?c

# # 2_b
a = [2,20,1,"/a","/c"]
b = [1,"/c/a/","/b","/a",50]
d = a & b
puts d.inspect

# 2_c
a = [2,20,1,"/a","/c"]
b = [1,"/c/a/","/b","/a",50]
e = a - b
puts e.inspect

# Bài 3
module Price
  def self.min_ticket_need_sell
    puts "You need sell at least 100 ticket to fly"
  end
end
puts Price.min_ticket_need_sell

class Plane 
	include Price
	def flight_attendant xxx
		puts "In flight have #{xxx} attendant"
	end

	def self.max_fly_speed
		puts "913 km/h"
	end
end

# 3_a
vietnam_airline = Plane.new.flight_attendant(10)
puts vietnam_airline

# 3_b
vietjet = Plane.new.flight_attendant(20)
puts vietjet

# 3_c
puts Plane.max_fly_speed
