user = User.new(
  :first_name => "Bob",
  :last_name => "Papillard",
  :email => "bob@lewagon.org",
  :password => '12345678',
  
)

user.save!(:validate => false)


user = User.new(
  :first_name => "Administrator",
  :last_name => "De Novastoria",
  :email => "admin@novastoria.fr",
  :password => '12345678',
  :admin => true
)

user.save!(:validate => false)





quiz = User.first.challenges.create(invite_key: "testdelakey", score: 69)

##########################################################################################

question = Question.new(
	:query => "Quelle arme de destruction massive, massivement utilisée en Syrie depuis le début de la guerre civile, aurait fait jusqu'à présent des dizaines de milliers de victimes ?", 
	:explication => "'« Le monde se préoccupe des armes chimiques; mais, pour nous, Syriennes, le viol est pire que la mort », murmure en un sanglot une étudiante en droit qui n'a encore osé confier son drame à personne.'C'est le crime le plus tu, perpétré actuellement en Syrie. Un crime massif, organisé par le régime et réalisé dans les conditions les plus barbares. Un crime fondé sur l'un des tabous les mieux ancrés dans la société traditionnelle syrienne et sur le silence des victimes, convaincues de risquer  le rejet par leur propre famille, voire une condamnation à mort. Il toucherait des dizaines de milliers de survivantes.", 
	:source_url => "http://www.lemonde.fr/proche-orient/article/2014/03/04/syrie-le-viol-arme-de-destruction-massive_4377603_3218.html", 
	:difficulty => 3,
	:category => "International",
	:week => 1
	)

question.save!(:validate => false)

##########################################################################################

set = AnswersSet.new(
	:question_id => 1,
	:answer1 => "Le gaz moutarde", 
	:answer2 => "Le napalm", 
	:answer3 => "Les mines anti-personnelles", 
	:good_answer => "Le viol"
	)

set.save!(:validate => false)

##########################################################################################

question2 = Question.new(
	:query => "Qu'a fait Patrick Buisson, l'ancien conseiller de Nicolas Sarkozy pendant le précédent quinquennat, pour susciter de tels remous dans la sphère politique française ?", 
	:explication => "Le Canard Enchainé publie ce qu'il présente comme le verbatim d'une réunion à l'Elysée, enregistrée à l'aide d'un dictaphone par l'ex-conseiller de M. Sarkozy. Selon le journal satirique, la scène se déroule le 27 février 2011, lors d'une réunion de travail autour du président, à quelques heures du remaniement qu'il va annoncer.", 
	:source_url => "http://abonnes.lemonde.fr/politique/article/2014/03/05/buisson-a-bien-enregistre-sarkozy-a-son-insu_4377644_823448.html", 
	:difficulty => 3,
	:category => "France",
	:week => 1
	)

question2.save!(:validate => false)

##########################################################################################

set = AnswersSet.new(
	:question_id => 2,
	:answer1 => "Il tournait des films porno", 
	:answer2 => "Il espionnait l'UMP pour le compte du FN", 
	:answer3 => "Il recevait des pots-de-vins de Serge Dassault", 
	:good_answer => "Il enregistrait Nicolas Sarkozy à son insu"
	)

set.save!(:validate => false)

##########################################################################################

question3 = Question.new(
	:query => "Quel est le pays de cette liste où l'homosexualité n'est pas encore passible de peine de mort ?", 
	:explication => "Les salauds !", 
	:source_url => "http://www.homo.fr", 
	:difficulty => 3,
	:category => "International",
	:week => 1
	)

question3.save!(:validate => false)

##########################################################################################

set = AnswersSet.new(
	:question_id => 3,
	:answer1 => "Nigeria", 
	:answer2 => "Iran", 
	:answer3 => "Afghanistan", 
	:good_answer => "Ouganda"
	)

set.save!(:validate => false)

##########################################################################################

question4 = Question.new(
	:query => "Qui est le chef du Wagon ?", 
	:explication => "Blop !", 
	:source_url => "http://www.lewagon.fr", 
	:difficulty => 3,
	:category => "International",
	:week => 1
	)

question4.save!(:validate => false)


##########################################################################################

set = AnswersSet.new(
	:question_id => 4,
	:answer1 => "Paillards", 
	:answer2 => "Fred", 
	:answer3 => "Olivier", 
	:good_answer => "Charlotte"
	)

set.save!(:validate => false)

##########################################################################################

question5 = Question.new(
	:query => "Qui vient d'entrer en Ukraine ?", 
	:explication => "Blop !", 
	:source_url => "http://www.russie.fr", 
	:difficulty => 3,
	:category => "International",
	:week => 1
	)

question5.save!(:validate => false)

##########################################################################################

set = AnswersSet.new(
	:question_id => 5,
	:answer1 => "La France", 
	:answer2 => "La Chine", 
	:answer3 => "La Pologne", 
	:good_answer => "La Russie"
	)

set.save!(:validate => false)


##########################################################################################

question6 = Question.new(
	:query => "Que veut construire NKM à la Gare du Nord ?", 
	:explication => "Ce n'est pas un métro ...", 
	:source_url => "http://www.russie.fr", 
	:difficulty => 3,
	:category => "International",
	:week => 1
	)

question6.save!(:validate => false)

##########################################################################################

set = AnswersSet.new(
	:question_id => 6,
	:answer1 => "Un hôpital psychiatrique", 
	:answer2 => "Un bureau de vote", 
	:answer3 => "Le nouvel Hôtel de Ville de Paris", 
	:good_answer => "Un Centre d'affaire"
	)

set.save!(:validate => false)







