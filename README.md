# Playtime with Concourse Pull Requests

This repo is a live interactive example of https://github.com/jtarchie/pullrequest-resource

1. Visit the CI pipeline in action at https://ci.starkandwayne.com/teams/main/pipelines/concourse-pullrequest-playtime

2. Create a branch, make a change and submit a Github Pull Request

    * Edit the file https://github.com/starkandwayne/concourse-pullrequest-playtime/edit/master/test.sh
    * Modify the file to change `exit 0` to a positive number indicating an error
    * Select option "Create a new branch for this commit and start a pull request"
    * Click "Propose file change"

    ![create-pr](https://cl.ly/451s2u2Y1L22/download/create-pr.png)

    * Click "Create pull request"
    * Resulting pull request will look similar to https://github.com/starkandwayne/concourse-pullrequest-playtime/pull/2
    * Within a minute Concourse will detect your PR and run the `test-pr` job upon it https://ci.starkandwayne.com/teams/main/pipelines/concourse-pullrequest-playtime/jobs/test-pr/builds/2

3. Your pull request should be annotated with a link to the CI pipeline associated with your PR.

## Examples

A failing PR:

* Original Pull Request https://github.com/starkandwayne/concourse-pullrequest-playtime/pull/1
* CI `test-pr` job attempts to test PR https://ci.starkandwayne.com/teams/main/pipelines/concourse-pullrequest-playtime/jobs/test-pr/builds/1
* Failed `test-pr` job updates PR https://ci.starkandwayne.com/teams/main/pipelines/concourse-pullrequest-playtime/jobs/test-pr/builds/1

    ![failing-pr](https://cl.ly/2V2I230l3T3q/download/failing-pr.png)

A successful PR:

* Original Pull Request https://github.com/starkandwayne/concourse-pullrequest-playtime/pull/2
* CI `test-pr` job attempts to test PR https://ci.starkandwayne.com/teams/main/pipelines/concourse-pullrequest-playtime/jobs/test-pr/builds/2
* Successful `test-pr` job updates PR

    ![successful-pr](https://cl.ly/0B341N1l280A/download/successful-pr.png)
