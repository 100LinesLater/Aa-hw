// function mysteryScoping1() {
//     var x = 'out of block';
//     if (true) {
//         var x = 'inside block';
//         console.log(x);
//     }
//     console.log(x);
// }
// function mysteryScoping2() {
//     const x = 'out of block';
//     if (true) {
//         const x = 'inside block';
//         console.log(x);
//     }
//     console.log(x);
// }
// function mysteryScoping3() {
//     const x = 'out of block';
//     if (true) {
//         var x = 'inside block';
//         console.log(x);
//     }
//     console.log(x);
// }
// function mysteryScoping4() {
//     let x = 'out of block';
//     if (true) {
//         let x = 'inside block';
//         console.log(x);
//     }
//     console.log(x);
// }

function madLib(verb, adjective, noun) {
    console.log(`We shall ${verb.toUpperCase()} the ${adjective.toUpperCase()} ${noun.toUpperCase()}.`);
}

// madLib('catch', 'crazy', 'crabs');

function isSubstring(searchString, subString) {
    if (searchString.includes(subString)) return true;
    return false;
}

function fizzBuzz(array) {
    var res = [];
    for (let i = 0; i < array.length; i++) {
        if ((array[i] % 3 === 0 || array[i] % 5 === 0) && array[i] % 15 !== 0) {
            res.push(array[i]);
        }
    }
    return res;
}

function isPrime(number) {
    if (number === 1) return false;
    for (let i = 2; i < number; i++) {
        if (number % i === 0) return false;
    }
    return true;
}

function sumOfNPrimes(n) {
    var currNum = 2;
    var sum = 0;
    while (n > 0) {
        if (isPrime(currNum)) {
            sum += currNum;
            n--;
        }
        currNum++;
    }
    return sum;
}

function printEach(array) {
    array.forEach(element => {
        console.log(element);
    });
}

function titleize(array, cb) {
    cb(array.map(x => `Mx. ${x} Jingleheimer Shmidt`));
}

// titleize(["Mary", "John", "Jacob"], printEach);

const Elephant = function (name, height, tricks) {
    this.name = name;
    this.height = height;
    this.tricks = tricks;
};

Elephant.prototype.trumpet = function () {
    const eleph = this;
    console.log(`${eleph.name} the elephant goes 'phrRRRRRRRRRRR!!!!!!!'`);
};
Elephant.prototype.grow = function () { this.height += 12; };
Elephant.prototype.addTrick = function (trick) { this.tricks.push(trick); };
Elephant.prototype.play = function () {
    const trickArr = this;
    console.log(`${this.name} is ${trickArr.tricks[Math.floor(Math.random() * trickArr.tricks.length)]}`);
};

let ellie = new Elephant("Ellie", 185, ["giving human friends a ride", "playing hide and seek"]);
let charlie = new Elephant("Charlie", 200, ["painting pictures", "spraying water for a slip and slide"]);
let kate = new Elephant("Kate", 234, ["writing letters", "stealing peanuts"]);
let micah = new Elephant("Micah", 143, ["trotting", "playing tic tac toe", "doing elephant ballet"]);

let herd = [ellie, charlie, kate, micah];

ellie.trumpet();
charlie.grow();
kate.addTrick('blowing leaves');
kate.play();

Elephant.prototype.paradeHelper = function () {
    console.log(`${this.name} is trotting by!`);
};

herd.forEach(function(elem) {
    elem.paradeHelper();
});

// function dinerBreakfast(order) {
//     let total = "";

//     return (order) => `I'd like ${order} `

// }