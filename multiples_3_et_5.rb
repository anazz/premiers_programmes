##### code Ana Zegheanu #####

=begin
	### cette methode va additioner les multiples de 3 et 5 jusqu'à 1000 ###	
=end

def multiples_3_and_5
  #  on met a sum la valeur de depart 0
  sum = 0
  #  on fait une iteration avec each.do sur les valeurs de 1 à 1000
  (1...1000).each do |number| 
     #  pour chaque nombre on verifie si il est multiple de 3 ou multiple de 5
	 if number % 3 == 0 || number % 5 == 0
	   #  si c'est le cas on rajoute le nombre à la somme à chaque tour de bloucle
	   sum += number
	end	
  end
  #  on affiche la somme	
  puts sum
end	
	
multiples_3_5	