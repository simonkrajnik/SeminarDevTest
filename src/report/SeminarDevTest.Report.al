report 50100 "Seminar-DevTest"
{
    ApplicationArea = All;
    Caption = 'Seminar';
    UsageCategory = ReportsAndAnalysis;
    dataset
    {
        dataitem(SeminarDevTest; "Seminar-DevTest")
        {
            column(No; "No.")
            {
            }
            column(Description; Description)
            {
            }
            column(BeginDate; "Begin Date")
            {
            }
            column(EndDate; "End Date")
            {
            }
            column(Duration; "Duration")
            {
            }
            column(Organizer; Organizer)
            {
            }
            column(OrganizerName; "Organizer Name")
            {
            }
            column(SeminarPrice; "Seminar Price")
            {
            }
            column(MinNoofParticipants; "Min No. of Participants")
            {
            }
            column(MaxNoofParticipants; "Max No. of Participants")
            {
            }
            column(LastModifiedby; "Last Modified by")
            {
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
