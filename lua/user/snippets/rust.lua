local ls = require("luasnip")

local s = ls.snippet
local sn = ls.snippet_node
local t = ls.text_node
local i = ls.insert_node
local isn = ls.indent_snippet_node
local f = ls.function_node
local c = ls.choice_node
local d = ls.dynamic_node
local r = ls.restore_node
local parse = ls.parser.parse_snippet

local l = require("luasnip.extras").lambda
local rep = require("luasnip.extras").rep
local p = require("luasnip.extras").partial
local m = require("luasnip.extras").match
local n = require("luasnip.extras").nonempty
local dl = require("luasnip.extras").dynamic_lambda
local fmt = require("luasnip.extras.fmt").fmt
local fmta = require("luasnip.extras.fmt").fmta
local types = require("luasnip.util.types")
local conds = require("luasnip.extras.expand_conditions")

ls.add_snippets("rust", {
	parse("p", [[println!("{$1}");]], {}),
	parse("i", [[dbg!($1);]], {}),
	parse(".c", [[.collect::<Vec<_>>()]], {}),
	parse("f", [[format!("{}", $1);]], {}),
	parse("d", [[Default::default()]], {}),
	parse("t", [[todo!($1);]], {}),
	parse("pa", [[panic!($1);]], {}),
	parse("u", [[unreachable!($1);]], {}),
}, { key = "rust" })
