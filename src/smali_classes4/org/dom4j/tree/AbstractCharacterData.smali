.class public abstract Lorg/dom4j/tree/AbstractCharacterData;
.super Lorg/dom4j/tree/AbstractNode;

# interfaces
.implements Lorg/dom4j/CharacterData;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lorg/dom4j/tree/AbstractNode;-><init>()V

    return-void
.end method


# virtual methods
.method public appendText(Ljava/lang/String;)V
    .registers 4

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p0}, Lorg/dom4j/tree/AbstractCharacterData;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/dom4j/tree/AbstractCharacterData;->setText(Ljava/lang/String;)V

    return-void
.end method

.method public getPath(Lorg/dom4j/Element;)Ljava/lang/String;
    .registers 4

    invoke-virtual {p0}, Lorg/dom4j/tree/AbstractCharacterData;->getParent()Lorg/dom4j/Element;

    move-result-object v0

    if-eqz v0, :cond_20

    if-eq v0, p1, :cond_20

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    invoke-interface {v0, p1}, Lorg/dom4j/Element;->getPath(Lorg/dom4j/Element;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "/text()"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_1f
    return-object v0

    :cond_20
    const-string v0, "text()"

    goto :goto_1f
.end method

.method public getUniquePath(Lorg/dom4j/Element;)Ljava/lang/String;
    .registers 4

    invoke-virtual {p0}, Lorg/dom4j/tree/AbstractCharacterData;->getParent()Lorg/dom4j/Element;

    move-result-object v0

    if-eqz v0, :cond_20

    if-eq v0, p1, :cond_20

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    invoke-interface {v0, p1}, Lorg/dom4j/Element;->getUniquePath(Lorg/dom4j/Element;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "/text()"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_1f
    return-object v0

    :cond_20
    const-string v0, "text()"

    goto :goto_1f
.end method
