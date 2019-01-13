class SoupAuth < Raze::Handler
  def call(ctx, done)
    puts "we have located a soup"

    done.call
  end
end