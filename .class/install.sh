mkdir -p ~/texmf/tex/latex/djts/
mkdir -p ~/.config/texstudio/completion/user/

cp -r djts.cls djtsdoc.cls djtsasddoc.cls djtsmod.cls images ~/texmf/tex/latex/djts/
cp djts.cwl djtsdoc.cwl djtsasddoc.cwl djtsmod.cwl ~/.config/texstudio/completion/user/

texhash ~/texmf/
