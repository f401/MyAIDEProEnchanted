.class public Lcom/github/megatronking/svg/generator/svg/parser/attribute/PathAttributeParser;
.super Lcom/github/megatronking/svg/generator/svg/parser/SvgNodeAbstractAttributeParser;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/github/megatronking/svg/generator/svg/parser/SvgNodeAbstractAttributeParser",
        "<",
        "Lcom/github/megatronking/svg/generator/svg/model/Path;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/github/megatronking/svg/generator/svg/parser/SvgNodeAbstractAttributeParser;-><init>()V

    return-void
.end method


# virtual methods
.method public parse(Lorg/dom4j/Element;Lcom/github/megatronking/svg/generator/svg/model/Path;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/dom4j/Element;",
            "Lcom/github/megatronking/svg/generator/svg/model/Path;",
            ")V^",
            "Lorg/dom4j/DocumentException;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/dom4j/DocumentException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    invoke-super {p0, p1, p2}, Lcom/github/megatronking/svg/generator/svg/parser/SvgNodeAbstractAttributeParser;->parse(Lorg/dom4j/Element;Lcom/github/megatronking/svg/generator/svg/model/SvgNode;)V

    const-string v0, "d"

    invoke-virtual {p0, p1, v0}, Lcom/github/megatronking/svg/generator/svg/parser/attribute/PathAttributeParser;->parseString(Lorg/dom4j/Element;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lcom/github/megatronking/svg/generator/svg/model/Path;->d:Ljava/lang/String;

    invoke-virtual {p2}, Lcom/github/megatronking/svg/generator/svg/model/Path;->toPath()V

    return-void
.end method

.method public bridge parse(Lorg/dom4j/Element;Lcom/github/megatronking/svg/generator/svg/model/SvgNode;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/dom4j/DocumentException;
        }
    .end annotation

    check-cast p2, Lcom/github/megatronking/svg/generator/svg/model/Path;

    invoke-virtual {p0, p1, p2}, Lcom/github/megatronking/svg/generator/svg/parser/attribute/PathAttributeParser;->parse(Lorg/dom4j/Element;Lcom/github/megatronking/svg/generator/svg/model/Path;)V

    return-void
.end method
