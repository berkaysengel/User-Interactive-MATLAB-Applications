function f = myfunc()
waitfor(msgbox({'Hello!';'This function was prepared by Berkay ŞENGEL';'Function name: myfunc';'The objective of this function is to calculate the special function which is given.'},'myfunc'));
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
definput = {'BerkayBau'};
Answer = inputdlg(prompt,dlgtitle,dims,definput);
if strcmp (Answer,'BerkayBau')== true
waitfor(msgbox('Congratulations! Program is starting.'));
    break
end
end
prompt = {'Please enter any positive integer n:'};
dlgtitle = 'myfunc';
dims = [1 50];
definput = {''};
n = inputdlg(prompt,dlgtitle,dims,definput);
n = str2double(n);
 if n<1 || floor(n)~=ceil(n)
   while n<1 || floor(n)~=ceil(n)
waitfor(errordlg('You should enter "positive integer n".','Warning'));
prompt = {'Please enter any "positive integer n":'};
dlgtitle = 'myfunc';
dims = [1 50];
definput = {''};
n = inputdlg(prompt,dlgtitle,dims,definput);
n = str2double(n);
   end
 end
 if n == 1
 msgbox('The result is: -1');
 elseif n == 2
 msgbox('The result is: 2');
 else
 f = Calculator(n);
 end
end
function [Result] = Calculator(p)
if p == 1
    Result= -1;
elseif p == 2
    Result= 2;
else
    Result = Calculator(p-1) + 3*Calculator(p-2);
end
end