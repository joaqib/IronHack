
var Viking = function (name, strengh) {
  this.name = name;
  this.strengh = 90 + strengh * Math.random();
  this.health = 100;

  this.attack = function () {
    return this.strengh;
  };

  this.defense = function (inflictedAttack) {
    return this.health = (this.health - inflictedAttack);
  };

  this.warriorName = function() {
    console.log("Hi, my Viking name is " + this.name);
  };
};

var Saxon = function (name, strengh) {
  this.name = name;
  this.strengh = 20 + strengh * Math.random();
  this.health = 100;

  this.attack = function () {
    return this.strengh;
  };

  this.defense = function (inflictedAttack) {
    return this.health = (this.health - inflictedAttack);
  };

  this.warriorName = function() {
    console.log("Hi, my Saxon name is " + this.name);
  };
};

var FightingPit = function (warrior1, warrior2) {
  this.warrior1 = warrior1;
  this.warrior2 = warrior2;

  this.fight = function (turns) {
     var i = 0;
     
     while ((this.warrior1.health > 0) && (this.warrior2.health > 0)) {
        
        console.log("Turn")
        console.log(i +1);

        console.log(this.warrior1.name + " has " + this.warrior1.health);
        console.log(this.warrior2.name + " has " + this.warrior2.health);

        this.warrior2.defense(this.warrior1.attack());
        this.warrior1.defense(this.warrior2.attack());

        i += 1;
        };
      
      if (this.warrior1.health > this.warrior2.health) { console.log ("We have a Winner: " + this.warrior1.name)
        } else { console.log ("We have a Winner: " + this.warrior2.name)}
  };
};

var Town = function (defenders) {
  this.defenders = defenders;

  this.attack = function(attackers) {
    this.attackers = attackers

    for (var i = 5 + Math.floor((Math.random() * 3) + 1); i >= 0; i--) {

      var index1 = Math.floor((Math.random() * (this.defenders.length)));
      var index2 = Math.floor((Math.random() * (this.attackers.length)));
      defender = this.defenders[index1]; 
      attacker = this.attackers[index2]; 
        
          console.log("Turn");
          console.log(i +1);

          console.log(defender.name + " has " + defender.health);
          console.log(attacker.name + " has " + attacker.health);

          defender.defense(attacker.attack());
          attacker.defense(defender.attack());

          if (defender.health < 0) { this.defenders.splice((index1 - 1), 1)};
          if (attacker.health < 0) { this.attackers.splice((index2 - 1), 1)};

        };

    console.log(this.defenders.length);
    console.log(this.attackers.length);

    if (this.defenders.length > this.attackers.length) {
        console.log("Asgard remain strong");
    } else{ if (this.defenders.length < this.attackers.length) {console.log("Asgard has failed");
        } else{console.log("We have no winners")};



    };
  };
}; 







var viking1 = new Viking("Leo1nidas", 25);
var viking2 = new Viking("Aqui2les", 25);
var viking3 = new Viking("Leoni3das", 25);
var viking4 = new Viking("Aqu4iles", 25);
var viking5 = new Viking("Leo5nidas", 25);
var viking6 = new Viking("Aqui6les", 25);
var viking7 = new Viking("Leon7idas", 25);
var viking8 = new Viking("Aquil8es", 25);
var viking9 = new Viking("Leon9idas", 25);
var viking0 = new Viking("Aquil0es", 25);
var viking11 = new Viking("Leon11idas", 25);
var viking12 = new Viking("Aquil12es", 25);
var viking13 = new Viking("Leo13nidas", 25);
var viking14 = new Viking("Aqui14les", 25);
var viking15 = new Viking("Leoni15das", 25);
var viking16 = new Viking("Aqu16iles", 25);





var saxon1 = new Saxon("Ulis1es", 3);
var saxon2 = new Saxon("alman2zor", 3);
var saxon3 = new Saxon("Uli3ses", 5);
var saxon4 = new Saxon("Uli4ses", 5);
var saxon5 = new Saxon("Ulis5es", 5);
var saxon6 = new Saxon("Ulise6s", 5);
var saxon7 = new Saxon("Ul7ises", 5);
var saxon8 = new Saxon("Uli8ses", 5);
var saxon9 = new Saxon("Ulis9es", 5);
var saxon0 = new Saxon("Ulise0s", 5);



var vikings = [viking1,viking2,viking3,viking4,viking5,viking6,viking7,viking8,viking9,viking0,viking11,viking12,viking13,viking14,viking15,viking16];
var saxons = [saxon1,saxon2,saxon3,saxon4,saxon5,saxon6,saxon7,saxon8,saxon9,saxon0];

asrgard = new Town(saxons)
asrgard.attack(vikings)
// var theOval = new FightingPit(leonidas,aquiles);
// theOval.fight(4);