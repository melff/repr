repr_html_pre <- function(obj, ...)
    paste0('<pre>\n',
	   paste(capture.output(print(obj)),
		 collapse='\n'),
	   '</pre>')
