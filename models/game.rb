require_relative( '../db/sql_runner' )

class Game

  attr_reader :id, :publisher_id
  attr_accessor :name, :genre, :buy_price, :sell_price, :stock, :logo

  def initialize(options)
    @id = options["id"].to_i if options["id"]
    @name = options["name"]
    @genre = options["genre"]
    @buy_price = options["buy_price"].to_f
    @sell_price = options["sell_price"].to_f
    @stock = options["stock"].to_i
    @publisher_id = options["publisher_id"].to_i
    @logo = options["logo"]
  end

  def save()
    sql = "INSERT INTO games
    (
      name,
      genre,
      buy_price,
      sell_price,
      stock,
      publisher_id,
      logo
    )
    VALUES
    (
      $1, $2, $3, $4, $5, $6, $7
    )
    RETURNING id"
    values = [@name, @genre, @buy_price, @sell_price, @stock, @publisher_id, @logo]
    results = SqlRunner.run(sql, values)
    @id = results.first()['id'].to_i
  end

  def self.all()
    sql = "SELECT * FROM games"
    results = SqlRunner.run( sql )
    return results.map { |game| Game.new( game ) }
  end

  def self.delete_all()
    sql = "DELETE FROM games"
    SqlRunner.run( sql )
  end

  def delete()
    sql = "DELETE FROM games WHERE id = $1"
    values = [@id]
    SqlRunner.run( sql, values )
  end

  def publisher()
    if @publisher_id == 0
      return Publisher.new({"name" => 'nil', "trading" => 'nil', "logo" => 'nil'})
    end
    sql = "SELECT publishers.* FROM publishers WHERE id = $1"
    values = [@publisher_id]
    result = SqlRunner.run(sql, values)
    return Publisher.new(result.first)
  end

  def sales()
    sql = "SELECT sales.* FROM sales WHERE game_id = $1"
    values = [@id]
    results = SqlRunner.run(sql, values)
    return results.map{|sale| Sale.new(sale)}
  end

  def self.find( id )
    sql = "SELECT * FROM games
    WHERE id = $1"
    values = [id]
    results = SqlRunner.run( sql, values )
    return Game.new( results.first )
  end

  def update()
    sql = "UPDATE games
    SET
    (
      name,
      genre,
      buy_price,
      sell_price,
      stock,
      publisher_id,
      logo
      ) =
      (
        $1, $2, $3, $4, $5, $6, $7
      )
      WHERE id = $8"
      values = [@name, @genre, @buy_price, @sell_price, @stock, @publisher_id, @logo, @id]
      SqlRunner.run( sql, values )
    end

  end
