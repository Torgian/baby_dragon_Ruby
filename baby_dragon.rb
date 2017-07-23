class Dragon
  def initialize name
    @name = name
    @asleep = false
    @stuff_in_belly = 10 #full
    @stuff_in_intestine = 0 #dont need to poop!
    puts "#{@name} is born."
  end

  def feed
    puts "You feed #{@name}."
    @stuff_in_belly = 10
    passage_of_time
  end

  def walk
    puts "You walk #{@name}."
    @stuff_in_intestine = 0
    passage_of_time
  end

  def put_to_bed
    puts "You put #{@name} to bed."
    @asleep = true
      3.times do
        if @asleep
          passage_of_time
        end
        if @asleep
          puts "#{@name} snores, filling the room with smoke."
        end
      end
      if @asleep
        @asleep = false
        puts "#{@name} slowly wakes up."
      end
    end
  

    def toss
      puts "You toss #{@name} up into the air."
      puts "He giggles, his hot breath singing your eyebrows."
      passage_of_time
    end

    def rock
      puts "You rock #{@name} gently"
      @asleep = true
      puts 'He dozes off...'
      passage_of_time
      if @asleep
        @asleep = false
        puts '...but wakes when you stop.'
      end
    end

    private

    def hungry?
      @stuff_in_belly <= 2
    end

    def poopy?
      @stuff_in_intestine >= 8
    end

    def passage_of_time
      if @stuff_in_belly > 0
        #Move stuff to intestine
        @stuff_in_belly = @stuff_in_belly - 1
        @stuff_in_intestine = @stuff_in_intestine + 1
      else #starving!
        if @asleep
          @asleep = false
          puts 'He suddenly wakes up!'
        end
        puts "#{@name} is starving! In desperation, he ate YOU!"
        exit
      end
      if @stuff_in_intestine >= 10
        @stuff_in_intestine = 0
        puts "Whoops! #{@name} just took a dump on your couch."
      end
      if hungry?
        if @asleep
          @asleep = false
          puts "He wakes up suddenly!"
        end
        puts "#{@name}'s stomach grumbles..."
      end
      if poopy?
        if @asleep
          @asleep = false
          puts 'He wakes up!'
        end
        puts "#{@name} does the poopy dance..."
      end
    end
  end
end

  pet = Dragon.new 'Mickey'
  pet.feed
  pet.toss
  pet.walk
  pet.put_to_bed
  pet.rock
  pet.put_to_bed
  pet.put_to_bed
  pet.put_to_bed
  pet.put_to_bed
