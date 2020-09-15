### `ocl-manager`

- Creates an Organization named `MSFOCP`
- Creates a public Source named `MSFOCP` under `MSFOCP` Organization
- Creates users for OCL
- Adds created users to `MSFOCP` Organization


### Pre-requisite
In `run.sh`, add your `API token` and `OCL_API_HOST` (backend endpoint)
```
AUTH="Authorization: Token xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx"
OCL_API_HOST="http://localhost:8000"
```

### How to run
```
$ ./run.sh
```
