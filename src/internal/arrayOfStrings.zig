const std = @import("std");

fn printStringArray(strings: []const []const u8) void {
    for (strings) |str| {
        std.debug.print("{s}\n", .{str});
    }
}
