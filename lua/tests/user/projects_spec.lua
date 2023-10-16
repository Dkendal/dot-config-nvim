local m = require("user.projects")

describe("find_project_root", function()
	it("should return the directory that contains .git", function()
		vim.cmd("lcd ~/src/builder/examples")
		local project_root = m.find_project_root()
		assert.is_equal("~/src/builder", project_root)
	end)

	it("should return the directory that contains package.json", function()
		vim.cmd("lcd ~/src/builder/packages/core/src/classes")
		local project_root = m.find_project_root()
		assert.is_equal("~/src/builder/packages/core", project_root)
	end)
end)