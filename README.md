### `ocl-manager`

- Creates an Organization named `MSF`
- Creates a public Source named `MSF` under `MSF` Organization
- Creates users for OCL
- Adds created users to `MSF` Organization


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
