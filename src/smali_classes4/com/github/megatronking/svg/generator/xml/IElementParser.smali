.class public interface Lcom/github/megatronking/svg/generator/xml/IElementParser;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract parse(Lorg/dom4j/Element;Ljava/lang/Object;)V
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
