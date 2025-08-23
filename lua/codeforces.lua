function MkJava()
    local name = vim.fn.input("Enter problem name: ")
    if name == "" then return end
    local class_name = "Problem_" .. name
    local file_name = class_name .. ".java"
    local template = string.format([[
import java.io.*;
import java.util.*;

public class %s {
  public static void main(String[] args) throws IOException {
    BufferedReader br = new BufferedReader(new InputStreamReader(System.in));
    PrintWriter out = new PrintWriter(System.out);
    StringTokenizer st;

    st = new StringTokenizer(br.readLine());
    int t = Integer.parseInt(st.nextToken());

    // while (t-- > 0) {
        // st = new StringTokenizer(br.readLine());
    // }

    out.println(t);
    out.flush();
    out.close();
  }
}
]], class_name)
    local file = io.open(file_name, "w")
    if not file then return end
    file:write(template)
    file:close()
    vim.cmd("edit " .. vim.fn.fnameescape(file_name))
end

function RunJava()
    local file = vim.fn.expand('%:t')
    local classname = vim.fn.expand('%:t:r')
    vim.cmd('only')
    vim.cmd('vsplit')
    vim.cmd('wincmd l')
    vim.cmd('vertical resize 50')
    vim.cmd('terminal')
    vim.defer_fn(function()
        vim.api.nvim_chan_send(vim.b.terminal_job_id, "echo 'Compiling...'\n")
        vim.api.nvim_chan_send(vim.b.terminal_job_id, "javac " .. file .. "\n")
        vim.api.nvim_chan_send(vim.b.terminal_job_id, "echo 'Running...'\n")
        vim.api.nvim_chan_send(vim.b.terminal_job_id, "java " .. classname .. "\n")
    end, 100)
end

function MkCpp()
    local name = vim.fn.input("Enter problem name: ")
    if name == "" then return end
    local file_name = "Problem_" .. name .. ".cpp"
    local template = [[
// #include <bits/stdc++.h>
#include <iostream>
#include <vector>
#include <string>
#include <algorithm>
#include <map>
#include <set>
#include <unordered_map>
#include <unordered_set>
#include <queue>
#include <stack>
#include <deque>
#include <list>
#include <bitset>
#include <cmath>
#include <numeric>
#include <complex>
#include <valarray>
#include <iomanip>
#include <limits>
#include <tuple>
#include <array>
#include <cstdint>
#include <cassert>
using namespace std;

int main() {
  return 0;
}
]]
    local file = io.open(file_name, "w")
    if not file then return end
    file:write(template)
    file:close()
    vim.cmd("edit " .. vim.fn.fnameescape(file_name))
end

function RunCpp()
    local file = vim.fn.expand('%:t')
    local exe = vim.fn.expand('%:t:r')
    vim.cmd('only')
    vim.cmd('vsplit')
    vim.cmd('wincmd l')
    vim.cmd('vertical resize 50')
    vim.cmd('terminal')
    vim.defer_fn(function()
        vim.api.nvim_chan_send(vim.b.terminal_job_id, "echo 'Compiling...'\n")
        vim.api.nvim_chan_send(vim.b.terminal_job_id, "g++ -std=c++23 -O2 -Wall " .. file .. " -o " .. exe .. "\n")
        vim.api.nvim_chan_send(vim.b.terminal_job_id, "echo 'Running...'\n")
        vim.api.nvim_chan_send(vim.b.terminal_job_id, "./" .. exe .. "\n")
    end, 100)
end

vim.keymap.set('n', '<leader>cm', MkCpp)
vim.keymap.set('n', '<leader>cc', RunCpp)
vim.keymap.set('n', '<leader>jm', MkJava)
vim.keymap.set('n', '<leader>jj', RunJava)
