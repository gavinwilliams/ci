var app = app || {};

app.calculator = function(_initialValue){
	
	/**
	 * The current result of the calculator
	 */
	var _result = _initialValue;
	
	/**
	 * Gets the current result of the calculator
	 */
	this.getResult = function(){
		return _result;
	}
	
	/**
	 * Adds a value to the current result
	 */
	this.add = function(value){
		_result = _result + value; 
		return _result;
	}
	
	/**
	 * Subtracts a value from the current result
	 */
	this.subtract = function(value){
		_result = _result - value;
		return _result;
	}
	
	/**
	 * Multiplies a value from the current result
	 */
	this.multiply = function(value){
		_result = _result * value;
		return _result;
	}
	
	/**
	 * Divides a value from the current result
	 */
	this.divide = function(value){
		_result = _result / value;
		return _result;
	}
	
}
