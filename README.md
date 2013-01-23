# Pinzoro

You can write like (T)RPG dice (e.g. 2D6, 3D20), and get result.

"Pinzoro" means "1 and 1 on 2D6" in Japanese.

## Installation

Add this line to your application's Gemfile:

    gem 'pinzoro'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install pinzoro

## Usage

    # get dice roll result by Array.
    # "n.dx" or "n.Dx"
    2.d6  #=> [2, 4]
    2.D6  #=> [6, 5]
    1.D20 #=> [18]
    3.d4  #=> [4, 1, 2]
    
    # get added result.
    # "n.dx!" or "n.Dx!"
    2.d6!  #=> 6
    2.D6!  #=> 11
    1.D10! #=> 9
    3.d4!  #=> 7
    
    # you can roll unreal dice.
    5.d7    #=> [6, 1, 7, 2, 3]
    100.d21 #=> [5, 11, 21, ..., 15]
    
    # roll times at least 1.
    0.d6    #=> raise error

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request

## License

The MIT License.

## Author

parrot-studio（ぱろっと） (@parrot_studio / parrot.studio.dev at gmail.com)
