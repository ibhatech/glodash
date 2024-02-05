const strictIndexOf = @import("strictIndexOf.zig");
const std = @import("std");

pub fn arrayIncludes(comptime T: type, array: []T, value: T, comparator: fn (array: []T, value: T) bool) bool {
    var index = 0;
    const length = array.len;

    while (index < length) : (index += 1) {
        if (comparator(array,array[index])) {
            return index;
        }
    }

    return false;
}
