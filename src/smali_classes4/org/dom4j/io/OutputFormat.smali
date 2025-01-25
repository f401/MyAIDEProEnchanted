.class public Lorg/dom4j/io/OutputFormat;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field protected static final STANDARD_INDENT:Ljava/lang/String; = "  "


# instance fields
.field private attributeQuoteChar:C

.field private doXHTML:Z

.field private encoding:Ljava/lang/String;

.field private expandEmptyElements:Z

.field private indent:Ljava/lang/String;

.field private lineSeparator:Ljava/lang/String;

.field private newLineAfterDeclaration:Z

.field private newLineAfterNTags:I

.field private newlines:Z

.field private omitEncoding:Z

.field private padText:Z

.field private suppressDeclaration:Z

.field private trimText:Z


# direct methods
.method public constructor <init>()V
    .registers 3

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v1, p0, Lorg/dom4j/io/OutputFormat;->suppressDeclaration:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/dom4j/io/OutputFormat;->newLineAfterDeclaration:Z

    const-string v0, "UTF-8"

    iput-object v0, p0, Lorg/dom4j/io/OutputFormat;->encoding:Ljava/lang/String;

    iput-boolean v1, p0, Lorg/dom4j/io/OutputFormat;->omitEncoding:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/dom4j/io/OutputFormat;->indent:Ljava/lang/String;

    iput-boolean v1, p0, Lorg/dom4j/io/OutputFormat;->expandEmptyElements:Z

    iput-boolean v1, p0, Lorg/dom4j/io/OutputFormat;->newlines:Z

    const-string v0, "\n"

    iput-object v0, p0, Lorg/dom4j/io/OutputFormat;->lineSeparator:Ljava/lang/String;

    iput-boolean v1, p0, Lorg/dom4j/io/OutputFormat;->trimText:Z

    iput-boolean v1, p0, Lorg/dom4j/io/OutputFormat;->padText:Z

    iput-boolean v1, p0, Lorg/dom4j/io/OutputFormat;->doXHTML:Z

    iput v1, p0, Lorg/dom4j/io/OutputFormat;->newLineAfterNTags:I

    const/16 v0, 0x22

    iput-char v0, p0, Lorg/dom4j/io/OutputFormat;->attributeQuoteChar:C

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 4

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v1, p0, Lorg/dom4j/io/OutputFormat;->suppressDeclaration:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/dom4j/io/OutputFormat;->newLineAfterDeclaration:Z

    const-string v0, "UTF-8"

    iput-object v0, p0, Lorg/dom4j/io/OutputFormat;->encoding:Ljava/lang/String;

    iput-boolean v1, p0, Lorg/dom4j/io/OutputFormat;->omitEncoding:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/dom4j/io/OutputFormat;->indent:Ljava/lang/String;

    iput-boolean v1, p0, Lorg/dom4j/io/OutputFormat;->expandEmptyElements:Z

    iput-boolean v1, p0, Lorg/dom4j/io/OutputFormat;->newlines:Z

    const-string v0, "\n"

    iput-object v0, p0, Lorg/dom4j/io/OutputFormat;->lineSeparator:Ljava/lang/String;

    iput-boolean v1, p0, Lorg/dom4j/io/OutputFormat;->trimText:Z

    iput-boolean v1, p0, Lorg/dom4j/io/OutputFormat;->padText:Z

    iput-boolean v1, p0, Lorg/dom4j/io/OutputFormat;->doXHTML:Z

    iput v1, p0, Lorg/dom4j/io/OutputFormat;->newLineAfterNTags:I

    const/16 v0, 0x22

    iput-char v0, p0, Lorg/dom4j/io/OutputFormat;->attributeQuoteChar:C

    iput-object p1, p0, Lorg/dom4j/io/OutputFormat;->indent:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Z)V
    .registers 5

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v1, p0, Lorg/dom4j/io/OutputFormat;->suppressDeclaration:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/dom4j/io/OutputFormat;->newLineAfterDeclaration:Z

    const-string v0, "UTF-8"

    iput-object v0, p0, Lorg/dom4j/io/OutputFormat;->encoding:Ljava/lang/String;

    iput-boolean v1, p0, Lorg/dom4j/io/OutputFormat;->omitEncoding:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/dom4j/io/OutputFormat;->indent:Ljava/lang/String;

    iput-boolean v1, p0, Lorg/dom4j/io/OutputFormat;->expandEmptyElements:Z

    iput-boolean v1, p0, Lorg/dom4j/io/OutputFormat;->newlines:Z

    const-string v0, "\n"

    iput-object v0, p0, Lorg/dom4j/io/OutputFormat;->lineSeparator:Ljava/lang/String;

    iput-boolean v1, p0, Lorg/dom4j/io/OutputFormat;->trimText:Z

    iput-boolean v1, p0, Lorg/dom4j/io/OutputFormat;->padText:Z

    iput-boolean v1, p0, Lorg/dom4j/io/OutputFormat;->doXHTML:Z

    iput v1, p0, Lorg/dom4j/io/OutputFormat;->newLineAfterNTags:I

    const/16 v0, 0x22

    iput-char v0, p0, Lorg/dom4j/io/OutputFormat;->attributeQuoteChar:C

    iput-object p1, p0, Lorg/dom4j/io/OutputFormat;->indent:Ljava/lang/String;

    iput-boolean p2, p0, Lorg/dom4j/io/OutputFormat;->newlines:Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ZLjava/lang/String;)V
    .registers 6

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v1, p0, Lorg/dom4j/io/OutputFormat;->suppressDeclaration:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/dom4j/io/OutputFormat;->newLineAfterDeclaration:Z

    const-string v0, "UTF-8"

    iput-object v0, p0, Lorg/dom4j/io/OutputFormat;->encoding:Ljava/lang/String;

    iput-boolean v1, p0, Lorg/dom4j/io/OutputFormat;->omitEncoding:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/dom4j/io/OutputFormat;->indent:Ljava/lang/String;

    iput-boolean v1, p0, Lorg/dom4j/io/OutputFormat;->expandEmptyElements:Z

    iput-boolean v1, p0, Lorg/dom4j/io/OutputFormat;->newlines:Z

    const-string v0, "\n"

    iput-object v0, p0, Lorg/dom4j/io/OutputFormat;->lineSeparator:Ljava/lang/String;

    iput-boolean v1, p0, Lorg/dom4j/io/OutputFormat;->trimText:Z

    iput-boolean v1, p0, Lorg/dom4j/io/OutputFormat;->padText:Z

    iput-boolean v1, p0, Lorg/dom4j/io/OutputFormat;->doXHTML:Z

    iput v1, p0, Lorg/dom4j/io/OutputFormat;->newLineAfterNTags:I

    const/16 v0, 0x22

    iput-char v0, p0, Lorg/dom4j/io/OutputFormat;->attributeQuoteChar:C

    iput-object p1, p0, Lorg/dom4j/io/OutputFormat;->indent:Ljava/lang/String;

    iput-boolean p2, p0, Lorg/dom4j/io/OutputFormat;->newlines:Z

    iput-object p3, p0, Lorg/dom4j/io/OutputFormat;->encoding:Ljava/lang/String;

    return-void
.end method

.method public static createCompactFormat()Lorg/dom4j/io/OutputFormat;
    .registers 2

    const/4 v1, 0x0

    new-instance v0, Lorg/dom4j/io/OutputFormat;

    invoke-direct {v0}, Lorg/dom4j/io/OutputFormat;-><init>()V

    invoke-virtual {v0, v1}, Lorg/dom4j/io/OutputFormat;->setIndent(Z)V

    invoke-virtual {v0, v1}, Lorg/dom4j/io/OutputFormat;->setNewlines(Z)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/dom4j/io/OutputFormat;->setTrimText(Z)V

    return-object v0
.end method

.method public static createPrettyPrint()Lorg/dom4j/io/OutputFormat;
    .registers 3

    const/4 v2, 0x1

    new-instance v0, Lorg/dom4j/io/OutputFormat;

    invoke-direct {v0}, Lorg/dom4j/io/OutputFormat;-><init>()V

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lorg/dom4j/io/OutputFormat;->setIndentSize(I)V

    invoke-virtual {v0, v2}, Lorg/dom4j/io/OutputFormat;->setNewlines(Z)V

    invoke-virtual {v0, v2}, Lorg/dom4j/io/OutputFormat;->setTrimText(Z)V

    invoke-virtual {v0, v2}, Lorg/dom4j/io/OutputFormat;->setPadText(Z)V

    return-object v0
.end method


# virtual methods
.method public getAttributeQuoteCharacter()C
    .registers 2

    iget-char v0, p0, Lorg/dom4j/io/OutputFormat;->attributeQuoteChar:C

    return v0
.end method

.method public getEncoding()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lorg/dom4j/io/OutputFormat;->encoding:Ljava/lang/String;

    return-object v0
.end method

.method public getIndent()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lorg/dom4j/io/OutputFormat;->indent:Ljava/lang/String;

    return-object v0
.end method

.method public getLineSeparator()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lorg/dom4j/io/OutputFormat;->lineSeparator:Ljava/lang/String;

    return-object v0
.end method

.method public getNewLineAfterNTags()I
    .registers 2

    iget v0, p0, Lorg/dom4j/io/OutputFormat;->newLineAfterNTags:I

    return v0
.end method

.method public isExpandEmptyElements()Z
    .registers 2

    iget-boolean v0, p0, Lorg/dom4j/io/OutputFormat;->expandEmptyElements:Z

    return v0
.end method

.method public isNewLineAfterDeclaration()Z
    .registers 2

    iget-boolean v0, p0, Lorg/dom4j/io/OutputFormat;->newLineAfterDeclaration:Z

    return v0
.end method

.method public isNewlines()Z
    .registers 2

    iget-boolean v0, p0, Lorg/dom4j/io/OutputFormat;->newlines:Z

    return v0
.end method

.method public isOmitEncoding()Z
    .registers 2

    iget-boolean v0, p0, Lorg/dom4j/io/OutputFormat;->omitEncoding:Z

    return v0
.end method

.method public isPadText()Z
    .registers 2

    iget-boolean v0, p0, Lorg/dom4j/io/OutputFormat;->padText:Z

    return v0
.end method

.method public isSuppressDeclaration()Z
    .registers 2

    iget-boolean v0, p0, Lorg/dom4j/io/OutputFormat;->suppressDeclaration:Z

    return v0
.end method

.method public isTrimText()Z
    .registers 2

    iget-boolean v0, p0, Lorg/dom4j/io/OutputFormat;->trimText:Z

    return v0
.end method

.method public isXHTML()Z
    .registers 2

    iget-boolean v0, p0, Lorg/dom4j/io/OutputFormat;->doXHTML:Z

    return v0
.end method

.method public parseOptions([Ljava/lang/String;I)I
    .registers 8

    const/4 v4, 0x1

    array-length v1, p1

    move v0, p2

    :goto_3
    if-ge v0, v1, :cond_b8

    aget-object v2, p1, v0

    const-string v3, "-suppressDeclaration"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_15

    invoke-virtual {p0, v4}, Lorg/dom4j/io/OutputFormat;->setSuppressDeclaration(Z)V

    :goto_12
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_15
    aget-object v2, p1, v0

    const-string v3, "-omitEncoding"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_23

    invoke-virtual {p0, v4}, Lorg/dom4j/io/OutputFormat;->setOmitEncoding(Z)V

    goto :goto_12

    :cond_23
    aget-object v2, p1, v0

    const-string v3, "-indent"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_35

    add-int/lit8 v0, v0, 0x1

    aget-object v2, p1, v0

    invoke-virtual {p0, v2}, Lorg/dom4j/io/OutputFormat;->setIndent(Ljava/lang/String;)V

    goto :goto_12

    :cond_35
    aget-object v2, p1, v0

    const-string v3, "-indentSize"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4b

    add-int/lit8 v0, v0, 0x1

    aget-object v2, p1, v0

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p0, v2}, Lorg/dom4j/io/OutputFormat;->setIndentSize(I)V

    goto :goto_12

    :cond_4b
    aget-object v2, p1, v0

    const-string v3, "-expandEmpty"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_59

    invoke-virtual {p0, v4}, Lorg/dom4j/io/OutputFormat;->setExpandEmptyElements(Z)V

    goto :goto_12

    :cond_59
    aget-object v2, p1, v0

    const-string v3, "-encoding"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6b

    add-int/lit8 v0, v0, 0x1

    aget-object v2, p1, v0

    invoke-virtual {p0, v2}, Lorg/dom4j/io/OutputFormat;->setEncoding(Ljava/lang/String;)V

    goto :goto_12

    :cond_6b
    aget-object v2, p1, v0

    const-string v3, "-newlines"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_79

    invoke-virtual {p0, v4}, Lorg/dom4j/io/OutputFormat;->setNewlines(Z)V

    goto :goto_12

    :cond_79
    aget-object v2, p1, v0

    const-string v3, "-lineSeparator"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8b

    add-int/lit8 v0, v0, 0x1

    aget-object v2, p1, v0

    invoke-virtual {p0, v2}, Lorg/dom4j/io/OutputFormat;->setLineSeparator(Ljava/lang/String;)V

    goto :goto_12

    :cond_8b
    aget-object v2, p1, v0

    const-string v3, "-trimText"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9a

    invoke-virtual {p0, v4}, Lorg/dom4j/io/OutputFormat;->setTrimText(Z)V

    goto/16 :goto_12

    :cond_9a
    aget-object v2, p1, v0

    const-string v3, "-padText"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a9

    invoke-virtual {p0, v4}, Lorg/dom4j/io/OutputFormat;->setPadText(Z)V

    goto/16 :goto_12

    :cond_a9
    aget-object v2, p1, v0

    const-string v3, "-xhtml"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_b8

    invoke-virtual {p0, v4}, Lorg/dom4j/io/OutputFormat;->setXHTML(Z)V

    goto/16 :goto_12

    :cond_b8
    return v0
.end method

.method public setAttributeQuoteCharacter(C)V
    .registers 5

    const/16 v0, 0x27

    if-eq p1, v0, :cond_8

    const/16 v0, 0x22

    if-ne p1, v0, :cond_b

    :cond_8
    iput-char p1, p0, Lorg/dom4j/io/OutputFormat;->attributeQuoteChar:C

    return-void

    :cond_b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "Invalid attribute quote character ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setEncoding(Ljava/lang/String;)V
    .registers 2

    if-eqz p1, :cond_4

    iput-object p1, p0, Lorg/dom4j/io/OutputFormat;->encoding:Ljava/lang/String;

    :cond_4
    return-void
.end method

.method public setExpandEmptyElements(Z)V
    .registers 2

    iput-boolean p1, p0, Lorg/dom4j/io/OutputFormat;->expandEmptyElements:Z

    return-void
.end method

.method public setIndent(Ljava/lang/String;)V
    .registers 3

    if-eqz p1, :cond_9

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_9

    const/4 p1, 0x0

    :cond_9
    iput-object p1, p0, Lorg/dom4j/io/OutputFormat;->indent:Ljava/lang/String;

    return-void
.end method

.method public setIndent(Z)V
    .registers 3

    if-eqz p1, :cond_7

    const-string v0, "  "

    iput-object v0, p0, Lorg/dom4j/io/OutputFormat;->indent:Ljava/lang/String;

    :goto_6
    return-void

    :cond_7
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/dom4j/io/OutputFormat;->indent:Ljava/lang/String;

    goto :goto_6
.end method

.method public setIndentSize(I)V
    .registers 5

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v0, 0x0

    :goto_6
    if-ge v0, p1, :cond_10

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    :cond_10
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/dom4j/io/OutputFormat;->indent:Ljava/lang/String;

    return-void
.end method

.method public setLineSeparator(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lorg/dom4j/io/OutputFormat;->lineSeparator:Ljava/lang/String;

    return-void
.end method

.method public setNewLineAfterDeclaration(Z)V
    .registers 2

    iput-boolean p1, p0, Lorg/dom4j/io/OutputFormat;->newLineAfterDeclaration:Z

    return-void
.end method

.method public setNewLineAfterNTags(I)V
    .registers 2

    iput p1, p0, Lorg/dom4j/io/OutputFormat;->newLineAfterNTags:I

    return-void
.end method

.method public setNewlines(Z)V
    .registers 2

    iput-boolean p1, p0, Lorg/dom4j/io/OutputFormat;->newlines:Z

    return-void
.end method

.method public setOmitEncoding(Z)V
    .registers 2

    iput-boolean p1, p0, Lorg/dom4j/io/OutputFormat;->omitEncoding:Z

    return-void
.end method

.method public setPadText(Z)V
    .registers 2

    iput-boolean p1, p0, Lorg/dom4j/io/OutputFormat;->padText:Z

    return-void
.end method

.method public setSuppressDeclaration(Z)V
    .registers 2

    iput-boolean p1, p0, Lorg/dom4j/io/OutputFormat;->suppressDeclaration:Z

    return-void
.end method

.method public setTrimText(Z)V
    .registers 2

    iput-boolean p1, p0, Lorg/dom4j/io/OutputFormat;->trimText:Z

    return-void
.end method

.method public setXHTML(Z)V
    .registers 2

    iput-boolean p1, p0, Lorg/dom4j/io/OutputFormat;->doXHTML:Z

    return-void
.end method
