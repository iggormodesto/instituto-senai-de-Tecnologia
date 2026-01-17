## Criando tema

Para começar siga os seguintes passos:

- Instale o [Node.js](https://nodejs.org/en/) Versão v16.16.0;
- Use o npm para instalar o Yeoman, o gulp e o Liferay Theme Generator em
  qualquer pasta:

```bash
npm install -g yarn yo gulp generator-liferay-theme node-gyp
```

### Tabela de Compatibilidade

| Liferay Version   | Node      | NPM   | generator-liferay-theme | Gulp      | Yeoman   |
|-------------------|-----------|-------|-------------------------|-----------|----------|
| Liferay DXP 7.0   | 6.6.0     | 6.4.1 | 8.x.x                   | 2.x       | 2.x      |
| Liferay DXP 7.1   | 8.15.0    | 6.4.1 | 8.x.x                   | 2.x       | 3.x      |
| Liferay DXP 7.2   | 10.15.3   | 6.4.1 | 9.x.x & 10.x.x          | 3.x & 4.x | 3.x      |
| Liferay DXP 7.3   | 10.15.3   | 6.4.1 | 9.x.x & 10.x.x          | 3.x & 4.x | 3.x      |
| Liferay DXP 7.4   | 16.13.0   | 8.1.0 | 10.2.x                  | 4.x       | 4.x      |

- Crie uma pasta no mesmo nível do portal chamada plugins para ser inserido
  todos os arquivos custumizados.
- Ainda na pasta de plugins, clone o repositório:


- Entre na pasta do repositório e em seguida:

```bash
npm install
```

- Logo em seguida configure o gulp:

```bash
gulp init
```

- Para compilar o tema:

```bash
gulp build deploy
```

## Observações importantes

Verifique a versão do Python se é

```bash
Python 3.13.2 (main, Feb  4 2025, 14:51:09) [Clang 16.0.0 (clang-1600.0.26.6)] on darwin
Type "help", "copyright", "credits" or "license" for more information.
```
