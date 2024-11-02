const std = @import("std");
const expect = std.testing.expect;

pub fn main() void {
    const crazy: i32 = 1;
    //var array = [5]i8;

    // array[1]++;

    std.debug.print("Hello, {s}!\n {d}\n ", .{ "World", crazy });

    const test_array = [5]u8{ 'h', 'e', 'l', 'l', 'o' };
    for (test_array[0..3], 0..) |item, index| {
        std.debug.print("{c} {} \n", .{ item, index });
    }

    const add_five_hold = addFive(crazy);
    std.debug.print("Add.. {}", .{add_five_hold});
}

fn addFive(x: u32) u32 {
    return x + 5;
}

test "always succeeds" {
    try expect(true);
}

test "if statement expression (aka curst shit)" {
    const a = true;
    var x: u16 = 0;
    x += if (a) 1 else 2;
    try expect(x == 1);
}

test "while with continue expression (more curst shit)" {
    var sum: u8 = 0;
    var i: u8 = 1;
    while (i <= 10) : (i += 1) {
        sum += i;
    }
    try expect(sum == 55);
}

test "switch" {
    const x: u32 = 1;

    switch (x) {
        1 => {
            // gör något
        },
        10, 100 => {
            // gör något annat
        },
        else => unreachable,
    }
    switch (x) {
        1 => {
            // gör något
        },
        10, 100 => {
            // gör något annat
        },
        else => {},
    }
}
