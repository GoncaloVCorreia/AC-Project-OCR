classdef app < matlab.apps.AppBase

    % Properties that correspond to app components
    properties (Access = public)
        UIFigure                matlab.ui.Figure
        Button                  matlab.ui.control.Button
        ClassifierListBox       matlab.ui.control.ListBox
        ClassifierListBoxLabel  matlab.ui.control.Label
        FilterListBox           matlab.ui.control.ListBox
        FilterListBoxLabel      matlab.ui.control.Label
    end

    % Callbacks that handle component events
    methods (Access = private)

        % Button pushed function: Button
        function run(app, event)
            run(app.FilterListBox.Value,app.ClassifierListBox.Value)
        end
    end

    % Component initialization
    methods (Access = private)

        % Create UIFigure and components
        function createComponents(app)

            % Create UIFigure and hide until all components are created
            app.UIFigure = uifigure('Visible', 'off');
            app.UIFigure.Color = [0.149 0.149 0.149];
            app.UIFigure.Position = [100 100 640 480];
            app.UIFigure.Name = 'MATLAB App';

            % Create FilterListBoxLabel
            app.FilterListBoxLabel = uilabel(app.UIFigure);
            app.FilterListBoxLabel.HorizontalAlignment = 'right';
            app.FilterListBoxLabel.FontColor = [1 1 1];
            app.FilterListBoxLabel.Position = [112 295 32 22];
            app.FilterListBoxLabel.Text = 'Filter';

            % Create FilterListBox
            app.FilterListBox = uilistbox(app.UIFigure);
            app.FilterListBox.Items = {'None', 'Associative Memory', 'Binary Perceptron'};
            app.FilterListBox.FontColor = [1 1 1];
            app.FilterListBox.BackgroundColor = [0.651 0.651 0.651];
            app.FilterListBox.Position = [159 245 100 74];
            app.FilterListBox.Value = 'Binary Perceptron';

            % Create ClassifierListBoxLabel
            app.ClassifierListBoxLabel = uilabel(app.UIFigure);
            app.ClassifierListBoxLabel.HorizontalAlignment = 'right';
            app.ClassifierListBoxLabel.FontColor = [1 1 1];
            app.ClassifierListBoxLabel.Position = [366 293 54 22];
            app.ClassifierListBoxLabel.Text = 'Classifier';

            % Create ClassifierListBox
            app.ClassifierListBox = uilistbox(app.UIFigure);
            app.ClassifierListBox.Items = {'Sigmoid', 'Sigmoid_Softmax', 'Linear', 'Sigmoid_Sigmoid'};
            app.ClassifierListBox.FontColor = [1 1 1];
            app.ClassifierListBox.BackgroundColor = [0.651 0.651 0.651];
            app.ClassifierListBox.Position = [435 243 100 74];
            app.ClassifierListBox.Value = 'Sigmoid';

            % Create Button
            app.Button = uibutton(app.UIFigure, 'push');
            app.Button.ButtonPushedFcn = createCallbackFcn(app, @run, true);
            app.Button.BackgroundColor = [0 1 0];
            app.Button.FontWeight = 'bold';
            app.Button.FontColor = [0.149 0.149 0.149];
            app.Button.Position = [280 138 100 23];

            % Show the figure after all components are created
            app.UIFigure.Visible = 'on';
        end
    end

    % App creation and deletion
    methods (Access = public)

        % Construct app
        function app = app

            % Create UIFigure and components
            createComponents(app)

            % Register the app with App Designer
            registerApp(app, app.UIFigure)

            if nargout == 0
                clear app
            end
        end

        % Code that executes before app deletion
        function delete(app)

            % Delete UIFigure when app is deleted
            delete(app.UIFigure)
        end
    end
end