# Migrated Sections using fully qualified url on about
echo "Migrating links which have been migrated to the new handbook..."
find . -type f -name "*.md" -exec sed -i '' "s~](https://about.gitlab.com/handbook/anti-harassment/~](/handbook/anti-harassment/~g" {} +
find . -type f -name "*.md" -exec sed -i '' "s~](https://about.gitlab.com/handbook/group-conversations/~](/handbook/group-conversations/~g" {} +
find . -type f -name "*.md" -exec sed -i '' "s~](https://about.gitlab.com/handbook/infrastructure-standards/~](/handbook/infrastructure-standards/~g" {} +
find . -type f -name "*.md" -exec sed -i '' "s~](https://about.gitlab.com/handbook/tools-and-tips/~](/handbook/tools-and-tips/~g" {} +
find . -type f -name "*.md" -exec sed -i '' "s~](https://about.gitlab.com/handbook/total-rewards/~](/handbook/total-rewards/~g" {} +
find . -type f -name "*.md" -exec sed -i '' "s~](https://about.gitlab.com/handbook/e-group-weekly/~](/handbook/e-group-weekly/~g" {} +
find . -type f -name "*.md" -exec sed -i '' "s~](https://about.gitlab.com/handbook/security/~](/handbook/security/~g" {} +
find . -type f -name "*.md" -exec sed -i '' "s~](https://about.gitlab.com/handbook/key-review/~](/handbook/key-review/~g" {} +
find . -type f -name "*.md" -exec sed -i '' "s~](https://about.gitlab.com/handbook/entity/~](/handbook/entity/~g" {} +
find . -type f -name "*.md" -exec sed -i '' "s~](https://about.gitlab.com/handbook/board-meetings/~](/handbook/board-meetings/~g" {} +
find . -type f -name "*.md" -exec sed -i '' "s~](https://about.gitlab.com/handbook/it/~](/handbook/it/~g" {} +
find . -type f -name "*.md" -exec sed -i '' "s~](https://about.gitlab.com/handbook/spending-company-money/~](/handbook/spending-company-money/~g" {} +
find . -type f -name "*.md" -exec sed -i '' "s~](https://about.gitlab.com/handbook/only-healthy-constraints/~](/handbook/only-healthy-constraints/~g" {} +
find . -type f -name "*.md" -exec sed -i '' "s~](https://about.gitlab.com/handbook/handbook-usage/~](/handbook/handbook-usage/~g" {} +
find . -type f -name "*.md" -exec sed -i '' "s~](https://about.gitlab.com/handbook/values/~](/handbook/values/~g" {} +
find . -type f -name "*.md" -exec sed -i '' "s~](https://about.gitlab.com/handbook/tax/~](/handbook/tax/~g" {} +
find . -type f -name "*.md" -exec sed -i '' "s~](https://about.gitlab.com/handbook/internal-audit/~](/handbook/internal-audit/~g" {} +
find . -type f -name "*.md" -exec sed -i '' "s~](https://about.gitlab.com/handbook/about/~](/handbook/about/~g" {} +
find . -type f -name "*.md" -exec sed -i '' "s~](https://about.gitlab.com/handbook/content-websites/~](/handbook/content-websites/~g" {} +
find . -type f -name "*.md" -exec sed -i '' "s~](https://about.gitlab.com/handbook/product/~](/handbook/product/~g" {} +
find . -type f -name "*.md" -exec sed -i '' "s~](https://about.gitlab.com/handbook/ceo/~](/handbook/ceo/~g" {} +
find . -type f -name "*.md" -exec sed -i '' "s~](https://about.gitlab.com/handbook/product-development-budgeting/~](/handbook/product-development-budgeting/~g" {} +
find . -type f -name "*.md" -exec sed -i '' "s~](https://about.gitlab.com/handbook/eba/~](/handbook/eba/~g" {} +
find . -type f -name "*.md" -exec sed -i '' "s~](https://about.gitlab.com/handbook/business-technology/~](/handbook/business-technology/~g" {} +
find . -type f -name "*.md" -exec sed -i '' "s~](https://about.gitlab.com/handbook/support/~](/handbook/support/~g" {} +
find . -type f -name "*.md" -exec sed -i '' "s~](https://about.gitlab.com/handbook/on-call/~](/handbook/on-call/~g" {} +
find . -type f -name "*.md" -exec sed -i '' "s~](https://about.gitlab.com/handbook/labor-and-employment-notices/~](/handbook/labor-and-employment-notices/~g" {} +
find . -type f -name "*.md" -exec sed -i '' "s~](https://about.gitlab.com/handbook/people-group/~](/handbook/people-group/~g" {} +
find . -type f -name "*.md" -exec sed -i '' "s~](https://about.gitlab.com/handbook/teamops/~](/handbook/teamops/~g" {} +
find . -type f -name "*.md" -exec sed -i '' "s~](https://about.gitlab.com/handbook/incentives/~](/handbook/incentives/~g" {} +
find . -type f -name "*.md" -exec sed -i '' "s~](https://about.gitlab.com/handbook/stock-options/~](/handbook/stock-options/~g" {} +
find . -type f -name "*.md" -exec sed -i '' "s~](https://about.gitlab.com/handbook/esg/~](/handbook/esg/~g" {} +
find . -type f -name "*.md" -exec sed -i '' "s~](https://about.gitlab.com/handbook/documentation/~](/handbook/documentation/~g" {} +
find . -type f -name "*.md" -exec sed -i '' "s~](https://about.gitlab.com/handbook/finance/~](/handbook/finance/~g" {} +
find . -type f -name "*.md" -exec sed -i '' "s~](https://about.gitlab.com/handbook/hiring/~](/handbook/hiring/~g" {} +
find . -type f -name "*.md" -exec sed -i '' "s~](https://about.gitlab.com/handbook/paid-time-off/~](/handbook/paid-time-off/~g" {} +
find . -type f -name "*.md" -exec sed -i '' "s~](https://about.gitlab.com/handbook/being-a-public-company/~](/handbook/being-a-public-company/~g" {} +
find . -type f -name "*.md" -exec sed -i '' "s~](https://about.gitlab.com/handbook/communication/~](/handbook/communication/~g" {} +
find . -type f -name "*.md" -exec sed -i '' "s~](https://about.gitlab.com/handbook/inspired-by-gitlab/~](/handbook/inspired-by-gitlab/~g" {} +
find . -type f -name "*.md" -exec sed -i '' "s~](https://about.gitlab.com/handbook/faq-gitlab-licensing-technology-to-independent-chinese-company/~](/handbook/faq-gitlab-licensing-technology-to-independent-chinese-company/~g" {} +
find . -type f -name "*.md" -exec sed -i '' "s~](https://about.gitlab.com/handbook/leadership/~](/handbook/leadership/~g" {} +
find . -type f -name "*.md" -exec sed -i '' "s~](https://about.gitlab.com/handbook/competencies/~](/handbook/competencies/~g" {} +
find . -type f -name "*.md" -exec sed -i '' "s~](https://about.gitlab.com/handbook/people-policies/~](/handbook/people-policies/~g" {} +
find . -type f -name "*.md" -exec sed -i '' "s~](https://about.gitlab.com/handbook/on-call/~](/handbook/on-call/~g" {} +
find . -type f -name "*.md" -exec sed -i '' "s~](https://about.gitlab.com/handbook/travel/~](/handbook/travel/~g" {} +
find . -type f -name "*.md" -exec sed -i '' "s~](https://about.gitlab.com/handbook/_index/~](/handbook/_index/~g" {} +
find . -type f -name "*.md" -exec sed -i '' "s~](https://about.gitlab.com/handbook/product-development-flow/~](/handbook/product-development-flow/~g" {} +
find . -type f -name "*.md" -exec sed -i '' "s~](https://about.gitlab.com/handbook/company/~](/handbook/company/~g" {} +
find . -type f -name "*.md" -exec sed -i '' "s~](https://about.gitlab.com/handbook/using-gitlab-at-gitlab/~](/handbook/using-gitlab-at-gitlab/~g" {} +
find . -type f -name "*.md" -exec sed -i '' "s~](https://about.gitlab.com/handbook/esg/~](/handbook/esg/~g" {} +
find . -type f -name "*.md" -exec sed -i '' "s~](https://about.gitlab.com/handbook/marketing/~](/handbook/marketing/~g" {} +
find . -type f -name "*.md" -exec sed -i '' "s~](https://about.gitlab.com/handbook/use-cases/~](/handbook/use-cases/~g" {} +
find . -type f -name "*.md" -exec sed -i '' "s~](https://about.gitlab.com/handbook/acquisitions/~](/handbook/acquisitions/~g" {} +
find . -type f -name "*.md" -exec sed -i '' "s~](https://about.gitlab.com/handbook/alliances/~](/handbook/alliances/~g" {} +
find . -type f -name "*.md" -exec sed -i '' "s~](https://about.gitlab.com/handbook/legal/~](/handbook/legal/~g" {} +
find . -type f -name "*.md" -exec sed -i '' "s~](https://about.gitlab.com/company/~](/handbook/company/~g" {} +
find . -type f -name "*.md" -exec sed -i '' "s~](https://about.gitlab.com/job-families~](/job-families~g" {} +
find . -type f -name "*.md" -exec sed -i '' "s~](https://about.gitlab.com/handbook/customer-success/~](/handbook/customer-success/~g" {} +
find . -type f -name "*.md" -exec sed -i '' "s~](https://about.gitlab.com/handbook/resellers/~](/handbook/resellers/~g" {} +
find . -type f -name "*.md" -exec sed -i '' "s~](https://about.gitlab.com/handbook/sales/~](/handbook/sales/~g" {} +
find . -type f -name "*.md" -exec sed -i '' "s~](https://about.gitlab.com/handbook/engineering/~](/handbook/engineering/~g" {} +
find . -type f -name "*.md" -exec sed -i '' "s~](https://about.gitlab.com/handbook/create-directory/~](/handbook/create-directory/~g" {} +
find . -type f -name "*.md" -exec sed -i '' "s~](https://about.gitlab.com/handbook/developer-onboarding/~](/handbook/developer-onboarding/~g" {} +
find . -type f -name "*.md" -exec sed -i '' "s~](https://about.gitlab.com/handbook/dmca/~](/handbook/dmca/~g" {} +
find . -type f -name "*.md" -exec sed -i '' "s~](https://about.gitlab.com/handbook/entity-specific-employment-policies/~](/handbook/entity-specific-employment-policies/~g" {} +
find . -type f -name "*.md" -exec sed -i '' "s~](https://about.gitlab.com/handbook/gdpr/~](/handbook/gdpr/~g" {} +
find . -type f -name "*.md" -exec sed -i '' "s~](https://about.gitlab.com/handbook/git-page-update/~](/handbook/git-page-update/~g" {} +
find . -type f -name "*.md" -exec sed -i '' "s~](https://about.gitlab.com/handbook/glossary/~](/handbook/glossary/~g" {} +
find . -type f -name "*.md" -exec sed -i '' "s~](https://about.gitlab.com/handbook/integrator/~](/handbook/integrator/~g" {} +
find . -type f -name "*.md" -exec sed -i '' "s~](https://about.gitlab.com/handbook/journeys/~](/handbook/journeys/~g" {} +
find . -type f -name "*.md" -exec sed -i '' "s~](https://about.gitlab.com/handbook/markdown-guide/~](/handbook/markdown-guide/~g" {} +
find . -type f -name "*.md" -exec sed -i '' "s~](https://about.gitlab.com/handbook/organizational-change-management/~](/handbook/organizational-change-management/~g" {} +
find . -type f -name "*.md" -exec sed -i '' "s~](https://about.gitlab.com/handbook/positioning-faq/~](/handbook/positioning-faq/~g" {} +
find . -type f -name "*.md" -exec sed -i '' "s~](https://about.gitlab.com/handbook/practical-handbook-edits/~](/handbook/practical-handbook-edits/~g" {} +
find . -type f -name "*.md" -exec sed -i '' "s~](https://about.gitlab.com/handbook/questions/~](/handbook/questions/~g" {} +
find . -type f -name "*.md" -exec sed -i '' "s~](https://about.gitlab.com/handbook/style-guide/~](/handbook/style-guide/~g" {} +

# Migrated Sections using fully qualified url on handbook
echo "Migrating links for the new handbook  which been migrated to the new handbook..."
find . -type f -name "*.md" -exec sed -i '' "s~](https://handbook.gitlab.com/handbook/anti-harassment/~](/handbook/anti-harassment/~g" {} +
find . -type f -name "*.md" -exec sed -i '' "s~](https://handbook.gitlab.com/handbook/group-conversations/~](/handbook/group-conversations/~g" {} +
find . -type f -name "*.md" -exec sed -i '' "s~](https://handbook.gitlab.com/handbook/infrastructure-standards/~](/handbook/infrastructure-standards/~g" {} +
find . -type f -name "*.md" -exec sed -i '' "s~](https://handbook.gitlab.com/handbook/tools-and-tips/~](/handbook/tools-and-tips/~g" {} +
find . -type f -name "*.md" -exec sed -i '' "s~](https://handbook.gitlab.com/handbook/total-rewards/~](/handbook/total-rewards/~g" {} +
find . -type f -name "*.md" -exec sed -i '' "s~](https://handbook.gitlab.com/handbook/e-group-weekly/~](/handbook/e-group-weekly/~g" {} +
find . -type f -name "*.md" -exec sed -i '' "s~](https://handbook.gitlab.com/handbook/security/~](/handbook/security/~g" {} +
find . -type f -name "*.md" -exec sed -i '' "s~](https://handbook.gitlab.com/handbook/key-review/~](/handbook/key-review/~g" {} +
find . -type f -name "*.md" -exec sed -i '' "s~](https://handbook.gitlab.com/handbook/entity/~](/handbook/entity/~g" {} +
find . -type f -name "*.md" -exec sed -i '' "s~](https://handbook.gitlab.com/handbook/board-meetings/~](/handbook/board-meetings/~g" {} +
find . -type f -name "*.md" -exec sed -i '' "s~](https://handbook.gitlab.com/handbook/it/~](/handbook/it/~g" {} +
find . -type f -name "*.md" -exec sed -i '' "s~](https://handbook.gitlab.com/handbook/spending-company-money/~](/handbook/spending-company-money/~g" {} +
find . -type f -name "*.md" -exec sed -i '' "s~](https://handbook.gitlab.com/handbook/only-healthy-constraints/~](/handbook/only-healthy-constraints/~g" {} +
find . -type f -name "*.md" -exec sed -i '' "s~](https://handbook.gitlab.com/handbook/handbook-usage/~](/handbook/handbook-usage/~g" {} +
find . -type f -name "*.md" -exec sed -i '' "s~](https://handbook.gitlab.com/handbook/values/~](/handbook/values/~g" {} +
find . -type f -name "*.md" -exec sed -i '' "s~](https://handbook.gitlab.com/handbook/tax/~](/handbook/tax/~g" {} +
find . -type f -name "*.md" -exec sed -i '' "s~](https://handbook.gitlab.com/handbook/internal-audit/~](/handbook/internal-audit/~g" {} +
find . -type f -name "*.md" -exec sed -i '' "s~](https://handbook.gitlab.com/handbook/about/~](/handbook/about/~g" {} +
find . -type f -name "*.md" -exec sed -i '' "s~](https://handbook.gitlab.com/handbook/content-websites/~](/handbook/content-websites/~g" {} +
find . -type f -name "*.md" -exec sed -i '' "s~](https://handbook.gitlab.com/handbook/product/~](/handbook/product/~g" {} +
find . -type f -name "*.md" -exec sed -i '' "s~](https://handbook.gitlab.com/handbook/ceo/~](/handbook/ceo/~g" {} +
find . -type f -name "*.md" -exec sed -i '' "s~](https://handbook.gitlab.com/handbook/product-development-budgeting/~](/handbook/product-development-budgeting/~g" {} +
find . -type f -name "*.md" -exec sed -i '' "s~](https://handbook.gitlab.com/handbook/eba/~](/handbook/eba/~g" {} +
find . -type f -name "*.md" -exec sed -i '' "s~](https://handbook.gitlab.com/handbook/business-technology/~](/handbook/business-technology/~g" {} +
find . -type f -name "*.md" -exec sed -i '' "s~](https://handbook.gitlab.com/handbook/support/~](/handbook/support/~g" {} +
find . -type f -name "*.md" -exec sed -i '' "s~](https://handbook.gitlab.com/handbook/on-call/~](/handbook/on-call/~g" {} +
find . -type f -name "*.md" -exec sed -i '' "s~](https://handbook.gitlab.com/handbook/labor-and-employment-notices/~](/handbook/labor-and-employment-notices/~g" {} +
find . -type f -name "*.md" -exec sed -i '' "s~](https://handbook.gitlab.com/handbook/people-group/~](/handbook/people-group/~g" {} +
find . -type f -name "*.md" -exec sed -i '' "s~](https://handbook.gitlab.com/handbook/teamops/~](/handbook/teamops/~g" {} +
find . -type f -name "*.md" -exec sed -i '' "s~](https://handbook.gitlab.com/handbook/incentives/~](/handbook/incentives/~g" {} +
find . -type f -name "*.md" -exec sed -i '' "s~](https://handbook.gitlab.com/handbook/stock-options/~](/handbook/stock-options/~g" {} +
find . -type f -name "*.md" -exec sed -i '' "s~](https://handbook.gitlab.com/handbook/esg/~](/handbook/esg/~g" {} +
find . -type f -name "*.md" -exec sed -i '' "s~](https://handbook.gitlab.com/handbook/documentation/~](/handbook/documentation/~g" {} +
find . -type f -name "*.md" -exec sed -i '' "s~](https://handbook.gitlab.com/handbook/finance/~](/handbook/finance/~g" {} +
find . -type f -name "*.md" -exec sed -i '' "s~](https://handbook.gitlab.com/handbook/hiring/~](/handbook/hiring/~g" {} +
find . -type f -name "*.md" -exec sed -i '' "s~](https://handbook.gitlab.com/handbook/paid-time-off/~](/handbook/paid-time-off/~g" {} +
find . -type f -name "*.md" -exec sed -i '' "s~](https://handbook.gitlab.com/handbook/being-a-public-company/~](/handbook/being-a-public-company/~g" {} +
find . -type f -name "*.md" -exec sed -i '' "s~](https://handbook.gitlab.com/handbook/communication/~](/handbook/communication/~g" {} +
find . -type f -name "*.md" -exec sed -i '' "s~](https://handbook.gitlab.com/handbook/inspired-by-gitlab/~](/handbook/inspired-by-gitlab/~g" {} +
find . -type f -name "*.md" -exec sed -i '' "s~](https://handbook.gitlab.com/handbook/faq-gitlab-licensing-technology-to-independent-chinese-company/~](/handbook/faq-gitlab-licensing-technology-to-independent-chinese-company/~g" {} +
find . -type f -name "*.md" -exec sed -i '' "s~](https://handbook.gitlab.com/handbook/leadership/~](/handbook/leadership/~g" {} +
find . -type f -name "*.md" -exec sed -i '' "s~](https://handbook.gitlab.com/handbook/competencies/~](/handbook/competencies/~g" {} +
find . -type f -name "*.md" -exec sed -i '' "s~](https://handbook.gitlab.com/handbook/people-policies/~](/handbook/people-policies/~g" {} +
find . -type f -name "*.md" -exec sed -i '' "s~](https://handbook.gitlab.com/handbook/on-call/~](/handbook/on-call/~g" {} +
find . -type f -name "*.md" -exec sed -i '' "s~](https://handbook.gitlab.com/handbook/travel/~](/handbook/travel/~g" {} +
find . -type f -name "*.md" -exec sed -i '' "s~](https://handbook.gitlab.com/handbook/_index/~](/handbook/_index/~g" {} +
find . -type f -name "*.md" -exec sed -i '' "s~](https://handbook.gitlab.com/handbook/product-development-flow/~](/handbook/product-development-flow/~g" {} +
find . -type f -name "*.md" -exec sed -i '' "s~](https://handbook.gitlab.com/handbook/company/~](/handbook/company/~g" {} +
find . -type f -name "*.md" -exec sed -i '' "s~](https://handbook.gitlab.com/handbook/using-gitlab-at-gitlab/~](/handbook/using-gitlab-at-gitlab/~g" {} +
find . -type f -name "*.md" -exec sed -i '' "s~](https://handbook.gitlab.com/handbook/esg/~](/handbook/esg/~g" {} +
find . -type f -name "*.md" -exec sed -i '' "s~](https://handbook.gitlab.com/handbook/marketing/~](/handbook/marketing/~g" {} +
find . -type f -name "*.md" -exec sed -i '' "s~](https://handbook.gitlab.com/handbook/use-cases/~](/handbook/use-cases/~g" {} +
find . -type f -name "*.md" -exec sed -i '' "s~](https://handbook.gitlab.com/handbook/acquisitions/~](/handbook/acquisitions/~g" {} +
find . -type f -name "*.md" -exec sed -i '' "s~](https://handbook.gitlab.com/handbook/alliances/~](/handbook/alliances/~g" {} +
find . -type f -name "*.md" -exec sed -i '' "s~](https://handbook.gitlab.com/handbook/legal/~](/handbook/legal/~g" {} +
find . -type f -name "*.md" -exec sed -i '' "s~](/company/~](/handbook/company/~g" {} +
find . -type f -name "*.md" -exec sed -i '' "s~](https://handbook.gitlab.com/job-families~](/job-families~g" {} +
find . -type f -name "*.md" -exec sed -i '' "s~](https://handbook.gitlab.com/handbook/customer-success/~](/handbook/customer-success/~g" {} +
find . -type f -name "*.md" -exec sed -i '' "s~](https://handbook.gitlab.com/handbook/resellers/~](/handbook/resellers/~g" {} +
find . -type f -name "*.md" -exec sed -i '' "s~](https://handbook.gitlab.com/handbook/sales/~](/handbook/sales/~g" {} +
find . -type f -name "*.md" -exec sed -i '' "s~](https://handbook.gitlab.com/handbook/engineering/~](/handbook/engineering/~g" {} +
find . -type f -name "*.md" -exec sed -i '' "s~](https://handbook.gitlab.com/handbook/create-directory/~](/handbook/create-directory/~g" {} +
find . -type f -name "*.md" -exec sed -i '' "s~](https://handbook.gitlab.com/handbook/developer-onboarding/~](/handbook/developer-onboarding/~g" {} +
find . -type f -name "*.md" -exec sed -i '' "s~](https://handbook.gitlab.com/handbook/dmca/~](/handbook/dmca/~g" {} +
find . -type f -name "*.md" -exec sed -i '' "s~](https://handbook.gitlab.com/handbook/entity-specific-employment-policies/~](/handbook/entity-specific-employment-policies/~g" {} +
find . -type f -name "*.md" -exec sed -i '' "s~](https://handbook.gitlab.com/handbook/gdpr/~](/handbook/gdpr/~g" {} +
find . -type f -name "*.md" -exec sed -i '' "s~](https://handbook.gitlab.com/handbook/git-page-update/~](/handbook/git-page-update/~g" {} +
find . -type f -name "*.md" -exec sed -i '' "s~](https://handbook.gitlab.com/handbook/glossary/~](/handbook/glossary/~g" {} +
find . -type f -name "*.md" -exec sed -i '' "s~](https://handbook.gitlab.com/handbook/integrator/~](/handbook/integrator/~g" {} +
find . -type f -name "*.md" -exec sed -i '' "s~](https://handbook.gitlab.com/handbook/journeys/~](/handbook/journeys/~g" {} +
find . -type f -name "*.md" -exec sed -i '' "s~](https://handbook.gitlab.com/handbook/markdown-guide/~](/handbook/markdown-guide/~g" {} +
find . -type f -name "*.md" -exec sed -i '' "s~](https://handbook.gitlab.com/handbook/organizational-change-management/~](/handbook/organizational-change-management/~g" {} +
find . -type f -name "*.md" -exec sed -i '' "s~](https://handbook.gitlab.com/handbook/positioning-faq/~](/handbook/positioning-faq/~g" {} +
find . -type f -name "*.md" -exec sed -i '' "s~](https://handbook.gitlab.com/handbook/practical-handbook-edits/~](/handbook/practical-handbook-edits/~g" {} +
find . -type f -name "*.md" -exec sed -i '' "s~](https://handbook.gitlab.com/handbook/questions/~](/handbook/questions/~g" {} +
find . -type f -name "*.md" -exec sed -i '' "s~](https://handbook.gitlab.com/handbook/style-guide/~](/handbook/style-guide/~g" {} +

# Sections which won't be migrated
echo "Fixing links for sections which won't be migrated..."
find . -type f -name "*.md" -exec sed -i '' "s~](/blog/~](https://about.gitlab.com/blog/~g" {} +
find . -type f -name "*.md" -exec sed -i '' "s~](/direction/~](https://about.gitlab.com/direction/~g" {} +

# Clean up the markdown and erb files a bit
echo  "Cleaning up markdown files..."
find . -type f -name "*.md" -exec sed -i '' "s~layout: handbook-page-toc~~g" {} +
find . -type f -name "*.md" -exec sed -i '' "s~layout: markdown_page~~g" {} +
find . -type f -name "*.md" -exec sed -i '' "s~## On this page~~g" {} +
find . -type f -name "*.md" -exec sed -i '' "s~{:.no_toc .hidden-md .hidden-lg}~~g" {} +
find . -type f -name "*.md" -exec sed -i '' "s~- TOC~~g" {} +
find . -type f -name "*.md" -exec sed -i '' "s~{:toc .hidden-md .hidden-lg}~~g" {} +
find . -type f -name "*.md" -exec sed -i '' "s~{:.no_toc}~~g" {} +
find . -type f -name "*.md" -exec sed -i '' "s~{:.toc}~~g" {} +
find . -type f -name "*.md" -exec sed -i '' "s~{::options parse_block_html=\"true\" /}~~g" {} +
find . -type f -name "*.md" -exec sed -i '' "s~{:toc .toc-list-icons .hidden-md .hidden-lg}~~g" {} +
find . -type f -name "*.md" -exec sed -i '' "s~{:no_toc .hidden-md .hidden-lg}~~g" {} +
find . -type f -name "*.md" -exec sed -i '' "s~{: .shadow}~~g" {} +
find . -type f -name "*.md" -exec sed -i '' "s~{:toc}~~g" {} +

echo  "Cleaning up  any erb files..."
find . -type f -name "*.erb" -exec sed -i '' "s~layout: handbook-page-toc~~g" {} +
find . -type f -name "*.erb" -exec sed -i '' "s~layout: markdown_page~~g" {} +
find . -type f -name "*.erb" -exec sed -i '' "s~## On this page~~g" {} +
find . -type f -name "*.erb" -exec sed -i '' "s~{:.no_toc .hidden-md .hidden-lg}~~g" {} +
find . -type f -name "*.erb" -exec sed -i '' "s~- TOC~~g" {} +
find . -type f -name "*.erb" -exec sed -i '' "s~{:toc .hidden-md .hidden-lg}~~g" {} +
find . -type f -name "*.erb" -exec sed -i '' "s~{:.no_toc}~~g" {} +
find . -type f -name "*.erb" -exec sed -i '' "s~{:.toc}~~g" {} +
find . -type f -name "*.erb" -exec sed -i '' "s~{::options parse_block_html=\"true\" /}~~g" {} +
find . -type f -name "*.erb" -exec sed -i '' "s~{:toc .toc-list-icons .hidden-md .hidden-lg}~~g" {} +
find . -type f -name "*.erb" -exec sed -i '' "s~{:no_toc .hidden-md .hidden-lg}~~g" {} +
find . -type f -name "*.erb" -exec sed -i '' "s~{: .shadow}~~g" {} +
find . -type f -name "*.md" -exec sed -i '' "s~{:toc}~~g" {} +
