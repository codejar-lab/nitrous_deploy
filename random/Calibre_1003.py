__license__   = 'GPL v3'
__copyright__ = '2013, Arpan Chavda <arpanchavdaeng at gmail.com>'
'''
thecalibre.in
'''

class AdvancedUserRecipe1365325396(BasicNewsRecipe):
    title          = u'Calibre'
    oldest_article = 30
    max_articles_per_feed = 3
    description = u'thecalibre.in web site ebook created using rss feeds.'

    # Author of this recipe.
    __author__ = 'arpan-chavda'

    # Specify English as the language of the RSS feeds (ISO-639 code).
    language = 'en_IN'

    # Set tags.
    tags = 'current-affairs'

    # Set publisher and publication type.
    publisher = 'theCalibre.in'
    publication_type = 'blog'
    masthead_url = 'http://thecalibre.in/wp-content/themes/wp-trustme/img/logo.png'
    # Disable stylesheets from site.
    no_stylesheets = True

    encoding = None
    remove_empty_feeds = True
    conversion_options = { 'comment' : description, 'tags' : category, 'publisher' : publisher, 'language' : language, 'smarten_punctuation' : True }

    auto_cleanup = True
    auto_cleanup_keep = '//img[@itemprop="image"]'
    feeds          = [(u'Calibre- 1', u'http://thecalibre.in/feed')]

