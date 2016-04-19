load ('USPS');
[coeff,score] = pca(A);

% for p=10
p=10;
D = score(:,1:p)*coeff(:,1:p)' + ones(3000,1)*mean(A);
D1 = reshape(D(1,:),16,16);
D2 = reshape(D(2,:),16,16);
figure;
imshow(D1');
figure;
imshow(D2');

% for p=50
p=50;
D = score(:,1:p)*coeff(:,1:p)' + ones(3000,1)*mean(A);
D1 = reshape(D(1,:),16,16);
D2 = reshape(D(2,:),16,16);
figure;
imshow(D1');
figure;
imshow(D2');

% for p=100
p=100;
D = score(:,1:p)*coeff(:,1:p)' + ones(3000,1)*mean(A);
D1 = reshape(D(1,:),16,16);
D2 = reshape(D(2,:),16,16);
figure;
imshow(D1');
figure;
imshow(D2');

% for p=200
p=200;
D = score(:,1:p)*coeff(:,1:p)' + ones(3000,1)*mean(A);
D1 = reshape(D(1,:),16,16);
D2 = reshape(D(2,:),16,16);
figure;
imshow(D1');
figure;
imshow(D2');
