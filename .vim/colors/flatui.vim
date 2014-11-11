" Vim color file
" Converted from Textmate theme Flat UI using Coloration v0.3.3 (http://github.com/sickill/coloration)

set background=dark
highlight clear

if exists("syntax_on")
  syntax reset
endif

let g:colors_name = "Flat UI"

hi Cursor ctermfg=0 ctermbg=15 cterm=NONE guifg=#000000 guibg=#ffffff gui=NONE
hi Visual ctermfg=NONE ctermbg=102 cterm=NONE guifg=NONE guibg=#7f8c8d gui=NONE
hi CursorLine ctermfg=NONE ctermbg=234 cterm=NONE guifg=NONE guibg=#191919 gui=NONE
hi CursorColumn ctermfg=NONE ctermbg=234 cterm=NONE guifg=NONE guibg=#191919 gui=NONE
hi ColorColumn ctermfg=NONE ctermbg=234 cterm=NONE guifg=NONE guibg=#191919 gui=NONE
hi LineNr ctermfg=244 ctermbg=234 cterm=NONE guifg=#808080 guibg=#191919 gui=NONE
hi VertSplit ctermfg=238 ctermbg=238 cterm=NONE guifg=#4a4a4a guibg=#4a4a4a gui=NONE
hi MatchParen ctermfg=220 ctermbg=NONE cterm=underline guifg=#f1c40f guibg=NONE gui=underline
hi StatusLine ctermfg=15 ctermbg=238 cterm=bold guifg=#ffffff guibg=#4a4a4a gui=bold
hi StatusLineNC ctermfg=15 ctermbg=238 cterm=NONE guifg=#ffffff guibg=#4a4a4a gui=NONE
hi Pmenu ctermfg=NONE ctermbg=NONE cterm=NONE guifg=NONE guibg=NONE gui=NONE
hi PmenuSel ctermfg=NONE ctermbg=102 cterm=NONE guifg=NONE guibg=#7f8c8d gui=NONE
hi IncSearch ctermfg=0 ctermbg=41 cterm=NONE guifg=#000000 guibg=#2ecc71 gui=NONE
hi Search ctermfg=NONE ctermbg=NONE cterm=underline guifg=NONE guibg=NONE gui=underline
hi Directory ctermfg=220 ctermbg=NONE cterm=NONE guifg=#f1c40f guibg=NONE gui=NONE
hi Folded ctermfg=109 ctermbg=0 cterm=NONE guifg=#95a5a6 guibg=#000000 gui=NONE

hi Normal ctermfg=15 ctermbg=0 cterm=NONE guifg=#ffffff guibg=#000000 gui=NONE
hi Boolean ctermfg=220 ctermbg=NONE cterm=NONE guifg=#f1c40f guibg=NONE gui=NONE
hi Character ctermfg=220 ctermbg=NONE cterm=NONE guifg=#f1c40f guibg=NONE gui=NONE
hi Comment ctermfg=109 ctermbg=NONE cterm=NONE guifg=#95a5a6 guibg=NONE gui=NONE
hi Conditional ctermfg=220 ctermbg=NONE cterm=NONE guifg=#f1c40f guibg=NONE gui=NONE
hi Constant ctermfg=NONE ctermbg=NONE cterm=NONE guifg=NONE guibg=NONE gui=NONE
hi Define ctermfg=220 ctermbg=NONE cterm=NONE guifg=#f1c40f guibg=NONE gui=NONE
hi DiffAdd ctermfg=15 ctermbg=64 cterm=bold guifg=#ffffff guibg=#3e7b05 gui=bold
hi DiffDelete ctermfg=88 ctermbg=NONE cterm=NONE guifg=#830000 guibg=NONE gui=NONE
hi DiffChange ctermfg=15 ctermbg=17 cterm=NONE guifg=#ffffff guibg=#102544 gui=NONE
hi DiffText ctermfg=15 ctermbg=24 cterm=bold guifg=#ffffff guibg=#204a87 gui=bold
hi ErrorMsg ctermfg=NONE ctermbg=NONE cterm=NONE guifg=NONE guibg=NONE gui=NONE
hi WarningMsg ctermfg=NONE ctermbg=NONE cterm=NONE guifg=NONE guibg=NONE gui=NONE
hi Float ctermfg=220 ctermbg=NONE cterm=NONE guifg=#f1c40f guibg=NONE gui=NONE
hi Function ctermfg=167 ctermbg=NONE cterm=NONE guifg=#e74c3c guibg=NONE gui=NONE
hi Identifier ctermfg=220 ctermbg=NONE cterm=NONE guifg=#f1c40f guibg=NONE gui=NONE
hi Keyword ctermfg=220 ctermbg=NONE cterm=NONE guifg=#f1c40f guibg=NONE gui=NONE
hi Label ctermfg=41 ctermbg=NONE cterm=NONE guifg=#2ecc71 guibg=NONE gui=NONE
hi NonText ctermfg=237 ctermbg=232 cterm=NONE guifg=#404040 guibg=#0d0d0d gui=NONE
hi Number ctermfg=220 ctermbg=NONE cterm=NONE guifg=#f1c40f guibg=NONE gui=NONE
hi Operator ctermfg=220 ctermbg=NONE cterm=NONE guifg=#f1c40f guibg=NONE gui=NONE
hi PreProc ctermfg=220 ctermbg=NONE cterm=NONE guifg=#f1c40f guibg=NONE gui=NONE
hi Special ctermfg=15 ctermbg=NONE cterm=NONE guifg=#ffffff guibg=NONE gui=NONE
hi SpecialKey ctermfg=237 ctermbg=234 cterm=NONE guifg=#404040 guibg=#191919 gui=NONE
hi Statement ctermfg=220 ctermbg=NONE cterm=NONE guifg=#f1c40f guibg=NONE gui=NONE
hi StorageClass ctermfg=220 ctermbg=NONE cterm=NONE guifg=#f1c40f guibg=NONE gui=NONE
hi String ctermfg=41 ctermbg=NONE cterm=NONE guifg=#2ecc71 guibg=NONE gui=NONE
hi Tag ctermfg=146 ctermbg=NONE cterm=NONE guifg=#bdc3c7 guibg=NONE gui=NONE
hi Title ctermfg=15 ctermbg=NONE cterm=bold guifg=#ffffff guibg=NONE gui=bold
hi Todo ctermfg=109 ctermbg=NONE cterm=inverse,bold guifg=#95a5a6 guibg=NONE gui=inverse,bold
hi Type ctermfg=NONE ctermbg=NONE cterm=NONE guifg=NONE guibg=NONE gui=NONE
hi Underlined ctermfg=NONE ctermbg=NONE cterm=underline guifg=NONE guibg=NONE gui=underline
hi rubyClass ctermfg=220 ctermbg=NONE cterm=NONE guifg=#f1c40f guibg=NONE gui=NONE
hi rubyFunction ctermfg=167 ctermbg=NONE cterm=NONE guifg=#e74c3c guibg=NONE gui=NONE
hi rubyInterpolationDelimiter ctermfg=NONE ctermbg=NONE cterm=NONE guifg=NONE guibg=NONE gui=NONE
hi rubySymbol ctermfg=220 ctermbg=NONE cterm=NONE guifg=#f1c40f guibg=NONE gui=NONE
hi rubyConstant ctermfg=68 ctermbg=NONE cterm=NONE guifg=#3498db guibg=NONE gui=NONE
hi rubyStringDelimiter ctermfg=41 ctermbg=NONE cterm=NONE guifg=#2ecc71 guibg=NONE gui=NONE
hi rubyBlockParameter ctermfg=15 ctermbg=NONE cterm=NONE guifg=#ffffff guibg=NONE gui=NONE
hi rubyInstanceVariable ctermfg=15 ctermbg=NONE cterm=NONE guifg=#ffffff guibg=NONE gui=NONE
hi rubyInclude ctermfg=220 ctermbg=NONE cterm=NONE guifg=#f1c40f guibg=NONE gui=NONE
hi rubyGlobalVariable ctermfg=15 ctermbg=NONE cterm=NONE guifg=#ffffff guibg=NONE gui=NONE
hi rubyRegexp ctermfg=41 ctermbg=NONE cterm=NONE guifg=#2ecc71 guibg=NONE gui=NONE
hi rubyRegexpDelimiter ctermfg=41 ctermbg=NONE cterm=NONE guifg=#2ecc71 guibg=NONE gui=NONE
hi rubyEscape ctermfg=41 ctermbg=NONE cterm=NONE guifg=#2ecc71 guibg=NONE gui=NONE
hi rubyControl ctermfg=220 ctermbg=NONE cterm=NONE guifg=#f1c40f guibg=NONE gui=NONE
hi rubyClassVariable ctermfg=NONE ctermbg=NONE cterm=NONE guifg=NONE guibg=NONE gui=NONE
hi rubyOperator ctermfg=220 ctermbg=NONE cterm=NONE guifg=#f1c40f guibg=NONE gui=NONE
hi rubyException ctermfg=220 ctermbg=NONE cterm=NONE guifg=#f1c40f guibg=NONE gui=NONE
hi rubyPseudoVariable ctermfg=15 ctermbg=NONE cterm=NONE guifg=#ffffff guibg=NONE gui=NONE
hi rubyRailsUserClass ctermfg=68 ctermbg=NONE cterm=NONE guifg=#3498db guibg=NONE gui=NONE
hi rubyRailsARAssociationMethod ctermfg=15 ctermbg=NONE cterm=NONE guifg=#ffffff guibg=NONE gui=NONE
hi rubyRailsARMethod ctermfg=15 ctermbg=NONE cterm=NONE guifg=#ffffff guibg=NONE gui=NONE
hi rubyRailsRenderMethod ctermfg=15 ctermbg=NONE cterm=NONE guifg=#ffffff guibg=NONE gui=NONE
hi rubyRailsMethod ctermfg=15 ctermbg=NONE cterm=NONE guifg=#ffffff guibg=NONE gui=NONE
hi erubyDelimiter ctermfg=NONE ctermbg=NONE cterm=NONE guifg=NONE guibg=NONE gui=NONE
hi erubyComment ctermfg=109 ctermbg=NONE cterm=NONE guifg=#95a5a6 guibg=NONE gui=NONE
hi erubyRailsMethod ctermfg=15 ctermbg=NONE cterm=NONE guifg=#ffffff guibg=NONE gui=NONE
hi htmlTag ctermfg=NONE ctermbg=NONE cterm=NONE guifg=NONE guibg=NONE gui=NONE
hi htmlEndTag ctermfg=NONE ctermbg=NONE cterm=NONE guifg=NONE guibg=NONE gui=NONE
hi htmlTagName ctermfg=NONE ctermbg=NONE cterm=NONE guifg=NONE guibg=NONE gui=NONE
hi htmlArg ctermfg=NONE ctermbg=NONE cterm=NONE guifg=NONE guibg=NONE gui=NONE
hi htmlSpecialChar ctermfg=220 ctermbg=NONE cterm=NONE guifg=#f1c40f guibg=NONE gui=NONE
hi javaScriptFunction ctermfg=220 ctermbg=NONE cterm=NONE guifg=#f1c40f guibg=NONE gui=NONE
hi javaScriptRailsFunction ctermfg=15 ctermbg=NONE cterm=NONE guifg=#ffffff guibg=NONE gui=NONE
hi javaScriptBraces ctermfg=NONE ctermbg=NONE cterm=NONE guifg=NONE guibg=NONE gui=NONE
hi yamlKey ctermfg=15 ctermbg=NONE cterm=NONE guifg=#ffffff guibg=NONE gui=NONE
hi yamlAnchor ctermfg=15 ctermbg=NONE cterm=NONE guifg=#ffffff guibg=NONE gui=NONE
hi yamlAlias ctermfg=15 ctermbg=NONE cterm=NONE guifg=#ffffff guibg=NONE gui=NONE
hi yamlDocumentHeader ctermfg=41 ctermbg=NONE cterm=NONE guifg=#2ecc71 guibg=NONE gui=NONE
hi cssURL ctermfg=15 ctermbg=NONE cterm=NONE guifg=#ffffff guibg=NONE gui=NONE
hi cssFunctionName ctermfg=15 ctermbg=NONE cterm=NONE guifg=#ffffff guibg=NONE gui=NONE
hi cssColor ctermfg=220 ctermbg=NONE cterm=NONE guifg=#f1c40f guibg=NONE gui=NONE
hi cssPseudoClassId ctermfg=220 ctermbg=NONE cterm=NONE guifg=#f1c40f guibg=NONE gui=NONE
hi cssClassName ctermfg=220 ctermbg=NONE cterm=NONE guifg=#f1c40f guibg=NONE gui=NONE
hi cssValueLength ctermfg=220 ctermbg=NONE cterm=NONE guifg=#f1c40f guibg=NONE gui=NONE
hi cssCommonAttr ctermfg=15 ctermbg=NONE cterm=NONE guifg=#ffffff guibg=NONE gui=NONE
hi cssBraces ctermfg=NONE ctermbg=NONE cterm=NONE guifg=NONE guibg=NONE gui=NONE
