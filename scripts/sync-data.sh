#!/bin/sh

PUBLIC_DATA_DIR="data/public"
PUBLIC_HANDBOOK_REF=${PUBLIC_HANDBOOK_REF:-"master"}

mkdir -p "$PUBLIC_DATA_DIR"

# Download the data files from the public handbook repo
data_files="\
addressable_markets.yml \
categories.yml \
currency_conversions.yml \
data_assets.yml \
data_stages.yml \
domain_expertise.yml \
entity_mapper.yml \
features.yml \
jobs_to_be_done.yml \
people_group/people_business_partners.yml \
pricing_themes \
projects.yml \
release_post_managers.yml \
sections.yml \
service_maturity.yml \
services.yml \
stages.yml \
tech_stack.yml \
ux_showcase.yml "

for file in $data_files; do
	outfile=$(echo $file |rev| cut -d "/" -f 1|rev)
	url="https://gitlab.com/gitlab-com/www-gitlab-com/-/raw/${PUBLIC_HANDBOOK_REF}/data/${file}"
	echo "fetching ${outfile} from ${url}..."
	wget -qO "${PUBLIC_DATA_DIR}/${outfile}" "${url}"
done

# Download the team.yml file direct from the public handbook website.
# The combined team.yml is generated, so it's not checked in the repo.
# See www-gitlab-com/doc/team_database.md for more details.
echo "fetching team.yml..."
wget -qO "$PUBLIC_DATA_DIR/team.yml" "https://about.gitlab.com/company/team/team.yml"
