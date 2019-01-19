"use strict";

exports.fromNumber = function fromNumber (x) {
  if (typeof Math.fround !== 'undefined') {
    return Math.fround(x);
  } else {
    var r = new Float32Array(1);
    r[0] = s;
    return r[0];
  }
};
