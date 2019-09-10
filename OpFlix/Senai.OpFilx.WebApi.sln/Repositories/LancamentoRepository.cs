using Senai.OpFilx.WebApi.sln.Domains;
using Senai.OpFilx.WebApi.sln.Interfaces;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace Senai.OpFilx.WebApi.sln.Repositories
{
    public class LancamentoRepository : ILancamentoRepository
    {
        public void Cadastrar(Lancamentos lancamentos)
        {
            using (OpFlixContext ctx = new OpFlixContext())
            {
                ctx.Lancamentos.Add(lancamentos);
                ctx.SaveChanges();
            }
        }

        public List<Lancamentos> Listar()
        {
            using (OpFlixContext ctx = new OpFlixContext())
            {
                return ctx.Lancamentos.ToList();
            }
        }
    }
}
