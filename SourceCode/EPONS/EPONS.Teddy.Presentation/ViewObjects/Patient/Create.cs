namespace EPONS.Teddy.Presentation.ViewObjects.Patient
{
    public class Create : Base
    {
        public Application.Entities.Patient Patient { get; set; }

        public Create() :base()
        {

        }

        public Create(Base baseModel) : base(baseModel)
        {

        }

    }
}