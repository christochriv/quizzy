
question = Question.new(
  :query => "Pourquoi les dirigeants de la planète se retrouvent-ils le 6 juin ?", 
  :explication => "Lire Wikipédia", 
  :source_url => "http://www.lemonde.fr/proche-orient/article/2014/03/04/syrie-le-viol-arme-de-destruction-massive_4377603_3218.html", 
  :week_id => 1
  )

question.save!(:validate => false)

##########################################################################################

set = AnswersSet.new(
  :question_id => 2,
  :answer1 => "Pour le G7", 
  :answer2 => "Pour parler de l'Ukraine", 
  :answer3 => "Pour parler de la Syrie", 
  :good_answer => "Pour l'anniversaire du débarquement des Alliés en Normandie"
  )

set.save!(:validate => false)

##########################################################################################

question2 = Question.new(
  :query => "Qui s'est fait virer de la direction de l'UMP ?", 
  :explication => "C'est bien fait pour lui", 
  :source_url => "http://abonnes.lemonde.fr/politique/article/2014/03/05/buisson-a-bien-enregistre-sarkozy-a-son-insu_4377644_823448.html", 
  :week_id => 1
  )

question2.save!(:validate => false)

##########################################################################################

set = AnswersSet.new(
  :question_id => 3,
  :answer1 => "Nicolas Sarkozy", 
  :answer2 => "Nadine Morano", 
  :answer3 => "Christian Jacob", 
  :good_answer => "Jean-François Copé"
  )

set.save!(:validate => false)

##########################################################################################

question3 = Question.new(
  :query => "Quel est le pays de cette liste où l'homosexualité n'est pas encore passible de peine de mort ?", 
  :explication => "Les salauds !", 
  :source_url => "http://www.homo.fr", 
  :week_id => 1
  )

question3.save!(:validate => false)

##########################################################################################

set = AnswersSet.new(
  :question_id => 4,
  :answer1 => "Nigeria", 
  :answer2 => "Iran", 
  :answer3 => "Afghanistan", 
  :good_answer => "Ouganda"
  )

set.save!(:validate => false)

##########################################################################################

question4 = Question.new(
  :query => "Comment s'appelle mon café préféré", 
  :explication => "Blop !", 
  :source_url => "http://www.lewagon.fr", 
  :week_id => 1
  )

question4.save!(:validate => false)


##########################################################################################

set = AnswersSet.new(
  :question_id => 5,
  :answer1 => "Le café des solitaires", 
  :answer2 => "Le café des loisirs", 
  :answer3 => "Le café de la Paix", 
  :good_answer => "Le café des Batignolles"
  )

set.save!(:validate => false)

##########################################################################################

question5 = Question.new(
  :query => "Qui est le premier ministre français ?", 
  :explication => "Blop !", 
  :source_url => "http://www.russie.fr", 
  :week_id => 1
  )

question5.save!(:validate => false)

##########################################################################################

set = AnswersSet.new(
  :question_id => 6,
  :answer1 => "Yannick Noah", 
  :answer2 => "François Fillon", 
  :answer3 => "Vladimir Poutine", 
  :good_answer => "Manuel Valls"
  )

set.save!(:validate => false)


##########################################################################################

question6 = Question.new(
  :query => "Qui est l'héroïne de Millénium ?", 
  :explication => "Ce n'est pas un métro ...", 
  :source_url => "http://www.russie.fr", 
  :week_id => 1
  )

question6.save!(:validate => false)

##########################################################################################

set = AnswersSet.new(
  :question_id => 7,
  :answer1 => "Lady Di", 
  :answer2 => "Henriet Vanger", 
  :answer3 => "Camila Salander", 
  :good_answer => "Lisbeth Salander"
  )

set.save!(:validate => false)
