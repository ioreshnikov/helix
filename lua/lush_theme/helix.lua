--
-- Built with,
--
--        ,gggg,
--       d8" "8I                         ,dPYb,
--       88  ,dP                         IP'`Yb
--    8888888P"                          I8  8I
--       88                              I8  8'
--       88        gg      gg    ,g,     I8 dPgg,
--  ,aa,_88        I8      8I   ,8'8,    I8dP" "8I
-- dP" "88P        I8,    ,8I  ,8'  Yb   I8P    I8
-- Yb,_,d88b,,_   ,d8b,  ,d8b,,8'_   8) ,d8     I8,
--  "Y8P"  "Y888888P'"Y88P"`Y8P' "YY8P8P88P     `Y8
--

-- This is a starter colorscheme for use with Lush,
-- for usage guides, see :h lush or :LushRunTutorial

--
-- Note: Because this is a lua file, vim will append it to the runtime,
--       which means you can require(...) it in other lua code (this is useful),
--       but you should also take care not to conflict with other libraries.
--
--       (This is a lua quirk, as it has somewhat poor support for namespacing.)
--
--       Basically, name your file,
--
--       "super_theme/lua/lush_theme/super_theme_dark.lua",
--
--       not,
--
--       "super_theme/lua/dark.lua".
--
--       With that caveat out of the way...
--

-- Enable lush.ify on this file, run:
--
--  `:Lushify`
--
--  or
--
--  `:lua require('lush').ify()`

local lush = require('lush')
local hsl = lush.hsl

local white = hsl("#ffffff")
local lilac = hsl("#dbbfef")
local lavender = hsl("#a4a0e8")
local comet = hsl("#5a5977")
local bossanova = hsl("#452859")
local midnight = hsl("#3b224c")
local revolver = hsl("#281733")

local silver = hsl("#cccccc")
local sirocco = hsl("#697C81")
local mint = hsl("#9ff28f")
local almond = hsl("#eccdba")
local chamois = hsl("#E8DCA0")
local honey = hsl("#efba5d")

local apricot = hsl("#f47868")
local lightning = hsl("#ffcd1c")
local delta = hsl("#6F44F0")

local visual = hsl("#540099")

-- LSP/Linters mistakenly show `undefined global` errors in the spec, they may
-- support an annotation like the following. Consult your server documentation.
---@diagnostic disable: undefined-global
local theme = lush(function()
  return {
    -- The following are the Neovim (as of 0.8.0-dev+100-g371dfb174) highlight
    -- groups, mostly used for styling UI elements.
    -- Comment them out and add your own properties to override the defaults.
    -- An empty definition `{}` will clear all styling, leaving elements looking
    -- like the 'Normal' group.
    -- To be able to link to a group, it must already be defined, so you may have
    -- to reorder items as you go.
    --
    -- See :h highlight-groups
    --
    ColorColumn  { bg = bossanova }, -- Columns set with 'colorcolumn'
    Conceal      { fg = bossanova }, -- Placeholder characters substituted for concealed text (see 'conceallevel')
    Cursor       { gui = "reverse" }, -- Character under the cursor
    -- lCursor      { }, -- Character under the cursor when |language-mapping| is used (see 'guicursor')
    -- CursorIM     { }, -- Like Cursor, but used when in IME mode |CursorIM|
    CursorColumn { bg = bossanova }, -- Screen-column at the cursor, when 'cursorcolumn' is set.
    CursorLine   { bg = bossanova }, -- Screen-line at the cursor, when 'cursorline' is set. Low-priority if foreground (ctermfg OR guifg) is not set.
    Directory    { fg = lilac }, -- Directory names (and other special names in listings)
    DiffAdd      { fg = hsl("#35bf86") }, -- Diff mode: Added line |diff.txt|
    DiffChange   { fg = hsl("#6f44f0") }, -- Diff mode: Changed line |diff.txt|
    DiffDelete   { fg = hsl("#f22c86") }, -- Diff mode: Deleted line |diff.txt|
    DiffText     { DiffChange }, -- Diff mode: Changed text within a changed line |diff.txt|
    EndOfBuffer  { fg = bossanova }, -- Filler lines (~) after the end of the buffer. By default, this is highlighted like |hl-NonText|.
    -- TermCursor   { }, -- Cursor in a focused terminal
    -- TermCursorNC { }, -- Cursor in an unfocused terminal
    ErrorMsg     { fg = apricot }, -- Error messages on the command line
    -- VertSplit    { fg = comet }, -- Column separating vertically split windows
    Folded       { fg = lilac, bg = bossanova, gui = "underline" }, -- Line used for closed folds
    -- FoldColumn   { }, -- 'foldcolumn'
    -- SignColumn   { LineNr }, -- Column where |signs| are displayed
    -- IncSearch    { }, -- 'incsearch' highlighting; also used for the text replaced with ":s///c"
    -- Substitute   { }, -- |:substitute| replacement text highlighting
    -- LineNr       { fg = comet }, -- Line number for ":number" and ":#" commands, and when 'number' or 'relativenumber' option is set.
    -- CursorLineNr { fg = lilac }, -- Like LineNr when 'cursorline' or 'relativenumber' is set for the cursor line.
    -- MatchParen   { }, -- Character under the cursor or just before it, if it is a paired bracket, and its match. |pi_paren.txt|
    -- ModeMsg      { }, -- 'showmode' message (e.g., "-- INSERT -- ")
    -- MsgArea      { }, -- Area for messages and cmdline
    -- MsgSeparator { }, -- Separator for scrolled messages, `msgsep` flag of 'display'
    MoreMsg      { fg = mint }, -- |more-prompt|
    NonText      { fg = delta }, -- '@' at the end of the window, characters from 'showbreak' and other characters that do not really exist in the text (e.g., ">" displayed when a double-wide character doesn't fit at the end of the line). See also |hl-EndOfBuffer|.
    Normal       { fg = lavender, bg = midnight }, -- Normal text
    NormalFloat  { bg = bossanova }, -- Normal text in floating windows.
    NormalSB     { Normal },
    -- NormalNC     { }, -- normal text in non-current windows
    Pmenu        { fg = lavender, bg = revolver }, -- Popup menu: Normal item.
    PmenuSel     { fg = revolver, bg = white }, -- Popup menu: Selected item.
    PmenuSbar    { fg = lavender, bg = comet }, -- Popup menu: Scrollbar.
    PmenuThumb   { fg = white, bg = comet }, -- Popup menu: Thumb of the scrollbar.
    Question     { fg = mint }, -- |hit-enter| prompt and yes/no questions
    QuickFixLine { PmenuSel }, -- Current |quickfix| item in the quickfix window. Combined with |hl-CursorLine| when the cursor is there.
    -- Search       { }, -- Last search pattern highlighting (see 'hlsearch'). Also used for similar items that need to stand out.
    SpecialKey   { fg = bossanova }, -- Unprintable characters: text displayed differently from what it really is. But not 'listchars' whitespace. |hl-Whitespace|
    -- SpellBad     { }, -- Word that is not recognized by the spellchecker. |spell| Combined with the highlighting used otherwise.
    -- SpellCap     { }, -- Word that should start with a capital. |spell| Combined with the highlighting used otherwise.
    -- SpellLocal   { }, -- Word that is recognized by the spellchecker as one that is used in another region. |spell| Combined with the highlighting used otherwise.
    -- SpellRare    { }, -- Word that is recognized by the spellchecker as one that is hardly ever used. |spell| Combined with the highlighting used otherwise.
    StatusLine   { fg = lilac, bg = revolver }, -- Status line of current window
    StatusLineNC { fg = lavender, bg = revolver }, -- Status lines of not-current windows. Note: If this is equal to "StatusLine" Vim will use "^^^" in the status line of the current window.
    TabLine      { fg = lavender, bg = revolver }, -- Tab pages line, not active tab page label
    TabLineFill  { fg = lavender, bg = revolver }, -- Tab pages line, where there are no labels
    TabLineSel   { Normal }, -- Tab pages line, active tab page label
    Title        { fg = almond }, -- Titles for output from ":set all", ":autocmd" etc.
    Visual       { bg = visual }, -- Visual mode selection
    -- VisualNOS    { }, -- Visual mode selection when vim is "Not Owning the Selection".
    WarningMsg   { fg = lightning }, -- Warning messages
    Whitespace   { fg = bossanova }, -- "nbsp", "space", "tab" and "trail" in 'listchars'
    -- Winseparator { }, -- Separator between window splits. Inherts from |hl-VertSplit| by default, which it will replace eventually.
    -- WildMenu     { }, -- Current match in 'wildmenu' completion

    -- Common vim syntax groups used for all kinds of code and markup.
    -- Commented-out groups should chain up to their preferred (*) group
    -- by default.
    --
    -- See :h group-name
    --
    -- Uncomment and edit if you want more specific syntax highlighting.

    Comment        { fg = sirocco }, -- Any comment

    Constant       { fg = white }, -- (*) Any constant
    String         { fg = silver }, --   A string constant: "this is a string"
    -- Character      { }, --   A character constant: 'c', '\n'
    Number         { fg = chamois }, --   A number constant: 234, 0xff
    -- Boolean        { }, --   A boolean constant: TRUE, false
    -- Float          { }, --   A floating point constant: 2.3e10

    Identifier     { fg = lavender }, -- (*) Any variable name
    Function       { fg = white }, --   Function name (also: methods for classes)

    Statement      { fg = almond }, -- (*) Any statement
    -- Conditional    { }, --   if, then, else, endif, switch, etc.
    -- Repeat         { }, --   for, do, while, etc.
    Label          { fg = honey }, --   case, default, etc.
    Operator       { fg = lilac }, --   "sizeof", "+", "*", etc.
    -- Keyword        { }, --   any other keyword
    -- Exception      { }, --   try, catch, throw

    PreProc        { fg = lilac }, -- (*) Generic Preprocessor
    -- Include        { }, --   Preprocessor #include
    -- Define         { }, --   Preprocessor #define
    Macro          { fg = lilac }, --   Same as Define
    -- PreCondit      { }, --   Preprocessor #if, #else, #endif, etc.

    Type           { fg = white }, -- (*) int, long, char, etc.
    -- StorageClass   { }, --   static, register, volatile, etc.
    -- Structure      { }, --   struct, union, enum, etc.
    -- Typedef        { }, --   A typedef

    Special        { fg = honey }, -- (*) Any special symbol
    -- SpecialChar    { }, --   Special character in a constant
    Tag            { fg = almond }, --   You can use CTRL-] on this
    -- Delimiter      { }, --   Character that needs attention
    -- SpecialComment { }, --   Special things inside a comment (e.g. '\n')
    -- Debug          { }, --   Debugging statements

    -- Underlined     { gui = "underline" }, -- Text that stands out, HTML links
    Ignore         { fg = bossanova }, -- Left blank, hidden |hl-Ignore| (NOTE: May be invisible here in template)
    Error          { fg = apricot }, -- Any erroneous construct
    -- Todo           { }, -- Anything that needs extra attention; mostly the keywords TODO FIXME and XXX

    -- These groups are for the native LSP client and diagnostic system. Some
    -- other LSP clients may use these groups, or use their own. Consult your
    -- LSP client's documentation.

    -- See :h lsp-highlight, some groups may not be listed, submit a PR fix to lush-template!
    --
    -- LspReferenceText            { } , -- Used for highlighting "text" references
    -- LspReferenceRead            { } , -- Used for highlighting "read" references
    -- LspReferenceWrite           { } , -- Used for highlighting "write" references
    -- LspCodeLens                 { } , -- Used to color the virtual text of the codelens. See |nvim_buf_set_extmark()|.
    -- LspCodeLensSeparator        { } , -- Used to color the seperator between two or more code lens.
    -- LspSignatureActiveParameter { } , -- Used to highlight the active parameter in the signature help. See |vim.lsp.handlers.signature_help()|.

    -- See :h diagnostic-highlights, some groups may not be listed, submit a PR fix to lush-template!
    --
    DiagnosticError            { fg = apricot } , -- Used as the base highlight group. Other Diagnostic highlights link to this by default (except Underline)
    DiagnosticWarn             { fg = lightning } , -- Used as the base highlight group. Other Diagnostic highlights link to this by default (except Underline)
    DiagnosticInfo             { fg = delta } , -- Used as the base highlight group. Other Diagnostic highlights link to this by default (except Underline)
    DiagnosticHint             { fg = silver } , -- Used as the base highlight group. Other Diagnostic highlights link to this by default (except Underline)
    -- DiagnosticVirtualTextError { } , -- Used for "Error" diagnostic virtual text.
    -- DiagnosticVirtualTextWarn  { } , -- Used for "Warn" diagnostic virtual text.
    -- DiagnosticVirtualTextInfo  { } , -- Used for "Info" diagnostic virtual text.
    -- DiagnosticVirtualTextHint  { } , -- Used for "Hint" diagnostic virtual text.
    -- DiagnosticUnderlineError   { } , -- Used to underline "Error" diagnostics.
    -- DiagnosticUnderlineWarn    { } , -- Used to underline "Warn" diagnostics.
    -- DiagnosticUnderlineInfo    { } , -- Used to underline "Info" diagnostics.
    -- DiagnosticUnderlineHint    { } , -- Used to underline "Hint" diagnostics.
    -- DiagnosticFloatingError    { } , -- Used to color "Error" diagnostic messages in diagnostics float. See |vim.diagnostic.open_float()|
    -- DiagnosticFloatingWarn     { } , -- Used to color "Warn" diagnostic messages in diagnostics float.
    -- DiagnosticFloatingInfo     { } , -- Used to color "Info" diagnostic messages in diagnostics float.
    -- DiagnosticFloatingHint     { } , -- Used to color "Hint" diagnostic messages in diagnostics float.
    -- DiagnosticSignError        { } , -- Used for "Error" signs in sign column.
    -- DiagnosticSignWarn         { } , -- Used for "Warn" signs in sign column.
    -- DiagnosticSignInfo         { } , -- Used for "Info" signs in sign column.
    -- DiagnosticSignHint         { } , -- Used for "Hint" signs in sign column.

    -- Tree-Sitter syntax groups. Most link to corresponding
    -- vim syntax groups (e.g. TSKeyword => Keyword) by default.
    --
    -- See :h nvim-treesitter-highlights, some groups may not be listed, submit a PR fix to lush-template!
    --
    TSAttribute          { fg = white } , -- Annotations that can be attached to the code to denote some kind of meta information. e.g. C++/Dart attributes.
    -- TSBoolean            { } , -- Boolean literals: `True` and `False` in Python.
    -- TSCharacter          { } , -- Character literals: `'a'` in C.
    -- TSCharacterSpecial   { } , -- Special characters.
    -- TSComment            { } , -- Line comments and block comments.
    -- TSConditional        { } , -- Keywords related to conditionals: `if`, `when`, `cond`, etc.
    -- TSConstant           { } , -- Constants identifiers. These might not be semantically constant. E.g. uppercase variables in Python.
    TSConstBuiltin       { fg = white } , -- Built-in constant values: `nil` in Lua.
    -- TSConstMacro         { } , -- Constants defined by macros: `NULL` in C.
    TSConstructor        { fg = lilac } , -- Constructor calls and definitions: `{}` in Lua, and Java constructors.
    -- TSDebug              { } , -- Debugging statements.
    -- TSDefine             { } , -- Preprocessor #define statements.
    -- TSError              { } , -- Syntax/parser errors. This might highlight large sections of code while the user is typing still incomplete code, use a sensible highlight.
    -- TSException          { } , -- Exception related keywords: `try`, `except`, `finally` in Python.
    -- TSField              { } , -- Object and struct fields.
    -- TSFloat              { } , -- Floating-point number literals.
    -- TSFunction           { } , -- Function calls and definitions.
    TSFuncBuiltin        { fg = white } , -- Built-in functions: `print` in Lua.
    -- TSFuncMacro          { } , -- Macro defined functions (calls and definitions): each `macro_rules` in Rust.
    -- TSInclude            { } , -- File or module inclusion keywords: `#include` in C, `use` or `extern crate` in Rust.
    -- TSKeyword            { } , -- Keywords that don't fit into other categories.
    -- TSKeywordFunction    { } , -- Keywords used to define a function: `function` in Lua, `def` and `lambda` in Python.
    -- TSKeywordOperator    { } , -- Unary and binary operators that are English words: `and`, `or` in Python; `sizeof` in C.
    -- TSKeywordReturn      { } , -- Keywords like `return` and `yield`.
    -- TSLabel              { } , -- GOTO labels: `label:` in C, and `::label::` in Lua.
    -- TSMethod             { } , -- Method calls and definitions.
    TSNamespace          { fg = lilac } , -- Identifiers referring to modules and namespaces.
    -- TSNone               { } , -- No highlighting (sets all highlight arguments to `NONE`). this group is used to clear certain ranges, for example, string interpolations. Don't change the values of this highlight group.
    -- TSNumber             { } , -- Numeric literals that don't fit into other categories.
    -- TSOperator           { } , -- Binary or unary operators: `+`, and also `->` and `*` in C.
    -- TSParameter          { } , -- Parameters of a function.
    -- TSParameterReference { } , -- References to parameters of a function.
    -- TSPreProc            { } , -- Preprocessor #if, #else, #endif, etc.
    -- TSProperty           { } , -- Same as `TSField`.
    TSPunctDelimiter     { fg = lavender } , -- Punctuation delimiters: Periods, commas, semicolons, etc.
    -- TSPunctBracket       { } , -- Brackets, braces, parentheses, etc.
    -- TSPunctSpecial       { } , -- Special punctuation that doesn't fit into the previous categories.
    -- TSRepeat             { } , -- Keywords related to loops: `for`, `while`, etc.
    -- TSStorageClass       { } , -- Keywords that affect how a variable is stored: `static`, `comptime`, `extern`, etc.
    -- TSString             { } , -- String literals.
    -- TSStringRegex        { } , -- Regular expression literals.
    TSStringEscape       { fg = honey } , -- Escape characters within a string: `\n`, `\t`, etc.
    -- TSStringSpecial      { } , -- Strings with special meaning that don't fit into the previous categories.
    -- TSSymbol             { } , -- Identifiers referring to symbols or atoms.
    -- TSTag                { } , -- Tags like HTML tag names.
    -- TSTagAttribute       { } , -- HTML tag attributes.
    -- TSTagDelimiter       { } , -- Tag delimiters like `<` `>` `/`.
    -- TSText               { } , -- Non-structured text. Like text in a markup language.
    TSStrong             { fg = Normal.fg, gui = "bold" } , -- Text to be represented in bold.
    TSEmphasis           { fg = Normal.fg, gui = "italic" } , -- Text to be represented with emphasis.
    TSUnderline          { fg = Normal.fg, gui = "underline" } , -- Text to be represented with an underline.
    -- TSStrike             { } , -- Strikethrough text.
    -- TSTitle              { } , -- Text that is part of a title.
    TSLiteral            { fg = almond } , -- Literal or verbatim text.
    TSURI                { fg = silver, gui = "underline" } , -- URIs like hyperlinks or email addresses.
    -- TSMath               { } , -- Math environments like LaTeX's `$ ... $`
    TSTextReference      { fg = almond } , -- Footnotes, text references, citations, etc.
    -- TSEnvironment        { } , -- Text environments of markup languages.
    -- TSEnvironmentName    { } , -- Text/string indicating the type of text environment. Like the name of a `\begin` block in LaTeX.
    -- TSNote               { } , -- Text representation of an informational note.
    -- TSWarning            { } , -- Text representation of a warning note.
    -- TSDanger             { } , -- Text representation of a danger note.
    -- TSType               { } , -- Type (and class) definitions and annotations.
    -- TSTypeBuiltin        { } , -- Built-in types: `i32` in Rust.
    -- TSVariable           { } , -- Variable names that don't fit into other categories.
    TSVariableBuiltin    { fg = mint } , -- Variable names defined by the language: `this` or `self` in Javascript.

    -- Opinionated overrides and plugins
    LineNr { bg = CursorLine.bg },
    CursorLineNr { fg = lilac, bg = LineNr.bg },
    SignColumn { LineNr },
    VertSplit { fg = LineNr.bg, bg = LineNr.bg },

    CmpItemKindFunction { fg = Function.fg },
    CmpItemKindConstructor { fg = TSConstructor.fg },
    CmpItemKindVariable { fg = Identifier.fg },
    CmpItemKindClass { fg = Type.fg },
    CmpItemKindModule { fg = TSNamespace.fg },
    CmpItemKindProperty { fg = TSAttribute.fg },
    CmpItemKindValue { fg = Number.fg },
    CmpItemKindEnum { fg = Number.fg },
    CmpItemKindKeyword { fg = Statement.fg },
    CmpItemKindSnippet { fg = honey },
    CmpItemKindColor { fg = honey },
    CmpItemKindFile { fg = honey },
    CmpItemKindFolder { fg = Directory.fg },
    CmpItemKindEnumMember { fg = Number.fg },
    CmpItemKindConstant { fg = Constant.fg },
    CmpItemKindStruct { fg = Type.fg },
    CmpItemKindEvent { fg = Type.fg },
    CmpItemKindOperator { fg = Operator.fg },
    CmpItemKindTypeParameter { fg = Identifier.fg },
    CmpItemKindText { fg = Normal.fg },
    CmpItemKindMethod { fg = Function.fg },

    -- Lualine faces
    LualineANormal { fg = almond, bg = StatusLine.bg },
    LualineBNormal { StatusLine },
    LualineCNormal { StatusLineNC },
    LualineAInsert { fg = almond, bg = StatusLineNC.bg, gui = "reverse" },
    LualineBInsert { StatusLine },
    LualineCInsert { StatusLineNC },
    LualineAVisual { fg = Visual.bg, bg = white, gui = "reverse" },
    LualineBVisual { StatusLine },
    LualineCVisual { StatusLineNC },
    LualineAReplace { fg = lightning, bg = StatusLineNC.bg, gui = "reverse" },
    LualineBReplace { StatusLine },
    LualineCReplace { StatusLineNC },
    LualineACommand { fg = apricot, bg = StatusLineNC.bg, gui = "reverse" },
    LualineBCommand { StatusLine },
    LualineCCommand { StatusLineNC },
    LualineAInactive { StatusLineNC },
    LualineBInactive { StatusLineNC },
    LualineCInactive { StatusLineNC },

    -- Neotree
    NeoTreeNormal { bg = revolver },
    NeoTreeNormalNC { bg = revolver },
    NeoTreeStatusLine { fg = NeoTreeNormal.bg, bg = NeoTreeNormal.bg },
    NeoTreeStatusLineNC { fg = NeoTreeNormal.bg, bg = NeoTreeNormal.bg },
    NeoTreeEndOfBuffer { fg = NeoTreeNormal.bg },
    NeoTreeMessage { fg = delta, gui = "italic" },
    NeoTreeDotfile { fg = delta },
    NeoTreeCursorLine { bg = midnight },
    NeoTreeIndentMarker { fg = visual },

    -- Indent guides
    -- IndentBlanklineChar { fg = comet },
    IndentBlanklineChar { fg = visual },

    -- Telescope
    TelescopeNormal { bg = StatusLineNC.bg },
    TelescopeBorder { TelescopeNormal },
    TelescopePromptPrefix { fg = almond },
    TelescopeTitle { fg = almond, bg = revolver, gui = "reverse" },
    TelescopeSelection { bg = midnight },
    TelescopePromptCounter { fg = lavender },
    TelescopeResultsTitle { fg = TelescopeBorder.bg },
    TelescopePreviewTitle { fg = TelescopeBorder.bg },

    -- Which key
    WhichKeyFloat { bg = StatusLineNC.bg },
  }
end)

-- Return our parsed theme for extension or use elsewhere.
return theme

-- vi:nowrap
