(require 'cl)
(require 'muse-mode)
(require 'muse-html)
(require 'muse-latex)
(require 'muse-wiki)
(require 'muse-docbook)
(require 'muse-publish)

(setq debug-on-error t)

(muse-derive-style "hwarticle-xhtml" "xhtml"
                   :header (concat (getenv "TEMPLATE_DIR") "/header.html")
                   :footer (concat (getenv "TEMPLATE_DIR") "/footer.html")
                   :style-sheet "
<style type=\"text/css\">
	body {
		background: white;
		color: black;
		margin-left: 3%;
		margin-right: 7%;
	}

	p {
		margin-top: 1%
	}

	p.verse
	{
		margin-left: 3%
	}

	.example {
		margin-left: 3%
	}

	.hwsource {
		margin-top: 0;
		margin-bottom: 0;
		font-family: Andale Mono, Lucida Console, Monaco, fixed, monospace;
		font-size: 11px;
		background-color:#eeeeee;
		border: 1px solid #ccc;
		padding: 5px 5px 5px 5px;
	}

	h2 {
		margin-top: 25px;
		margin-bottom: 0px;
	}

	h3 {
		margin-bottom: 0px;
	}
</style>
")
