.class public abstract Lcom/github/megatronking/svg/generator/xml/ChildrenElementParser;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/github/megatronking/svg/generator/xml/IElementParser;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/github/megatronking/svg/generator/xml/IElementParser",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private mAttributeParser:Lcom/github/megatronking/svg/generator/xml/IAttributeParser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/github/megatronking/svg/generator/xml/IAttributeParser",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/github/megatronking/svg/generator/xml/IAttributeParser;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/github/megatronking/svg/generator/xml/IAttributeParser",
            "<TT;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/github/megatronking/svg/generator/xml/ChildrenElementParser;->mAttributeParser:Lcom/github/megatronking/svg/generator/xml/IAttributeParser;

    return-void
.end method


# virtual methods
.method public parse(Lorg/dom4j/Element;Ljava/lang/Object;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/dom4j/Element;",
            "TT;)V^",
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

    iget-object v0, p0, Lcom/github/megatronking/svg/generator/xml/ChildrenElementParser;->mAttributeParser:Lcom/github/megatronking/svg/generator/xml/IAttributeParser;

    invoke-interface {v0, p1, p2}, Lcom/github/megatronking/svg/generator/xml/IAttributeParser;->parse(Lorg/dom4j/Element;Ljava/lang/Object;)V

    invoke-interface {p1}, Lorg/dom4j/Element;->elements()Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Object;

    check-cast v0, Lorg/dom4j/Element;

    invoke-virtual {p0, v0, p2}, Lcom/github/megatronking/svg/generator/xml/ChildrenElementParser;->parseChild(Lorg/dom4j/Element;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method protected abstract parseChild(Lorg/dom4j/Element;Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/dom4j/Element;",
            "TT;)V^",
            "Lorg/dom4j/DocumentException;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/dom4j/DocumentException;
        }
    .end annotation
.end method
