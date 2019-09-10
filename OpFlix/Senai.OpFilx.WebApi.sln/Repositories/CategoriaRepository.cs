using Senai.OpFilx.WebApi.sln.Domains;
using Senai.OpFilx.WebApi.sln.Interfaces;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace Senai.OpFilx.WebApi.sln.Repositories
{
    public class CategoriaRepository : ICategoriaRepository
    {
        public void Cadastrar(Categorias categoria)
        {
            using (OpFlixContext ctx = new OpFlixContext())
            {
                ctx.Categorias.Add(categoria);
                ctx.SaveChanges();
            }
        }


    }

}
