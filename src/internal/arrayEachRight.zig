const std = @import("std");

pub fn arrayEachRight(comptime T: type, array: []T, iteratee: fn (element: T, index: usize, array: []T) bool) []T {
    var index: usize = array.len;

    while (index >=0) : (index -= 1) {
        if (!iteratee(array[index], index, array)) {
            break;
        }
    }

    return array;
}
