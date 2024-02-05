const std = @import("std");

// fn asciiToArray(str: []const u8) []const u8 {
//     var result = [_]u8{'h'};
//     var index: usize = 0;

//     const foo = [_]u8{ 'o', 'h', 'n', 'o' };

//     while (index < str.len) : (index += 1) {
//         result = result ++ str[index];
//         std.debug.print("{c} \n", .{str[index]});
//     }

//     return &foo;
// }

pub fn main() void {
    // Example usage:
    const inputString: []const u8 = "Hello, World!";
    const resultArray = asciiToArray(inputString);

    // Print each character in the resulting array
    for (0.., resultArray) |index, char| {
        std.debug.print("Element at index {d}: '{c}'\n", .{ index, char });
    }
}
