// A doubly linked list with js

// looking forward and back from each item in list
// constructor function initializes object in js (below 5-13);
function Ininety(state, west, east) {
  this.state = state;
  this.west = west;
  this.east = east;
  this.exit = function() {
    this.prev.next = this.next;
    this.next.prev = this.prev;
  };
}

var c1 = new Car(1, null, null);
// console.log

var c2 = new Car(2, c1, null);
c1.next = c2;

// console.log(c2);

var c3 = new Car(3, c2, null);
c2.next = c3;

// console.log(c3);

var c4 = new Car(4, c3, c1);
c3.next = c4;
c1.prev = c4;

c3.exit();

console.log(c4);

// this below instead of this.ext = function in lines 9-12 above ( put in after line 13)
// Car.prototype.exit = function() {
//   this.prev.next = this.next;
//   this.next.prev = this.prev;
// }

// c3.exit();
