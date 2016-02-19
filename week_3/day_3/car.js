var Car = function (model, noise) {
  this.model = model
  this.noise = noise
  this.wheels = 4
}

Car.prototype.make_noise = function() {
  console.log(this.noise)
};

function shout () {
  console.log("Its been 10 seconds since you knew about the soundo of panda & ibiza");
}

setTimeout(shout, 10000);

panda = new Car("panda", "brum")
ibiza = new Car("ibiza", "bram bram")

panda.make_noise()
ibiza.make_noise()

console.log(panda.wheels)