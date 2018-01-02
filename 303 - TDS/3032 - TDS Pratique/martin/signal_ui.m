function signal_ui
% https://nl.mathworks.com/help/matlab/creating_guis/about-the-simple-programmatic-gui-example.html
window = figure('Visible', 'off', 'Position', [360,500,450,285]);
%visible off permet de n'afficher la fenetre que quand tout est chargé

freq    = uicontrol('Style','slider',...
             'String','Frequency','Position',[315,220,70,25]);
         
end