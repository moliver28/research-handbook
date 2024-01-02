---

title: "CI Catalog"
description: "CI Catalog - Weekly Project Plan - Pipeline Authoring Group"
---

{{% alert title="Note" color="danger" %}}
The following page may contain information related to upcoming products, features and functionality. It is important to note that the information presented is for informational purposes only, so please do not rely on the information for purchasing or planning purposes. Just like with all projects, the items mentioned on the page are subject to change or delay, and the development, release, and timing of any products, features or functionality remain at the sole discretion of GitLab Inc.
{{% /alert %}}

## CI Catalog - Weekly Project Plan

CI Catalog GA Epic: [https://gitlab.com/groups/gitlab-org/-/epics/12153](https://gitlab.com/groups/gitlab-org/-/epics/12153)

### Important Upcoming Tentative Dates

| Milestone | Dates | Deliverable |
|---------- | ----- | ----------- |
|  ~17.1      | 2024-05-11 to 2024-06-14 | CI Catalog GA |

{{< sisense dashboard="1174055" >}}

### Milestone 16.8 (December 16, 2023 - January 12, 2024)

#### Goals:
- Complete initial template to component migration [list](https://gitlab.com/gitlab-org/gitlab/-/issues/432540#list).
- Improve UI in the Catalog details page [[1](https://gitlab.com/gitlab-org/gitlab/-/issues/421922), [2](https://gitlab.com/gitlab-org/gitlab/-/issues/431899)]
- Implement [Your resource](https://gitlab.com/gitlab-org/gitlab/-/issues/433013) tab in the index page 
- Add [components](https://gitlab.com/gitlab-org/gitlab/-/issues/424967) tab to the catalog details page 
- Move inputs to GA ready by completing [text interpolation for arrays and !reference](https://gitlab.com/gitlab-org/gitlab/-/issues/433002).

#### Updates:

[Create reusable components for the CI Catalog](https://gitlab.com/groups/gitlab-org/-/epics/12066)

- 70% complete, Needs Attention, ETA: `16.8`
- Status:
  - January 2024 weekly community competition strategy meeting took place on 2023-12-19.
  - `gitlab.com/components` has been claimed now.
  - [Build](https://gitlab.com/gitlab-org/gitlab/-/issues/433266) is complete with README to be created shortly.
  - Progress % is based on the [Components scope for the Beta release of CI Catalog](https://gitlab.com/groups/gitlab-org/-/epics/12066#note_1666060424)
- Work in Progress:
  - [Migrate GitLab-maintained templates to components](https://gitlab.com/gitlab-org/gitlab/-/issues/432540#list)
  - [Creation of component helpers for future contributions to CI Components](https://gitlab.com/gitlab-org/gitlab/-/issues/430818)
  - Alignment on what is needed for [Beta of the Global Catalog](https://gitlab.com/groups/gitlab-org/-/epics/12066#note_1666060424).
    The team agrees that the following will be tackled post-Beta (though discussions are already underway):
    - [How to maintain/review contributions and manage group ownership of GitLab maintained components](https://gitlab.com/gitlab-org/gitlab/-/issues/432768)
    - [How to designate GitLab “verified” / “official” components](https://gitlab.com/gitlab-org/gitlab/-/issues/432535)
  - [Determine](https://gitlab.com/gitlab-org/gitlab/-/issues/432281#goals) which team members will be reviewing the MRs for newly added components.
    - As of 2023-12-22, discussions [continue](https://gitlab.com/gitlab-org/gitlab/-/issues/432540#note_1678603735 ) with internal teams for popular GitLab-maintained templates for review and testing.
- Risks/Blockers:
  - Getting other teams involved in testing of template to component migration list and components ownership.  Discussion are ongoing regarding migration approach (Example can be found [here](https://gitlab.com/gitlab-org/gitlab/-/issues/432540#note_1705759840)) for ECS and EC2 templates.

### Milestone 16.9 (January 13, 2024 - February 9, 2024)

#### Goals:

### Milestone 16.10 (February 10, 2024 - March 8, 2024)

#### Goals:

### Milestone 16.11 (March 9, 2024 - April 12, 2024)

#### Goals:

### Milestone 17.0 (April 13, 2024 - May 10, 2024)

### Milestone 17.1 (May 11, 2024 - June 14, 2024)

#### Goals:
- [ ] **CI Catalog GA**

### Milestone 17.5 (September 14, 2024 - October 11, 2024)

#### Goals:

### Archive

### November to December (Milestone 16.7)

[CI Catalog - Pages & Navigation](https://gitlab.com/groups/gitlab-org/-/epics/11841)

- 100% complete, Complete, Delivered in `16.7`
- Status:  As of 2023-12-08, last [MR](https://gitlab.com/gitlab-org/gitlab/-/merge_requests/135403) is merged to make Catalog available in `explore` navigation permanently.

[CI Catalog - Search & Filter](https://gitlab.com/groups/gitlab-org/-/epics/10918)

- 100% complete, Complete, Delivered in `16.7`
- Status:  All Beta work is in production.
- Risks/Blockers: Beta work complete.

[CI Catalog - Release Process refinements](https://gitlab.com/groups/gitlab-org/-/epics/11842)

- 100% complete, Complete, Delivered in `16.7`
- Status:  On 2023-12-01, the toggle back and forth is complete is now in production to complete all Beta work.
- Risks/Blockers: Beta work complete.

### October to November (Milestone 16.6)

- CI Catalog - Pages & Navigation
  - [x] [Move shared components to Free Tier](https://gitlab.com/gitlab-org/gitlab/-/issues/428068)
  - [x] [Add route and nav for Global CI/CD Catalog](https://gitlab.com/gitlab-org/gitlab/-/issues/427938)
  - [x] [Coordinate with Foundations on adding Global catalog to the Explore navigation](https://gitlab.com/gitlab-org/gitlab/-/issues/428145#note_1617272549)
  - [x] [Make the README tab the default view for component](https://gitlab.com/gitlab-org/gitlab/-/issues/428936)
  - [x] [Add an indicator to the catalog resource project](https://gitlab.com/gitlab-org/gitlab/-/issues/394818)
  - [x] [Prepare Ci::Catalog::Listing for global CI Catalog](https://gitlab.com/gitlab-org/gitlab/-/issues/428444)
  - [x] [Move GraphQL Catalog code to FOSS](https://gitlab.com/gitlab-org/gitlab/-/issues/427927)
  - [x] [Remove fork count from Catalog details page](https://gitlab.com/gitlab-org/gitlab/-/issues/428064)
  - [x] [Add a copy-to-clipboard button in the code snippet in the component tab](https://gitlab.com/gitlab-org/gitlab/-/issues/426755)
  - [x] [Empty state when there is no metadata for the components details](https://gitlab.com/gitlab-org/gitlab/-/issues/429273)
  - [x] [Add global Catalog arguments to GraphQL](https://gitlab.com/gitlab-org/gitlab/-/issues/429103)
  - [ ] [Add Vue application for Global page](https://gitlab.com/gitlab-org/gitlab/-/issues/427939) `~workflow::in review`
  - [ ] [Make ciCatalogResource accept a fullpath argument](https://gitlab.com/gitlab-org/gitlab/-/issues/429100) `~workflow::in dev`
  - [ ] [Add components field to ciCatalogResource](https://gitlab.com/gitlab-org/gitlab/-/issues/425726) `~workflow::in dev`
  - [ ] [Add the new components tab](https://gitlab.com/gitlab-org/gitlab/-/issues/424967)
  - [ ] [FF rollout ci_catalog_components_tab](https://gitlab.com/gitlab-org/gitlab/-/issues/426443)
  - [ ] [Add namespace to scope for Catalog resources query](https://gitlab.com/gitlab-org/gitlab/-/issues/429382)
  - [ ] [Remove projectPath argument from ciCatalogResources](https://gitlab.com/gitlab-org/gitlab/-/issues/429636)
- CI Catalog - Search & Filter
  - [x] [Add GraphQL search filter and sort by created_at to ciCatalogResources](https://gitlab.com/gitlab-org/gitlab/-/issues/429117)
  - [x] [Create database indices for CI Catalog](https://gitlab.com/gitlab-org/gitlab/-/issues/428443)
  - [x] [Denormalize name and description in Ci::Catalog::Listing](https://gitlab.com/gitlab-org/gitlab/-/issues/427928)
  - [ ] [Add Search bar](https://gitlab.com/gitlab-org/gitlab/-/issues/393214) `~workflow::in review`
  - [ ] [Update catalog_resource.latest_released_at when version is created/deleted](https://gitlab.com/gitlab-org/gitlab/-/issues/427791)
- CI Catalog - Release Process refinements
  - [x] [Add mutation to mark a catalog resource as draft](https://gitlab.com/gitlab-org/gitlab/-/issues/428439)
  - [x] [Add path column where to persist full path to component YAML file](https://gitlab.com/gitlab-org/gitlab/-/issues/429256)
  - [x] [Update the docs to reflect the recommended method for the release](https://gitlab.com/gitlab-org/gitlab/-/issues/429271)
  - [x] [Fix regexp to scan for component files](https://gitlab.com/gitlab-org/gitlab/-/issues/430344)
  - [x] [Scanning components on release and collect metadata](https://gitlab.com/gitlab-org/gitlab/-/issues/415413)
  - [ ] [Update the releases logic in catalog resources to use the Version association](https://gitlab.com/gitlab-org/gitlab/-/issues/429707) `~workflow::in review`
  - [ ] [Create a migration to update state and add metadata to existing catalog resources](https://gitlab.com/gitlab-org/gitlab/-/issues/416292)
- Completion of [Inputs Enhancements]
  - [x] [Support options: with inputs defining default: value](https://gitlab.com/gitlab-org/gitlab/-/issues/393401)

### Week of October 2, 2023

#### Goals:
- [Frontend CI Catalog Details page work](https://gitlab.com/gitlab-org/gitlab/-/issues/?sort=popularity&state=opened&label_name%5B%5D=group%3A%3Apipeline%20authoring&label_name%5B%5D=Category%3AComponent%20Catalog&label_name%5B%5D=frontend&milestone_title=16.5&or%5Blabel_name%5D%5B%5D=workflow%3A%3Ain%20dev&or%5Blabel_name%5D%5B%5D=workflow%3A%3Ain%20review&first_page_size=20)
- [Scanning components on release](https://gitlab.com/gitlab-org/gitlab/-/issues/415413) and [adding release sort](https://gitlab.com/gitlab-org/gitlab/-/issues/408382)

### Week of September 25, 2023 (Milestone 16.5)

#### Team Capacity:
- 3 Backend Engineers (Leaminn, Avielle, Laura)
- 1 Frontend Engineer (Frédéric)

#### Goals:
- [x] [https://gitlab.com/gitlab-org/gitlab/-/issues/387632](https://gitlab.com/gitlab-org/gitlab/-/issues/387632) to add support for variables in`inputs:` syntax so when `expand_vars` is used, error is raised due to security reasons. ~workflow::in review
- [ ] [https://gitlab.com/gitlab-org/gitlab/-/issues/408382](https://gitlab.com/gitlab-org/gitlab/-/issues/408382) to add `released` sort to CI Catalog.
- [ ] [https://gitlab.com/gitlab-org/gitlab/-/issues/411438](https://gitlab.com/gitlab-org/gitlab/-/issues/411438) to support CI interpolation with arrays.
- [ ] [https://gitlab.com/gitlab-org/gitlab/-/issues/415413](https://gitlab.com/gitlab-org/gitlab/-/issues/415413) to scan a catalog resource for components on release creation.
- [ ] [https://gitlab.com/gitlab-org/gitlab/-/issues/424962](https://gitlab.com/gitlab-org/gitlab/-/issues/424962) to put the current right side column in the Catalog header. - ~workflow::in review
- [ ] [https://gitlab.com/gitlab-org/gitlab/-/issues/424966](https://gitlab.com/gitlab-org/gitlab/-/issues/424966) to add the README tab with the current content.

### Week of September 18, 2023 (first week of Milestone 16.5)

#### Team Capacity:
- 4 Backend Engineers (Avielle, Laura, Kasia, Leaminn)
- 1 Frontend Engineer (Fred)

#### Goals:
- [ ] [https://gitlab.com/gitlab-org/gitlab/-/issues/387632](https://gitlab.com/gitlab-org/gitlab/-/issues/387632) to add support for variables in`inputs:` syntax so when `expand_vars` is used, error is raised due to security reasons. ~workflow::in review
- [ ] [https://gitlab.com/gitlab-org/gitlab/-/issues/415413](https://gitlab.com/gitlab-org/gitlab/-/issues/415413) to scan a catalog resource for components on release creation.
- [ ] [https://gitlab.com/gitlab-org/gitlab/-/issues/408382](https://gitlab.com/gitlab-org/gitlab/-/issues/408382) to add `released` sort to CI Catalog.
- [ ] [https://gitlab.com/gitlab-org/gitlab/-/issues/424962](https://gitlab.com/gitlab-org/gitlab/-/issues/424962) to put the current right side column in the Catalog header - ~workflow::in review
- [ ] [https://gitlab.com/gitlab-org/gitlab/-/issues/415637](https://gitlab.com/gitlab-org/gitlab/-/issues/415637) to add an optional description field under input - handled by Community Contributor

### Week of September 11, 2023 (last week of Milestone 16.4)

#### Team Capacity:
- 2 Backend Engineers
- %16.4 `security` priorities are nearly complete so more BE focus is shifting in later %16.4

#### Goals:
- [ ] [https://gitlab.com/gitlab-org/gitlab/-/issues/415413](https://gitlab.com/gitlab-org/gitlab/-/issues/415413) to scan a catalog resource for components on release creation.
- [ ] Spike follow-up to [https://gitlab.com/gitlab-org/gitlab/-/issues/411438](https://gitlab.com/gitlab-org/gitlab/-/issues/411438)

### Week of September 4, 2023 (Milestone 16.4)

#### Team Capacity:
- .5 Backend Engineers
    - Due to %16.4 `security` priorities, the weekly goals list will be shorter due to our focus there.
    - Working on [https://gitlab.com/gitlab-org/gitlab/-/issues/423456](https://gitlab.com/gitlab-org/gitlab/-/issues/423456) for feature addition for `needs: parallel: matrix` enhancements.

#### Goals:
- [x] [https://gitlab.com/gitlab-org/gitlab/-/issues/418996](https://gitlab.com/gitlab-org/gitlab/-/issues/418996) for marking catalog resource as draft, if final version removed.

### Week of August 28, 2023 (Milestone 16.4)

#### Team Capacity:
- 1.5 Backend Engineers
    - Due to %16.4 `security` priorities, the weekly goals list will be shorter due to our focus there.
    - Working on [https://gitlab.com/gitlab-org/gitlab/-/issues/423456](https://gitlab.com/gitlab-org/gitlab/-/issues/423456) for feature addition for `needs: parallel: matrix` enhancements.

#### Goals:
- [x] [https://gitlab.com/gitlab-org/gitlab/-/issues/411394](https://gitlab.com/gitlab-org/gitlab/-/issues/411394) for adding instrumentation for number of components are used.
- [ ] [https://gitlab.com/gitlab-org/gitlab/-/issues/418996](https://gitlab.com/gitlab-org/gitlab/-/issues/418996) for marking catalog resource as draft, if final version removed.

### Week of August 21, 2023 (Milestone 16.4 begins)

#### Team Capacity:
- 3 Backend Engineers

#### Goals:
- [ ] [https://gitlab.com/gitlab-org/gitlab/-/issues/411394](https://gitlab.com/gitlab-org/gitlab/-/issues/411394) for adding instrumentation for number of components are used.
- [x] [https://gitlab.com/gitlab-org/gitlab/-/issues/415853](https://gitlab.com/gitlab-org/gitlab/-/issues/415853) for updating CI component fetching for updated directory structure - to be merged this week.
- [ ] [https://gitlab.com/gitlab-org/gitlab/-/issues/409846](https://gitlab.com/gitlab-org/gitlab/-/issues/409846) work continues for creating an SSOT for CI config loading
- [ ] [https://gitlab.com/gitlab-org/gitlab/-/issues/411438](https://gitlab.com/gitlab-org/gitlab/-/issues/411438) CI interpolation with arrays spike work continues.

### Week of August 14, 2023 (Milestone 16.3 ends)

#### Team Capacity:
- 3 Backend Engineers
- 2 Frontend Engineers

#### Goals:
- [x] [https://gitlab.com/gitlab-org/gitlab/-/issues/409041](https://gitlab.com/gitlab-org/gitlab/-/issues/409041) for showing pipeline status for latest version of catalog resource.
- [x] [https://gitlab.com/gitlab-org/gitlab/-/issues/415287](https://gitlab.com/gitlab-org/gitlab/-/issues/415287) for creating catalog_resource_components table to unblock other issues.
- [ ] [https://gitlab.com/gitlab-org/gitlab/-/issues/412948](https://gitlab.com/gitlab-org/gitlab/-/issues/412948) for updating permissions for namespace catalog & update resolver
- [ ] [https://gitlab.com/gitlab-org/gitlab/-/issues/409846](https://gitlab.com/gitlab-org/gitlab/-/issues/409846) for complete last [MR](https://gitlab.com/gitlab-org/gitlab/-/issues/409846#implementation-plan) for CI config loading

### Week of August 7, 2023 (Milestone 16.3)

#### Team Capacity:
- 1.5 Backend Engineers
- 2 Frontend Engineers

#### Goals:
- [x] [https://gitlab.com/gitlab-org/gitlab/-/issues/418785](https://gitlab.com/gitlab-org/gitlab/-/issues/418785) for moving CI Catalog to be a premium feature.
- [x] [https://gitlab.com/gitlab-org/gitlab/-/issues/390458](https://gitlab.com/gitlab-org/gitlab/-/issues/390458) for input type validation.
- [ ] [https://gitlab.com/gitlab-org/gitlab/-/issues/409041](https://gitlab.com/gitlab-org/gitlab/-/issues/409041) related to showing pipeline status for latest version of catalog resource.
- [ ] [https://gitlab.com/gitlab-org/gitlab/-/issues/415287](https://gitlab.com/gitlab-org/gitlab/-/issues/415287) for creating catalog_resource_components table to unblock other issues.
- [ ] [https://gitlab.com/gitlab-org/gitlab/-/issues/415853](https://gitlab.com/gitlab-org/gitlab/-/issues/415853) for updating CI component fetching for updated directory structure.
