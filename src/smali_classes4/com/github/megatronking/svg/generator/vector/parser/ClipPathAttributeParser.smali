.class public Lcom/github/megatronking/svg/generator/vector/parser/ClipPathAttributeParser;
.super Lcom/github/megatronking/svg/generator/vector/parser/PathAttributeParser;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/github/megatronking/svg/generator/vector/parser/PathAttributeParser;-><init>()V

    return-void
.end method


# virtual methods
.method public parse(Lorg/dom4j/Element;Lcom/github/megatronking/svg/generator/vector/model/Path;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/dom4j/Element;",
            "Lcom/github/megatronking/svg/generator/vector/model/Path;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    invoke-super {p0, p1, p2}, Lcom/github/megatronking/svg/generator/vector/parser/PathAttributeParser;->parse(Lorg/dom4j/Element;Lcom/github/megatronking/svg/generator/vector/model/Path;)V

    return-void
.end method
