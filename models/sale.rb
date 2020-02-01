require_relative( '../db/sql_runner' )

class Sale

  attr_reader :id, :game_id
  attr_accessor :transaction_date

  def initialize(options)
    @id = options["id"].to_i if options["id"]
    @game_id = options["game_id"].to_i
    @transaction_date = options["transaction_date"]
  end

  def save()
    sql = "INSERT INTO sales
    (
      transaction_date,
      game_id
    )
    VALUES
    (
      $1, $2
    )
    RETURNING id"
    values = [@transaction_date, @game_id]
    results = SqlRunner.run(sql, values)
    @id = results.first()['id'].to_i
  end

  def self.delete_all()
    sql = "DELETE FROM sales"
    SqlRunner.run( sql )
  end

  def self.all()
  sql = "SELECT * FROM sales"
  results = SqlRunner.run( sql )
  return results.map { |sale| Sale.new( sale ) }
end

  def delete()
    sql = "DELETE FROM sales WHERE id = $1"
    values = [@id]
    SqlRunner.run( sql, values )
  end

  def game()
    sql = "SELECT games.* FROM games WHERE id = $1"
    values = [@game_id]
    results = SqlRunner.run(sql, values)
    return  Game.new(results.first)
  end

  def publisher()
    sql = "SELECT publishers.* FROM publishers INNER JOIN games ON
    games.publisher_id = publishers.id WHERE games.id = $1"
    values = [@game_id]
    results = SqlRunner.run(sql, values)
    return Publisher.new (results.first)
  end

  def self.find(id)
  sql = "SELECT * FROM sales
  WHERE id = $1"
  values = [id]
  results = SqlRunner.run( sql, values )
  return Sale.new( results.first )
end


end
