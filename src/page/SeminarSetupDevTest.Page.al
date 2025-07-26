page 50102 "Seminar Setup-DevTest"
{
    ApplicationArea = All;
    Caption = 'Seminar Setup-DevTest';
    PageType = List;
    SourceTable = "Seminar Setup-DevTest";
    UsageCategory = Administration;
    Editable = true;

    layout
    {
        area(Content)
        {
            repeater(General)
            {
                field("Primary Key"; Rec."Primary Key")
                {
                    ToolTip = 'Specifies the value of the Primary Key field.', Comment = '%';
                }
                field("No. Series"; Rec."No. Series")
                {
                    ToolTip = 'Specifies the value of the No. Series field.', Comment = '%';
                }
            }
        }
    }
}
