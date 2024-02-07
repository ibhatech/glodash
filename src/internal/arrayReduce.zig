const std = @import("std");

pub fn arrayReduce(comptime T: type, array: []T, iteratee: fn(a: T, b: T, index: usize, array: []T) T, accumulator: T, initAccum: bool) T {
    var index: usize = 0;
    const length = array.len;

    if (initAccum and length > 0) {
        accumulator = array[index];
        index += 1;
    }

    while (index < length) : (index += 1) {
        accumulator = iteratee(accumulator, array[index], index, array);
    }


    return accumulator;
}