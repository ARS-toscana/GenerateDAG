# Create/update DAG
generate_DAG()

# build the local site (that can be browsed immediately from ./g_website/static/diagram_draft.html)
# Site served http://localhost:4321
serve_site()

# Create or update codebooks
generate_Rmd()
generate_website()

# commit updated DAG, index and codebooks (after the committed changes are pushed, the site will be updated by GitHub within some minutes)
stage_website()
