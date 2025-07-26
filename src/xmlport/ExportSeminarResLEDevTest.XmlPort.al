xmlport 50100 "Export Seminar Res. LE-DevTest"
{
    Caption = 'Export Seminar Res. Ledger Entries';
    schema
    {
        textelement(RootNodeName)
        {
            tableelement(SeminarDevTest; "Seminar-DevTest")
            {
                fieldelement(No; SeminarDevTest."No.")
                {
                }
                fieldelement(BeginDate; SeminarDevTest."Begin Date")
                {
                }
                fieldelement(EndDate; SeminarDevTest."End Date")
                {
                }
            }
        }
    }
    requestpage
    {
        layout
        {
            area(Content)
            {
                group(GroupName)
                {
                }
            }
        }
        actions
        {
            area(Processing)
            {
            }
        }
    }
}
