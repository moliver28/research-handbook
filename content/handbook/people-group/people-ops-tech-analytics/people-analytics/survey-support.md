---
title: "People Analytics Survey Support"
---

## Employee Surveys

Here at GitLab we use [Culture Amp](https://www.cultureamp.com/?_gl=1*1gyk1qk*_up*MQ..&gclid=CjwKCAiA1-6sBhAoEiwArqlGPjLjIVfOHjS43kmsU2lBnEd0ad2e5nbZ44fmHE7qVcySj2xWbEyFghoCZ-gQAvD_BwE) to conduct our employee sentiment surveys. The People Technology team manages administative access to the tool and information about getting access can be found [here](/handbook/people-group/#using-culture-amp). If you are in need of support for a survey than this page will cover the best way to work with the People Analytics team for survey design, creation in Culture Amp, and review of results.

## People Analytics and Surveys

The People Analytics team can provide support with surveys that are needed by stakeholders. The purpose of the survey should be decided by the requester and the People Analytics team will support the administration (survey creation, design and reporting) in Culture Amp. Below is an overview of the decisions that will need to be made when setting up the survey.  

### Participants

The requester is to provide a list of participants to receive the survey. This can be a file with the participants or it can be criteria that is used to create a list. Since we have an integration between Workday and Culture Amp ([handbook page](https://handbook.gitlab.com/handbook/people-group/tech-stack-guide-workday/#system-diagrams)), only employees in Workday whose information is sent to Culture Amp can be selected to participate in our employee surveys. At the moment, this will exclude and contactors who are not in Workday.  

An example of criteria is `hire_date`. We often filter our engagement surveys by date of hire, so if an employee is hired after a specified date, they would be excluded from the survey.

### Question Review

As part of the survey creation process, questions to be asked will be provided to the People Analytics team. The team can provide additional review of the questions to ensure they are designed according to [best practices](https://ssw.umich.edu/sites/default/files/documents/events/peg/survey-design.pdf).  

Only a few types of questions are available within Culture Amp. Below are the types available:  

- Rating Scale - This is the most common type of question participants answer with employee surveys. The are typically asking your level of agreement with a given statement. There are several scale options available to choose from.  
- Select - This is a multiple choice question where a user can make only 1 or multiple selections from the list of possible answers.  
- Free Text - This is an open-ended question where the respondent can give as much or as little feedback as they'd like for a response.

### Constructs and/or Factors

When creating a survey, the creator typically wants to understand sentiment around specific contructs, or factors. These factors are often things like `Engagement` or `Happiness`. To measure these, several questions pertaining to each topic will be developed for the given survey. These factors are then used to get aggregate scores of sentiment from the respondents as opposed to reviewing each question in isolation. Culture Amp has survey questions available which are designed to measure some common contstructs in employee surveys, but the requester can also provide their own. The People Analytics team can help with the development of these constructs as well.

### Communications Language

There are standard communications that are provided by Culture Amp for their survey notifications. These communications can be modified and, if this is to be done, it is best if the survey requesters submit the language they would like used along with their request.  

When thinking about the language it may be helpful to note the types of communications (listed below) to be sent from Culture Amp:  

#### Email Communications

- Email Invitation - Initial invitiation with unique link to survey.  
- Email Reminder 1 - First reminder sent to those who have not completed the survey.
- Email Reminder 2 - Final reminder sent to those who have not completed the survey.  

#### Slack Communications

- Slack Invitation - Similar to email, but much shorter message using [Slack formatting](https://api.slack.com/reference/surfaces/formatting).
- Slack Reminder 1 - First reminder in Slack to those who have not completed the survey.  
- Slack Reminder 2 - Final reminder in Slack to those who have not completed the survey.  

### Reports

A list of reports that will be needed can also be identified at the time of the request. If this is not known at the time of request then reports can be generated and shared after launch of the survey.

### Reporting Rules/Confidentiality

Confidentiality is of extreme importance when administering surveys. We keep all responses confidential and at time completely anonymous. The confidentiality setting are shared (per Culture Amp communication) with every participant in their `Welcome Screen` for the survey. To better understand the confidentiality setting available for each survey please visit the documentation from Culture Amp [here](https://support.cultureamp.com/en/articles/7048386-confidentiality-protections-in-reporting).

### Demographics

Demographics are used to filter reports for surveys or to build the criteria for who should receive a survey response request. These demographics (`Division, Department, etc.`) are sent over from Workday as part of the integration with Culture Amp and if the requestor knows they will want to filter reporting by certain demographics they can specify this in the request. If there are demographics that they would like to filter by that are not present in the Workday integration then they can work with the People Analytics team to gather this information using the survey itself. Culture Amp allows for requesting ["self-reported"](https://support.cultureamp.com/en/articles/7048570-include-additional-self-report-demographics-in-a-survey) demographics in the survey.

### Launch Plan

Every survey in Culture Amp comes with a `Launch Plan` that needs to be set up. The `Launch Plan` has a summary of all the above items for additional review and also has a `Launch Schedule`. The `Launch Schedule` consists of the dates the survey will open and close. The open date is also the date the survey will be sent to the participants. The additional items to schedul are the first and final reminders. These will be sent only to those who have not completed the survey on the given date and will be sent via email and Slack, with the pre-determined communcation language. The requester will be asked to give a `Launch Plan` schedule in the issue request.  
