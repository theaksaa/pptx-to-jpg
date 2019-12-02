for file in *.pptx;
do
    echo "> ${file%.*}"
    unoconv -f pdf ${file%.*}.pptx
    convert ${file%.*}.pdf ${file%.*}.jpg
    rm -f ${file%.*}.pdf
done 

