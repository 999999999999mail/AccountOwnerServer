using Contracts;
using Entities;
using System;
using System.Collections.Generic;
using System.Text;

namespace Repository
{
    public class RepositoryWrapper : IRepositoryWrapper
    {
        private RepositoryContext _repositoryContext;

        private IOwnerRepository _owner;

        private IAccountRepository _account;

        public IOwnerRepository Owner
        {
            get
            {
                return _owner ?? (_owner = new OwnerRepository(_repositoryContext));
            }
        }

        public IAccountRepository Account
        {
            get
            {
                return _account ?? (_account = new AccountRepository(_repositoryContext));
            }
        }

        public RepositoryWrapper(RepositoryContext repositoryContext)
        {
            _repositoryContext = repositoryContext;
        }

        public void Save()
        {
            _repositoryContext.SaveChanges();
        }
    }
}
