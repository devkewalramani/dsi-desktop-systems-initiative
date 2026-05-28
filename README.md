# DSI: Desktop Systems Initiative
## An Enterprise ITSM and Migration Management Platform Built for the Federal Reserve Bank of New York — 2003 to 2005

**Dev Kewalramani** | dev.kewalramani@gmail.com | [devkewalramani.com](https://devkewalramani.com)

---

## The Short Version

Before ServiceNow ITSM. Before enterprise migration management tools were a product category. A single developer built a full stack platform to orchestrate the migration of 3,500 PCs across every business function of the Federal Reserve Bank of New York — with multi-team scheduling, real-time SVG data visualization, department-level reporting, training tracking, ticket management, and issue generation.

This repository contains the original source code.

---

## The Context

The Federal Reserve Bank of New York undertook a large-scale enterprise migration project to move 3,500 workstations to a Common Operating Environment (COE) using hard drive cloning and SYSPREP. The scale was institution-wide — every department, every business function, every floor.

Managing that migration required more than a spreadsheet. It required a system that could schedule migrations by department, assign them to teams, track completion status in real time, surface issues as they arose, generate management reporting across the portfolio, and give every stakeholder — from IT directors to business unit leads to training coordinators — a view calibrated to their role.

That system did not exist as a commercial product in 2003. So it was built from scratch.

Dev Kewalramani joined the Federal Reserve Bank as a Senior IT Support Analyst and served as Project Manager and Tech Lead for the migration project. He held both roles simultaneously — managing the program and building the platform that enabled it to run at scale.

---

## What Was Built

DSI (Desktop Systems Initiative) is a multi-module, role-based web application built on ColdFusion MX, Microsoft SQL Server, and IIS. The platform covered the full lifecycle of an enterprise migration from scheduling through completion tracking, issue management, reporting, and training coordination.

### Module Architecture

**Admin Module**
The central command center for IT leadership. Capabilities included scheduling new migrations, editing and deleting existing schedules, managing customer records, searching the migration database, generating full migration reports, reassigning assets, running status checks, and accessing the complete suite of management reporting and SVG-based data visualizations.

**Team 1 and Team 2 Migration Modules**
Separate operational portals for each migration team. Each team could view their current week schedule, access the full week schedule, add new migrations, update migration status, cancel migrations, and generate prep reports. The two-team architecture allowed parallel execution of the migration program across different building zones or business function groups while feeding into unified central reporting.

**Search Module**
A cross-functional search interface allowing staff to look up migrations by ticket number, user ID, or last name, with the ability to filter by open tickets. Included a contextual info layer for search guidance, surfaced inline without leaving the page.

**SATT Module**
A dedicated module for the Strategic Analysis and Technology Training function — the team responsible for training end users before and after migration. Capabilities included class scheduling, attendance tracking across multiple session views, training date tracking, and training reports. This module gave the training organization complete visibility into which users had been trained and which were pending.

**Attachment Viewer**
A document management module allowing migration records to be linked to supporting documentation, with role-based access control on viewing.

**Who Is Scheduled**
A real-time dashboard showing which users were currently scheduled for migration, queryable by user ID or last name, with open ticket filtering. This gave floor coordinators and business unit liaisons immediate visibility into upcoming disruptions to their teams.

**Calendar View**
A full monthly calendar interface overlaying the migration schedule, giving management a time-based view of migration volume and distribution across the program.

**Issue Generation**
A module for capturing, generating, and tracking migration issues as they arose during execution — closing the loop between scheduling, execution, and problem resolution.

### Data Model

The MSSQL database (datasource: DSI) included a master migration record table capturing function, user data, logon, actual migration date, and scheduled time. The grouptotal table fed the real-time SVG reporting layer with aggregate migration counts by department group. The functionpass table managed role-based authentication for admin access. The full schema covered the entire Federal Reserve organizational structure — every department and business unit was a first-class entity in the data model.

### SVG Data Visualization

One of the most technically distinctive features of DSI was its real-time charting layer built using SVG generated directly by ColdFusion. In 2004, SVG browser support was inconsistent and most enterprise reporting was done through static images or third-party tools. DSI generated dynamic bar charts and summary graphs server-side, giving management real-time visual reporting on migration progress by group, by month, and by team without requiring any external reporting infrastructure.

The visualization suite included main portfolio graphs, team-level summary graphs across three time horizons, pie charts for status distribution, and task-level status views — all generated from live database queries.

### Organizational Coverage

The system modeled the complete organizational structure of the Federal Reserve Bank of New York. The scheduling module captured department and function data for every business unit including:

Auditing, BSD, E-Business Office, EPMS, ISF, IT, NADCO, SATT, Banking Applications, Policy and Analysis, Relationship Management, Resource and Logistics Management, Risk Management, Accounting, Administrative Staff, HR, Management Information, Strategic Investment and Risk Assessment, Development Studies and Foreign Research, Financial Markets and Institutions, and additional research and operations functions.

Every one of these departments was a node in the scheduling workflow, meaning the system had to accommodate the political and operational realities of migrating a critical financial institution function by function, team by team, without disrupting the business.

---

## Technical Stack

| Layer | Technology |
|---|---|
| Application Server | ColdFusion MX |
| Database | Microsoft SQL Server (MSSQL) |
| Web Server | IIS (Internet Information Services) |
| Front End | HTML, CSS, JavaScript |
| Data Visualization | SVG generated server-side via ColdFusion |
| UI Framework | Dreamweaver MX templates |
| Calendar | Custom JavaScript calendar component |
| Deployment | Internal Federal Reserve infrastructure |

**Languages used:** ColdFusion, SQL, HTML, CSS, JavaScript, SVG

---

## What It Delivered

From the documented project record at the time:

- **3,500 workstations** migrated to a Common Operating Environment using hard drive cloning and SYSPREP
- **Full institutional coverage** across every department and business function of the Federal Reserve Bank of New York
- **Multi-team parallel execution** coordinated through a unified scheduling and reporting system
- **Real-time management visibility** through SVG-based data visualization built without external reporting tools
- Increased efficiency of migration tracking, scheduling, and reporting versus prior manual processes
- Training coordination for end users through the integrated SATT module

The project outcome from the 2007 resume: "DSI Migration Web application resulted in increased efficiency of migration tracking, scheduling and reporting."

---

## Why This Matters in 2026

DSI was built inside one of the most regulated financial institutions in the world, for a project where failure had institutional consequences. The platform had to be reliable enough to coordinate 3,500 endpoint migrations without losing track of a single one, accurate enough to give management real-time status confidence, and flexible enough to accommodate the scheduling constraints of dozens of business functions operating under regulatory and operational scrutiny.

The problem DSI solved — how do you give a large-scale IT program a unified pane of visibility across teams, departments, assets, and time — is the same problem enterprise ITSM platforms have been selling solutions to ever since. ServiceNow's ITSM product launched years after DSI was in production at the Fed.

The technology is dated. The product thinking is not.

---

## Repository Contents

```
dsi/
├── index.cfm                    # Main application entry and real-time migration dashboard
├── calendar.cfm                 # Monthly calendar view of migration schedule
├── currentweek.cfm              # Current week migration view
├── whoismi.cfm                  # Real-time who is scheduled dashboard
├── issuegen.cfm                 # Issue generation and tracking
├── adminaccess/                 # Admin and management module
│   ├── scheduling.cfm           # Migration scheduling interface
│   ├── maingraph.cfm/.svg       # Main SVG portfolio visualization
│   ├── mgraph.cfm               # Team-level migration graphs
│   ├── migrationreports.cfm     # Migration reporting interface
│   ├── T1sumgraph.cfm           # Team 1 summary graphs (3 time horizons)
│   ├── T2sumgraph.cfm           # Team 2 summary graphs (3 time horizons)
│   ├── T1sumreport.cfm          # Team 1 summary reports
│   ├── T2sumreport.cfm          # Team 2 summary reports
│   ├── functiondata3.cfm        # Function-level data tracking
│   ├── functionstatus.cfm       # Function migration status
│   ├── groupstatus.cfm          # Group-level status reporting
│   ├── reassignasset.cfm        # Asset reassignment workflow
│   └── dsireportpage.cfm        # Full DSI report suite
├── team1/                       # Team 1 migration portal
│   ├── scheduling.cfm           # Team 1 scheduling interface (via adminaccess)
│   ├── team1.cfm                # Team 1 dashboard
│   └── migrations.cfm           # Team 1 migration management
├── team2/                       # Team 2 migration portal
│   ├── scheduling.cfm           # Team 2 scheduling
│   ├── team2.cfm                # Team 2 dashboard
│   ├── currentweek.cfm          # Team 2 current week view
│   └── weekschedule.cfm         # Team 2 weekly schedule
├── satt/                        # Training coordination module
│   ├── training.cfm             # Training scheduling
│   ├── attended.cfm             # Attendance tracking
│   └── report.cfm               # Training reports
├── search/                      # Cross-functional search and ticket lookup
├── viewattach/                  # Document attachment viewer
└── scripts/                     # Shared CSS and JavaScript
```

---

## About This Project

DSI was designed, built, and deployed by Dev Kewalramani while serving as Senior IT Support Analyst and Project Manager / Tech Lead at the Federal Reserve Bank of New York from 2003 to 2005. He held both roles simultaneously — managing the migration program and building the platform that enabled it to execute at institutional scale.

For questions or to discuss further: [dev.kewalramani@gmail.com](mailto:dev.kewalramani@gmail.com)
