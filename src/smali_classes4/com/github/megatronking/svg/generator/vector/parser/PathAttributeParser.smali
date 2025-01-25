.class public Lcom/github/megatronking/svg/generator/vector/parser/PathAttributeParser;
.super Lcom/github/megatronking/svg/generator/xml/CommonAbstractAttributeParser;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/github/megatronking/svg/generator/xml/CommonAbstractAttributeParser",
        "<",
        "Lcom/github/megatronking/svg/generator/vector/model/Path;",
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
.method public parse(Lorg/dom4j/Element;Lcom/github/megatronking/svg/generator/vector/model/Path;)V
    .registers 6
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

    const/high16 v2, 0x3f800000  # 1.0f

    const-string v0, "name"

    invoke-virtual {p0, p1, v0}, Lcom/github/megatronking/svg/generator/vector/parser/PathAttributeParser;->parseString(Lorg/dom4j/Element;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lcom/github/megatronking/svg/generator/vector/model/Path;->name:Ljava/lang/String;

    const-string v0, "fillColor"

    invoke-virtual {p0, p1, v0}, Lcom/github/megatronking/svg/generator/vector/parser/PathAttributeParser;->parseColor(Lorg/dom4j/Element;Ljava/lang/String;)I

    move-result v0

    iput v0, p2, Lcom/github/megatronking/svg/generator/vector/model/Path;->fillColor:I

    const-string v0, "pathData"

    invoke-virtual {p0, p1, v0}, Lcom/github/megatronking/svg/generator/vector/parser/PathAttributeParser;->parseString(Lorg/dom4j/Element;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lcom/github/megatronking/svg/generator/vector/model/Path;->pathData:Ljava/lang/String;

    const-string v0, "fillAlpha"

    invoke-virtual {p0, p1, v0, v2}, Lcom/github/megatronking/svg/generator/vector/parser/PathAttributeParser;->parseFloat(Lorg/dom4j/Element;Ljava/lang/String;F)F

    move-result v0

    iput v0, p2, Lcom/github/megatronking/svg/generator/vector/model/Path;->fillAlpha:F

    const-string v0, "fillType"

    invoke-virtual {p0, p1, v0}, Lcom/github/megatronking/svg/generator/vector/parser/PathAttributeParser;->parseString(Lorg/dom4j/Element;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lcom/github/megatronking/svg/generator/vector/model/Path;->fillType:Ljava/lang/String;

    const-string v0, "strokeLineCap"

    const-string v1, "butt"

    invoke-virtual {p0, p1, v0, v1}, Lcom/github/megatronking/svg/generator/vector/parser/PathAttributeParser;->parseString(Lorg/dom4j/Element;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lcom/github/megatronking/svg/generator/vector/model/Path;->strokeLineCap:Ljava/lang/String;

    const-string v0, "strokeLineJoin"

    const-string v1, "miter"

    invoke-virtual {p0, p1, v0, v1}, Lcom/github/megatronking/svg/generator/vector/parser/PathAttributeParser;->parseString(Lorg/dom4j/Element;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lcom/github/megatronking/svg/generator/vector/model/Path;->strokeLineJoin:Ljava/lang/String;

    const-string v0, "strokeMiterLimit"

    const/4 v1, 0x4

    int-to-float v1, v1

    invoke-virtual {p0, p1, v0, v1}, Lcom/github/megatronking/svg/generator/vector/parser/PathAttributeParser;->parseFloat(Lorg/dom4j/Element;Ljava/lang/String;F)F

    move-result v0

    iput v0, p2, Lcom/github/megatronking/svg/generator/vector/model/Path;->strokeMiterLimit:F

    const-string v0, "strokeColor"

    invoke-virtual {p0, p1, v0}, Lcom/github/megatronking/svg/generator/vector/parser/PathAttributeParser;->parseColor(Lorg/dom4j/Element;Ljava/lang/String;)I

    move-result v0

    iput v0, p2, Lcom/github/megatronking/svg/generator/vector/model/Path;->strokeColor:I

    const-string v0, "strokeAlpha"

    invoke-virtual {p0, p1, v0, v2}, Lcom/github/megatronking/svg/generator/vector/parser/PathAttributeParser;->parseFloat(Lorg/dom4j/Element;Ljava/lang/String;F)F

    move-result v0

    iput v0, p2, Lcom/github/megatronking/svg/generator/vector/model/Path;->strokeAlpha:F

    const-string v0, "strokeWidth"

    invoke-virtual {p0, p1, v0}, Lcom/github/megatronking/svg/generator/vector/parser/PathAttributeParser;->parseFloat(Lorg/dom4j/Element;Ljava/lang/String;)F

    move-result v0

    iput v0, p2, Lcom/github/megatronking/svg/generator/vector/model/Path;->strokeWidth:F

    const-string v0, "trimPathEnd"

    const/4 v1, 0x1

    int-to-float v1, v1

    invoke-virtual {p0, p1, v0, v1}, Lcom/github/megatronking/svg/generator/vector/parser/PathAttributeParser;->parseFloat(Lorg/dom4j/Element;Ljava/lang/String;F)F

    move-result v0

    iput v0, p2, Lcom/github/megatronking/svg/generator/vector/model/Path;->trimPathEnd:F

    const-string v0, "trimPathOffset"

    invoke-virtual {p0, p1, v0}, Lcom/github/megatronking/svg/generator/vector/parser/PathAttributeParser;->parseFloat(Lorg/dom4j/Element;Ljava/lang/String;)F

    move-result v0

    iput v0, p2, Lcom/github/megatronking/svg/generator/vector/model/Path;->trimPathOffset:F

    const-string v0, "trimPathStart"

    invoke-virtual {p0, p1, v0}, Lcom/github/megatronking/svg/generator/vector/parser/PathAttributeParser;->parseFloat(Lorg/dom4j/Element;Ljava/lang/String;)F

    move-result v0

    iput v0, p2, Lcom/github/megatronking/svg/generator/vector/model/Path;->trimPathStart:F

    return-void
.end method

.method public bridge parse(Lorg/dom4j/Element;Ljava/lang/Object;)V
    .registers 3

    check-cast p2, Lcom/github/megatronking/svg/generator/vector/model/Path;

    invoke-virtual {p0, p1, p2}, Lcom/github/megatronking/svg/generator/vector/parser/PathAttributeParser;->parse(Lorg/dom4j/Element;Lcom/github/megatronking/svg/generator/vector/model/Path;)V

    return-void
.end method
