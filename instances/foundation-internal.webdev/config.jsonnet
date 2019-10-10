local default = import '../../templates/default.libsonnet';

default+ {
  project+: {
    fullName: "foundation-internal.webdev",
    shortName: "webdev",
    displayName: "Eclipse Foundation WebDev"
  },
  deployment+: {
    host: "foundation.eclipse.org",
    prefix: "/ci/{{project.shortName}}"
  },
  jenkins+: {
    staticAgentCount: 1,
    permissions: [
      {
        principal: "anonymous",
        withheldPermissions: [
          "Overall/Read",
          "Job/Read"
        ]
      },
      {
        principal: "common",
        withheldPermissions: [
          "Job/ExtendedRead"
        ]
      },
      {
        principal: config.project.fullName,
        withheldPermissions: [
          "Credentials/View",
          "Gerrit/ManualTrigger",
          "Gerrit/Retrigger",
          "Agent/Build",
          "Job/Build",
          "Job/Cancel",
          "Job/Configure",
          "Job/Create",
          "Job/Delete",
          "Job/Move",
          "Job/Read",
          "Job/Workspace",
          "Run/Delete",
          "Run/Replay",
          "Run/Update",
          "View/Configure",
          "View/Create",
          "View/Delete",
          "View/Read",
          "SCM/Tag"
        ]
      },
      {
        principal: "chris.guindon@eclipse-foundation.org",
        "grantedPermissions": [
          "Overall/Read",
          "Credentials/View",
          "Gerrit/ManualTrigger",
          "Gerrit/Retrigger",
          "Agent/Build",
          "Job/Build",
          "Job/Cancel",
          "Job/Configure",
          "Job/Create",
          "Job/Delete",
          "Job/Move",
          "Job/Read",
          "Job/Workspace",
          "Run/Delete",
          "Run/Replay",
          "Run/Update",
          "View/Configure",
          "View/Create",
          "View/Delete",
          "View/Read",
          "SCM/Tag"
        ]
      },
      {
        principal: "eric.poirier@eclipse-foundation.org",
        "grantedPermissions": [
          "Overall/Read",
          "Credentials/View",
          "Gerrit/ManualTrigger",
          "Gerrit/Retrigger",
          "Agent/Build",
          "Job/Build",
          "Job/Cancel",
          "Job/Configure",
          "Job/Create",
          "Job/Delete",
          "Job/Move",
          "Job/Read",
          "Job/Workspace",
          "Run/Delete",
          "Run/Replay",
          "Run/Update",
          "View/Configure",
          "View/Create",
          "View/Delete",
          "View/Read",
          "SCM/Tag"
        ]
      },
      {
        principal: "martin.lowe@eclipse-foundation.org",
        "grantedPermissions": [
          "Overall/Read",
          "Credentials/View",
          "Gerrit/ManualTrigger",
          "Gerrit/Retrigger",
          "Agent/Build",
          "Job/Build",
          "Job/Cancel",
          "Job/Configure",
          "Job/Create",
          "Job/Delete",
          "Job/Move",
          "Job/Read",
          "Job/Workspace",
          "Run/Delete",
          "Run/Replay",
          "Run/Update",
          "View/Configure",
          "View/Create",
          "View/Delete",
          "View/Read",
          "SCM/Tag"
        ]
      }
    ]
  },
  "kubernetes": {
    "master": {
      "namespace": "foundation-internal-webdev"
    }
  },
  "secrets": {
    "gerrit-trigger-plugin": {
      "username": ""
    }
  }
}
