function varargout = test2(varargin)
% TEST2 MATLAB code for test2.fig
%      TEST2, by itself, creates a new TEST2 or raises the existing
%      singleton*.
%
%      H = TEST2 returns the handle to a new TEST2 or the handle to
%      the existing singleton*.
%
%      TEST2('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in TEST2.M with the given input arguments.
%
%      TEST2('Property','Value',...) creates a new TEST2 or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before test2_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to test2_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help test2

% Last Modified by GUIDE v2.5 19-Jun-2014 15:53:11

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @test2_OpeningFcn, ...
                   'gui_OutputFcn',  @test2_OutputFcn, ...
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


% --- Executes just before test2 is made visible.
function test2_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to test2 (see VARARGIN)

% Choose default command line output for test2
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes test2 wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = test2_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;
% create an axes that spans the whole gui
ah = axes('unit', 'normalized', 'position', [0 0 1 1]); 
% import the background image and show it on the axes
bg = imread('tif2.jpg'); imagesc(bg);
% prevent plotting over the background and turn the axis off
set(ah,'handlevisibility','on','visible','on')
% making sure the background is behind all the other uicontrols
uistack(ah, 'bottom');

