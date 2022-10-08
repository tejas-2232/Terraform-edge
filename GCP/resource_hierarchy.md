# Understanding GCP Resource Hierarchy


__What is a resource?__

* In the context of Google Cloud, a resource can refer to the service-level resources that are used to process your workloads (VMs, DBs, and so on) as well as to the account-level resources that sit above the services, such as projects, folders, and the organization.

__What is resource management?__

* It is how we should configure and grant access to the various cloud resources for company/team.

__Resource Hierarchy:__

* Google Cloud resources are organized hierarchically. 
* This hierarchy allows you to map your organization's operational structure to Google Cloud, and to manage access control and permissions for groups of related resources. 


__Let's see Resource Hierarchy in GCP:__

* The following diagram shows an example resource hierarchy illustrating the core account-level resources involved in administering your Google Cloud account.

![resource_hierarchy](https://cloud.google.com/static/billing/docs/images/resource-hierarchy-overview.png)

__Watch the video here:__

[![Video](https://img.youtube.com/vi/V34lW-BdmYc)](https://www.youtube.com/watch?v=V34lW-BdmYc)

https://www.youtube.com/watch?v=V34lW-BdmYc

__Domain__

* Your company Domain is the primary identity of your organization and establishes your company's identity with Google services, including Google Cloud.

* You use the domain to manage the users in your organization.
    * At the domain level, you define which users should be associated with your organization when using Google Cloud.

    * Domain is also where you can universally administer policy for your users and devices (for example, __enable 2-factor authentication__, __reset passwords__ for any users in your organization).

__Organization__

* An Organization is the root node of the Google Cloud hierarchy of resources.

* Using an Organization, you can centrally manage your Google Cloud resources and your users' access to those resources. This includes:

    * __Proactive management:__ reorganize resources as needed (for example, restructuring or spinning up a new division may require new projects and folders).

    * __Reactive management:__ an Organization resource provides a safety net to regain access to lost resources (for example, if one of your team members loses their access or leaves the company).

__Folders:__

* Folders are a grouping mechanism and can contain projects, other folders, or a combination of both.

* To use folders, you must have an Organization node.
Folders and projects are all mapped under the Organization node.

* Folders can be used to group resources that share common __IAM policies.__

* While a folder can contain multiple folders or resources, a given folder or resource can have exactly one parent.


__Projects:__

* All service-level resources are parented by projects, the base-level organizing entity in Google Cloud.

* Projects are required to use service-level resources (such as Compute Engine virtual machines (VMs), Pub/Sub topics, Cloud Storage buckets, and so on).

* You can use projects to represent logical projects, teams, environments, or other collections that map to a business function or structure.

* Project form the basis for enabling services,APIs and IAM permissions.

* Any given resource can only exist in one project.

__Resources:__

* Google Cloud service-level resources are the fundamental components that make up all Google Cloud services, such as Compute Engine virtual machines (VMs), Pub/Sub topics, Cloud Storage buckets, and so on.

* For billing and access control purposes, resources exist at the lowest level of a hierarchy that also includes projects and an organization.


__Labels:__

* Labels help you categorize your Google Cloud resources (such as Compute Engine instances).

* A label is a key-value pair.

* You can attach labels to each resource, then filter the resources based on their labels.

* Labels are great for cost tracking at a granular-level. Information about labels is forwarded to the billing system, so you can analyze your charges by label.

* For more information visit [here](https://cloud.google.com/billing/docs/concepts?hl=en-GB)

