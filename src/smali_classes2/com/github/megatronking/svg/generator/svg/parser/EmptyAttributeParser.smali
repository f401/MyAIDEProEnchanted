.class public Lcom/github/megatronking/svg/generator/svg/parser/EmptyAttributeParser;
.super Lcom/github/megatronking/svg/generator/xml/CommonAbstractAttributeParser;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/github/megatronking/svg/generator/xml/CommonAbstractAttributeParser",
        "<TT;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/github/megatronking/svg/generator/xml/CommonAbstractAttributeParser;-><init>()V

    return-void
.end method


# virtual methods
.method public parse(Lorg/dom4j/Element;Ljava/lang/Object;)V
    .locals 0
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

    return-void
.end method
