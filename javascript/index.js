function RouletteWheelSelection(objects, fAttr){ // object = { attr1: xx1, attr2, xx2 }
  let totalFitness = 0;
  objects.forEach(object => totalFitness += object[fAttr]);
  let seed = Math.floor(Math.random() * totalFitness);
  
  for (let i = 0; i < objects.length; ++i){
    const object = objects[i];
    const rate = object[fAttr];
    if (seed < rate) return object;
    seed -= rate;
  }
}

if (typeof module !== 'undefined' && module.exports){
  module.exports = RouletteWheelSelection;
}

