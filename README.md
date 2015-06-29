# Status Warden Database

The status warden database is the mongodb database for the status warden application used by the status warden api for data presistance and the status warden scheduler for job storage.

### Example Usage

```bash
vagrant up

mongo --port 28001 status-warden
```

### Collections

Job - Each job has information regarding a defined task scheduled to be carried out at a point in the future eg. email notifications, url status check.

Monitor - A monitor contains a web address that is periodically requested to monitor the urls status for a particular user.

MonitorEvent - A monitor event stores information regarding events occuring on a particular monitor.

User - This holds details of a particular user account, including authentication details, email, display name and roles.

### Configuration

| Environment Variable       | Default                        | Description                                                                        |
|----------------------------|--------------------------------|------------------------------------------------------------------------------------|
| DATABASE_PORT              | 28001                          | The port on which the status-warden-database mongodb service is listening          |
| ENVIRONMENT                | 'development'                  | The environment type. Dictates the configuration of the database                   |

# Status Warden

Status Warden is a status monitoring service for supervising web address health. The warden monitors the status of a web address at a configurable interval and provides serviceable intelligence through email notifications and a web based dashboard.

### Features

* Periodic monitoring of web addresses
* Email notifications on status change
* Configurable monitoring interval
* Basic authentication
* REST style facade API
* Web based dashboard

### Related Links & Documents

- [Status Warden](http://www.statuswarden.com), the software as a service implementation
- The status warden model [npm package](https://www.npmjs.com/package/status-warden-model)
- Other status warden github repositories
 - [status-warden-api](https://github.com/codeaim/status-warden-api) - The status warden rest api
 - [status-warden-database](https://github.com/codeaim/status-warden-database) - The status warden mongodb database
 - [status-warden-scheduler](https://github.com/codeaim/status-warden-scheduler) - The status warden scheduler and background processor
 - [status-warden-web](https://github.com/codeaim/status-warden-web) - The status warden web based dashboard
