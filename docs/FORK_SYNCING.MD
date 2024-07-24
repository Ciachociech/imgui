If you want to sync this fork with a ocornut's ImGui repository (that OG), instead of using build-in GitHub's tool/option described here () please provide these steps:

1. Create a new branch and update it with OG changes
git checkout -b ocornut-master master
git pull https://github.com/ocornut/imgui.git master

2. Test changes and if everything is okay, then create a PR in GitHub
3. Resolve conflicts (if any are present) and after commiting do step 2, then choose "Squash and merge" to have one commit with all changes.
4. Done and have a nice day!
