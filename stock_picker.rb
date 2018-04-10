def trader_du_dimanche (array)

   # Nombre de jours d'achats possibles
   nombre_jours = array.length

   # Hash qui pour chaque jour d'achat renvoie un tableau qui décrit pour la meilleure plus value possible le jour d'achat, le jour de vente, le prix d'achat, le prix de vente
   meilleurs_scenarios=[]

   #Construction pour chaque jour d'achat des meilleurs scenarios. Le dernier jour n'est pas pris en compte, la plus value étant de 0
   (0..(nombre_jours-2)).each do |i|
       
       #Initialisation d'un tableau (au jour i) qui contiendra le meilleur scénario jour achat / prix achat / jour vente / prix vente / bénéfice
       meilleur_scenario = {
           'jour_achat' =>i, 'prix_achat' => array[i],'jour_vente' => i,'prix_vente' => array[i], 'plus_value' => 0
       }
       
       #Remplacer les valeurs de meilleur_scenario si un meilleur scenario est trouvé pour un jour ultérieur
       ((i+1)..(nombre_jours-1)).each do |j|
           
           if array[j]-array[i] > meilleur_scenario['plus_value']
               meilleur_scenario['jour_vente'] = j
               meilleur_scenario['prix_vente'] = array[j]
               meilleur_scenario['plus_value'] = array[j]-array[i]
           end
       
       end

       #Remplir le Hash meilleurs_scenarios
       meilleurs_scenarios << meilleur_scenario
   
   end

   
   #Identification du jour d'achat présentent la meilleure plus value potentielle
   
   meilleur_jour=[0,0] #Première valeure correspondant au jour d'achat et seconde à la plus value

   meilleurs_scenarios.each do |l|
       if l['plus_value'] > meilleur_jour[1]
           meilleur_jour[0] = l['jour_achat']
           meilleur_jour[1] = l['plus_value']
       end
   end

  puts meilleurs_scenarios[meilleur_jour[0]] 

end   


   trader_du_dimanche([17, 3, 6, 9, 15, 8, 6, 1, 10])

