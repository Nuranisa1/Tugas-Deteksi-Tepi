a=imread('sejarah 1.jpg');
b=rgb2gray(a);
figure(1);imshow(b)

TRobert=edge(b,'roberts');
figure(2);imshow(TRobert)

TSobel=edge(b,'sobel');
figure(3);imshow(TSobel)

TRobert=edge(b,'roberts',0.2);
figure(2);imshow(TRobert)

TRobert=edge(b,'roberts',0.1);
figure(2);imshow(TRobert)

TRobert=edge(b,'roberts',0.8);
figure(2);imshow(TRobert)

TRobert=edge(b,'roberts',0.5);
figure(2);imshow(TRobert)

TRobert=edge(b,'roberts',0.2);
figure(2);imshow(TRobert)

TPrewitt=edge(b,'prewitt');
figure(4);imshow(TPrewitt)

TLog=edge(b,'log');
figure(5);imshow(TLog);title('Tepi Log')

TZero=edge(b,'zerocross');
figure(6);imshow(TZero);title('Tepi TZero')

TCanny=edge(b,'canny');
figure(7);imshow(TCanny);title('Tepi Canny')