using Senai.OpFilx.WebApi.sln.Domains;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace Senai.OpFilx.WebApi.sln.Interfaces
{
    interface ILancamentoRepository
    {
        void Cadastrar(Lancamentos lancamentos);

        List<Lancamentos> Listar();
    }
}
