
# Repository

Users can create a repository to maintain service artifacts. Repository would be either a Git or HELM repository.

## Structure

`Repository`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `id` | `String` | Optional | System generated unique identifier to identify repository uniquely.<br>**Constraints**: *Maximum Length*: `64`, *Pattern*: `^[a-zA-Z0-9\-_]+$` |
| `name` | `String` | Required | Name of the repository to be created.<br>**Constraints**: *Minimum Length*: `1`, *Maximum Length*: `64`, *Pattern*: `^[a-zA-Z0-9\-_]+$` |
| `description` | `String` | Optional | Description of the repository being created.<br>**Constraints**: *Maximum Length*: `500`, *Pattern*: `^[a-zA-Z0-9?$@#()\[\]'!,+\-=_:.&*%\s\/]+$` |
| `type` | [`EdgeServiceRepositoryTypeEnum`](../../doc/models/edge-service-repository-type-enum.md) | Optional | Type for the repository which can be Git or Helm.<br>**Constraints**: *Maximum Length*: `20` |
| `tag` | `String` | Optional | Attribute which can be used to tag a repository.<br>**Constraints**: *Maximum Length*: `500`, *Pattern*: `^[a-zA-Z0-9?$@#()\[\]'!,+\-=_:.&*%\s\/]+$` |
| `endpoint` | `String` | Optional | Endpoint URL for the repository from where resources needs to be fetched.<br>**Constraints**: *Maximum Length*: `500`, *Pattern*: `^[a-zA-Z0-9?$@#()\[\]!,+\-=_:.&*%\s\/]+$` |
| `reacheability` | [`RepositoryReacheabilityEnum`](../../doc/models/repository-reacheability-enum.md) | Optional | Reachability can be of two types, Internet and Private Network. |
| `ca_certificate` | `String` | Optional | Required if your repository uses a private certificate authencation.Please provide ur CA certificat in PEM format.<br>**Constraints**: *Maximum Length*: `32`, *Pattern*: `^[a-zA-Z0-9-_.]+$` |
| `agents` | `Array<String>` | Optional | This attribute can be used to specify GITOps Agent to fetch details from private repository.<br>**Constraints**: *Maximum Items*: `10000`, *Maximum Length*: `32`, *Pattern*: `^[a-zA-Z0-9-_.]+$` |
| `ssl_disabled` | `TrueClass \| FalseClass` | Optional | Boolean value to check the SSL certification. |
| `is_validated` | `TrueClass \| FalseClass` | Optional | True if CSP is validated using provided credential, false otherwise. |
| `validation_status` | `String` | Optional | Status when the repository is validated eg: CREDENTIAL_VALIDATION_SUCCESS.<br>**Constraints**: *Maximum Length*: `32`, *Pattern*: `^[a-zA-Z0-9-_.]+$` |
| `credentials_type` | [`RepositoryCredentialTypeEnum`](../../doc/models/repository-credential-type-enum.md) | Optional | Credentials can be of two types, UserPassCredentials and SSHCredentials. |
| `credentials` | [`RepositoryCredential`](../../doc/models/repository-credential.md) | Optional | Credentials of a repository. |
| `ssh_key` | `String` | Optional | SSH Private Key in PEM format.<br>**Constraints**: *Maximum Length*: `10000`, *Pattern*: `^[a-zA-Z0-9?$@#()\[\]!,+\-=_:.&*%\s]+$` |
| `last_validated_date` | `DateTime` | Optional | Time when the repository was validated. |
| `created_date` | `DateTime` | Optional | Date when the repository was created. |
| `last_modified_date` | `DateTime` | Optional | Date when the repository was updated. |
| `created_by` | `String` | Optional | User information by whom the repository was created.<br>**Constraints**: *Maximum Length*: `32`, *Pattern*: `^[a-zA-Z0-9\-_]+$` |
| `updated_by` | `String` | Optional | User information by whom the repository was updated.<br>**Constraints**: *Maximum Length*: `32`, *Pattern*: `^[a-zA-Z0-9\-_]+$` |
| `is_deleted` | `TrueClass \| FalseClass` | Optional | When it will be soft deleted, status will be changed. |

## Example (as JSON)

```json
{
  "id": "2e13f3a1-287f-4c63-9218-d026bf1bda32",
  "name": "myRepo",
  "description": "My organization repository.",
  "type": "Git",
  "tag": "myTag",
  "endpoint": "https://charts.bitnami.com/bitnami",
  "reacheability": "Internet",
  "CACertificate": "G2",
  "Agents": [
    "Verizon"
  ],
  "sslDisabled": false,
  "isValidated": true,
  "validationStatus": "CREDENTIAL_VALIDATION_SUCCESS",
  "credentialsType": "UserPassCredentials",
  "credentials": {
    "name": "Adam123",
    "password": "password"
  },
  "sshKey": "MIIBpjBABgkqhkiG9",
  "lastValidatedDate": "2006-01-02T15:04:05Z",
  "createdDate": "2006-01-02T15:04:05Z",
  "lastModifiedDate": "2006-01-02T15:04:05Z",
  "createdBy": "User",
  "updatedBy": "User",
  "isDeleted": false
}
```

