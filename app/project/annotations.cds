using projectServices as service from '../../srv/service';
annotate service.Projects with @(
    
    UI.FieldGroup #GeneratedGroup : {
        $Type : 'UI.FieldGroupType',
        Data : [
            {
                $Type : 'UI.DataField',
                Label : 'name',
                Value : name,
            },
            {
                $Type : 'UI.DataField',
                Label : 'projectName',
                Value : projectName,
            },
            {
                $Type : 'UI.DataField',
                Label : 'projectElement',
                Value : projectElement,
            },
            {
                $Type : 'UI.DataField',
                Label : 'projectElementDescription',
                Value : projectElementDescription,
            },
            {
                $Type : 'UI.DataField',
                Label : 'companyCode',
                Value : companyCode,
            },
            {
                $Type : 'UI.DataField',
                Label : 'description',
                Value : description,
            },
            {
                $Type : 'UI.DataField',
                Label : 'salesOrg',
                Value : salesOrg,
            },
            {
                $Type : 'UI.DataField',
                Label : 'distributionChannel',
                Value : distributionChannel,
            },
            {
                $Type : 'UI.DataField',
                Label : 'division',
                Value : division,
            },
            {
                $Type : 'UI.DataField',
                Label : 'country',
                Value : country,
            },
            {
                $Type : 'UI.DataField',
                Label : 'completionDate',
                Value : completionDate,
            },
            {
                $Type : 'UI.DataField',
                Label : 'commencementDate',
                Value : commencementDate,
            },
            {
                $Type : 'UI.DataField',
                Label : 'projectProgress',
                Value : projectProgress,
            },
            {
                $Type : 'UI.DataField',
                Label : 'status',
                Value : status,
            },
        ],
    },
    UI.Facets : [
        {
            $Type : 'UI.ReferenceFacet',
            ID : 'GeneratedFacet1',
            Label : 'General Information',
            Target : '@UI.FieldGroup#GeneratedGroup',
        },
        {
            $Type : 'UI.ReferenceFacet',
            Label : 'Milestones',
            ID : 'Milestones',
            Target : 'projectMilestones/@UI.LineItem#Milestones',
        },
    ],
    UI.LineItem : [
        {
            $Type : 'UI.DataField',
            Label : 'name',
            Value : name,
        },
        {
            $Type : 'UI.DataField',
            Label : 'projectName',
            Value : projectName,
        },
        {
            $Type : 'UI.DataField',
            Label : 'projectElement',
            Value : projectElement,
        },
        {
            $Type : 'UI.DataField',
            Label : 'projectElementDescription',
            Value : projectElementDescription,
        },
        {
            $Type : 'UI.DataField',
            Label : 'companyCode',
            Value : companyCode,
        },
    ],
    UI.SelectionFields : [
        completionDate,
        country,
        name,
    ],
);

annotate service.ProjectMilestones with @(
    UI.LineItem #Milestones : [
        {
            $Type : 'UI.DataField',
            Value : project.projectMilestones.actualDate,
            Label : 'actualDate',
        },
        {
            $Type : 'UI.DataField',
            Value : project.projectMilestones.status,
            Label : 'status',
        },
        {
            $Type : 'UI.DataField',
            Value : project.projectMilestones.project_ID,
            Label : 'project_ID',
        },
        {
            $Type : 'UI.DataField',
            Value : project.projectMilestones.plannedDate,
            Label : 'plannedDate',
        },
        {
            $Type : 'UI.DataField',
            Value : project.projectMilestones.description,
            Label : 'description',
        },
        {
            $Type : 'UI.DataField',
            Value : project.projectMilestones.descriptionArabic,
            Label : 'descriptionArabic',
        },
    ],
);

annotate service.Projects with {
    completionDate @Common.Label : 'completionDate'
};

annotate service.Projects with {
    country @Common.Label : 'country'
};

annotate service.Projects with {
    name @Common.Label : 'name'
};

