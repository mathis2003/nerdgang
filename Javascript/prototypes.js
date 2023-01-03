/*
 * This file contains some expansions to the standard JavaScript prototypes
 *
 * @author reyniersbram
 */

// ********** Array.prototype **********

/**
 * @returns {any[]} Een new array, containing all the original objects only once.
 */
Array.prototype.toSet = function () {
    return this.filter((value, index) => this.indexOf(value) === index);
}

/**
 * @returns {this is *[]} Whether an array contains no more than one entry of the same object.
 */
Array.prototype.isSet = function () {
    return this.every((value, index) => this.indexOf(value) === index);
}

Array.prototype.removeOnIndex = function (index) {
    this.splice(index, 1);
}

Array.prototype.remove = function (element) {
    const index = this.indexOf(element);
    this.removeOnIndex(index);
}

/**
 * Check if this array has the same objects on the same indexes as the given array.
 * @param that The other array.
 * @returns {boolean} Whether both arrays are equal or not.
 */
Array.prototype.equals = function (that) {
    return JSON.stringify(this) === JSON.stringify(that);
}

/**
 * Extend the array with all elements of the given array.
 * @param that The array that contains the new elements.
 */
Array.prototype.extend = function (that) {
    for (let e of that) {
        this.push(e)
    }
}

/**
 * Creates a 2-dimensional array that represents the matrix of the given array.
 * Elements are filled left to right, top to bottom. When the array is out of elements,
 * the fill-value will be put on the remaining places.
 * @param rows The number of rows the matrix will have.
 * @param columns The number of columns the matrix will have.
 * @param fill The value that will be used when no more items remain.
 * @returns {*[]} A 2-dimensional array, representing a matrix, the array will contain arrays that represent rows of the matrix.
 */
Array.prototype.toMatrix = function (rows, columns, fill=null) {
    let newArray = [];
    let index = 0;
    for (let i = 0; i < rows; i += 1) {
        let newRow = [];
        for (let j = 0; j < columns; j += 1) {
            let newElement = this[index];
            newRow.push((newElement === undefined) ? fill : newElement);
            index += 1;
        }
        newArray.push(newRow);
    }
    return newArray;
}

/**
 *
 * @returns {boolean} Whether the array is empty or not.
 */
Array.prototype.isEmpty = function () {
    return this.length === 0;
}

/**
 * Schuif elk element een op naar rechts (links in reverse). 
 * Het achterste wordt het eerste (eerste wordt laatste in reverse)
 * @param reverse
 * @returns {Array} geroteerde array
 */
Array.prototype.roteer = function (reverse) {
    if (reverse) this.unshift(this.pop());
    else this.push(this.shift());
    return this;
}

/**
 * transponeer een 2d array
 * @returns {*}
 */
Array.prototype.transponeer = function () {
    return this[0].map((_, colIndex) => this.map(row => row[colIndex]));
}

// ********** String.prototype **********

/**
 * @returns {boolean} Whether all characters of the string are uppercase.
 */
String.prototype.isUpperCase = function () {
    return this.toUpperCase() == this;
}

/**
 * @returns {boolean} Whether all characters of the string are lowercase.
 */
String.prototype.isLowerCase = function () {
    return this.toLowerCase() == this;
}

// ********** Number.prototype **********

/**
 * @param n The base in which te modulo has to be taken.
 * @returns {number} The modulo of this number in the given base.
 */
Number.prototype.mod = function (n) {
    return ((this % n) + n) % n;
}

// ********** Object.prototype **********

/**
 * @param key The requested key.
 * @param defaultValue The value to return if the key does not exist.
 * @returns {*} The value that belongs to the given key, if the key does not exist, the given default value will be returned.
 */
Object.prototype.getOrDefault = function (key, defaultValue) {
    return this[key] ?? defaultValue;
}

// ********** functions **********

/**
 * Throws an AssertionError when a condition is not met.
 * @param condition A condition that should be met.
 * @param message The message that should be displayed when the error is thrown.
 */
function assert(condition, message) {
    if (! condition) {
        throw {
            name: "AssertionError",
            message: message
        }
    }
}
