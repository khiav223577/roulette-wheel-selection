function RouletteWheelSelection(objects, fAttr){ // object = { attr1: xx1, attr2, xx2 }
  var totalFitness = 0;
  objects.forEach(function(object){ totalFitness += object[fAttr]; });
  var seed = Math.floor(Math.random() * totalFitness);
  for(var i = 0; i < objects.length; ++i){
    var object = objects[i];
    var rate = object[fAttr];
    if (seed < rate) return object;
    seed -= rate;
  }
}

if (typeof module !== 'undefined' && module.exports){
  module.exports = RouletteWheelSelection;
}

