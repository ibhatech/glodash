const std = @import("std");

pub fn main() !void {
    var gpa = std.heap.GeneralPurposeAllocator(.{}){};
    const allocator = gpa.allocator();

    var lookup = std.StringHashMap(User).init(allocator);
    defer lookup.deinit();

    try lookup.put("Goku", .{
        .id = 9000,
        .name = "Goku",
        .super = false,
    });

    var user = lookup.get("Goku").?;

    user.super = true;
    std.debug.print("{any}\n", .{lookup.get("Goku").?.super});
}

const User = struct {
    id: i32,
    name: []const u8,
    super: bool,
};
