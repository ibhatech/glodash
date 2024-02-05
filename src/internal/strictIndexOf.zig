const std = @import("std");
const testing = @import("std").testing;

pub fn strictIndexOf(comptime T: type, array: []T, value: T, fromIndex: usize) usize {
    var index = fromIndex - 1;
    const length = array.len;

    while (index < length) : (index += 1) {
        if (array[index] == value) {
            return index;
        }
    }

    return length;
}

// test "firsttest" {
//     var myArray = [_]i32{ 1, 2, 34, 5, 6 };

//     // Populate myArray with somei nitial values
//     for (&myArray) |*elem| {
//         elem.* = 100;
//     }

//     // Test case 1: Value present in the array
//     const newa = strictIndexOf(i32, &myArray, 500, 1);
//     const size:usize=myArray.len;
//     try testing.expect(newa == 5);
// }

