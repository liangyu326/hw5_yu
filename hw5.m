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
error10=0;
for i=1:3000
    a = norm(A(i,:)-D(i,:),2);
    error10 = error10 + a;
end
    

% for p=50
p=50;
D = score(:,1:p)*coeff(:,1:p)' + ones(3000,1)*mean(A);
D1 = reshape(D(1,:),16,16);
D2 = reshape(D(2,:),16,16);
figure;
imshow(D1');
figure;
imshow(D2');
error50=0;
for i=1:3000
    a = norm(A(i,:)-D(i,:),2);
    error50 = error50 + a;
end

% for p=100
p=100;
D = score(:,1:p)*coeff(:,1:p)' + ones(3000,1)*mean(A);
D1 = reshape(D(1,:),16,16);
D2 = reshape(D(2,:),16,16);
figure;
imshow(D1');
figure;
imshow(D2');
error100=0;
for i=1:3000
    a = norm(A(i,:)-D(i,:),2);
    error100 = error100 + a;
end

% for p=200
p=200;
D = score(:,1:p)*coeff(:,1:p)' + ones(3000,1)*mean(A);
D1 = reshape(D(1,:),16,16);
D2 = reshape(D(2,:),16,16);
figure;
imshow(D1');
figure;
imshow(D2');
error200=0;
for i=1:3000
    a = norm(A(i,:)-D(i,:),2);
    error200 = error200 + a;
end

error = [error10, error50, error100, error200];
plot(error)