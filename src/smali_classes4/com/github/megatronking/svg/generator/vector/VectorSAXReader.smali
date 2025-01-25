.class public Lcom/github/megatronking/svg/generator/vector/VectorSAXReader;
.super Lcom/github/megatronking/svg/generator/xml/SimpleImplementSAXReader;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/github/megatronking/svg/generator/xml/SimpleImplementSAXReader",
        "<",
        "Lcom/github/megatronking/svg/generator/vector/model/Vector;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/github/megatronking/svg/generator/xml/SimpleImplementSAXReader;-><init>()V

    return-void
.end method


# virtual methods
.method protected parseDocument(Lorg/dom4j/Document;)Lcom/github/megatronking/svg/generator/vector/model/Vector;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/dom4j/DocumentException;
        }
    .end annotation

    invoke-interface {p1}, Lorg/dom4j/Document;->getRootElement()Lorg/dom4j/Element;

    move-result-object v0

    sget-object v1, Lcom/github/megatronking/svg/generator/vector/model/VectorConstants;->TAG_VECTOR:Ljava/lang/String;

    invoke-interface {v0}, Lorg/dom4j/Element;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2b

    new-instance v0, Lcom/github/megatronking/svg/generator/vector/VectorParseException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "The root element must be "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "vector"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/github/megatronking/svg/generator/vector/VectorParseException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2b
    invoke-interface {v0}, Lorg/dom4j/Element;->elements()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_37

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_3f

    :cond_37
    new-instance v0, Lcom/github/megatronking/svg/generator/vector/VectorParseException;

    const-string v1, "There is no child node in the vector"

    invoke-direct {v0, v1}, Lcom/github/megatronking/svg/generator/vector/VectorParseException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3f
    new-instance v1, Lcom/github/megatronking/svg/generator/vector/model/Vector;

    invoke-direct {v1}, Lcom/github/megatronking/svg/generator/vector/model/Vector;-><init>()V

    sget-object v2, Lcom/github/megatronking/svg/generator/vector/parser/VectorParserImpl;->VECTOR_ELEMENT_PARSER:Lcom/github/megatronking/svg/generator/vector/parser/VectorElementParser;

    invoke-virtual {v2, v0, v1}, Lcom/github/megatronking/svg/generator/vector/parser/VectorElementParser;->parse(Lorg/dom4j/Element;Ljava/lang/Object;)V

    return-object v1
.end method

.method protected bridge parseDocument(Lorg/dom4j/Document;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/dom4j/DocumentException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/github/megatronking/svg/generator/vector/VectorSAXReader;->parseDocument(Lorg/dom4j/Document;)Lcom/github/megatronking/svg/generator/vector/model/Vector;

    move-result-object v0

    return-object v0
.end method
