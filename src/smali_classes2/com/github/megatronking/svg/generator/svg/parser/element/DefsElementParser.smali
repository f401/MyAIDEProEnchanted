.class public Lcom/github/megatronking/svg/generator/svg/parser/element/DefsElementParser;
.super Lcom/github/megatronking/svg/generator/svg/parser/SvgGroupNodeAbstractElementParser;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/github/megatronking/svg/generator/svg/parser/SvgGroupNodeAbstractElementParser",
        "<",
        "Lcom/github/megatronking/svg/generator/svg/model/Defs;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 2

    new-instance v0, Lcom/github/megatronking/svg/generator/svg/parser/EmptyAttributeParser;

    invoke-direct {v0}, Lcom/github/megatronking/svg/generator/svg/parser/EmptyAttributeParser;-><init>()V

    invoke-direct {p0, v0}, Lcom/github/megatronking/svg/generator/svg/parser/SvgGroupNodeAbstractElementParser;-><init>(Lcom/github/megatronking/svg/generator/xml/IAttributeParser;)V

    return-void
.end method
