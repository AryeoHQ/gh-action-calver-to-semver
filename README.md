<!-- start title -->

# GitHub Action: CalVer to SemVer Release

<!-- end title -->
<!-- start description -->

Computes next SemVer release values.

<!-- end description -->
<!-- start contents -->
<!-- end contents -->
<!-- start usage -->

```yaml
- uses: AryeoHQ/gh-action-calver-to-semver-release@undefined
  with:
    # Current CalVer
    calver: ""

    # Total number of existing CalVer's
    calver-count: ""

    # Target repository's latest SemVer release
    latest-semver: ""
```

<!-- end usage -->
<!-- start inputs -->

| **Input**           | **Description**                           | **Default** | **Required** |
| :------------------ | :---------------------------------------- | :---------: | :----------: |
| **`calver`**        | Current CalVer                            |             |   **true**   |
| **`calver-count`**  | Total number of existing CalVer's         |             |   **true**   |
| **`latest-semver`** | Target repository's latest SemVer release |             |   **true**   |

<!-- end inputs -->
<!-- start outputs -->

| **Output** | **Description** | **Default** | **Required** |
| :--------- | :-------------- | ----------- | ------------ |
| `semver`   | Computed SemVer |             |              |
| `notes`    | Computed notes  |             |              |

<!-- end outputs -->
<!-- start [.github/ghdocs/examples/] -->
<!-- end [.github/ghdocs/examples/] -->
