---

title: "Simulation demos"
---







# Summary

This page covers how to use and create simulation demos.

# What is a simulation (sim) demo?

There are certain times when slides, video or other such media just will not do. When you are with a customer or on a trade show stage, a live product demonstration is far superior to slides or videos. Live demos, however, can be fraught with challenges, from technical issues to poor content or delivery. Sim demos ensure every demo presentation, with groups small or large, is done perfectly every time, eliminating technical and content challenges. Sim demos are reliable, easy to present and give the audience a life-like demonstration EVERY TIME.

# What is the difference between sim demo and a click-through demo?

Our definition for the legacy offline demos is a click-through demos. Click-through demos are Google Slides presentations, and they help to demonstrate product features or usecases. Each slide contains a product screenshot, annotations, and some bullets.

The newer offline demos called simulation (sim) demos. They are executable files for MAC or Windows that you can run locally, and there is also html version. We produce them with a tool called [DemoEasel](https://www.demoeasel.com).

Both click-through and sim demos look and feel like live demos, the audience of the demo get the experience of a live product, and the person who deliver the demo can focus on what to say, and will have confidance that the flow will always run without any risk .Sim demos also include short animations between clicks to enhance the realism.

Both the legacy click-through demos and the new sim demos are available from the [Learn@GitLab page](https://about.gitlab.com/learn/).

# Using click-through and sim demos

### Who can use click-through and sim demos?

- New employees - Use it to learn the product.
- SDRs , Solution Architects, SAE, - Deliver GitLab demos to customers.
- Executives - Deliver keynote demos, or deliver demos to executives.
- Field marketing - use sim demos in trade shows and events.
- Whenever you need to deliver GitLab demo, but you don't have internet access.
- Non-technical users that would like to see how the product works and even present it.

### How can I use a click-through demo?

- They will launch and run in your web browser. Alternatively, you can go to the file in Google Slides and run them from there.
- They use standard Google Slides presentation interface

### How Can I use a sim demo?

- Download the demo locally
- Extract it
- Open the demo executable
- If you have macOS Catalina - follow the steps in the next section, then come back here and continue
- Click Present Demo
- If you need help with the sim demo, contact TMM either by Slack channel #dev-advocacy-team or by opening a [Product and Solution Marketing Request issue](https://gitlab.com/gitlab-com/marketing/product-marketing/issues/new?issuable_template=A-SM-Support-Request).

#### MacOS Catalina

| In MacOs Catalina you will get an error when you open the demo file.  | ![GitLab Project](/images/tech-pmm/errorcatalina.png){: .margin-right20 .margin-left20 .margin-top20 .margin-bottom20 .image-width80pct } |
|  To open it,  right click on the demo file -> Open  | ![GitLab Repository](/images/tech-pmm/demofilecatalina.png){: .margin-right20 .margin-left20 .margin-top20 .margin-bottom20 .image-width80pct } |
|  A new dialog will appear,  click Open.   | ![GitLab Repository](/images/tech-pmm/dialogopencatalina.png){: .margin-right20 .margin-left20 .margin-top20 .margin-bottom20 .image-width80pct } |


# Creating sim demos

### Who can create sim demos

Everyone can download [DemoEasel](https://www.demoeasel.com/download) and record and edit demos, you don't need a license to create and edit demos. However, in order to generate demo packages, a license is required. The Developer Advocacy team purchased licenses and the team will be happy to generate packages for you. The priority will be for customer facing demos, which can be reused by other team members.

### Define the use case

Demos should highlight the value of the product, it should demonstrate how it solves a market challenge. Focusing on features, no matter how they robust, will not be relevant to the customers if they don't understand how it solves their challenges.

To plan a winning demo
1. Identify a customer challenge and how GitLab solves this challenge.
1. Define a demo flow that shows how we solve this challenges, and how we do it better than our competitors.
1. It is recommended to create short demos, up to 20 steps (clicks/screens), demo that you can present in 2 to 5 minutes.

### Prepare your environment

1. Close all opened windows, keep only Chrome window with GitLab instance opened.
1. You should have a stable demo flow configured with the right demo data, ready for screen capturing.
1. Prepare your browser, hide bookmarks and notifications.
1. Hide OS notifications.
1. Use the following script to resize Chrome to the required resolution.
1. Open Script Editor in your MacBook and paste this script to it  

```
set theApp to "Google Chrome"
set appHeight to 1080
set appWidth to 1920

tell application "Finder"
set screenResolution to bounds of window of desktop
end tell

set screenWidth to item 3 of screenResolution
set screenHeight to item 4 of screenResolution

tell application theApp
activate
reopen
set yAxis to (screenHeight - appHeight) / 2 as integer
set xAxis to (screenWidth - appWidth) / 2 as integer
set the bounds of the first window to {xAxis, yAxis, appWidth + xAxis, appHeight + yAxis}
end tell
```

7. Run the script. This will resize your browser to 1080*1920. If necessary, you can modify those parameters in the script for different screen resolution.

### Capture the demo

1. Download and install [DemoEasel](https://www.demoeasel.com/download).
1. Open DemoEasel, click **New Demo**, read and follow the tips that presented , then click **Start Capture**.
1. Navigate through your flow. DemoEasel will capture all screens and clicks.
1. To finish recording, click the DemoEasel icon on the bottom dock to bring up its UI
1. Click **Abstract Demo**.
1. DemoEasel will automatically recognize the recorded window (Chrome) and will suggest Auto Cropping, accept this option.
1. Define a name for your demo, click **OK**.

### Edit and Optimize

Once a demo has been captured we can use DemoEasel's editor to optimize and document it so that others can easily present the demo.
1. Select from the demo list the demo you want to edit, click  **Edit the Demo** button.
1. The editor provides some basic and advanced capabilities. For starting out, it is essential for you to get familiar with the following items:
   - Red boxes - Make sure all red boxes that automatically added look good, with correct location and size. You can adjust them manually as necessary by dragging them to the right position.
   - Edit Note - Add a note for each step, the note describes the step, and specifies where is the next click.
   - Review ALL recorded frames, hide unnecessary recorded frames.
   - Control the speed of the frames.
   - Export / import frames.

For more info, read the **Getting Started.html**  in your DemoEasel folder.

### Package and Share

There are two types of packages we use at GitLab: **browser**(HTML5) and **simulation** (Windows/macOS executables).
The Developer Advocacy team produces and upload **browser** demo packages to the [demo page in handbook](/handbook/marketing/brand-and-product-marketing/product-and-solution-marketing/demo/#click-throughs) so employees and customers can learn the product and use cases. As it supports iOS, we also use the **browser** type to demo GitLab in demo booths in events.

For customer facing demos or keynotes, it is recommended to use the **simulation** version as it has better performance and actually gives the audience a more live-like demon experience. However, for transparency, when we present a simulation demo, we always announce at the beginning that this is a product simulation, not a live demo.

While everyone can contribute and create sim demos, due to license restrictions, and for keeping consistency of the messages, and ensuring consistent high quality and look and feel, the Developer Advocacy team will review the demos, provide feedback, and then generate the final demo packages for you.

To request the team to review and generate demo packages
1. Once you created and completed the demo editing, notes and optimization, Go to ‘*Demos*’ folder under your DemoEasel installation folder and locate a folder with the name of your demo (this folder contains
three files).
1. Upload the entire folder to [source files](https://drive.google.com/drive/folders/1tbmY1zg9taLSqH-clJSrcuEcwP2rqMfA?usp=sharing). Set access permissions to anyone in GitLab.
1. Open a [Product and Solution Marketing Request issue](https://gitlab.com/gitlab-com/marketing/product-marketing/issues/new?issuable_template=A-SM-Support-Request).
   1. Select `Demo or workshop` for the "Type of work requested".
   1. Under "Request details" add:
      1. "Sim demo publishing support"
      1. Describe the customer challenge and the solution you demonstrate in the demo.
      1. Include the path of your demo files you uploaded.

The team will review the demo and might have some improvement suggestions. Once the demo is ready for release, the team will produce the demo packages, will provide you a link to it, and will close the Issue.
