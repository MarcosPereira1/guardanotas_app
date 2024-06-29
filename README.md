# Guarda Notas

Guarda Notas é um aplicativo Flutter para salvar e gerenciar suas anotações de forma simples e eficiente. 

<img src="https://github.com/MarcosPereira1/guardanotas_app/assets/100098827/9f8b1203-fdb3-4f0c-9db6-7401e86df484" alt="Simulator Screenshot - iPhone 15 Pro - 2024-06-29 at 15 06 16" width="300"/>

## Funcionalidades

- Adicionar novas anotações.
- Editar anotações existentes.
- Excluir anotações.
- Interface de usuário intuitiva e responsiva.

## Instalação

Para rodar este projeto localmente, siga os passos abaixo:

1. **Clone o repositório**
    ```sh
    git clone https://github.com/marcospereira1/guarda-notas.git
    ```

2. **Navegue até o diretório do projeto**
    ```sh
    cd guarda-notas
    ```

3. **Instale as dependências**
    ```sh
    flutter pub get
    ```

4. **Rode o aplicativo**
    ```sh
    flutter run
    ```

## Estrutura do Projeto

O projeto segue a estrutura básica do Flutter com a separação de responsabilidades:

- `features/keep_notes/`: Contém a funcionalidade principal do aplicativo.
- `presentation/widgets/`: Contém widgets específicos para a apresentação.
- `resources/`: Contém recursos como estilos e temas.
- `main.dart`: Ponto de entrada do aplicativo.

## Uso

### Adicionar Anotações

1. Abra o aplicativo.
2. No campo de entrada, escreva sua nota.
3. Clique no botão "Adicionar" para salvar a nota.

### Editar Anotações

1. Clique na anotação que deseja editar.
2. Altere o texto no campo de entrada.
3. Clique em "Salvar" para atualizar a anotação.

### Excluir Anotações

1. Clique no botão "Excluir" ao lado da anotação que deseja remover.

## Design

O design do aplicativo utiliza um esquema de cores simples e limpo para garantir uma experiência de usuário agradável. As cores e estilos estão definidos em `resources/design_system.dart`.

## Contribuição

Contribuições são bem-vindas! Sinta-se à vontade para abrir uma issue ou um pull request.

1. **Fork o repositório**
2. **Crie uma branch para sua feature ou correção de bug**
    ```sh
    git checkout -b minha-feature
    ```
3. **Faça commit de suas mudanças**
    ```sh
    git commit -m 'Adiciona minha feature'
    ```
4. **Faça push para a branch**
    ```sh
    git push origin minha-feature
    ```
5. **Abra um Pull Request**

## Licença

Este projeto está licenciado sob a MIT License - veja o arquivo [LICENSE](LICENSE) para mais detalhes.
