const std = @import("std");

pub fn arrayEach(comptime T: type, array: []T, iteratee: fn (element: T, index: usize, array: []T) bool) []T {
    var index: usize = 0;
    const length = array.len;

    while (index < length) : (index += 1) {
        if (!iteratee(array[index], index, array)) {
            break;
        }
    }

    return array;
}
