require "mysql"
dbc = Mysql.real_connect('127.0.0.1','r4r','railzrulez','r4rmusic1_development')
res = dbc.query('SELECT description,publisher FROM r4rmusic1_development.editions')
while row = res.fetch_row do
	puts "Description: #{row[0]} | Publisher: #{row[1]}"
end

