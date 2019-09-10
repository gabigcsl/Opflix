using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Mvc;
using Senai.OpFilx.WebApi.sln.Domains;
using Senai.OpFilx.WebApi.sln.Interfaces;
using Senai.OpFilx.WebApi.sln.Repositories;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace Senai.OpFilx.WebApi.sln.Controllers
{
    [Route("api/[controller]")]
    [Produces("application/json")]
    [ApiController]
    public class LancamentoController : ControllerBase
    {

        private ILancamentoRepository LancamentoRepository { get; set; }

        public LancamentoController()
        {
            LancamentoRepository = new LancamentoRepository();
        }


        [Authorize(Roles = "1")]
        [HttpPost]
        public IActionResult Cadastrar(Lancamentos lancamento)
        {
            try
            {
                LancamentoRepository.Cadastrar(lancamento);
                return Ok();
            }
            catch (System.Exception ex)
            {
                return BadRequest(new { mensagem = ex.Message });
            }
        }

        [HttpGet]
        public IActionResult Listar()
        {
            return Ok(LancamentoRepository.Listar());
        }
    }
}
