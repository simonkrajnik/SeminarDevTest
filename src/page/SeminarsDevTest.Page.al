page 50100 "Seminars-DevTest"
{
    ApplicationArea = All;
    Caption = 'Seminars';
    PageType = List;
    SourceTable = "Seminar-DevTest";

    layout
    {
        area(Content)
        {
            repeater(General)
            {
                field("No."; Rec."No.")
                {
                    ToolTip = 'Specifies the value of the No. field.', Comment = '%';
                }
                field(Description; Rec.Description)
                {
                    ToolTip = 'Specifies the value of the Description field.', Comment = '%';
                }
                field("Begin Date"; Rec."Begin Date")
                {
                    ToolTip = 'Specifies the value of the Begin Date field.', Comment = '%';
                }
                field("End Date"; Rec."End Date")
                {
                    ToolTip = 'Specifies the value of the End Date field.', Comment = '%';
                }
                field("Duration"; Rec."Duration")
                {
                    ToolTip = 'Specifies the value of the Duration field.', Comment = '%';
                }
                field(Organizer; Rec.Organizer)
                {
                    ToolTip = 'Specifies the value of the Organizer field.', Comment = '%';
                }
                field("Organizer Name"; Rec."Organizer Name")
                {
                    ToolTip = 'Specifies the value of the Organizer Name field.', Comment = '%';
                }
                field("Seminar Price"; Rec."Seminar Price")
                {
                    ToolTip = 'Specifies the value of the Seminar Price field.', Comment = '%';
                }
                field("Min No. of Participants"; Rec."Min No. of Participants")
                {
                    ToolTip = 'Specifies the value of the Min No. of Participants field.', Comment = '%';
                }
                field("Max No. of Participants"; Rec."Max No. of Participants")
                {
                    ToolTip = 'Specifies the value of the Max No. of Participants field.', Comment = '%';
                }
                field("Last Modified by"; Rec."Last Modified by")
                {
                    ToolTip = 'Specifies the value of the Last Modified by field.', Comment = '%';
                }
            }
        }
    }
}
