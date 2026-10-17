
const std = @import("std");

pub fn shift(text: []const u8, amount: i32) !void {
    if (amount == 0) {
        std.debug.print("--{{ WARNING --}} Shift will not change\n", .{});
    }

    for (text) |letter| {
        if ('a' <= letter and letter <= 'z') {
            const result: u8 = @intCast(
                'a' + @mod(@as(i32, letter) - 'a' + amount, 26),
            );
            std.debug.print("{c}", .{result});
        } else if ('A' <= letter and letter <= 'Z') {
            const result: u8 = @intCast(
                'A' + @mod(@as(i32, letter) - 'A' + amount, 26),
            );
            std.debug.print("{c}", .{result});
        } else {
            std.debug.print("{c}", .{letter});
        }
    }
}
