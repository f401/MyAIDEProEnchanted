.class public Lcom/github/megatronking/svg/generator/vector/parser/VectorElementParser;
.super Lcom/github/megatronking/svg/generator/xml/ChildrenElementParser;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/github/megatronking/svg/generator/xml/ChildrenElementParser",
        "<",
        "Lcom/github/megatronking/svg/generator/vector/model/Vector;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 2

    sget-object v0, Lcom/github/megatronking/svg/generator/vector/parser/VectorParserImpl;->VECTOR_ATTRIBUTE_PARSER:Lcom/github/megatronking/svg/generator/vector/parser/VectorAttributeParser;

    invoke-direct {p0, v0}, Lcom/github/megatronking/svg/generator/xml/ChildrenElementParser;-><init>(Lcom/github/megatronking/svg/generator/xml/IAttributeParser;)V

    return-void
.end method


# virtual methods
.method protected parseChild(Lorg/dom4j/Element;Lcom/github/megatronking/svg/generator/vector/model/Vector;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/dom4j/Element;",
            "Lcom/github/megatronking/svg/generator/vector/model/Vector;",
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

    new-instance v1, Lcom/github/megatronking/svg/generator/vector/model/Group;

    const/4 v0, 0x0

    check-cast v0, Lcom/github/megatronking/svg/generator/vector/model/Group;

    invoke-direct {v1, v0}, Lcom/github/megatronking/svg/generator/vector/model/Group;-><init>(Lcom/github/megatronking/svg/generator/vector/model/Group;)V

    sget-object v0, Lcom/github/megatronking/svg/generator/vector/model/VectorConstants;->TAG_GROUP:Ljava/lang/String;

    invoke-interface {p1}, Lorg/dom4j/Element;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_23

    new-instance v0, Lcom/github/megatronking/svg/generator/vector/model/Group;

    invoke-direct {v0, v1}, Lcom/github/megatronking/svg/generator/vector/model/Group;-><init>(Lcom/github/megatronking/svg/generator/vector/model/Group;)V

    iget-object v2, p2, Lcom/github/megatronking/svg/generator/vector/model/Vector;->children:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v2, Lcom/github/megatronking/svg/generator/vector/parser/VectorParserImpl;->GROUP_ELEMENT_PARSER:Lcom/github/megatronking/svg/generator/vector/parser/GroupElementParser;

    invoke-virtual {v2, p1, v0}, Lcom/github/megatronking/svg/generator/vector/parser/GroupElementParser;->parse(Lorg/dom4j/Element;Ljava/lang/Object;)V

    :cond_23
    sget-object v0, Lcom/github/megatronking/svg/generator/vector/model/VectorConstants;->TAG_PATH:Ljava/lang/String;

    invoke-interface {p1}, Lorg/dom4j/Element;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3e

    new-instance v0, Lcom/github/megatronking/svg/generator/vector/model/Path;

    invoke-direct {v0, v1}, Lcom/github/megatronking/svg/generator/vector/model/Path;-><init>(Lcom/github/megatronking/svg/generator/vector/model/Group;)V

    iget-object v2, p2, Lcom/github/megatronking/svg/generator/vector/model/Vector;->children:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v2, Lcom/github/megatronking/svg/generator/vector/parser/VectorParserImpl;->PATH_ATTRIBUTE_PARSER:Lcom/github/megatronking/svg/generator/vector/parser/PathAttributeParser;

    invoke-virtual {v2, p1, v0}, Lcom/github/megatronking/svg/generator/vector/parser/PathAttributeParser;->parse(Lorg/dom4j/Element;Lcom/github/megatronking/svg/generator/vector/model/Path;)V

    :cond_3e
    sget-object v0, Lcom/github/megatronking/svg/generator/vector/model/VectorConstants;->TAG_CLIP_PATH:Ljava/lang/String;

    invoke-interface {p1}, Lorg/dom4j/Element;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_59

    new-instance v0, Lcom/github/megatronking/svg/generator/vector/model/Path;

    invoke-direct {v0, v1}, Lcom/github/megatronking/svg/generator/vector/model/Path;-><init>(Lcom/github/megatronking/svg/generator/vector/model/Group;)V

    iget-object v1, p2, Lcom/github/megatronking/svg/generator/vector/model/Vector;->children:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v1, Lcom/github/megatronking/svg/generator/vector/parser/VectorParserImpl;->CLIP_PATH_ATTRIBUTE_PARSER:Lcom/github/megatronking/svg/generator/vector/parser/ClipPathAttributeParser;

    invoke-virtual {v1, p1, v0}, Lcom/github/megatronking/svg/generator/vector/parser/ClipPathAttributeParser;->parse(Lorg/dom4j/Element;Lcom/github/megatronking/svg/generator/vector/model/Path;)V

    :cond_59
    return-void
.end method

.method protected bridge parseChild(Lorg/dom4j/Element;Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/dom4j/DocumentException;
        }
    .end annotation

    check-cast p2, Lcom/github/megatronking/svg/generator/vector/model/Vector;

    invoke-virtual {p0, p1, p2}, Lcom/github/megatronking/svg/generator/vector/parser/VectorElementParser;->parseChild(Lorg/dom4j/Element;Lcom/github/megatronking/svg/generator/vector/model/Vector;)V

    return-void
.end method
