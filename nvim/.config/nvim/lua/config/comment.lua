require("Comment").setup()

local ft = require("Comment.ft")

-- Set comment string for asm files
-- ft.set("asm", "; %s") -- for NASM
ft.set("asm", "# %s") -- for GAS
