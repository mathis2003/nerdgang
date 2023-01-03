// assert boilerplate code
let assert = require("assert");
let foutboodschap = "ongeldige richting";

//structuur class
class Naam{
    constructor(arg1,arg2){
        this.arg1 = arg1;
        this.arg2 = arg2;
    }
    toString(){
        return `Naam(${this.arg1}, ${this.arg2})`;
    }
}

// standaard setter voor variablen die niet aangepast mogen worden
set index(val){
        throw {
            name:"AssertionError",
            message:"can\'t set attribute"
        }
}
// standaard getter voor variablen die niet aangepast mogen worden
get index(){
  return this._index;
}

// nieuwe arraymethode die nagaat of het huidige object gelijk is aan een
// opgegeven object
Array.prototype.equals = function(that) {
	return JSON.stringify(this) === JSON.stringify(that);
};

// replace laatste ocurence van een regex
String.prototype.replaceLast = function (search, replace) {
    return this.replace(new RegExp(search+"([^"+search+"]*)$"), replace+"$1");
};

// hulpfunctie met correctie voor modulo-operator
function mod(m, n) {
	return ((m % n) + n) % n;
}

// check of een input numeriek is
function isNumeric(num){
  return !isNaN(num)
}

// replace de letter op een bepaalde index door een bepaalde string
String.prototype.replaceAt=function(index,char) {
    var a = this.split("");
    a[index] = char;
    return a.join("");
}

// filter alle leters uit een woord
function onlyLetters(woord){
    let array = woord.split("");
    let arr2 = [];
    for(let i = 0; i < array.length; i++){
        if(/[A-Za-z]/.test(array[i])){
          arr2.push(array[i]);
        }
    }
    return arr2.join("");
}

// filter alle numbers uit een woord
function onlyNumbers(woord){
    let array = woord.split("");
    let arr2 = [];
    for(let i = 0; i < array.length; i++){
        if(/[0-9]/.test(array[i])){
          arr2.push(array[i]);
        }
    }
    return arr2.join("");
}

// zoek het maximum van 2 argumenten
function max(a,b){
    return Math.abs(a) > Math.abs(b) ? a:b;
}

// zoek het maximum van lijst van items
function max(...args){
    let max = 0;
    for (let e of args){
        if(e>max){
            max = e;
        }
    }
    return max;
}
