mountpoint=$(pwd)
docker run -d -v $mountpoint/../:/codelinks --name cl larngeartech/codelinks
