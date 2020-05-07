#! /bin/bash
b=(20 32 40 50)
for((i=0; i<6; i++))
do
  if [ $i -eq 0 ]
  then
    for((j=0; j<4; j++))
    do
      sed -i "10c data = f['cloud_mass_${b[j]}um'][:]" GetData.py
      sed -i "14c\    a = f['cloud_mass_${b[j]}um'][:]" GetData.py
      sed -i "16c np.savetxt('Data//cloud_mass_${b[j]}um.txt',data.T)" GetData.py
      python GetData.py
    done
  fi
  if [ $i -eq 1 ]
  then
    for((j=0; j<4; j++))
    do
      sed -i "10c data = f['cloud_number_${b[j]}um'][:]" GetData.py
      sed -i "14c\    a = f['cloud_number_${b[j]}um'][:]" GetData.py
      sed -i "16c np.savetxt('Data//cloud_number_${b[j]}um.txt',data.T)" GetData.py
      python GetData.py
    done
  fi
  if [ $i -eq 2 ]
  then
    for((j=0; j<4; j++))
    do
      sed -i "10c data = f['rain_mass_${b[j]}um'][:]" GetData.py
      sed -i "14c\    a = f['rain_mass_${b[j]}um'][:]" GetData.py
      sed -i "16c np.savetxt('Data//rain_mass_${b[j]}um.txt',data.T)" GetData.py
      python GetData.py
    done
  fi
  if [ $i -eq 3 ]
  then
    for((j=0; j<4; j++))
    do
      sed -i "10c data = f['rain_number_${b[j]}um'][:]" GetData.py
      sed -i "14c\    a = f['rain_number_${b[j]}um'][:]" GetData.py
      sed -i "16c np.savetxt('Data//rain_number_${b[j]}um.txt',data.T)" GetData.py
      python GetData.py
    done
  fi
  if [ $i -eq 4 ]
  then
    for((j=0; j<4; j++))
    do
      sed -i "10c data = f['praut_${b[j]}um'][:]" GetData.py
      sed -i "14c\    a = f['praut_${b[j]}um'][:]" GetData.py
      sed -i "16c np.savetxt('Data//praut_${b[j]}um.txt',data.T)" GetData.py
      python GetData.py
    done
  fi
  if [ $i -eq 5 ]
  then
    for((j=0; j<4; j++))
    do
      sed -i "10c data = f['pracw_${b[j]}um'][:]" GetData.py
      sed -i "14c\    a = f['pracw_${b[j]}um'][:]" GetData.py
      sed -i "16c np.savetxt('Data//pracw_${b[j]}um.txt',data.T)" GetData.py
      python GetData.py
    done
  fi

done
