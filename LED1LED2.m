function varargout = LED1LED2(varargin)
% LED1LED2 MATLAB code for LED1LED2.fig
%      LED1LED2, by itself, creates a new LED1LED2 or raises the existing
%      singleton*.
%
%      H = LED1LED2 returns the handle to a new LED1LED2 or the handle to
%      the existing singleton*.
%
%      LED1LED2('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in LED1LED2.M with the given input arguments.
%
%      LED1LED2('Property','Value',...) creates a new LED1LED2 or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before LED1LED2_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to LED1LED2_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help LED1LED2

% Last Modified by GUIDE v2.5 25-Sep-2014 11:16:02

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @LED1LED2_OpeningFcn, ...
                   'gui_OutputFcn',  @LED1LED2_OutputFcn, ...
                   'gui_LayoutFcn',  [] , ...
                   'gui_Callback',   []);
if nargin && ischar(varargin{1})
    gui_State.gui_Callback = str2func(varargin{1});
end

if nargout
    [varargout{1:nargout}] = gui_mainfcn(gui_State, varargin{:});
else
    gui_mainfcn(gui_State, varargin{:});
end
% End initialization code - DO NOT EDIT


% --- Executes just before LED1LED2 is made visible.
function LED1LED2_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to LED1LED2 (see VARARGIN)

% Choose default command line output for LED1LED2
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes LED1LED2 wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = LED1LED2_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in pushbutton1.
function pushbutton1_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
clear all;
s=serial('COM1');
set(s,'BaudRate',1200);
fopen(s);
fprintf(s,'%s','a');
fclose(s)
delete(s)
clear s

% --- Executes on button press in pushbutton2.
function pushbutton2_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
clear all;
s=serial('COM1');
set(s,'BaudRate',1200);
fopen(s);
fprintf(s,'%s','b');
fclose(s)
delete(s)
clear s
