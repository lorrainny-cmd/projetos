void main() {
  Pessoa ana = Pessoa("Ana", null, null);
  Pessoa ricardo = Pessoa("Ricardo", null, null);
  Pessoa clara = Pessoa.somenteNome('Clara');
  Pessoa ricardo = Pessoa("Ricardo", ana, ricardo);
  Pessoa luan = Pessoa('Luan', clara, ricardo);
  Pessoa caua = Pessoa("Caua", clara, ricardo);

  luan.meuIrmao(caua);
}

class Pessoa {
  String nome;
  Pessoa mae;
  Pessoa pai;

  Pessoa(this.nome, this.mae, this.pai);
  Pessoa.somenteNome(this.nome);

  void souEu(Pessoa outraPessoa) {
    if (outraPessoa.nome == nome && outraPessoa.mae == mae) {
      print("Somos semelhantes");
    } else {
      print("Não somos semelhantes");
    }
  }

  void meuIrmao(Pessoa outraPessoa) {
    if (outraPessoa.mae == mae || outraPessoa.pai == pai) {
      print("meu irmao!");
    }
  }

  void ehParentesco(Pessoa outraPessoa) {
    if (outraPessoa == mae) {
      print('${outraPessoa.nome} minha mãe!');
    }

    if (outraPessoa == pai) {
      print('${outraPessoa.nome} meu pai!');
    }

    if (outraPessoa == mae.pai || outraPessoa == mae.mae) {
      print('${outraPessoa.nome} meu avô ou avó!');
    }

    if (outraPessoa == pai.pai || outraPessoa == mae.mae) {
      print('${outraPessoa.nome} meu avô ou avó!');
    }
  }
}
