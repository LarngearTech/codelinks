mountpoint=$(pwd)
docker run -d -v $mountpoint/../:/codelinks -p 3000:3000 --name cl larngeartech/codelinks
