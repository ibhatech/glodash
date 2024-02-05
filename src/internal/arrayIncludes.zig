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

// test "firsttesttt" {
//     var myArray = [_]i32{ 1, 2, 34, 5, 6 };

//     // Populate myArray with some initial values
//     for (&myArray) |*elem| {
//         elem.* = 100;
//     }

//     // Test case 1: Value present in the array
//     const check = arrayIncludes(i32, &myArray, 500);

//     // const newa = strictIndexOf.strictIndexOf(i32, &myArray, 500, 1);
//     // std.debug.print("{}",.{newa});
//     // try std.testing.expect(newa == 5);

//     // std.debug.print("{}",.{newa});
//     try std.testing.expect(check == false);
// }
