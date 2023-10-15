function[] = Euclidean()
prompt = {'Please enter the first number:'};
dlgtitle = 'Euclid';
dims = [1 50];
definput = {''};
a = inputdlg(prompt,dlgtitle,dims,definput);
a=str2double(a);
prompt = {'Please enter the second number:'};
dlgtitle = 'Euclid';
dims = [1 50];
definput = {''};
b = inputdlg(prompt,dlgtitle,dims,definput);
b=str2double(b);
if a>b
    maxvalue=a;
    minvalue=b;
else
    maxvalue=b;
    minvalue=a;
end
while minvalue ~= 0
    remainder = mod(maxvalue,minvalue);
    maxvalue = minvalue;
    minvalue = remainder;
end
fprintf('The value of the GCD which was obtained using the Euclidean algorithm is: %d\n',maxvalue);
end

function[] = BaseConversion()
prompt = {'Please enter the number you want to convert:'};
dlgtitle = 'BaseConversion';
dims = [1 50];
definput = {''};
a = inputdlg(prompt,dlgtitle,dims,definput);
a=str2double(a);
prompt = {'Please enter the base:'};
dlgtitle = 'BaseConversion';
dims = [1 25];
definput = {''};
b = inputdlg(prompt,dlgtitle,dims,definput);
b=str2double(b);
c=a;
counter=0;
while c ~= 0
c = floor(c/b);
counter= counter + 1;
end
A=zeros(1,counter);
counter = 1;
while a ~= 0
A(counter) = mod(a,b);
a = floor(a/b);
counter = counter + 1;
end
A=fliplr(A);
fprintf('The result of this conversion is: ');
for i=1:counter-1
    fprintf('%d',A(i));
end
fprintf('\n');
end