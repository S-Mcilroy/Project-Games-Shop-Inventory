require_relative( '../db/sql_runner' )

class Publisher

  attr_reader :id
  attr_accessor :name, :trading

  def initialize(options)
    @id = options["id"].to_i if options["id"]
    @name = options["name"]
    @trading = options["trading"]
  end

  def save()
    sql = "INSERT INTO publishers
    (
      name,
      trading
    )
    VALUES
    (
      $1, $2
    )
    RETURNING id"
    values = [@name, @trading]
    results = SqlRunner.run(sql, values)
    @id = results.first()['id'].to_i
  end

  def self.all()
  sql = "SELECT * FROM publishers"
  results = SqlRunner.run( sql )
  return results.map { |publisher| Publisher.new( publisher ) }
end

  def self.delete_all()
    sql = "DELETE FROM publishers"
    SqlRunner.run( sql )
  end

  def delete()
    sql = "DELETE FROM publishers WHERE id = $1"
    values = [@id]
    SqlRunner.run( sql, values )
  end

  def games()
    sql = "SELECT games.* FROM games WHERE games.publisher_id = $1"
    values = [@id]
    results = SqlRunner.run(sql, values)
    return results.map{|game| Game.new(game)}
  end

  def sales()
    sql = "SELECT sales.* FROM sales INNER JOIN games ON
    games.id = sales.game_id WHERE games.publisher_id = $1"
    values = [@id]
    results = SqlRunner.run(sql, values)
    return results.map{|sale| Sale.new(sale)}
  end

  def self.find( id )
  sql = "SELECT * FROM publishers
  WHERE id = $1"
  values = [id]
  results = SqlRunner.run( sql, values )
  return Publisher.new( results.first )
end

def update()
  sql = "UPDATE games
  SET
  (
    name,
    trading
  ) =
  (
    $1, $2
  )
  WHERE id = $3"
  values = [@name, @trading, @id]
  SqlRunner.run( sql, values )
end

end
