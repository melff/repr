#' Representations of factors
#' 
#' @param obj  The factor to create a representation for
#' @param ...  ignored
#' 
#' @name repr_*.factor
#' @include repr_vector.r
#' @include utils.r
NULL

repr_factor_generic <- function(template, repr_vec, repr_lvls = repr_vec)
	function(obj, ...) sprintf(template, repr_vec(obj, ...), repr_lvls(levels(obj)))

# repr_text is defined via print

#' @name repr_*.factor
#' @export
repr_html.factor <- function(obj, ...){
    if(getOption("repr_fancy",FALSE))
	repr_html_factor(obj, ...)
    else
	repr_html_pre(obj)
}

repr_html_factor <- repr_factor_generic(
# "display: list-item" because of https://github.com/jupyter/notebook/issues/2223
'%s
<details>
	<summary style=display:list-item;cursor:pointer>
		<strong>Levels</strong>:
	</summary>
%s
</details>', repr_html.character, function(lvls) strindent(repr_html.character(lvls)))

#' @name repr_*.factor
#' @export
repr_markdown.factor <- repr_factor_generic('%s\n**Levels**: %s', repr_markdown.character)

#' @name repr_*.factor
#' @export
repr_latex.factor <- function(obj, ...){
    if(getOption("repr_fancy",FALSE))
	repr_latex_factor(obj, ...)
    else
	repr_latex_pre(obj)
}

repr_latex_factor <- repr_factor_generic('%s\n\\emph{Levels}: %s', repr_latex.character)
