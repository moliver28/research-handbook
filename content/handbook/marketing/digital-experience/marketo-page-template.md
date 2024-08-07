---
title: "Marketo page template"
description: "Marketo guided template for modules. Each module can be toggled on or off and has options such as background color."
---

This will serve as documentation for [Modular landing page 7259](https://gitlab.com/gitlab-com/www-gitlab-com/-/issues/7259).

This marketo guided template has the following modules. Each module can be toggled on or off and has options such as background color.

## Page data options

* Page title
* Page description
* Social description
* Social image

## Common module options

* (Module) color
  * highlight-black
  * highlight-gray
  * highlight-purple
  * highlight-white
  * flattop
  * flatbottom
* (Module) visibility
  * visible
  * hidden

### Nav module

Options

* Nav logo image path
  * Normally the default value is unchanged. In the case of a uniquely branded item such as an event this might be changed.
  * This variable is specified as a URL. Generally the image should be uploaded into marketo where the URL will be provided.
* Nav logo image style
  * This can be used to override default styles such as height.
* Nav button Visibility
  * Not all nav bars need a CTA.
* Nav CTA URL
  * Where this button links to.
* Nav CTA Copy
  * What this button should say.
* Nav color
  * Defaults to empty which sets the bar to white.
  * navbar-purple
    * Note when using a purple navbar you'll want to switch the "Nav logo image path" variable to an appropriately colored logo.

## Hero module type 1

This is a right floated image with copy to the left of it.

![Hero Type 1](/images/handbook/growth-marketing/marketo-page-template/hero-type1.jpg)

![Hero Type 1 w/ purple background](/images/handbook/growth-marketing/marketo-page-template/hero-type1-purple.jpg)

Options

* Hero1 image
  * This should be specified as a URL.
* Hero1 copy

## Hero module type 2

This is a full width image with copy overlayed on top of it.

![Hero Type 2](/images/handbook/growth-marketing/marketo-page-template/hero-type2.jpg)

Options

* Hero2 image
  * This should be specified as a URL.
* Hero2 copy

## 2column module

This is where the form is located.

![2column form before](/images/handbook/growth-marketing/marketo-page-template/2column-form-before.jpg)

![2column form after](/images/handbook/growth-marketing/marketo-page-template/2column-form-after-submit.jpg)

![2column no sidebar](/images/handbook/growth-marketing/marketo-page-template/2column-no-sidebar.jpg)

Options

* 2column sidebar
  * Yes sidebar
  * No sidebar
* Form description
  * This is the content in the column to the left of the form.
* Form before
  * This is where the heading or anything else goes that you want to appear above the form.
* Form after submit
  * This is the "success message".
  * Temp hide form
    * If you want to preview how the form looks after submitting it, toggle this to Hidden. Don't forget to toggle it back afterward.
  * Temp show confirm
    * If you want to preview the confirmation message, toggle this to visible. Don't forget to toggle it back afterward.

## Speaker list module

This module is for a brief list of speakers as would be seen on a webcast or event. This section requires particular formatting to appear correctly.

![Speaker list](/images/handbook/growth-marketing/marketo-page-template/speaker-list.jpg)

Options

* Speaker List
  * Please add a new bulleted list for each speaker, where each item in the list below is a new bullet point within each list:

```text
Bulleted list
  Speaker photo
  Name
  Title
  Company
enter/return enter/return
Bulleted list
  Speaker photo
  Name
  Title
  Company
```

## Flex module

This is a flexible empty box for anything additional that doesn't fit into another module. This could be used to embed an event calendar, more text, a slideshow, whatever you need.

## Trust module

In general it's a good idea to target this messaging subject matter and logos towards your audience.

![Trust module](/images/handbook/growth-marketing/marketo-page-template/trust.jpg)

Options

* Trust copy before
  * This is for specifying the top copy. Default is "Trusted by DevOps Teams and Orgs of All Types".
* Trust images
  * Within this editable area, please insert only logo images, preferably grayscale SVG files using presentation attributes (not style attributes). If you have questions around this, please contact Marketing's Brand and Digital team for assistance.

## Statistics list module

Similar to the bottom section of [this example landing page](https://about.gitlab.com/blog/2019/11/26/migrating-from-jenkins/).

![Statistics list](/images/handbook/growth-marketing/marketo-page-template/stats-list.jpg)

Options

* Stats List
  * This list is designed to feature a set of 3 statistics. That said, it can accommodate larger or smaller lists.
  * Please add a new bulleted list for each stat, where each item in the list below is a new bullet point within each list:

```text
Bulleted list
  Logo in color
  Statistic ( 6x, 1000+, < 8 hours ... )
  Description ( faster builds than Jenkins )
enter/return enter/return
Bulleted list
  Logo
  Statistic
  Description
```

## Value box module

This module is meant to explain to individuals that we have more content they might want to look at and it's worth filling out the form.

![Value box](/images/handbook/growth-marketing/marketo-page-template/value-box-default.jpg)

Options

* Value content
  * This option is a fully editable box for copy.
* Value box default image
  * In most cases we want to leave this visible. If we're using custom examples per the below option, we would set this to hidden.
  * Visible
  * Hidden

![Value box](/images/handbook/growth-marketing/marketo-page-template/value-box.jpg)

* Value box examples
  * This box can be used to toggle specific examples of content we want to showcase that are tailored to the audience. In most cases we want this to be hidden and show the default above instead.
  * Hidden
  * Visible
* Value examples
  * This is the editable box where we can set the examples to use.

## Final CTA

Currently we encourage this module to remain off by default. There may be situations where you want to add a CTA outside of the landing page scope such as "Free Trial", "Learn more", or something like that. In that case, you would enable this module's visibility.

![Final CTA](/images/handbook/growth-marketing/marketo-page-template/final-cta.jpg)

Options

* Final CTA Section
  * Note that the button styles look like a link when using the editor. Just edit the link URL and text. If you click on the "edit HTML" button you'll see the relevant wrappers and classes which should remain in place.
