.class public Lcom/github/megatronking/svg/generator/vector/parser/VectorAttributeParser;
.super Lcom/github/megatronking/svg/generator/xml/CommonAbstractAttributeParser;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/github/megatronking/svg/generator/xml/CommonAbstractAttributeParser",
        "<",
        "Lcom/github/megatronking/svg/generator/vector/model/Vector;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/github/megatronking/svg/generator/xml/CommonAbstractAttributeParser;-><init>()V

    return-void
.end method


# virtual methods
.method public parse(Lorg/dom4j/Element;Lcom/github/megatronking/svg/generator/vector/model/Vector;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/dom4j/Element;",
            "Lcom/github/megatronking/svg/generator/vector/model/Vector;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    const-string v0, "name"

    invoke-virtual {p0, p1, v0}, Lcom/github/megatronking/svg/generator/vector/parser/VectorAttributeParser;->parseString(Lorg/dom4j/Element;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lcom/github/megatronking/svg/generator/vector/model/Vector;->name:Ljava/lang/String;

    const-string v0, "alpha"

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {p0, p1, v0, v1}, Lcom/github/megatronking/svg/generator/vector/parser/VectorAttributeParser;->parseFloat(Lorg/dom4j/Element;Ljava/lang/String;F)F

    move-result v0

    iput v0, p2, Lcom/github/megatronking/svg/generator/vector/model/Vector;->alpha:F

    const-string v0, "width"

    invoke-virtual {p0, p1, v0}, Lcom/github/megatronking/svg/generator/vector/parser/VectorAttributeParser;->parseString(Lorg/dom4j/Element;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lcom/github/megatronking/svg/generator/vector/model/Vector;->width:Ljava/lang/String;

    const-string v0, "height"

    invoke-virtual {p0, p1, v0}, Lcom/github/megatronking/svg/generator/vector/parser/VectorAttributeParser;->parseString(Lorg/dom4j/Element;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lcom/github/megatronking/svg/generator/vector/model/Vector;->height:Ljava/lang/String;

    const-string v0, "viewportWidth"

    invoke-virtual {p0, p1, v0}, Lcom/github/megatronking/svg/generator/vector/parser/VectorAttributeParser;->parseFloat(Lorg/dom4j/Element;Ljava/lang/String;)F

    move-result v0

    iput v0, p2, Lcom/github/megatronking/svg/generator/vector/model/Vector;->viewportWidth:F

    const-string v0, "viewportHeight"

    invoke-virtual {p0, p1, v0}, Lcom/github/megatronking/svg/generator/vector/parser/VectorAttributeParser;->parseFloat(Lorg/dom4j/Element;Ljava/lang/String;)F

    move-result v0

    iput v0, p2, Lcom/github/megatronking/svg/generator/vector/model/Vector;->viewportHeight:F

    const-string v0, "autoMirrored"

    invoke-virtual {p0, p1, v0}, Lcom/github/megatronking/svg/generator/vector/parser/VectorAttributeParser;->parseBoolean(Lorg/dom4j/Element;Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p2, Lcom/github/megatronking/svg/generator/vector/model/Vector;->autoMirrored:Z

    const-string v0, "tint"

    invoke-virtual {p0, p1, v0}, Lcom/github/megatronking/svg/generator/vector/parser/VectorAttributeParser;->parseColor(Lorg/dom4j/Element;Ljava/lang/String;)I

    move-result v0

    iput v0, p2, Lcom/github/megatronking/svg/generator/vector/model/Vector;->tint:I

    const-string v0, "tintMode"

    invoke-virtual {p0, p1, v0}, Lcom/github/megatronking/svg/generator/vector/parser/VectorAttributeParser;->parseString(Lorg/dom4j/Element;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lcom/github/megatronking/svg/generator/vector/model/Vector;->tintMode:Ljava/lang/String;

    return-void
.end method

.method public bridge parse(Lorg/dom4j/Element;Ljava/lang/Object;)V
    .registers 3

    check-cast p2, Lcom/github/megatronking/svg/generator/vector/model/Vector;

    invoke-virtual {p0, p1, p2}, Lcom/github/megatronking/svg/generator/vector/parser/VectorAttributeParser;->parse(Lorg/dom4j/Element;Lcom/github/megatronking/svg/generator/vector/model/Vector;)V

    return-void
.end method
