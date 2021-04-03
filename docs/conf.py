# -*- coding: utf-8 -*-

project = 'Bhakti'
copyright = '2021, P Adhia'
author = 'P Adhia'

version = '2021'
release = ''

templates_path = ['_templates']
source_suffix = '.rst'
master_doc = 'index'

language = None

exclude_patterns = ['_build', 'Thumbs.db', '.DS_Store']
pygments_style = 'sphinx'

html_theme = "sphinx_rtd_theme"
html_theme_options = {'collapse_navigation': False, 'display_version': False}


def setup(app):
    app.add_css_file('css/rtd_override.css')


html_show_sourcelink = False
html_show_sphinx = False
html_show_copyright = True
html_static_path = ['_static']
