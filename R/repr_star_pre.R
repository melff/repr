repr_html_pre <- function(obj, FUN=print)
    paste0('\n<pre>\n',
	   paste(capture.output(FUN(obj)),
		 collapse='\n'),
	   '\n</pre>\n')


repr_latex_pre <- function(obj, FUN=print)
    paste0('\n\\begin{Verbatim}[commandchars=\\\\\\{\\}]\n',
	   paste(capture.output(FUN(obj)),
		 collapse='\n'),
	   '\n\\end{Verbatim}\n')

