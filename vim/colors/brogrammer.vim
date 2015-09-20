" Vim color file
" Converted from Textmate theme Brogrammer using Coloration v0.4.0 (http://github.com/sickill/coloration)

set background=dark
highlight clear

if exists("syntax_on")
  syntax reset
endif

let g:colors_name = "Brogrammer"

hi Cursor ctermfg=234 ctermbg=231 cterm=NONE guifg=#1a1a1a guibg=#ecf0f1 gui=NONE
hi Visual ctermfg=NONE ctermbg=235 cterm=NONE guifg=NONE guibg=#2a2a2a gui=NONE
hi CursorLine ctermfg=NONE ctermbg=236 cterm=NONE guifg=NONE guibg=#2f2f2f gui=NONE
hi CursorColumn ctermfg=NONE ctermbg=236 cterm=NONE guifg=NONE guibg=#2f2f2f gui=NONE
hi ColorColumn ctermfg=NONE ctermbg=236 cterm=NONE guifg=NONE guibg=#2f2f2f gui=NONE
hi LineNr ctermfg=244 ctermbg=234 cterm=NONE guifg=#838586 guibg=#2f2f2f gui=NONE
hi VertSplit ctermfg=240 ctermbg=240 cterm=NONE guifg=#575858 guibg=#575858 gui=NONE
hi MatchParen ctermfg=196 ctermbg=NONE cterm=underline guifg=#e74c3c guibg=NONE gui=underline
hi StatusLine ctermfg=231 ctermbg=240 cterm=bold guifg=#ecf0f1 guibg=#575858 gui=bold
hi StatusLineNC ctermfg=231 ctermbg=240 cterm=NONE guifg=#ecf0f1 guibg=#575858 gui=NONE
hi Pmenu ctermfg=41 ctermbg=NONE cterm=NONE guifg=#2ecc71 guibg=NONE gui=NONE
hi PmenuSel ctermfg=NONE ctermbg=235 cterm=NONE guifg=NONE guibg=#2a2a2a gui=NONE
hi IncSearch ctermfg=234 ctermbg=220 cterm=NONE guifg=#1a1a1a guibg=#f1c40f gui=NONE
hi Search ctermfg=NONE ctermbg=NONE cterm=underline guifg=NONE guibg=NONE gui=underline
hi Directory ctermfg=33 ctermbg=NONE cterm=NONE guifg=#6c71c4 guibg=NONE gui=NONE
hi Folded ctermfg=241 ctermbg=233 cterm=NONE guifg=#606060 guibg=#1a1a1a gui=NONE

hi Normal ctermfg=231 ctermbg=233 cterm=NONE guifg=#ecf0f1 guibg=#1a1a1a gui=NONE
hi Boolean ctermfg=33 ctermbg=NONE cterm=NONE guifg=#6c71c4 guibg=NONE gui=NONE
hi Character ctermfg=33 ctermbg=NONE cterm=NONE guifg=#6c71c4 guibg=NONE gui=NONE
hi Comment ctermfg=241 ctermbg=NONE cterm=NONE guifg=#606060 guibg=NONE gui=italic
hi Conditional ctermfg=196 ctermbg=NONE cterm=bold guifg=#e74c3c guibg=NONE gui=bold
hi Constant ctermfg=33 ctermbg=NONE cterm=NONE guifg=#6c71c4 guibg=NONE gui=NONE
hi Define ctermfg=196 ctermbg=NONE cterm=bold guifg=#e74c3c guibg=NONE gui=bold
hi DiffAdd ctermfg=231 ctermbg=64 cterm=bold guifg=#ecf0f1 guibg=#44800a gui=bold
hi DiffDelete ctermfg=88 ctermbg=NONE cterm=NONE guifg=#880505 guibg=NONE gui=NONE
hi DiffChange ctermfg=231 ctermbg=23 cterm=NONE guifg=#ecf0f1 guibg=#1d3251 gui=NONE
hi DiffText ctermfg=231 ctermbg=24 cterm=bold guifg=#ecf0f1 guibg=#204a87 gui=bold
hi ErrorMsg ctermfg=15 ctermbg=196 cterm=NONE guifg=#ffffff guibg=#e74c3c gui=NONE
hi WarningMsg ctermfg=15 ctermbg=196 cterm=NONE guifg=#ffffff guibg=#e74c3c gui=NONE
hi Float ctermfg=33 ctermbg=NONE cterm=NONE guifg=#6c71c4 guibg=NONE gui=NONE
hi Function ctermfg=41 ctermbg=NONE cterm=NONE guifg=#2ecc71 guibg=NONE gui=NONE
hi Identifier ctermfg=63 ctermbg=NONE cterm=NONE guifg=#3498db guibg=NONE gui=NONE
hi Keyword ctermfg=196 ctermbg=NONE cterm=bold guifg=#e74c3c guibg=NONE gui=bold
hi Label ctermfg=220 ctermbg=NONE cterm=NONE guifg=#f1c40f guibg=NONE gui=NONE
hi NonText ctermfg=22 ctermbg=234 cterm=NONE guifg=#30312a guibg=#252525 gui=NONE
hi Number ctermfg=33 ctermbg=NONE cterm=NONE guifg=#6c71c4 guibg=NONE gui=NONE
hi Operator ctermfg=196 ctermbg=NONE cterm=bold guifg=#e74c3c guibg=NONE gui=bold
hi PreProc ctermfg=196 ctermbg=NONE cterm=bold guifg=#e74c3c guibg=NONE gui=bold
hi Special ctermfg=231 ctermbg=NONE cterm=NONE guifg=#ecf0f1 guibg=NONE gui=NONE
hi SpecialKey ctermfg=22 ctermbg=236 cterm=NONE guifg=#30312a guibg=#2f2f2f gui=NONE
hi Statement ctermfg=196 ctermbg=NONE cterm=bold guifg=#e74c3c guibg=NONE gui=bold
hi StorageClass ctermfg=63 ctermbg=NONE cterm=NONE guifg=#3498db guibg=NONE gui=NONE
hi String ctermfg=220 ctermbg=NONE cterm=NONE guifg=#f1c40f guibg=NONE gui=NONE
hi Tag ctermfg=41 ctermbg=NONE cterm=NONE guifg=#2ecc71 guibg=NONE gui=NONE
hi Title ctermfg=231 ctermbg=NONE cterm=bold guifg=#ecf0f1 guibg=NONE gui=bold
hi Todo ctermfg=241 ctermbg=NONE cterm=inverse,bold guifg=#606060 guibg=NONE gui=inverse,bold,italic
hi Type ctermfg=41 ctermbg=NONE cterm=NONE guifg=#2ecc71 guibg=NONE gui=NONE
hi Underlined ctermfg=NONE ctermbg=NONE cterm=underline guifg=NONE guibg=NONE gui=underline
hi rubyClass ctermfg=196 ctermbg=NONE cterm=bold guifg=#e74c3c guibg=NONE gui=bold
hi rubyFunction ctermfg=41 ctermbg=NONE cterm=NONE guifg=#2ecc71 guibg=NONE gui=NONE
hi rubyInterpolationDelimiter ctermfg=NONE ctermbg=NONE cterm=NONE guifg=NONE guibg=NONE gui=NONE
hi rubySymbol ctermfg=33 ctermbg=NONE cterm=NONE guifg=#6c71c4 guibg=NONE gui=NONE
hi rubyConstant ctermfg=63 ctermbg=NONE cterm=bold guifg=#3498db guibg=NONE gui=bold
hi rubyStringDelimiter ctermfg=220 ctermbg=NONE cterm=NONE guifg=#f1c40f guibg=NONE gui=NONE
hi rubyBlockParameter ctermfg=208 ctermbg=NONE cterm=NONE guifg=#e67e22 guibg=NONE gui=NONE
hi rubyInstanceVariable ctermfg=208 ctermbg=NONE cterm=NONE guifg=#e67e22 guibg=NONE gui=NONE
hi rubyInclude ctermfg=196 ctermbg=NONE cterm=bold guifg=#e74c3c guibg=NONE gui=bold
hi rubyGlobalVariable ctermfg=208 ctermbg=NONE cterm=NONE guifg=#e67e22 guibg=NONE gui=NONE
hi rubyRegexp ctermfg=63 ctermbg=NONE cterm=NONE guifg=#3498db guibg=NONE gui=NONE
hi rubyRegexpDelimiter ctermfg=63 ctermbg=NONE cterm=NONE guifg=#3498db guibg=NONE gui=NONE
hi rubyEscape ctermfg=33 ctermbg=NONE cterm=NONE guifg=#6c71c4 guibg=NONE gui=NONE
hi rubyControl ctermfg=196 ctermbg=NONE cterm=bold guifg=#e74c3c guibg=NONE gui=bold
hi rubyClassVariable ctermfg=208 ctermbg=NONE cterm=NONE guifg=#e67e22 guibg=NONE gui=NONE
hi rubyOperator ctermfg=196 ctermbg=NONE cterm=bold guifg=#e74c3c guibg=NONE gui=bold
hi rubyException ctermfg=196 ctermbg=NONE cterm=bold guifg=#e74c3c guibg=NONE gui=bold
hi rubyPseudoVariable ctermfg=208 ctermbg=NONE cterm=NONE guifg=#e67e22 guibg=NONE gui=NONE
hi rubyRailsUserClass ctermfg=63 ctermbg=NONE cterm=bold guifg=#3498db guibg=NONE gui=bold
hi rubyRailsARAssociationMethod ctermfg=63 ctermbg=NONE cterm=NONE guifg=#3498db guibg=NONE gui=NONE
hi rubyRailsARMethod ctermfg=63 ctermbg=NONE cterm=NONE guifg=#3498db guibg=NONE gui=NONE
hi rubyRailsRenderMethod ctermfg=63 ctermbg=NONE cterm=NONE guifg=#3498db guibg=NONE gui=NONE
hi rubyRailsMethod ctermfg=63 ctermbg=NONE cterm=NONE guifg=#3498db guibg=NONE gui=NONE
hi erubyDelimiter ctermfg=NONE ctermbg=NONE cterm=NONE guifg=NONE guibg=NONE gui=NONE
hi erubyComment ctermfg=241 ctermbg=NONE cterm=NONE guifg=#606060 guibg=NONE gui=italic
hi erubyRailsMethod ctermfg=63 ctermbg=NONE cterm=NONE guifg=#3498db guibg=NONE gui=NONE
hi htmlTag ctermfg=196 ctermbg=NONE cterm=NONE guifg=#e74c3c guibg=NONE gui=NONE
hi htmlEndTag ctermfg=196 ctermbg=NONE cterm=NONE guifg=#e74c3c guibg=NONE gui=NONE
hi htmlTagName ctermfg=196 ctermbg=NONE cterm=NONE guifg=#e74c3c guibg=NONE gui=NONE
hi htmlArg ctermfg=196 ctermbg=NONE cterm=NONE guifg=#e74c3c guibg=NONE gui=NONE
hi htmlSpecialChar ctermfg=63 ctermbg=NONE cterm=NONE guifg=#3498db guibg=NONE gui=NONE
hi javaScriptFunction ctermfg=63 ctermbg=NONE cterm=NONE guifg=#3498db guibg=NONE gui=NONE
hi javaScriptRailsFunction ctermfg=63 ctermbg=NONE cterm=NONE guifg=#3498db guibg=NONE gui=NONE
hi javaScriptBraces ctermfg=NONE ctermbg=NONE cterm=NONE guifg=NONE guibg=NONE gui=NONE
hi yamlKey ctermfg=41 ctermbg=NONE cterm=NONE guifg=#2ecc71 guibg=NONE gui=NONE
hi yamlAnchor ctermfg=208 ctermbg=NONE cterm=NONE guifg=#e67e22 guibg=NONE gui=NONE
hi yamlAlias ctermfg=208 ctermbg=NONE cterm=NONE guifg=#e67e22 guibg=NONE gui=NONE
hi yamlDocumentHeader ctermfg=220 ctermbg=NONE cterm=NONE guifg=#f1c40f guibg=NONE gui=NONE
hi cssURL ctermfg=208 ctermbg=NONE cterm=NONE guifg=#e67e22 guibg=NONE gui=NONE
hi cssFunctionName ctermfg=63 ctermbg=NONE cterm=NONE guifg=#3498db guibg=NONE gui=NONE
hi cssColor ctermfg=33 ctermbg=NONE cterm=NONE guifg=#6c71c4 guibg=NONE gui=NONE
hi cssPseudoClassId ctermfg=41 ctermbg=NONE cterm=NONE guifg=#2ecc71 guibg=NONE gui=NONE
hi cssClassName ctermfg=41 ctermbg=NONE cterm=NONE guifg=#2ecc71 guibg=NONE gui=NONE
hi cssValueLength ctermfg=33 ctermbg=NONE cterm=NONE guifg=#6c71c4 guibg=NONE gui=NONE
hi cssCommonAttr ctermfg=41 ctermbg=NONE cterm=NONE guifg=#2ecc71 guibg=NONE gui=NONE
hi cssBraces ctermfg=NONE ctermbg=NONE cterm=NONE guifg=NONE guibg=NONE gui=NONE
