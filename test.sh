#!/bin/bash

# ============================================================
# INPUTS
# calver: 2020-07-02
# calver-count: 1
# latest-semver: 1.0.3

# EXPECTED OUTPUTS
# semver: 1.0.4
# notes: minor change for 2020-07-02
# ============================================================
export calver=2020-07-02
export ccount=1
export semver=1.0.3
export ccount=$(expr $ccount - 1)
export patch=$(if [[ $(echo $semver | cut -d. -f3) ]]; then echo $(echo $semver | cut -d. -f3); else echo 0; fi)
export minor=$(if [[ $(echo $semver | cut -d. -f2) ]]; then echo $(echo $semver | cut -d. -f2); fi)
export mcount=$(if [[ -z $minor ]]; then echo -1; else echo $minor; fi)
echo "::set-output name=semver::1.$ccount.$(if [[ $ccount -eq $mcount ]]; then echo $(expr $patch + 1); else echo 0; fi)"
echo "::set-output name=notes::$(if [[ $ccount -eq $mcount ]]; then echo Made minor changes for $calver; else echo Made major changes for $calver; fi)"

# ============================================================
# INPUTS
# calver: 2020-07-02
# calver-count: 2
# latest-semver: 1.0.3

# EXPECTED OUTPUTS
# semver: 1.1.0
# notes: major change for 2020-07-02
# ============================================================
export calver=2020-07-02
export ccount=2
export semver=1.0.3
export ccount=$(expr $ccount - 1)
export patch=$(if [[ $(echo $semver | cut -d. -f3) ]]; then echo $(echo $semver | cut -d. -f3); else echo 0; fi)
export minor=$(if [[ $(echo $semver | cut -d. -f2) ]]; then echo $(echo $semver | cut -d. -f2); fi)
export mcount=$(if [[ -z $minor ]]; then echo -1; else echo $minor; fi)
echo "::set-output name=semver::1.$ccount.$(if [[ $ccount -eq $mcount ]]; then echo $(expr $patch + 1); else echo 0; fi)"
echo "::set-output name=notes::$(if [[ $ccount -eq $mcount ]]; then echo Made minor changes for $calver; else echo Made major changes for $calver; fi)"

# ============================================================
# INPUTS
# calver: 2020-07-02
# calver-count: 1
# latest-semver: 

# EXPECTED OUTPUTS
# semver: 1.0.0
# notes: major change for 2020-07-02
# ============================================================
export calver=2020-07-02
export ccount=1
export semver=
export ccount=$(expr $ccount - 1)
export patch=$(if [[ $(echo $semver | cut -d. -f3) ]]; then echo $(echo $semver | cut -d. -f3); else echo 0; fi)
export minor=$(if [[ $(echo $semver | cut -d. -f2) ]]; then echo $(echo $semver | cut -d. -f2); fi)
export mcount=$(if [[ -z $minor ]]; then echo -1; else echo $minor; fi)
echo "::set-output name=semver::1.$ccount.$(if [[ $ccount -eq $mcount ]]; then echo $(expr $patch + 1); else echo 0; fi)"
echo "::set-output name=notes::$(if [[ $ccount -eq $mcount ]]; then echo Made minor changes for $calver; else echo Made major changes for $calver; fi)"