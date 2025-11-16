-- Line numbering
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.cursorline = true
-- Make the LSP column always visible in order to avoid text shiftment
vim.opt.signcolumn = "yes"

-- Language and input sources handling
vim.opt.langmap="nh,ej,ik,ol,hn,je,ki,lo,NH,EJ,IK,OL,HN,JE,KI,LO,фq,ьw,лf,пp,гg,жe,яo,уu,ыy,аa,рr,сs,тt,дd,чn,нh,оj,иk,еl,цz,зx,кc,вv,бb,хi,мm,ФQ,ъW,ЛF,ПP,ГG,ЖE,ЯO,УU,йY,АA,РR,СS,ТT,ДD,ЧN,НH,ОJ,ИK,ЕL,ЦZ,ЗX,КC,ВV,БB,ХI,МM"

--  Notice langmap is set using `vim.opt` instead of `vim.o`.
--  It is very similar to `vim.o` but offers an interface for conveniently interacting with tables.

vim.opt.shiftwidth = 4

-- Set up a border for all floating windows
-- TODO it does not work for some reason! the border just does not appear
-- That is like that because of the colorscheme! See how to fix it. Create an issue or a pull request?
-- Okay the solid one works (adds a one character padding). It seems like the colorscheme just makes the borders the same color as the background for floating windows. I will live with solid for now.
vim.opt.winborder = 'solid'
