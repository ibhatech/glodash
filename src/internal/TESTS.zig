const std = @import("std");
const strictIndexOf = @import("strictIndexOf.zig");
const arrayIncludes = @import("arrayIncludes.zig").arrayIncludes;
const arrayIncludesWith = @import("arrayIncludesWith.zig").arrayIncludesWith;
const arrayEach = @import("arrayEach.zig").arrayEach;
const arrayReduce = @import("arrayReduce.zig").arrayReduce;
const arrayEachRight = @import("arrayEachRight.zig").arrayEachRight;

fn dummyIteratee(element: i32, index: usize, array: []i32) bool {
    _ = element;
    _ = index;
    _ = array;
    return true;
}

fn dummycomp(array: []i32, value: i32) bool {
    _ = value;
    _ = array;
    return false;
}

fn dummyaccum(accumulator: i32, val: i32, index: usize, array: []i32) i32 {
    _ = array;
    _ = accumulator;
    _ = index;
    return val;
}

test "arrayEach returns the same array" {
    // Define an array for testing
    var myArray = [_]i32{ 1, 2, 34, 5, 6 };

    // Populate myArray with some initial values
    for (&myArray) |*elem| {
        elem.* = 100;
    }

    // Call the function being tested
    const result = arrayEach(i32, &myArray, dummyIteratee);
    _ = result;
}

test "arrayEachRight returns the same array" {
    // Define an array for testing
    var myArray = [_]i32{ 1, 2, 34, 5, 6 };

    // Populate myArray with some initial values
    for (&myArray) |*elem| {
        elem.* = 100;
    }

    // Call the function being tested
    const result = arrayEachRight(i32, &myArray, dummyIteratee);
    _ = result;
}

test "arrayIncludetest" {
    var myArray = [_]i32{ 1, 2, 34, 5, 6 };

    // Populate myArray with some initial values
    for (&myArray) |*elem| {
        elem.* = 100;
    }

    const check = arrayIncludes(i32, &myArray, 500);

    try std.testing.expect(check == false);
}

test "arrayIncludeWithtest" {
    var myArray = [_]i32{ 1, 2, 34, 5, 6 };

    // Populate myArray with some initial values
    for (&myArray) |*elem| {
        elem.* = 100;
    }

    const check = arrayIncludesWith(i32, &myArray, 500, dummycomp);

    try std.testing.expect(check == false);
}

