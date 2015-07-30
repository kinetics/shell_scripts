#######################################################
#!/bin/bash                                           #
# Simple script to scaffold new mocha/chai test files.#
# Author : Bryan Oliver                               #
# License : MIT                                       #
#######################################################

echo "
'use strict';

var chai = require('chai');
var mocha = require('mocha');
var should = require('chai').should();
var expect = require('chai').expect();

describe('"$2"', function(done) { 
	beforeEach(function(done) {
		done();
	});
	afterEach(function(done) {
		done();
	});
	it('is the first test', function(done) {
		//done();
	});
});


" > $PWD/$1.js
