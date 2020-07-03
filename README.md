### `ocl-manager`

- 1. Creates an Organization named `MSF`
- 2. Creates a public Source named `MSF` under `MSF` Organization
- 3. Creates users for OCL
- 4. Adds created users to `MSF` Organization


### Pre-requisite
In `run.sh`, add your API token and OCL_API_HOST (backend endpoint)
```
AUTH="Authorization: Token xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx"
OCL_API_HOST="http://localhost:8000"
```

### How to run
```
$ ./run.sh
```
