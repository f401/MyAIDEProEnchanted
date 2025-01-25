.class public Lcom/github/megatronking/svg/generator/vector/parser/GroupAttributeParser;
.super Lcom/github/megatronking/svg/generator/xml/CommonAbstractAttributeParser;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/github/megatronking/svg/generator/xml/CommonAbstractAttributeParser",
        "<",
        "Lcom/github/megatronking/svg/generator/vector/model/Group;",
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
.method public parse(Lorg/dom4j/Element;Lcom/github/megatronking/svg/generator/vector/model/Group;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/dom4j/Element;",
            "Lcom/github/megatronking/svg/generator/vector/model/Group;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    const/high16 v1, 0x3f800000  # 1.0f

    const-string v0, "name"

    invoke-virtual {p0, p1, v0}, Lcom/github/megatronking/svg/generator/vector/parser/GroupAttributeParser;->parseString(Lorg/dom4j/Element;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lcom/github/megatronking/svg/generator/vector/model/Group;->name:Ljava/lang/String;

    const-string v0, "pivotX"

    invoke-virtual {p0, p1, v0}, Lcom/github/megatronking/svg/generator/vector/parser/GroupAttributeParser;->parseFloat(Lorg/dom4j/Element;Ljava/lang/String;)F

    move-result v0

    iput v0, p2, Lcom/github/megatronking/svg/generator/vector/model/Group;->pivotX:F

    const-string v0, "pivotY"

    invoke-virtual {p0, p1, v0}, Lcom/github/megatronking/svg/generator/vector/parser/GroupAttributeParser;->parseFloat(Lorg/dom4j/Element;Ljava/lang/String;)F

    move-result v0

    iput v0, p2, Lcom/github/megatronking/svg/generator/vector/model/Group;->pivotY:F

    const-string v0, "scaleX"

    invoke-virtual {p0, p1, v0, v1}, Lcom/github/megatronking/svg/generator/vector/parser/GroupAttributeParser;->parseFloat(Lorg/dom4j/Element;Ljava/lang/String;F)F

    move-result v0

    iput v0, p2, Lcom/github/megatronking/svg/generator/vector/model/Group;->scaleX:F

    const-string v0, "scaleY"

    invoke-virtual {p0, p1, v0, v1}, Lcom/github/megatronking/svg/generator/vector/parser/GroupAttributeParser;->parseFloat(Lorg/dom4j/Element;Ljava/lang/String;F)F

    move-result v0

    iput v0, p2, Lcom/github/megatronking/svg/generator/vector/model/Group;->scaleY:F

    const-string v0, "rotation"

    invoke-virtual {p0, p1, v0}, Lcom/github/megatronking/svg/generator/vector/parser/GroupAttributeParser;->parseFloat(Lorg/dom4j/Element;Ljava/lang/String;)F

    move-result v0

    iput v0, p2, Lcom/github/megatronking/svg/generator/vector/model/Group;->rotation:F

    const-string v0, "translateX"

    invoke-virtual {p0, p1, v0}, Lcom/github/megatronking/svg/generator/vector/parser/GroupAttributeParser;->parseFloat(Lorg/dom4j/Element;Ljava/lang/String;)F

    move-result v0

    iput v0, p2, Lcom/github/megatronking/svg/generator/vector/model/Group;->translateX:F

    const-string v0, "translateY"

    invoke-virtual {p0, p1, v0}, Lcom/github/megatronking/svg/generator/vector/parser/GroupAttributeParser;->parseFloat(Lorg/dom4j/Element;Ljava/lang/String;)F

    move-result v0

    iput v0, p2, Lcom/github/megatronking/svg/generator/vector/model/Group;->translateY:F

    return-void
.end method

.method public bridge parse(Lorg/dom4j/Element;Ljava/lang/Object;)V
    .registers 3

    check-cast p2, Lcom/github/megatronking/svg/generator/vector/model/Group;

    invoke-virtual {p0, p1, p2}, Lcom/github/megatronking/svg/generator/vector/parser/GroupAttributeParser;->parse(Lorg/dom4j/Element;Lcom/github/megatronking/svg/generator/vector/model/Group;)V

    return-void
.end method
