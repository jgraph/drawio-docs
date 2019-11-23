# FAQ - Diagram Viewer apps for Confluence and Jira

<!-- TOC -->

- [What do other users see?](#what-do-other-users-see)
- [What happens when the Diagram Viewer app is uninstalled?](#what-happens-when-the-diagram-viewer-app-is-uninstalled)
  - [How to uninstall the Diagram Viewer apps](#how-to-uninstall-the-diagram-viewer-apps)
- [Why are the apps only available on Cloud?](#why-are-the-apps-only-available-on-cloud)
- [Where can I get support?](#where-can-i-get-support)

<!-- /TOC -->

## What do other users see?

Depending on what type of file you embed from OneDrive or Google Drive, page viewers can interact with the file via the Diagram Viewer:

- Enable layers and step through multipage draw.io diagrams.
- Click through the pages in documents, PDF files and presentations.
- Zoom into images, pause animations and video files.
- Navigate through the pages in a spreadsheet.
- Fill out and submit Google Forms.
- Navigate through folders and files.

## What happens when the Diagram Viewer app is uninstalled?

The embedded diagrams and files in Confluence or Jira will no longer be able to be displayed. In Confluence, this will be displayed as if the macro is broken (no macros are deleted though). No data on OneDrive or Google Drive is deleted

When you reinstall the Diagram Viewer app, as long as the connection with OneDrive or Google Drive is still authorized, your diagrams and files will be displayed again, no further steps necessary.

### How to uninstall the Diagram Viewer apps

1. Go to your Confluence or Jira instance's _Settings_.
2. Click on _Manage apps_ in the left hand panel.
3. Click on _Diagram Viewer for Confluence_ or _Diagram Viewer for Jira_ in the list of User-installed apps to see the app information, then click _Uninstall_.

## Why are the apps only available on Cloud?

Seeing as both OneDrive and Google Drive are cloud storage platforms, it makes sense to have these apps available for the Cloud versions of Jira and Confluence.

Server instances are often located behind a firewall, which may block access to such cloud storage platforms and make the Diagram Viewer apps unusable.

## Where can I get support?

For support questions, [please post on Atlassian Answers](https://community.atlassian.com/t5/custom/page/page-id/create-post-step-1?add-tags=atlassian-marketplace,addon-com.mxgraph.jira.plugins.onedrive,cloud&_ga=2.112434820.1415765857.1573649462-882215707.1573649462) using the tag ``addon-com.mxgraph.confluence.plugins.driveconnector``.
