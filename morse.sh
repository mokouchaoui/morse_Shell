#!/bin/bash


echo "  " 
echo -e '\E[1;32m'"\033[1mMORSE CONVERTER\033[0m"
echo "  "
echo "Usage: One word at a time, letters must be separated by a space"
echo "  "

while true
	do
		a=(1 100 1 300 0 0 0 0)
		b=(1 300 3 100 0 0 0 0)
		c=(1 300 1 100 1 300 1 100)
		d=(1 300 2 100 0 0 0 0)
		e=(1 100 0 0 0 0 0 0)
		f=(2 100 1 300 1 100 0 0)
		g=(2 300 1 100 0 0 0 0)
		h=(4 100 0 0 0 0 0 0) 
		i=(2 100 0 0 0 0 0 0)
		j=(1 100 3 300 0 0 0 0)
		k=(1 100 1 300 1 100 0 0)
		l=(1 100 1 300 2 100 0 0)
		m=(2 300 0 0 0 0 0 0)
		n=(1 300 1 100 0 0 0 0)
		o=(3 300 0 0 0 0 0 0)
		p=(1 100 2 300 1 100 0 0)
		q=(2 300 1 100 1 300 0 0)
		r=(1 100 1 300 1 100 0 0)
		s=(3 100 0 0 0 0 0 0)
		t=(1 300 0 0 0 0 0 0)
		u=(2 100 1 300 0 0 0 0)
		v=(3 100 1 300 0 0 0 0)
		w=(1 100 2 300 0 0 0 0)
		x=(1 300 2 100 1 300 0 0)
	        y=(1 300 1 100 2 300 0 0)
		z=(2 300 2 100 0 0 0 0)
		
		read -p "Text to convert: " tekst_inn

		tekst_inn_ARRAY=(`echo $tekst_inn | tr " " "\n"`)

		an=0

		for ax in "${tekst_inn_ARRAY[@]}"
    	do
				bokstav[an]=$ax
				an=$an+1
		done
		
		bokstav_count=${#bokstav[@]}
		
		am=0

		while [ $am -le $bokstav_count ] ; do
				
				for as in ${bokstav[am]} 
					do 
  					eval 'morse0="${'"$as[0]"'}"'
  					eval 'morse1="${'"$as[1]"'}"'
  					eval 'morse2="${'"$as[2]"'}"'
					eval 'morse3="${'"$as[3]"'}"'
					eval 'morse4="${'"$as[4]"'}"'
					eval 'morse5="${'"$as[5]"'}"'
					eval 'morse6="${'"$as[6]"'}"'
					eval 'morse7="${'"$as[7]"'}"'
												
						beep -r $morse0 -d 300 -f 1000 -l $morse1 
						sleep 0.3
						beep -r $morse2 -d 300 -f 1000 -l $morse3 
						sleep 0.3
						beep -r $morse4 -d 300 -f 1000 -l $morse5 
						sleep 0.3
						beep -r $morse6 -d 300 -f 1000 -l $morse7 
				done
				((am=am+1))
		done
unset bokstav[@]
done
