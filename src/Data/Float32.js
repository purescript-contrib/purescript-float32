export const float32Top = 3.40282e38;
export const float32Bottom = -3.40282e38;

export function fromNumberImpl(x) {
    if (typeof Math.fround !== 'undefined') {
        return Math.fround(x);
    } else {
        if (x > 3.40282e38) {
            return Number.POSITIVE_INFINITY;
        } else if (x < exports.float32Bottom) {
            return Number.NEGATIVE_INFINITY;
        } else {
            var r = new Float32Array(1);
            r[0] = x;
            return r[0];
        }
    }
}

