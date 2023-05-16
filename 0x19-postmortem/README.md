Postmortem: Outage Caused by Misconfiguration

![1684237778639](https://github.com/Decreedblocks/alx-system_engineering-devops/assets/99747488/9b1da793-ff65-46b8-9160-7c98726a2ff4)


Issue Summary:

On May 2, 2023, from 2:00 PM to 4:30 PM 	WAT, our company's web application experienced an outage that impacted all users. The service was completely down, preventing users from accessing any features or data. This resulted in a significant impact on our business, as it affected all customers, resulting in a 100% outage rate.

Timeline:
- 2:00 PM WAT: Our monitoring system alerted the engineering team of the outage.
- 2:05 PM WAT: The team conducted initial investigations into the issue, focusing on the database and server infrastructure. They assumed it was a result of a sudden spike in traffic or a database failure.
- 2:30 PM WAT: After several attempts to fix the issue, the team realized that the problem was not related to the database or server infrastructure. They then began investigating the application codebase.
- 3:00 PM WAT: The team identified a misconfigured caching layer within the application codebase, which was causing a deadlock that prevented the application from responding to requests.
- 3:30 PM WAT: The issue was escalated to the senior engineering team for resolution.
- 4:00 PM WAT: The senior engineering team deployed a hotfix that removed the deadlock within the caching layer and restored the application's functionality.
- 4:30 PM WAT: The application was fully restored, and the outage was resolved.

Root Cause and Resolution:
The root cause of the outage was a misconfigured caching layer within the application codebase. The caching layer was designed to improve performance by storing frequently accessed data in memory. However, due to an incorrect configuration, the caching layer was causing a deadlock that prevented the application from responding to requests. This issue was fixed by removing the deadlock within the caching layer, which restored the application's functionality.

Corrective and Preventative Measures:
To prevent similar outages from occurring in the future, the engineering team has implemented several corrective and preventative measures. These include:
- Reviewing and updating the application codebase to ensure proper configuration of the caching layer.
- Implementing additional monitoring and alerting systems to detect issues related to the caching layer and other critical components of the application.
- Establishing a more robust incident response process to ensure timely detection and resolution of issues.
- Conducting regular code reviews and testing to identify potential issues before they impact users.

In conclusion, the outage on May 2, 2023, was a result of a misconfigured caching layer within the application codebase. While the outage resulted in a significant impact on our business, the engineering team was able to quickly identify and resolve the issue, and implement measures to prevent similar incidents from occurring in the future. We apologize for any inconvenience caused to our users and are committed to providing a reliable and stable service.


