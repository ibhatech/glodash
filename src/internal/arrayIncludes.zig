const strictIndexOf = @import("strictIndexOf.zig");
const std = @import("std");

pub fn arrayIncludes(comptime T: type, array: []T, value: T) bool {
    const length: usize = array.len;
    if (length == 0) {
        return false;
    }

    const myarray = array;
    const index = strictIndexOf.strictIndexOf(T, myarray, value, 1);
    if (index == length) {
        return false;
    }

    return true;

}


