require 'httparty'

password_response = HTTParty.get("http://makemeapassword.org/api/v1/alphanumeric/json?c=10&l=12&sym=T/")

password_json = JSON.parse(password_response.body)
password_obj = password_json["pws"]

puts password_obj
