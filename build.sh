git commit -a
git push
git tag 0.2.0 --force
git push --tags --force
pod repo push git@github.com:jneyer/SimpleRestClient.git SimpleRestClient.podspec 
