user = User.new(
  :first_name => "Bob",
  :last_name => "Papillard",
  :email => "bob@lewagon.org",
  :password => '12345678'
)

user.save!(:validate => false)

quiz = User.first.challenges.create(invite_key: "testdelakey", score: 13)

##########################################################################################

question = Question.new(
	:query => "Quel est ce test, Ô ma gloire ?", 
	:explication => "Je teste mon Seed", 
	:source_url => "http://www.seed.fr", 
	:difficulty => 3,
	)

question.save!(:validate => false)

##########################################################################################

set = AnswersSet.new(
	:question_id => 1,
	:answer1 => "Réponse n°1", 
	:answer2 => "Réponse n°2", 
	:answer3 => "Réponse n°3", 
	:good_answer => "Réponse n°4"
	)

set.save!(:validate => false)

##########################################################################################

question2 = Question.new(
	:query => "Comment s'appelle la place de Kiev sur laquelle se concentraient les manifs ukrainiennes ?", 
	:explication => "Il va y avoir la guerre !", 
	:source_url => "http://www.ukraine.fr", 
	:difficulty => 3,
	)

question2.save!(:validate => false)

##########################################################################################

set = AnswersSet.new(
	:question_id => 2,
	:answer1 => "Tiananman", 
	:answer2 => "Saint-Marc", 
	:answer3 => "Place rouge", 
	:good_answer => "Maidan"
	)

set.save!(:validate => false)

##########################################################################################

question3 = Question.new(
	:query => "Quel est le pays de cette liste où l'homosexualité n'est pas encore passible de peine de mort ?", 
	:explication => "Les salauds !", 
	:source_url => "http://www.homo.fr", 
	:difficulty => 3,
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
	:difficulty => 1,
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
	:difficulty => 1,
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
	:difficulty => 1,
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







