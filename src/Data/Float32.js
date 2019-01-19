"use strict";

exports.fromNumberImpl = function fromNumberImpl (x) {
    if (typeof Math.fround !== 'undefined') {
        return Math.fround(x);
    } else {
        if (x > 3.40282e38) {
            return Number.POSITIVE_INFINITY;
        } else if (x < -3.40282e38) {
            return Number.NEGATIVE_INFINITY;
        } else {
            var r = new Float32Array(1);
            r[0] = s;
            return r[0];
        }
    }
};
