﻿using System;
using System.Collections.Generic;
using System.Text;

namespace Entities.DTO
{
    public class AccountDto
    {
        public Guid AccountId { get; set; }

        public DateTime DateCreated { get; set; }

        public string AccountType { get; set; }
    }
}
