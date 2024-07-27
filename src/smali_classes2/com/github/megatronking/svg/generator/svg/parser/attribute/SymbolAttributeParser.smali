.class public Lcom/github/megatronking/svg/generator/svg/parser/attribute/SymbolAttributeParser;
.super Lcom/github/megatronking/svg/generator/svg/parser/SvgNodeAbstractAttributeParser;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/github/megatronking/svg/generator/svg/parser/SvgNodeAbstractAttributeParser",
        "<",
        "Lcom/github/megatronking/svg/generator/svg/model/Symbol;",
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
.method public bridge parse(Lorg/dom4j/Element;Lcom/github/megatronking/svg/generator/svg/model/SvgNode;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/dom4j/DocumentException;
        }
    .end annotation

    check-cast p2, Lcom/github/megatronking/svg/generator/svg/model/Symbol;

    invoke-virtual {p0, p1, p2}, Lcom/github/megatronking/svg/generator/svg/parser/attribute/SymbolAttributeParser;->parse(Lorg/dom4j/Element;Lcom/github/megatronking/svg/generator/svg/model/Symbol;)V

    return-void
.end method

.method public parse(Lorg/dom4j/Element;Lcom/github/megatronking/svg/generator/svg/model/Symbol;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/dom4j/Element;",
            "Lcom/github/megatronking/svg/generator/svg/model/Symbol;",
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

    const/4 v3, 0x4

    const/4 v1, 0x0

    invoke-super {p0, p1, p2}, Lcom/github/megatronking/svg/generator/svg/parser/SvgNodeAbstractAttributeParser;->parse(Lorg/dom4j/Element;Lcom/github/megatronking/svg/generator/svg/model/SvgNode;)V

    const-string v2, "viewBox"

    move-object v0, v1

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, p1, v2, v0}, Lcom/github/megatronking/svg/generator/svg/parser/attribute/SymbolAttributeParser;->parseString(Lorg/dom4j/Element;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v2, "viewbox"

    move-object v0, v1

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, p1, v2, v0}, Lcom/github/megatronking/svg/generator/svg/parser/attribute/SymbolAttributeParser;->parseString(Lorg/dom4j/Element;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_0
    if-nez v0, :cond_1

    const-string v2, "viewPort"

    move-object v0, v1

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, p1, v2, v0}, Lcom/github/megatronking/svg/generator/svg/parser/attribute/SymbolAttributeParser;->parseString(Lorg/dom4j/Element;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_1
    if-nez v0, :cond_2

    const-string v0, "viewport"

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p0, p1, v0, v1}, Lcom/github/megatronking/svg/generator/svg/parser/attribute/SymbolAttributeParser;->parseString(Lorg/dom4j/Element;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_2
    if-eqz v0, :cond_4

    invoke-static {v0}, Lcom/github/megatronking/svg/generator/utils/TextUtils;->removeMultiSpace(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    new-array v0, v3, [F

    iput-object v0, p2, Lcom/github/megatronking/svg/generator/svg/model/Symbol;->viewBox:[F

    const/4 v0, 0x0

    :goto_0
    array-length v2, v1

    if-lt v0, v2, :cond_3

    :goto_1
    return-void

    :cond_3
    iget-object v2, p2, Lcom/github/megatronking/svg/generator/svg/model/Symbol;->viewBox:[F

    aget-object v3, v1, v0

    const/4 v4, 0x0

    invoke-static {v3, v4}, Lcom/github/megatronking/svg/generator/utils/SCU;->parseFloat(Ljava/lang/String;F)F

    move-result v3

    aput v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_4
    new-array v0, v3, [F

    iput-object v0, p2, Lcom/github/megatronking/svg/generator/svg/model/Symbol;->viewBox:[F

    goto :goto_1
.end method
