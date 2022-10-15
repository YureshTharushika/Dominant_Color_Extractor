

[filename, pathname] = uigetfile('*.*', 'Pick an Image');

if isequal(filename,0) || isequal(pathname,0)

    disp('User pressed cancel')

else

    filename=strcat(pathname,filename);

    rgbImage=imread(filename);

    k=5;

    close

    redChannel=rgbImage(:, :, 1);

    greenChannel=rgbImage(:, :, 2);

    blueChannel=rgbImage(:, :, 3);

    data=double([redChannel(:), greenChannel(:), blueChannel(:)]);

    numberOfClasses=k;

    [m n]=kmeans(data,numberOfClasses);

    m=reshape(m,size(rgbImage,1),size(rgbImage,2));


    frequency=[];

    temp=0;

    for i = 1:k

        for a=1:size(rgbImage,1)

            for b=1:size(rgbImage,2)

                if(m(a,b)==i)

                    temp=temp+1;

                end

            end

        end

        frequency=[frequency temp];

        temp=0;

    end

    [ma na]=max(frequency);

    disp(n(na,:));

    

end