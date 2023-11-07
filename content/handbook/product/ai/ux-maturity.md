---

title: "UX maturity requirements for AI-assisted features"
description: "When to move an AI-assisted feature from Experiment to Beta, and to Generally Available (GA), from a UX perspective."
---







This page provides clear requirements and an objective process for teams to mature the UX of their AI-assisted features. It helps teams understand when it's OK to move a feature from Experiment to Beta, and from Beta to Generally Available (GA), from a UX perspective.

**For a quick overview, see [Summary](#summary) and [Examples](#examples).**

Indicating feature maturity is a way to set expectations for customers and users about availability, support, and perhaps most importantly, **the quality of features**. On quality, the general [Experiment/Beta/GA docs][experiment-beta-ga-docs] are ambiguous about the **UX maturity** of features. For example, in Beta, what does “UX complete or near completion” mean?

## Summary

The following criteria and requirements focus on the **UX** aspect of the maturity of AI-assisted features. [Other aspects][experiment-beta-ga-docs], like stability or documentation, must also be taken into account to determine the appropriate feature maturity. See [background](#background) to understand why these requirements are specific to AI-assisted features.

To evaluate the UX maturity of AI-assisted features, use three criteria from the [Product Development Flow][prod-dev-flow]:

1. **Validation: Problem validation**: How well do we understand the problem?
1. **Validation: Solution validation**: How usable is the solution?
1. **Build: Improve**: How successful is the solution?

And a fourth criterion related to design standards:

1. **Design standards**: How compliant is the solution with our design standards?

Each [criterion is expanded upon](#criteria-and-requirements) after this summary. Also see [examples](#examples) of how this can work in practice.

| Criteria/Maturity | Experiment | Beta | GA |
|-|-|-|-|
| [Problem validation](#validation-problem-validation) | Can be based only on assumptions (evidence not required). | Mix of evidence and assumptions. | Only evidence or no high-risk assumptions. |
| [Solution validation](#validation-solution-validation) | Not required. | Grade **C**, evaluated in a day to a week with internal users. | Grade **B**, evaluated in a day to a week with external users. |
| [Improve](#build-improve) | Not applicable (no data before launch). | Quality goals set by the team are reached. | Quality goals set by the team are reached. |
| [Design standards](#design-standards) | _Should_ adhere to. | _Should_ adhere to. | **Must** be compliant. |

The minimum requirements to launch an Experiment feature are almost none. That's intentional to balance experimentation and velocity with quality, as Experiments mature. The caveat is that the minimum requirements for Beta/GA are more demanding and teams will need to involve UX if they want to mature their features. So this actually incentivizes teams to involve UX early, so they can mature features quickly and avoid potential reworking costs. In addition, user exposure to Experiment/Beta features are expected to be much lower than GA features, as the former are [behind a setting that is off by default][experiment-beta-ga-docs].

## Background

The [prioritization guidance](https://internal.gitlab.com/handbook/product/ai-strategy/ai-integration-effort/prioritization/) and [FAQ](https://internal.gitlab.com/handbook/product/ai-strategy/ai-integration-effort/faq/) for the AI Integration effort encourage teams to prototype and ship Experiments fast to assess feasibility and potential value. Teams then work to meet the requirements for each feature maturity level, [Experiment, Beta, and GA][experiment-beta-ga-docs].

This way of iterating on features is slightly different from what we normally do. Usually features are shipped straight to GA, with little to no experimentation before releasing them to a wider audience. Part of this is because the [Product Development Flow][prod-dev-flow] does not take into account the maturing of features through Experiment, Beta, and GA.

Because this is a new and slightly different way of working, specific to AI-assisted features, we don't want to apply this to all features and product development without the appropriate diligence. There are certainly conditions in the regular product development that currently don't exist in the AI Integration effort, and that we'd have to consider. Furthermore, the benchmarks, methods, and requirements described here have never been applied together like this and in this context of feature maturity, although they have been and are being used separately across product development. Maybe in the future we will integrate feature maturity in the Product Development Flow, and when that happens we can take inspiration from these requirements.

## Criteria and requirements

### Validation: Problem validation

**How well do we understand the problem?** To answer this, teams reflect on the [questions](#questions-to-ask) below to understand how much of what they are doing is based on assumptions vs evidence:

- **Assumptions** are beliefs that are not supported by evidence. Teams should assess assumptions and classify them into high or low risk:
   - **High-risk** assumptions have a _higher_ probability of being incorrect and can result in significant negative impact.
   - **Low-risk** assumptions have a _lower_ probability of being incorrect and may have less severe consequences.
- **Evidence** is credible information that the team can rely on for their actions, and that helps de-risk assumptions. For examples of evidence and how to acquire it, see the [Validation: Problem Validation phase in the Product Development Flow](/handbook/product-development-flow/#validation-phase-2-problem-validation).

Learn how to do problem validation in the [UX research in the AI space][ai-uxr-handbook] handbook page, including how to identify and understand user needs.

#### Questions to ask

Adapted from [UX themes confidence levels](/handbook/product/ux/product-design/ux-roadmaps/#confidence):

- `Has the problem been validated?`
- `Has the relationship between small job(s) and problem been validated?`

If unfamiliar with small jobs, see their [definition](/handbook/product/ux/jobs-to-be-done/#small-jobs) and the [Jobs to be Done hierarchy](/handbook/product/ux/jobs-to-be-done/#jtbd-hierarchy).

#### Answers

1. **`No`** = Acting on only assumptions (no evidence).
   1. Most of the time we already have some evidence, so acting on only assumptions should be rare.
1. **`Somewhat`** = Acting on a mix of evidence and assumptions.
1. **`Yes`** = Validated with only evidence, or no high-risk assumptions left to validate.

#### Minimum requirements for problem validation

1. **Experiment**: One answer is `No` or both are `No`.
   1. At a minimum, problem validation can be based only on assumptions, evidence is not required.
1. **Beta**: Answers are `Yes` and `Somewhat`, or both are `Somewhat`.
   1. At a minimum, problem validation is based on a mix of evidence and assumptions.
1. **GA**: Both answers are `Yes`.
   1. Problem validation is based only on evidence, or no high-risk assumptions left to validate.

### Validation: Solution validation

**How usable is the solution?** To answer this, teams grade the experience using the [UX Scorecard][ux-scorecards] process, which has two possible approaches. For Beta, the minimum requirement is the _usability testing_ approach, while GA requires _both Scorecard approaches_ for a more robust validation. Validation can happen on a prototype or actual implementation.

- [Usability testing](/handbook/product/ux/ux-scorecards/#option-b-perform-a-formative-evaluation) (a formative evaluation): **Can be done in a day to a week**, depending on the difficulty of setup and participant recruitment. To grade the experience, a Product Designer observes representative users completing a set of tasks.
- [Heuristic evaluation](/handbook/product/ux/ux-scorecards/#option-a-conduct-a-heuristic-evaluation): **Can be done in half a day** by a Product Designer (ideally, the group's DRI). They review and grade the experience against [UX heuristics](/handbook/product/ux/heuristics) (guidelines).

Learn how to do solution validation in the [UX research in the AI space][ai-uxr-handbook] handbook page. It includes how to get feedback before building anything and how to collect more than usability feedback.

#### Minimum requirements for solution validation

1. **Experiment**: Solution validation is not required.
1. **Beta**:
   1. **Method**: UX Scorecard with internal usability testing (see explanation above).
   1. **Participants**: `5` internal users.
   1. **Score**: Average task pass rate is `>80%` and UX Scorecard grade is at least `C` (Average).
1. **GA**:
   1. **Method**: UX Scorecard with usability testing and heuristic evaluation (see explanation above).
   1. **Participants**: `5` external users and `1` expert evaluator (ideally, the group's Product Design DRI).
   1. **Score**: Average task pass rate is `>80%` and UX Scorecard grade is at least `B` (Good/Meets Expectations).

#### Rationale for requirements

<details markdown="1">

We strived to balance velocity with quality, keeping solution validation as lightweight as possible, using the easiest methods for each maturity level. Teams use the existing UX methods and benchmarks that they are familiar with. And as feature maturity increases, the effort and rigor of UX evaluation increases slightly to match the increased quality expectations.

Regarding the _method_, we periodically do [UX Scorecards][ux-scorecards] as part of regular product development, and Product Designers have experience with them.

As for the _participants_ and _score_, those are consistent with the minimum requirements for [Category Maturity Scorecards](/handbook/product/ux/category-maturity/category-maturity-scorecards/) (CMS). In terms of maturity, we mapped a **Beta** feature to a **Viable** category, and a **GA** feature to a **Complete** category. More specifically:

1. **Participants**: Amount and type of users.
   1. **Beta**: 5 _internal_ users are also the minimum to do a [“Viable” CMS][cms-keep-in-mind].
   1. **GA**: 5 _external_ users are also the minimum to do a [“Complete” CMS][cms-keep-in-mind].
1. **Score**: Average pass rate and grade.
   1. **Beta** score maps to a [“Viable” CMS score][cms-scores].
   1. **GA** score maps to [“Complete” CMS score][cms-scores].

However, note that a CMS process is much more rigorous and time-consuming than the UX Scorecard process mentioned above. In the context of AI-assisted features, we intentionally chose UX Scorecards to keep the solution validation as lightweight as possible.

</details>

### Build: Improve

**How successful is the solution?** To answer this, in this context of feature UX maturity, teams should look beyond feature usage as the success metric and try to include [usability](/handbook/product/ux/ux-research/usability-testing/#usability-at-gitlab) signals. High usage doesn't necessarily mean the feature is successful. Usability signals help assess solution success in terms of how _useful, efficient, effective, satisfying, and learnable_ it is.

It's also important to include AI response accuracy in your success metrics. AI-powered features can generate a response or output that is incorrect, irrelevant, or harmful. The risk of an incorrect response depends on the feature. It's important to test the AI system's responses as part of a formative evaluation. For example, you can have one or more expert evaluators (internal or external) test different scenarios to assess the AI responses.

#### Minimum requirements for improve

Today, it's premature to determine a fixed set of success metrics for the UX maturity of AI-assisted features. Among other things, what success looks like can be different from feature to feature. Therefore, it's up to the team to define what success looks like for a particular feature.

Whenever possible success criteria should be based on data. Such as when determining what the success criteria should be regarding your AI features responses it's important to measure that against user expectation and need. Then determine how that might quantify to move your feature from Experiment to Beta to GA.

For example: If you hear from users during interviews that they would expect a 90% accuracy rate on AI suggestions before they'd feel confident in using the results. Your success criteria for the Experiment phase might be as simple as "Provide relevant response every time". For Beta it might be "Must provide responses that are accurate 50% of the time." While for GA it might be "Must provide responses that are accurate 90% of the time."

**The requirement is: Product Managers must document how the success metrics corroborate that the experience is good enough for the AI-assisted feature to mature from a UX perspective.**

The [Product Development Flow](/handbook/product-development-flow/#build-phase-4-improve) recommends outcomes and potential activities to create a combined and ongoing quantitative and qualitative feedback loop to evaluate feature success.

### Design standards

**How compliant is the solution with our design standards?** To answer this, teams evaluate the solution's compliance with [Pajamas](https://design.gitlab.com/), specifically the [AI-human interaction](https://design.gitlab.com/usability/ai-human-interaction) guidelines, and the [design and UI changes checklist](https://docs.gitlab.com/ee/development/contributing/design.html#checklist).

#### Minimum requirements for design standards

1. **Experiment and Beta**: _Should_ adhere to Pajamas and the design and UI changes checklist, but not required.
1. **GA**: _Must_ be compliant with Pajamas and the design and UI changes checklist. Deviations must be justified, or contributed to Pajamas as additions or enhancements. For example:
   1. a new component can be considered unique to the feature or common enough to be part of the design system;
   1. or an icon is changed and updated in the design system.

## Examples

### Experiment to GA

1. The problem validation, solution validation, and design standards do not meet the minimum requirements for **Beta**, so the AI-assisted feature is launched as **Experiment**.
1. The team works to improve those aspects.
1. Before launching another iteration of the feature, its UX maturity is evaluated and meets the minimum requirements for **Beta**. As part of that evaluation, the success metrics that the team set for **Beta** are achieved.
1. This iteration is launched, and the feature matures to **Beta**.
1. The team repeats step 2 until a new iteration of the feature meets the minimum requirements for **GA**.

### Straight to GA

1. Before launching the first iteration of the AI-assisted feature, the problem validation, solution validation, and design standards meet the minimum requirements for **GA**.
1. The team evaluates the risk of launching the feature straight to GA.
   1. If the risk is _high_, they can launch the feature in **Beta** and evaluate success in the “Improve” phase before maturing the feature to **GA**.
   1. If the risk is _low_, they can launch the feature straight to **GA**.

[ai-uxr-handbook]: /handbook/product/ux/ux-research/research-in-the-AI-space/
[experiment-beta-ga-docs]: https://docs.gitlab.com/ee/policy/alpha-beta-support.html
[cms-keep-in-mind]: /handbook/product/ux/category-maturity/category-maturity-scorecards/#some-things-to-keep-in-mind
[cms-scores]: /handbook/product/ux/category-maturity/category-maturity-scorecards/#calculating-the-cm-scorecard-score
[prod-dev-flow]: /handbook/product-development-flow/
[ux-scorecards]: /handbook/product/ux/ux-scorecards/
