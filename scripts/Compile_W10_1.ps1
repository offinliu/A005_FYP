Write-Host "INFO: This script assumes that you are running from the scripts\ folder."
Write-Host "Creating..."
cd ..
mkdir -p build/bin
cd build

Write-Host "Compiling..."
#Write-Host "Compiling main.cpp..."
#g++ -I ../include/ -c ../app/main.cpp
Write-Host "Compiling input_ik.cpp..."
g++ -I ../include/ -c ../src/input_ik.cpp
Write-Host "Compile succesful"
Write-Host "Compiling Dm.cpp..."
g++ -I ../include/ -c ../src/Dm.cpp
Write-Host "Compile succesful"
Write-Host "Linking..."
g++ -g -I ../include/ input_ik.o Dm.o -o bin/main.exe ../src/main.cpp -lstdc++
Write-Host "Executing..."
./bin/main.exe