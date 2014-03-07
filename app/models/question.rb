require 'csv'

class Question < ActiveRecord::Base
  has_many :challenge_steps
  has_one :answers_set
  accepts_nested_attributes_for :answers_set, allow_destroy: true

  validates :query, presence: {:message => 'Vous devez entrer une question'}
  validates :explication, presence: {:message => 'Vous devez entrer une explication pour recontextualiser la question'}
  validates :source_url, presence: {:message => 'Vous devez donner la source de votre information'}
  validates :difficulty, presence: {:message => 'Vous devez définir un niveau de difficulté'}

  def self.available_questions(user)
  	answered_question_ids = ChallengeStep.where(answerer: user).collect {|p| [ p.question_id ] }.flatten.uniq
    Question.all.where.not(id: answered_question_ids)
  end

  def self.import(file)
    spreadsheet = open_spreadsheet(file)
    header = spreadsheet.row(1)
    (2..spreadsheet.last_row).each do |i|
      row = Hash[[header, spreadsheet.row(i)].transpose]
      @question = find_by_id(row["id"]) || new
      @question.attributes = row.to_hash.slice(*accessible_attributes)
      @question.save!
    end
  end

  def self.open_spreadsheet(file)
    case File.extname(file.original_filename)
    when ".csv" then CSV.open(file.path, "r:ISO-8859-1")
    when ".xls" then Excel.new(file.path, "r:ISO-8859-1")
    when ".xlsx" then Excelx.new(file.path, "r:ISO-8859-1")
    else raise "Unknown file type: #{file.original_filename}"
    end
  end

end








