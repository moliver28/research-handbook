---
title: Accessibility
description: >-
  Defining Accessibility for the Digital Experience team
---

## Surface accessibility issues on about.gitlab.com

[Open an issue to the Buyer Experience repository](https://gitlab.com/gitlab-com/marketing/digital-experience/buyer-experience/-/issues/new) and add the `dex-category::accessibility` label.

## Resolving Accesibility issues

## Quick and dirty (Start here)

> I have run [Axe Devtools](https://chrome.google.com/webstore/detail/axe-devtools-web-accessib/lhdoppojpmngadmnindnejefpokejbdd)
>
> I have run Google Lighthouse

## Notes about tabbing across browsers

Different browsers respond differently to tabbing through interactive elements (like links, buttons, form inputs, etc.) on a page. Chrome and chromium based browsers will have `tab` move to the next focusable element and `shift + tab` will have move back a focusable element. This is done to assist folks with screen readers.

Safari doesn't use tab navigation by default. The user has to go into Safari's setting and check the box to turn on tabbed navigation. Mozilla is being true to operating system settings in Mac OS, which means you also need to turn it on.

Related resources:
https://stackoverflow.com/questions/52783375/anchor-with-href-not-taking-focus-in-safari-even-with-all-accessibility-keyboard
https://stackoverflow.com/questions/11704828/how-to-allow-keyboard-focus-of-links-in-firefox

### Guidance to tackling accessibility challenges related to tabbing

* Properly set `tabindex`: You can use the `tabindex` attribute to specify the order in which elements receive focus when the user uses the `tab` key.

* Properly use ARIA roles: [ARIA](https://developer.mozilla.org/en-US/docs/Web/Accessibility/ARIA/Roles) roles provide a way to make web content is accessible to people with disabilities. They can be used to define the role of an element, helping assistive technologies understand how to interact with it.

* Consistent design: Ensure that your design visually indicates which element currently has keyboard focus (ex: by changing the color or outline). This visual cue _will help all users_, not just those using assistive technologies.

## More comprehensive testing

Tools like Axe and Google Lighthouse only take you so far, and are a good starting point for us. Using screen reader technology like [VoiceOver](https://support.apple.com/en-ie/guide/voiceover/vo2682/mac) on MacOS to test on a real webpage is needed to reach AA compliance.

> Run through this Accessibility spreadsheet: [https://docs.google.com/spreadsheets/d/1pCfGv8xHjY39Oeft37pGjgot_lg0_j3cSyty0H9njv8/edit#gid=0](s://docs.google.com/spreadsheets/d/1pCfGv8xHjY39Oeft37pGjgot_lg0_j3cSyty0H9njv8/)

Example of testing accessibility on our home page: [https://www.youtube.com/watch?v=jtVMFUQLJEE](https://www.youtube.com/watch?v=jtVMFUQLJEE)
