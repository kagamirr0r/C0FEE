# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
	[
		['example1','example1@example.com','example',Time.now],
		['example2','example2@example.com','example2',Time.now],
		['example3','example3@example.com','example3',Time.now]
	].each do |name,mail,pass,confirmed|
	User.create!(
		{ username: name, email: mail, password: pass, confirmed_at: confirmed }
	)
  end

	[
		['KALDI','東京都豊島区西池袋1-11-1ルミネ池袋 7F','https://www.kaldi.co.jp/'],
		['COFFEE VALLEY','東京都豊島区南池袋2-26-3','https://coffeevalley.jp/'],
		['雨の日の珈琲','千葉県柏市あけぼの４丁目４−２','https://www.amenohi-coffee.jp/']
	].each do |name,adress,url|
	Shop.create!(
		{ name: name, adress: adress, url: url}
	)
	end

	[
		[3,1,'Brasil',800,'brasil','bourbon','tomio fukuda','washed','city'],
		[4,2,'Ethiopia',850,'ethiopia','','Yirgacheffe','natural','high'],
		[5,3,'Guatemala',700,'guatemala','pacamara','Esperanza','washed','fullcity']
	].each do |user_id,shop_id,name,price,country,variety,farm,process,roast|
	Bean.create!(
		{ user_id: user_id, shop_id: shop_id, name: name, price: price, variety: variety, farm: farm, process: process, roast: roast}
	)
	end

	[
		[3,1,3,3,5,'美味しい'],
		[4,2,5,3,3,'酸っぱくて美味しい'],
		[5,3,3,5,3,'この店はなんでもうまい']
	].each do |user_id,bean_id,i_sour,i_sweet,i_bitter,i_comment|
	Impression.create!(
		{ user_id: user_id, bean_id: bean_id, i_sour: i_sour,i_sweet: i_sweet,i_bitter: i_bitter,i_comment: i_comment}
	)
	end

	[
		[3,1,3,3,5,'美味しい'],
		[4,2,5,3,3,'酸っぱくて美味しい'],
		[5,3,3,5,3,'この店はなんでもうまい']
	].each do |user_id,bean_id,i_sour,i_sweet,i_bitter,i_comment|
	Impression.create!(
		{ user_id: user_id, bean_id: bean_id, i_sour: i_sour,i_sweet: i_sweet,i_bitter: i_bitter,i_comment: i_comment}
	)
	end

	[
		[1,'Brasil Hot Coffee','Coarse',90,15,'nel'],
		[2,'Ethiopia Hot Coffee','Medium',95,10,'paper'],
		[3,'Guatemala Iced Coffee','Fine',85,20,'franchpress']
	].each do |bean_id,name,grind,temperature,amount,extraction|
	Recipe.create!(
		{ bean_id: bean_id, name: name, grind: grind, temperature: temperature, amount: amount, extraction: extraction }
	)
	end

	[
		[1,'Brasil Hot Coffee','Coarse',90,15,'nel'],
		[2,'Ethiopia Hot Coffee','Medium',95,10,'paper'],
		[3,'Guatemala Iced Coffee','Fine',85,20,'franchpress']
	].each do |recipe_id,t_sour,t_sweet,t_bitter,t_aroma,t_fullbody,t_comment|
	Taste.create!(
		{ recipe_id: recipe_id, t_sour: t_sour, t_sweet: t_sweet, t_bitter: t_bitter, t_aroma: t_aroma, t_fullbody: t_fullbody, t_comment: t_comment }
	)
	end

	[
		[1,2],
		[2,3],
		[3,1]
	].each do |user_id,bean_id|
		Bean_like.create!(
		{ user_id: user_id, bean_id: bean_id }
	)
	end

	[
		[1,2],
		[2,3],
		[3,1]
	].each do |user_id,recipe_id|
		Recipe_like.create!(
		{ user_id: user_id, recipe_id: recipe_id }
	)
	end
