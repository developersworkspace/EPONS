﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace EPONS.Teddy.Application.ValueObjects
{
    public class SurveyQuestion
    {
        public Guid Id { get; set; }
        public string Text { get; set; }
        public int SortOrder { get; set; }

        public IList<SurveyQuestionOption> Options { get; set; }
    }
}
