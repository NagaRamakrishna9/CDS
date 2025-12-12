using {db as service} from '../db/schema';

 service projects{
  @odata.draft.enabled

    entity Projects as projection on service.Projects;
    entity ProjectMilestones as projection on service.ProjectMilestone;
}