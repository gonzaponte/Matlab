function varargout = sensordemovemento(varargin)
% SENSORDEMOVEMENTO M-file for sensordemovemento.fig
%      SENSORDEMOVEMENTO, by itself, creates a new SENSORDEMOVEMENTO or raises the existing
%      singleton*.
%
%      H = SENSORDEMOVEMENTO returns the handle to a new SENSORDEMOVEMENTO or the handle to
%      the existing singleton*.
%
%      SENSORDEMOVEMENTO('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in SENSORDEMOVEMENTO.M with the given input arguments.
%
%      SENSORDEMOVEMENTO('Property','Value',...) creates a new SENSORDEMOVEMENTO or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before sensordemovemento_OpeningFunction gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to sensordemovemento_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help sensordemovemento

% Last Modified by GUIDE v2.5 23-Nov-2010 14:06:25

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @sensordemovemento_OpeningFcn, ...
                   'gui_OutputFcn',  @sensordemovemento_OutputFcn, ...
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


% --- Executes just before sensordemovemento is made visible.
function sensordemovemento_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to sensordemovemento (see VARARGIN)

% Choose default command line output for sensordemovemento
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes sensordemovemento wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = sensordemovemento_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in pushbutton2.
function pushbutton2_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
A=handles.edit2;
B=handles.edit3;
sensordemovemento(A,B)

% --- Executes on button press in pushbutton3.
function pushbutton3_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
A=handles.edit2;
B=handles.edit3;
sensordemovemento(A,B)


function edit2_Callback(hObject, eventdata, handles)
% hObject    handle to edit2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit2 as text
%        str2double(get(hObject,'String')) returns contents of edit2 as a double
s=get(hObject,'String'); %Almacenar valor ingresado
NewVal = str2double(s); %Transformar a formato double
handles.edit2=NewVal; %Almacenar en identificador
guidata(hObject,handles); %Salvar datos de la aplicación

% --- Executes during object creation, after setting all properties.
function edit2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit3_Callback(hObject, eventdata, handles)
% hObject    handle to edit3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit3 as text
%        str2double(get(hObject,'String')) returns contents of edit3 as a double
t=get(hObject,'String'); %Almacenar valor ingresado
NewVal = str2double(t); %Transformar a formato double
handles.edit3=NewVal; %Almacenar en identificador
guidata(hObject,handles); %Salvar datos de la aplicación

% --- Executes during object creation, after setting all properties.
function edit3_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


