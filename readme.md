## Website for the MSU Computing CloudFellowship

Website: https://msucloudfellowship.github.io

Current home for website code:  https://github.com/msucloudfellowship/msucloudfellowship.github.io

This (old) github repository for the source code for the website for materials for the MSU Cloud Computing Fellowship, used by the fellowship organizers.   Students do not need to use this source code, simply visit the site above

See the home page of the site for information about the Cloud Computing Fellowship, or contact https://icer.msu.edu
 

### Building

The site was build with the amazing python package "MkDocs" and Markdown.   For details and full documentation visit [mkdocs.org](https://www.mkdocs.org).  The theme is the also amazing https://github.com/squidfunk/mkdocs-material

For MSU colleagues, to collaborate on this website, install as follows: 

```sh
git clone git@github.com:msucloudfellowship/msucloudfellowship.github.io.git

cd msucloudfellowship.github.io
# create a python environment, if you like
pip install -r requirements.txt
mkdocs serve  # build and preview the site
# edit markdown files in /docs folder per mkdocs docs

```


Licensed as Creative Commons Attribution-NonCommercial 4.0 International License

![Creative Commons License](https://i.creativecommons.org/l/by-nc/4.0/88x31.png)

http://creativecommons.org/licenses/by-nc/4.0/
