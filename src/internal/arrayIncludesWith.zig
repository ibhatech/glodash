const strictIndexOf = @import("strictIndexOf.zig");
const std = @import("std");

pub fn arrayIncludesWith(comptime T: type, array: []T, value: T, comparator: fn (array: []T, value: T) bool) bool {
    var index: usize = 0;
    const length = array.len;
    _ = value;

    while (index < length) : (index += 1) {
        if (comparator(array, array[index])) {
            return true;
        }
    }

    return false;
}
