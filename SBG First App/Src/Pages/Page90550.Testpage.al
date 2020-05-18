page 90550 "Setup page"
{
    PageType = Card;
    ApplicationArea = All;
    UsageCategory = Administration;
    SourceTable = "SBG Radio Show";

    layout
    {
        area(Content)
        {
            group(General)
            {
                field("No."; "No.")
                {
                    ApplicationArea = All;

                }
            }
        }
    }

    actions
    {
        area(Processing)
        {
            action("if-else")
            {
                ApplicationArea = All;

                trigger OnAction()
                var
                    ControlStatements: Codeunit "SBG Control Statements";
                begin
                    ControlStatements.ifelsestatement();
                end;

            }
            action("Case Statement")
            {
                ApplicationArea = All;

                trigger OnAction()
                var
                    ControlStatements: Codeunit "SBG Control Statements";
                begin
                    ControlStatements.CaseStatement();
                end;

            }
            action("for-loop")
            {
                ApplicationArea = All;

                trigger OnAction()
                var
                    RepetitiveStatements: Codeunit "SBG Repetitive Statements";
                begin
                    RepetitiveStatements.forloop();
                end;

            }
            action("foreach-loop")
            {
                ApplicationArea = All;

                trigger OnAction()
                var
                    RepetitiveStatements: Codeunit "SBG Repetitive Statements";
                begin
                    RepetitiveStatements.foreachloop();
                end;

            }
            action("while-loop")
            {
                ApplicationArea = All;

                trigger OnAction()
                var
                    RepetitiveStatements: Codeunit "SBG Repetitive Statements";
                begin
                    RepetitiveStatements.whileloop();
                end;

            }
            action("RepeatUntil-loop")
            {
                ApplicationArea = All;

                trigger OnAction()
                var
                    RepetitiveStatements: Codeunit "SBG Repetitive Statements";
                begin
                    RepetitiveStatements.RepeatUntilLoop();
                end;

            }
            action("GET Method")
            {
                ApplicationArea = All;

                trigger OnAction()
                var
                    ALmethods: Codeunit "SBG AL Methods";
                begin
                    ALmethods.GetMethod();
                end;

            }
            action("GetBySystemID")
            {
                ApplicationArea = All;

                trigger OnAction()
                var
                    ALmethods: Codeunit "SBG AL Methods";
                begin
                    ALmethods.GetBySystemID();
                end;
            }
            action("Find First")
            {
                ApplicationArea = All;

                trigger OnAction()
                var
                    ALmethods: Codeunit "SBG AL Methods";
                begin
                    ALmethods.FindFirst();
                end;
            }
            action("SetCurrentKey")
            {
                ApplicationArea = All;

                trigger OnAction()
                var
                    ALmethods: Codeunit "SBG AL Methods";
                begin
                    ALmethods.SetCurrentKey();
                end;
            }

        }
    }
}