" midoronuma.vim - Vim color scheme
"  ├ based on hemisu.vim (version 3.4) by Noah Frederick (http://noahfrederick.com/)
"  └ based on term_forrest.vim by taka-vagyok <taka.vagyok@gmail.com>
" --------------------------------------------------------------

" Scheme setup {{{
let g:colors_name = expand('<sfile>:t:r')
set background=dark
highlight clear

if exists('syntax_on')
  syntax reset
endif

"}}}
" Utility Function -----------------------------------------{{{
function! s:h(group, style)
  execute "highlight" a:group
  \ "guifg="   (has_key(a:style, "fg")    ? a:style.fg.gui   : "NONE")
  \ "guibg="   (has_key(a:style, "bg")    ? a:style.bg.gui   : "NONE")
  \ "guisp="   (has_key(a:style, "sp")    ? a:style.sp.gui   : "NONE")
  \ "gui="     (has_key(a:style, "gui")   ? a:style.gui      : "NONE")
  \ "ctermfg=" (has_key(a:style, "fg")    ? a:style.fg.cterm : "NONE")
  \ "ctermbg=" (has_key(a:style, "bg")    ? a:style.bg.cterm : "NONE")
  \ "cterm="   (has_key(a:style, "cterm") ? a:style.cterm    : "NONE")
endfunction

"}}}
" The Colors -----------------------------------------------{{{
let s:n_black   = { "cterm": "0",  "gui": "#0c0c0c" }
let s:n_red     = { "cterm": "1",  "gui": "#c50f1f" }
let s:n_green   = { "cterm": "2",  "gui": "#13a10e" }
let s:n_yellow  = { "cterm": "3",  "gui": "#c19c00" }
let s:n_blue    = { "cterm": "4",  "gui": "#0037da" }
let s:n_magenta = { "cterm": "5",  "gui": "#881798" }
let s:n_cyan    = { "cterm": "6",  "gui": "#3a96dd" }
let s:n_white   = { "cterm": "7",  "gui": "#cccccc" }
let s:l_black   = { "cterm": "8",  "gui": "#767676" }
let s:l_red     = { "cterm": "9",  "gui": "#e74856" }
let s:l_green   = { "cterm": "10", "gui": "#16c60c" }
let s:l_yellow  = { "cterm": "11", "gui": "#f9f1a5" }
let s:l_blue    = { "cterm": "12", "gui": "#3b78ff" }
let s:l_magenta = { "cterm": "13", "gui": "#b4009e" }
let s:l_cyan    = { "cterm": "14", "gui": "#61d6d6" }
let s:l_white   = { "cterm": "15", "gui": "#f2f2f2" }

if has("win32") || has("win64")
  let s:n_red     = { "cterm": "4",  "gui": "#c50f1f" }
  let s:n_yellow  = { "cterm": "6",  "gui": "#c19c00" }
  let s:n_blue    = { "cterm": "1",  "gui": "#0037da" }
  let s:n_cyan    = { "cterm": "3",  "gui": "#3a96dd" }
  let s:l_red     = { "cterm": "12", "gui": "#e74856" }
  let s:l_yellow  = { "cterm": "14", "gui": "#f9f1a5" }
  let s:l_blue    = { "cterm": "9",  "gui": "#3b78ff" }
  let s:l_cyan    = { "cterm": "11", "gui": "#61d6d6" }
endif

"}}}
"" Vim UI {{{
call s:h("Normal",          { "fg": s:n_white, "bg": s:n_black })
call s:h("Cursor",          { "fg": s:n_white, "bg": s:l_black })
call s:h("CursorLine",      { "fg": s:l_white, "bg": s:n_black })
call s:h("MatchParen",      { "fg": s:n_white, "gui": "underline", "cterm": "underline" })
call s:h("MatchParen",      { "fg": s:n_white, "bg": s:n_black })
call s:h("Pmenu",           { "fg": s:l_white, "bg": s:n_black })
call s:h("PmenuThumb",      { "fg": s:l_white, "bg": s:n_white })
call s:h("PmenuSBar",       { "bg": s:l_black })
call s:h("PmenuSel",        { "fg": s:n_black, "bg": s:n_yellow })
call s:h("ColorColumn",     { "bg": s:n_black })
call s:h("SpellBad",        { "fg": s:n_red, "bg": s:n_black, "gui": "underline", "cterm": "underline" })
call s:h("SpellCap",        { "fg": s:l_green, "bg": s:n_black, "gui": "underline", "cterm": "underline" })
call s:h("SpellRare",       { "fg": s:l_yellow, "bg": s:n_black, "gui": "underline", "cterm": "underline" })
call s:h("SpellLocal",      { "fg": s:l_magenta, "bg": s:n_black, "gui": "underline", "cterm": "underline" })
call s:h("NonText",         { "fg": s:l_black })
call s:h("LineNr",          { "fg": s:l_black, "bg": s:n_black })
call s:h("CursorLineNr",    { "fg": s:l_yellow, "bg": s:n_black })
call s:h("Visual",          { "fg": s:n_black, "bg": s:l_blue })
call s:h("VisualNOS",       { "fg": s:n_cyan, "bg": s:n_red })
call s:h("IncSearch",       { "fg": s:n_black, "bg": s:l_magenta })
call s:h("Search",          { "fg": s:n_black, "bg": s:l_green })
call s:h("StatusLine",      { "fg": s:n_black, "bg": s:l_green })
call s:h("StatusLineNC",    { "fg": s:n_black, "bg": s:n_green })
call s:h("VertSplit",       { "fg": s:n_green, "bg": s:n_green })
call s:h("TabLine",         { "fg": s:l_black, "bg": s:n_black })
call s:h("TabLineSel",      { "fg": s:n_white, "bg": s:n_black })
call s:h("TabLineFill",     { "fg": s:n_white, "bg": s:n_black })
call s:h("Folded",          { "fg": s:n_yellow, "bg": s:n_black })
call s:h("Directory",       { "fg": s:l_white })
call s:h("Title",           { "fg": s:n_yellow, "gui": "bold", "cterm": "bold" })
call s:h("ErrorMsg",        { "fg": s:l_white, "bg": s:n_red })
call s:h("user1",           { "fg": s:l_white, "bg": s:n_magenta })
call s:h("user2",           { "fg": s:l_white, "bg": s:l_black })
call s:h("user3",           { "fg": s:l_white, "bg": s:n_yellow })
call s:h("user4",           { "fg": s:l_white, "bg": s:n_black })
call s:h("user5",           { "fg": s:l_white, "bg": s:l_magenta })
call s:h("user6",           { "fg": s:l_white, "bg": s:l_cyan })
call s:h("user7",           { "fg": s:l_white, "bg": s:l_blue })
call s:h("user8",           { "fg": s:l_white, "bg": s:l_yellow })
call s:h("user9",           { "fg": s:l_white, "bg": s:l_black })
highlight! link CursorColumn      CursorLine
highlight! link SignColumn        LineNr
highlight! link WildMenu          Visual
highlight! link FoldColumn        SignColumn
highlight! link WarningMsg        ErrorMsg
highlight! link MoreMsg           Title
highlight! link Question          MoreMsg
highlight! link ModeMsg           MoreMsg
highlight! link SpecialKey        NonText
highlight! link StatusLineTerm    StatusLine
highlight! link StatusLineTermNC  StatusLineNC


" }}}
" Generic syntax {{{
call s:h("Delimiter",  { "fg": s:n_green })
call s:h("Comment",    { "fg": s:l_black })
call s:h("Underlined", { "fg": s:n_white, "bg": s:n_black, "gui": "underline", "cterm": "underline" })
call s:h("Type",       { "fg": s:n_cyan })
call s:h("String",     { "fg": s:n_green })
call s:h("Keyword",    { "fg": s:n_green })
call s:h("Todo",       { "fg": s:l_white, "bg": s:n_red, "gui": "bold,underline", "cterm": "bold,underline" })
call s:h("Function",   { "fg": s:l_green })
call s:h("Identifier", { "fg": s:n_white })
call s:h("Statement",  { "fg": s:l_green, "gui": "bold", "cterm": "bold" })
call s:h("Constant",   { "fg": s:l_magenta })
call s:h("Number",     { "fg": s:l_cyan })
call s:h("Boolean",    { "fg": s:l_cyan })
call s:h("Special",    { "fg": s:n_yellow })
call s:h("Ignore",     { "fg": s:n_black, "bg": s:n_white })
highlight! link Operator  Delimiter
highlight! link PreProc   Delimiter
highlight! link Error     ErrorMsg

" }}}
" HTML {{{
call s:h("htmlTagName",             { "fg": s:n_green })
call s:h("htmlTag",                 { "fg": s:n_green })
call s:h("htmlArg",                 { "fg": s:l_green })
call s:h("htmlH1",                  { "fg": s:l_white, "bg": s:n_black, "gui": "bold", "cterm": "bold" })
call s:h("htmlBold",                { "fg": s:l_white, "bg": s:n_black, "gui": "bold", "cterm": "bold" })
call s:h("htmlItalic",              { "fg": s:l_white, "bg": s:n_black, "gui": "underline", "cterm": "underline" })
call s:h("htmlUnderline",           { "fg": s:l_white, "bg": s:n_black, "gui": "underline", "cterm": "underline" })
call s:h("htmlBoldItalic",          { "fg": s:l_white, "bg": s:n_black, "gui": "bold,underline", "cterm": "bold,underline" })
call s:h("htmlUnderlineItalic",     { "fg": s:l_white, "bg": s:n_black, "gui": "underline", "cterm": "underline" })
call s:h("htmlBoldUnderlineItalic", { "fg": s:l_white, "bg": s:n_black, "gui": "bold,underline", "cterm": "bold,underline" })
highlight! link htmlLink           Underlined
highlight! link htmlEndTag         htmlTag

" }}}
" XML {{{
call s:h("xmlTagName", { "fg": s:n_blue })
call s:h("xmlTag",     { "fg": s:l_blue })
highlight! link xmlString  xmlTagName
highlight! link xmlAttrib  xmlTag
highlight! link xmlEndTag  xmlTag
highlight! link xmlEqual   xmlTag

" }}}
" JavaScript {{{
highlight! link javaScript        Normal
highlight! link javaScriptBraces  Delimiter

" }}}
" PHP {{{
call s:h("phpSpecialFunction", { "fg": s:l_cyan })
call s:h("phpIdentifier",      { "fg": s:n_cyan })
call s:h("phpVarSelector",     { "fg": s:n_yellow })
highlight! link phpHereDoc      String
highlight! link phpDefine       Statement

" }}}
" Markdown {{{
call s:h("markdownCode",   { "gui": "bold", "cterm": "bold" })
call s:h("markdownBold",   { "gui": "bold", "cterm": "bold" })
call s:h("markdownItalic", { "fg": s:l_white, "bg": s:n_black, "gui": "underline", "cterm": "underline" })
highlight! link markdownHeadingRule        NonText
highlight! link markdownHeadingDelimiter   markdownHeadingRule
highlight! link markdownLinkDelimiter      Delimiter
highlight! link markdownURLDelimiter       Delimiter
highlight! link markdownCodeDelimiter      NonText
highlight! link markdownLinkTextDelimiter  markdownLinkDelimiter
highlight! link markdownUrl                markdownLinkText
highlight! link markdownAutomaticLink      markdownLinkText
highlight! link markdownCodeBlock          String

" }}}
" Ruby {{{
highlight! link rubyDefine                 Statement
highlight! link rubyLocalVariableOrMethod  Identifier
highlight! link rubyConstant               Constant
highlight! link rubyInstanceVariable       Number
highlight! link rubyStringDelimiter        rubyString

" }}}
" Git {{{
call s:h("gitCommitBranch",       { "fg": s:n_yellow })
call s:h("gitCommitSelectedType", { "fg": s:l_green })
call s:h("gitCommitSelectedFile", { "fg": s:n_green })
call s:h("gitCommitUnmergedType", { "fg": s:l_red })
call s:h("gitCommitUnmergedFile", { "fg": s:n_red })
highlight! link gitCommitFile           Directory
highlight! link gitCommitUntrackedFile  gitCommitUnmergedFile
highlight! link gitCommitDiscardedType  gitCommitUnmergedType
highlight! link gitCommitDiscardedFile  gitCommitUnmergedFile

" }}}
" Vim {{{
highlight! link vimSetSep    Delimiter
highlight! link vimContinue  Delimiter
highlight! link vimHiAttrib  Constant

" }}}
" LESS {{{
call s:h("lessVariable", {"fg": s:l_yellow })
highlight! link lessVariableValue  Normal

" }}}
" NERDTree {{{
highlight! link NERDTreeHelp      Comment
highlight! link NERDTreeExecFile  String

" }}}
" Vimwiki {{{
highlight! link VimwikiHeaderChar  markdownHeadingDelimiter
highlight! link VimwikiList        markdownListMarker
highlight! link VimwikiCode        markdownCode
highlight! link VimwikiCodeChar    markdownCodeDelimiter

" }}}
" Help {{{
highlight! link helpExample         String
highlight! link helpHeadline        Title
highlight! link helpSectionDelim    Comment
highlight! link helpHyperTextEntry  Statement
highlight! link helpHyperTextJump   Underlined
highlight! link helpURL             Underlined

" }}}
" CtrlP {{{
call s:h("CtrlPMatch",   { "bg": s:n_magenta })
call s:h("CtrlPLinePre", { "bg": s:n_cyan })

" }}}
" Mustache {{{
call s:h("mustacheSection",          { "fg": s:l_cyan, "gui": "bold", "cterm": "bold" })
call s:h("mustacheMarker",           { "fg": s:n_cyan })
call s:h("mustacheVariable",         { "fg": s:l_cyan })
call s:h("mustacheVariableUnescape", { "fg": s:l_red })
call s:h("mustachePartial",          { "fg": s:l_magenta })

" }}}
" Shell {{{
call s:h("shDerefVar",    { "fg": s:n_cyan })
call s:h("shDerefSimple", { "fg": s:n_cyan })

" }}}
" Syntastic {{{
call s:h("SyntasticWarningSign", { "fg": s:n_yellow })
call s:h("SyntasticErrorSign",   { "fg": s:n_red })

" }}}
" Netrw {{{
call s:h("netrwExe",      { "fg": s:l_red })
call s:h("netrwClassify", { "fg": s:l_black })

" }}}
" diff {{{
call s:h("DiffAdd",       { "fg": s:n_white, "bg": s:n_blue })
call s:h("DiffChange",    { "fg": s:n_white, "bg": s:l_black })
call s:h("DiffDelete",    { "fg": s:n_black, "bg": s:n_green })
call s:h("DiffText",      { "fg": s:l_black, "bg": s:n_white })
call s:h("diffOldFile",   { "fg": s:n_white })
call s:h("diffNewFile",   { "fg": s:n_white })
call s:h("diffFile",      { "fg": s:n_white })
call s:h("diffLine",      { "fg": s:n_white })
call s:h("diffSubname",   { "fg": s:n_white })
call s:h("diffRemoved",   { "fg": s:n_red })
call s:h("diffChanged",   { "fg": s:n_blue })
call s:h("diffOnly",      { "fg": s:l_yellow })
call s:h("diffIdentical", { "fg": s:l_yellow })
call s:h("diffDiffer",    { "fg": s:l_yellow })
call s:h("diffIsA",       { "fg": s:l_yellow })
call s:h("diffNoEOL",     { "fg": s:l_yellow })
call s:h("diffCommon",    { "fg": s:l_yellow })
call s:h("diffComment",   { "fg": s:l_yellow })

" }}}
" other {{{
call s:h("ParenMatch", { "fg": s:l_white, "bg": s:n_black, "gui": "underline", "cterm": "underline" })

" }}}
