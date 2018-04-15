# roulette-wheel-selection

## Install

```bash
npm i roulette-wheel-selection
```

## Usage

```js
import rouletteWheelSelection from 'roulette-wheel-selection'

let drinks = [
  { name: 'cola', weight: 40 },
  { name: 'sprite', weight: 20 },
  { name: 'fanta', weight: 30 },
  { name: 'wine', weight: 40 },
]

rouletteWheelSelection(drinks, 'weight')
// => { name: 'cola', weight: 40 }
```

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/khiav223577/roulette-wheel-selection. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.


## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).

