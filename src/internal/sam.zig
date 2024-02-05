const std = @import("std");

fn iterate(element: i32, index: usize, array: []i32) bool {
    _ = element;
    _ = index;
    _ = array;
    return true;
}

fn arrayEach(comptime T: type, array: []T, iteratee: fn (element: T, index: usize, array: []T) bool) []T {
    var index: usize = 0;
    const length = array.len;

    while (index < length) : (index += 1) {
        if (!iteratee(array[index], index, array)) {
            break;
        } else {
            std.debug.print("yes", .{});
        }
    }

    return array;
}

pub fn main() void {
    // Example usage:
    var myArray = [_]i32{ 1, 2, 34, 5, 6 };

    // Populate myArray with some initial values
    for (&myArray) |*elem| {
        elem.* = 100;
        std.debug.print("by ref: {}\n", .{elem.*});
    }

    for (myArray) |elem| {
        std.debug.print("by val: {}\n", .{elem});
    }

    const newa = arrayEach(i32, &myArray, iterate);

    std.debug.print("{}", .{newa[0]});

    // for (&newa) |*elem| {
    //     elem.* = 100;
    //     std.debug.print("by ref: {}\n", .{elem.*});
    // }

    // std.debug.print("After: {}\n", .{myArray});
}
