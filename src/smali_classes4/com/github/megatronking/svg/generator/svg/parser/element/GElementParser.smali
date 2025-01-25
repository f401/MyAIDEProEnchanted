.class public Lcom/github/megatronking/svg/generator/svg/parser/element/GElementParser;
.super Lcom/github/megatronking/svg/generator/svg/parser/SvgGroupNodeAbstractElementParser;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/github/megatronking/svg/generator/svg/parser/SvgGroupNodeAbstractElementParser",
        "<",
        "Lcom/github/megatronking/svg/generator/svg/model/G;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 2

    sget-object v0, Lcom/github/megatronking/svg/generator/svg/parser/SvgParserImpl;->G_ATTRIBUTE_PARSER:Lcom/github/megatronking/svg/generator/svg/parser/attribute/GAttributeParser;

    invoke-direct {p0, v0}, Lcom/github/megatronking/svg/generator/svg/parser/SvgGroupNodeAbstractElementParser;-><init>(Lcom/github/megatronking/svg/generator/xml/IAttributeParser;)V

    return-void
.end method
