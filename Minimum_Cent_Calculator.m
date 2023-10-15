function[]= MinimumCent()
waitfor(msgbox({'Hello!';'This function was prepared by Berkay ŞENGEL';'Function name: MinimumCent';'The objective of this function is to divide a large amount of monetary value into smaller currencies in such a way that the total amount of different types of cent is minimal.'},'MinimumCent'));
promptMessage = sprintf('Do you want to continue?');
titleBarCaption = 'Question';
button = questdlg(promptMessage, titleBarCaption, 'Yes', 'No','Yes');
  if strcmpi(button, 'No')
    quit
  end
while 1
prompt = {'Enter the password to start this program:'};
dlgtitle = 'Security';
dims = [1 50];
definput = {''};
Answer = inputdlg(prompt,dlgtitle,dims,definput);
if strcmp (Answer,'BerkayBau')== true
waitfor(msgbox('Congratulations! Program is starting.'));
    break
end
end
s=input('\nThe positive integer number you want to break into pieces: ');
if s<1 || floor(s)~=ceil(s)
    while s<1 || floor(s)~=ceil(s)
        s=input('The "positive integer" number you want to break into pieces: ');
    end
end
n=input('The integer amount of different types of cents to be used for division (minimum 2 or more): ');
if n<2 || floor(n)~=ceil(n)
    while n<2 || floor(n)~=ceil(n)
        n=input('The "integer" amount of different types of cents to be used for division "(minimum 2 or more)": ');
    end
end
A=zeros(1,n);
term=s;
R=zeros(1,n);
Sum=0;
C=zeros(1,n);
waitfor(errordlg('You should enter all types of cent differently.','Warning'));
for i=1:n
    fprintf('%d. ',i);
    C(i)=input('Type of cent (positive integer number): ');
    if C(i)<1 || floor(C(i))~=ceil(C(i))
    while C(i)<1 || floor(C(i))~=ceil(C(i))
    fprintf('%d. ',i);
    C(i)=input('Type of cent "(positive integer number)": ');
    end
    end
    A(i)=C(i);
end
while 1
    counter=0;
for k=1:n
    for p=k+1:n
         if A(k)==A(p)
             counter=1;
      waitfor(errordlg('You should enter all types of cent "differently".','Warning'));
  for i=1:n
    fprintf('%d. ',i);
    C(i)=input('Type of cent (positive integer number): ');
    if C(i)<1 || floor(C(i))~=ceil(C(i))
    while C(i)<1 || floor(C(i))~=ceil(C(i))
    fprintf('%d. ',i);
    C(i)=input('Type of cent "(positive integer number)": ');
    end
    end
    A(i)=C(i);
  end
         end
    end
end
  if counter==0
      break 
 end
end
for i = 1:n-1
    for j = 1:n-i
        if A(j) < A(j+1)
            switcher= A(j);
            A(j) = A(j+1);
            A(j+1) = switcher;
        end
    end
end
for i = 1:n
    while s >= A(i)
        R(i) = R(i) + 1;
        s = s - A(i);
    end
end
fprintf('\nThe positive integer number you want to break into pieces: %d\n',term);
fprintf('The amount of different types of cents to be used for division: %d\n',n);
fprintf('Different types of cents to be used for division, respectively (descending sort):\n');
for i=1:n
    fprintf('%d. type of cent: ',i);
    fprintf('%d cent\n',A(i));
end
fprintf('\n%d cents are written as follows:\n',term);
remainder=term;
for i=1:n
remainder=remainder-R(i)*A(i);
fprintf('%d*%d= ',R(i), A(i));
fprintf('%d cents / ',R(i)*A(i));
fprintf('The remainder is: %d\n',remainder);
end
if remainder ~= 0
    fprintf('\nThe last remainder is: %d\n',remainder);
    fprintf('You cannot divide this number without remainder by using these types of cent.\n');
else
for i=1:n
    Sum=Sum + R(i);
end
fprintf('\nThe amount of cents required in the minimum quantity: ');
for i=1:n-1
fprintf('%d + ',R(i));
end
fprintf('%d = %d\n', R(n),Sum);
end
end