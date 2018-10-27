require 'pg'

class Peep
  def self.all
    connection = PG.connect(dbname: 'peep_manager')
    result = connection.exec("SELECT * FROM peeps;")
    result.map { |peep| peep['text'] }
  end
end
