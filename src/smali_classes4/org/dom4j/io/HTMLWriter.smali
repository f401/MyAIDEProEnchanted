.class public Lorg/dom4j/io/HTMLWriter;
.super Lorg/dom4j/io/XMLWriter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/dom4j/io/HTMLWriter$FormatState;
    }
.end annotation


# static fields
.field protected static final DEFAULT_HTML_FORMAT:Lorg/dom4j/io/OutputFormat;

.field protected static final DEFAULT_PREFORMATTED_TAGS:Ljava/util/HashSet;

.field private static lineSeparator:Ljava/lang/String;


# instance fields
.field private formatStack:Ljava/util/Stack;

.field private lastText:Ljava/lang/String;

.field private newLineAfterNTags:I

.field private omitElementCloseSet:Ljava/util/HashSet;

.field private preformattedTags:Ljava/util/HashSet;

.field private tagsOuput:I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const/4 v2, 0x1

    const-string v0, "line.separator"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/dom4j/io/HTMLWriter;->lineSeparator:Ljava/lang/String;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lorg/dom4j/io/HTMLWriter;->DEFAULT_PREFORMATTED_TAGS:Ljava/util/HashSet;

    sget-object v0, Lorg/dom4j/io/HTMLWriter;->DEFAULT_PREFORMATTED_TAGS:Ljava/util/HashSet;

    const-string v1, "PRE"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Lorg/dom4j/io/HTMLWriter;->DEFAULT_PREFORMATTED_TAGS:Ljava/util/HashSet;

    const-string v1, "SCRIPT"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Lorg/dom4j/io/HTMLWriter;->DEFAULT_PREFORMATTED_TAGS:Ljava/util/HashSet;

    const-string v1, "STYLE"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Lorg/dom4j/io/HTMLWriter;->DEFAULT_PREFORMATTED_TAGS:Ljava/util/HashSet;

    const-string v1, "TEXTAREA"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    new-instance v0, Lorg/dom4j/io/OutputFormat;

    const-string v1, "  "

    invoke-direct {v0, v1, v2}, Lorg/dom4j/io/OutputFormat;-><init>(Ljava/lang/String;Z)V

    sput-object v0, Lorg/dom4j/io/HTMLWriter;->DEFAULT_HTML_FORMAT:Lorg/dom4j/io/OutputFormat;

    sget-object v0, Lorg/dom4j/io/HTMLWriter;->DEFAULT_HTML_FORMAT:Lorg/dom4j/io/OutputFormat;

    invoke-virtual {v0, v2}, Lorg/dom4j/io/OutputFormat;->setTrimText(Z)V

    sget-object v0, Lorg/dom4j/io/HTMLWriter;->DEFAULT_HTML_FORMAT:Lorg/dom4j/io/OutputFormat;

    invoke-virtual {v0, v2}, Lorg/dom4j/io/OutputFormat;->setSuppressDeclaration(Z)V

    return-void
.end method

.method public constructor <init>()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    sget-object v0, Lorg/dom4j/io/HTMLWriter;->DEFAULT_HTML_FORMAT:Lorg/dom4j/io/OutputFormat;

    invoke-direct {p0, v0}, Lorg/dom4j/io/XMLWriter;-><init>(Lorg/dom4j/io/OutputFormat;)V

    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lorg/dom4j/io/HTMLWriter;->formatStack:Ljava/util/Stack;

    const-string v0, ""

    iput-object v0, p0, Lorg/dom4j/io/HTMLWriter;->lastText:Ljava/lang/String;

    const/4 v0, 0x0

    iput v0, p0, Lorg/dom4j/io/HTMLWriter;->tagsOuput:I

    const/4 v0, -0x1

    iput v0, p0, Lorg/dom4j/io/HTMLWriter;->newLineAfterNTags:I

    sget-object v0, Lorg/dom4j/io/HTMLWriter;->DEFAULT_PREFORMATTED_TAGS:Ljava/util/HashSet;

    iput-object v0, p0, Lorg/dom4j/io/HTMLWriter;->preformattedTags:Ljava/util/HashSet;

    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    sget-object v0, Lorg/dom4j/io/HTMLWriter;->DEFAULT_HTML_FORMAT:Lorg/dom4j/io/OutputFormat;

    invoke-direct {p0, p1, v0}, Lorg/dom4j/io/XMLWriter;-><init>(Ljava/io/OutputStream;Lorg/dom4j/io/OutputFormat;)V

    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lorg/dom4j/io/HTMLWriter;->formatStack:Ljava/util/Stack;

    const-string v0, ""

    iput-object v0, p0, Lorg/dom4j/io/HTMLWriter;->lastText:Ljava/lang/String;

    const/4 v0, 0x0

    iput v0, p0, Lorg/dom4j/io/HTMLWriter;->tagsOuput:I

    const/4 v0, -0x1

    iput v0, p0, Lorg/dom4j/io/HTMLWriter;->newLineAfterNTags:I

    sget-object v0, Lorg/dom4j/io/HTMLWriter;->DEFAULT_PREFORMATTED_TAGS:Ljava/util/HashSet;

    iput-object v0, p0, Lorg/dom4j/io/HTMLWriter;->preformattedTags:Ljava/util/HashSet;

    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;Lorg/dom4j/io/OutputFormat;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Lorg/dom4j/io/XMLWriter;-><init>(Ljava/io/OutputStream;Lorg/dom4j/io/OutputFormat;)V

    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lorg/dom4j/io/HTMLWriter;->formatStack:Ljava/util/Stack;

    const-string v0, ""

    iput-object v0, p0, Lorg/dom4j/io/HTMLWriter;->lastText:Ljava/lang/String;

    const/4 v0, 0x0

    iput v0, p0, Lorg/dom4j/io/HTMLWriter;->tagsOuput:I

    const/4 v0, -0x1

    iput v0, p0, Lorg/dom4j/io/HTMLWriter;->newLineAfterNTags:I

    sget-object v0, Lorg/dom4j/io/HTMLWriter;->DEFAULT_PREFORMATTED_TAGS:Ljava/util/HashSet;

    iput-object v0, p0, Lorg/dom4j/io/HTMLWriter;->preformattedTags:Ljava/util/HashSet;

    return-void
.end method

.method public constructor <init>(Ljava/io/Writer;)V
    .registers 3

    sget-object v0, Lorg/dom4j/io/HTMLWriter;->DEFAULT_HTML_FORMAT:Lorg/dom4j/io/OutputFormat;

    invoke-direct {p0, p1, v0}, Lorg/dom4j/io/XMLWriter;-><init>(Ljava/io/Writer;Lorg/dom4j/io/OutputFormat;)V

    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lorg/dom4j/io/HTMLWriter;->formatStack:Ljava/util/Stack;

    const-string v0, ""

    iput-object v0, p0, Lorg/dom4j/io/HTMLWriter;->lastText:Ljava/lang/String;

    const/4 v0, 0x0

    iput v0, p0, Lorg/dom4j/io/HTMLWriter;->tagsOuput:I

    const/4 v0, -0x1

    iput v0, p0, Lorg/dom4j/io/HTMLWriter;->newLineAfterNTags:I

    sget-object v0, Lorg/dom4j/io/HTMLWriter;->DEFAULT_PREFORMATTED_TAGS:Ljava/util/HashSet;

    iput-object v0, p0, Lorg/dom4j/io/HTMLWriter;->preformattedTags:Ljava/util/HashSet;

    return-void
.end method

.method public constructor <init>(Ljava/io/Writer;Lorg/dom4j/io/OutputFormat;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Lorg/dom4j/io/XMLWriter;-><init>(Ljava/io/Writer;Lorg/dom4j/io/OutputFormat;)V

    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lorg/dom4j/io/HTMLWriter;->formatStack:Ljava/util/Stack;

    const-string v0, ""

    iput-object v0, p0, Lorg/dom4j/io/HTMLWriter;->lastText:Ljava/lang/String;

    const/4 v0, 0x0

    iput v0, p0, Lorg/dom4j/io/HTMLWriter;->tagsOuput:I

    const/4 v0, -0x1

    iput v0, p0, Lorg/dom4j/io/HTMLWriter;->newLineAfterNTags:I

    sget-object v0, Lorg/dom4j/io/HTMLWriter;->DEFAULT_PREFORMATTED_TAGS:Ljava/util/HashSet;

    iput-object v0, p0, Lorg/dom4j/io/HTMLWriter;->preformattedTags:Ljava/util/HashSet;

    return-void
.end method

.method public constructor <init>(Lorg/dom4j/io/OutputFormat;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    invoke-direct {p0, p1}, Lorg/dom4j/io/XMLWriter;-><init>(Lorg/dom4j/io/OutputFormat;)V

    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lorg/dom4j/io/HTMLWriter;->formatStack:Ljava/util/Stack;

    const-string v0, ""

    iput-object v0, p0, Lorg/dom4j/io/HTMLWriter;->lastText:Ljava/lang/String;

    const/4 v0, 0x0

    iput v0, p0, Lorg/dom4j/io/HTMLWriter;->tagsOuput:I

    const/4 v0, -0x1

    iput v0, p0, Lorg/dom4j/io/HTMLWriter;->newLineAfterNTags:I

    sget-object v0, Lorg/dom4j/io/HTMLWriter;->DEFAULT_PREFORMATTED_TAGS:Ljava/util/HashSet;

    iput-object v0, p0, Lorg/dom4j/io/HTMLWriter;->preformattedTags:Ljava/util/HashSet;

    return-void
.end method

.method private internalGetOmitElementCloseSet()Ljava/util/HashSet;
    .registers 2

    iget-object v0, p0, Lorg/dom4j/io/HTMLWriter;->omitElementCloseSet:Ljava/util/HashSet;

    if-nez v0, :cond_10

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lorg/dom4j/io/HTMLWriter;->omitElementCloseSet:Ljava/util/HashSet;

    iget-object v0, p0, Lorg/dom4j/io/HTMLWriter;->omitElementCloseSet:Ljava/util/HashSet;

    invoke-virtual {p0, v0}, Lorg/dom4j/io/HTMLWriter;->loadOmitElementCloseSet(Ljava/util/Set;)V

    :cond_10
    iget-object v0, p0, Lorg/dom4j/io/HTMLWriter;->omitElementCloseSet:Ljava/util/HashSet;

    return-object v0
.end method

.method private justSpaces(Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    const/4 v0, 0x0

    :goto_a
    if-ge v0, v1, :cond_19

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    packed-switch v3, :pswitch_data_1e

    :pswitch_13  #0xb, 0xc
    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :pswitch_16  #0xa, 0xd
    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    :cond_19
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_data_1e
    .packed-switch 0xa
        :pswitch_16  #0000000a
        :pswitch_13  #0000000b
        :pswitch_13  #0000000c
        :pswitch_16  #0000000d
    .end packed-switch
.end method

.method private lazyInitNewLinesAfterNTags()V
    .registers 2

    invoke-virtual {p0}, Lorg/dom4j/io/HTMLWriter;->getOutputFormat()Lorg/dom4j/io/OutputFormat;

    move-result-object v0

    invoke-virtual {v0}, Lorg/dom4j/io/OutputFormat;->isNewlines()Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x0

    iput v0, p0, Lorg/dom4j/io/HTMLWriter;->newLineAfterNTags:I

    :goto_d
    return-void

    :cond_e
    invoke-virtual {p0}, Lorg/dom4j/io/HTMLWriter;->getOutputFormat()Lorg/dom4j/io/OutputFormat;

    move-result-object v0

    invoke-virtual {v0}, Lorg/dom4j/io/OutputFormat;->getNewLineAfterNTags()I

    move-result v0

    iput v0, p0, Lorg/dom4j/io/HTMLWriter;->newLineAfterNTags:I

    goto :goto_d
.end method

.method public static prettyPrintHTML(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/io/UnsupportedEncodingException;,
            Lorg/dom4j/DocumentException;
        }
    .end annotation

    const/4 v1, 0x1

    const/4 v0, 0x0

    invoke-static {p0, v1, v1, v0, v1}, Lorg/dom4j/io/HTMLWriter;->prettyPrintHTML(Ljava/lang/String;ZZZZ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static prettyPrintHTML(Ljava/lang/String;ZZZZ)Ljava/lang/String;
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/io/UnsupportedEncodingException;,
            Lorg/dom4j/DocumentException;
        }
    .end annotation

    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    invoke-static {}, Lorg/dom4j/io/OutputFormat;->createPrettyPrint()Lorg/dom4j/io/OutputFormat;

    move-result-object v1

    invoke-virtual {v1, p1}, Lorg/dom4j/io/OutputFormat;->setNewlines(Z)V

    invoke-virtual {v1, p2}, Lorg/dom4j/io/OutputFormat;->setTrimText(Z)V

    invoke-virtual {v1, p3}, Lorg/dom4j/io/OutputFormat;->setXHTML(Z)V

    invoke-virtual {v1, p4}, Lorg/dom4j/io/OutputFormat;->setExpandEmptyElements(Z)V

    new-instance v2, Lorg/dom4j/io/HTMLWriter;

    invoke-direct {v2, v0, v1}, Lorg/dom4j/io/HTMLWriter;-><init>(Ljava/io/Writer;Lorg/dom4j/io/OutputFormat;)V

    invoke-static {p0}, Lorg/dom4j/DocumentHelper;->parseText(Ljava/lang/String;)Lorg/dom4j/Document;

    move-result-object v1

    invoke-virtual {v2, v1}, Lorg/dom4j/io/HTMLWriter;->write(Lorg/dom4j/Document;)V

    invoke-virtual {v2}, Lorg/dom4j/io/HTMLWriter;->flush()V

    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static prettyPrintXHTML(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/io/UnsupportedEncodingException;,
            Lorg/dom4j/DocumentException;
        }
    .end annotation

    const/4 v1, 0x1

    const/4 v0, 0x0

    invoke-static {p0, v1, v1, v1, v0}, Lorg/dom4j/io/HTMLWriter;->prettyPrintHTML(Ljava/lang/String;ZZZZ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public endCDATA()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    return-void
.end method

.method public getOmitElementCloseSet()Ljava/util/Set;
    .registers 2

    invoke-direct {p0}, Lorg/dom4j/io/HTMLWriter;->internalGetOmitElementCloseSet()Ljava/util/HashSet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashSet;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    return-object v0
.end method

.method public getPreformattedTags()Ljava/util/Set;
    .registers 2

    iget-object v0, p0, Lorg/dom4j/io/HTMLWriter;->preformattedTags:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    return-object v0
.end method

.method public isPreformattedTag(Ljava/lang/String;)Z
    .registers 4

    iget-object v0, p0, Lorg/dom4j/io/HTMLWriter;->preformattedTags:Ljava/util/HashSet;

    if-eqz v0, :cond_12

    iget-object v0, p0, Lorg/dom4j/io/HTMLWriter;->preformattedTags:Ljava/util/HashSet;

    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    const/4 v0, 0x1

    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method

.method protected loadOmitElementCloseSet(Ljava/util/Set;)V
    .registers 3

    const-string v0, "AREA"

    invoke-interface {p1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v0, "BASE"

    invoke-interface {p1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v0, "BR"

    invoke-interface {p1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v0, "COL"

    invoke-interface {p1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v0, "HR"

    invoke-interface {p1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v0, "IMG"

    invoke-interface {p1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v0, "INPUT"

    invoke-interface {p1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v0, "LINK"

    invoke-interface {p1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v0, "META"

    invoke-interface {p1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v0, "P"

    invoke-interface {p1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v0, "PARAM"

    invoke-interface {p1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method protected omitElementClose(Ljava/lang/String;)Z
    .registers 4

    invoke-direct {p0}, Lorg/dom4j/io/HTMLWriter;->internalGetOmitElementCloseSet()Ljava/util/HashSet;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public setOmitElementCloseSet(Ljava/util/Set;)V
    .registers 5

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lorg/dom4j/io/HTMLWriter;->omitElementCloseSet:Ljava/util/HashSet;

    if-eqz p1, :cond_2e

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lorg/dom4j/io/HTMLWriter;->omitElementCloseSet:Ljava/util/HashSet;

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_14
    :goto_14
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_14

    iget-object v2, p0, Lorg/dom4j/io/HTMLWriter;->omitElementCloseSet:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_14

    :cond_2e
    return-void
.end method

.method public setPreformattedTags(Ljava/util/Set;)V
    .registers 5

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lorg/dom4j/io/HTMLWriter;->preformattedTags:Ljava/util/HashSet;

    if-eqz p1, :cond_27

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_d
    :goto_d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_27

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_d

    iget-object v2, p0, Lorg/dom4j/io/HTMLWriter;->preformattedTags:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_d

    :cond_27
    return-void
.end method

.method public startCDATA()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    return-void
.end method

.method protected writeCDATA(Ljava/lang/String;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lorg/dom4j/io/HTMLWriter;->getOutputFormat()Lorg/dom4j/io/OutputFormat;

    move-result-object v0

    invoke-virtual {v0}, Lorg/dom4j/io/OutputFormat;->isXHTML()Z

    move-result v0

    if-eqz v0, :cond_11

    invoke-super {p0, p1}, Lorg/dom4j/io/XMLWriter;->writeCDATA(Ljava/lang/String;)V

    :goto_d
    const/4 v0, 0x4

    iput v0, p0, Lorg/dom4j/io/HTMLWriter;->lastOutputNodeType:I

    return-void

    :cond_11
    iget-object v0, p0, Lorg/dom4j/io/HTMLWriter;->writer:Ljava/io/Writer;

    invoke-virtual {v0, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_d
.end method

.method protected writeClose(Ljava/lang/String;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lorg/dom4j/io/HTMLWriter;->omitElementClose(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_9

    invoke-super {p0, p1}, Lorg/dom4j/io/XMLWriter;->writeClose(Ljava/lang/String;)V

    :cond_9
    return-void
.end method

.method protected writeDeclaration()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    return-void
.end method

.method protected writeElement(Lorg/dom4j/Element;)V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lorg/dom4j/io/HTMLWriter;->newLineAfterNTags:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_8

    invoke-direct {p0}, Lorg/dom4j/io/HTMLWriter;->lazyInitNewLinesAfterNTags()V

    :cond_8
    iget v0, p0, Lorg/dom4j/io/HTMLWriter;->newLineAfterNTags:I

    if-lez v0, :cond_1e

    iget v0, p0, Lorg/dom4j/io/HTMLWriter;->tagsOuput:I

    if-lez v0, :cond_1e

    iget v0, p0, Lorg/dom4j/io/HTMLWriter;->tagsOuput:I

    iget v1, p0, Lorg/dom4j/io/HTMLWriter;->newLineAfterNTags:I

    rem-int/2addr v0, v1

    if-nez v0, :cond_1e

    iget-object v0, p0, Lorg/dom4j/io/XMLWriter;->writer:Ljava/io/Writer;

    sget-object v1, Lorg/dom4j/io/HTMLWriter;->lineSeparator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    :cond_1e
    iget v0, p0, Lorg/dom4j/io/HTMLWriter;->tagsOuput:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/dom4j/io/HTMLWriter;->tagsOuput:I

    invoke-interface {p1}, Lorg/dom4j/Element;->getQualifiedName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lorg/dom4j/io/HTMLWriter;->lastText:Ljava/lang/String;

    invoke-interface {p1}, Lorg/dom4j/Element;->nodeCount()I

    invoke-virtual {p0, v0}, Lorg/dom4j/io/HTMLWriter;->isPreformattedTag(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b9

    invoke-virtual {p0}, Lorg/dom4j/io/HTMLWriter;->getOutputFormat()Lorg/dom4j/io/OutputFormat;

    move-result-object v2

    invoke-virtual {v2}, Lorg/dom4j/io/OutputFormat;->isNewlines()Z

    move-result v0

    invoke-virtual {v2}, Lorg/dom4j/io/OutputFormat;->isTrimText()Z

    move-result v3

    invoke-virtual {v2}, Lorg/dom4j/io/OutputFormat;->getIndent()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lorg/dom4j/io/HTMLWriter;->formatStack:Ljava/util/Stack;

    new-instance v6, Lorg/dom4j/io/HTMLWriter$FormatState;

    invoke-direct {v6, p0, v0, v3, v4}, Lorg/dom4j/io/HTMLWriter$FormatState;-><init>(Lorg/dom4j/io/HTMLWriter;ZZLjava/lang/String;)V

    invoke-virtual {v5, v6}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    :try_start_4d
    invoke-super {p0}, Lorg/dom4j/io/XMLWriter;->writePrintln()V

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_6b

    if-eqz v4, :cond_6b

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_6b

    iget-object v0, p0, Lorg/dom4j/io/XMLWriter;->writer:Ljava/io/Writer;

    invoke-direct {p0, v1}, Lorg/dom4j/io/HTMLWriter;->justSpaces(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    :cond_6b
    const/4 v0, 0x0

    invoke-virtual {v2, v0}, Lorg/dom4j/io/OutputFormat;->setNewlines(Z)V

    const/4 v0, 0x0

    invoke-virtual {v2, v0}, Lorg/dom4j/io/OutputFormat;->setTrimText(Z)V

    const-string v0, ""

    invoke-virtual {v2, v0}, Lorg/dom4j/io/OutputFormat;->setIndent(Ljava/lang/String;)V

    invoke-super {p0, p1}, Lorg/dom4j/io/XMLWriter;->writeElement(Lorg/dom4j/Element;)V
    :try_end_7b
    .catchall {:try_start_4d .. :try_end_7b} :catchall_99

    iget-object v0, p0, Lorg/dom4j/io/HTMLWriter;->formatStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/dom4j/io/HTMLWriter$FormatState;

    invoke-virtual {v0}, Lorg/dom4j/io/HTMLWriter$FormatState;->isNewlines()Z

    move-result v1

    invoke-virtual {v2, v1}, Lorg/dom4j/io/OutputFormat;->setNewlines(Z)V

    invoke-virtual {v0}, Lorg/dom4j/io/HTMLWriter$FormatState;->isTrimText()Z

    move-result v1

    invoke-virtual {v2, v1}, Lorg/dom4j/io/OutputFormat;->setTrimText(Z)V

    invoke-virtual {v0}, Lorg/dom4j/io/HTMLWriter$FormatState;->getIndent()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lorg/dom4j/io/OutputFormat;->setIndent(Ljava/lang/String;)V

    :goto_98
    return-void

    :catchall_99
    move-exception v0

    move-object v1, v0

    iget-object v0, p0, Lorg/dom4j/io/HTMLWriter;->formatStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/dom4j/io/HTMLWriter$FormatState;

    invoke-virtual {v0}, Lorg/dom4j/io/HTMLWriter$FormatState;->isNewlines()Z

    move-result v3

    invoke-virtual {v2, v3}, Lorg/dom4j/io/OutputFormat;->setNewlines(Z)V

    invoke-virtual {v0}, Lorg/dom4j/io/HTMLWriter$FormatState;->isTrimText()Z

    move-result v3

    invoke-virtual {v2, v3}, Lorg/dom4j/io/OutputFormat;->setTrimText(Z)V

    invoke-virtual {v0}, Lorg/dom4j/io/HTMLWriter$FormatState;->getIndent()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lorg/dom4j/io/OutputFormat;->setIndent(Ljava/lang/String;)V

    throw v1

    :cond_b9
    invoke-super {p0, p1}, Lorg/dom4j/io/XMLWriter;->writeElement(Lorg/dom4j/Element;)V

    goto :goto_98
.end method

.method protected writeEmptyElementClose(Ljava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lorg/dom4j/io/HTMLWriter;->getOutputFormat()Lorg/dom4j/io/OutputFormat;

    move-result-object v0

    invoke-virtual {v0}, Lorg/dom4j/io/OutputFormat;->isXHTML()Z

    move-result v0

    if-eqz v0, :cond_1c

    invoke-virtual {p0, p1}, Lorg/dom4j/io/HTMLWriter;->omitElementClose(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_18

    iget-object v0, p0, Lorg/dom4j/io/HTMLWriter;->writer:Ljava/io/Writer;

    const-string v1, " />"

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    :goto_17
    return-void

    :cond_18
    invoke-super {p0, p1}, Lorg/dom4j/io/XMLWriter;->writeEmptyElementClose(Ljava/lang/String;)V

    goto :goto_17

    :cond_1c
    invoke-virtual {p0, p1}, Lorg/dom4j/io/HTMLWriter;->omitElementClose(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2a

    iget-object v0, p0, Lorg/dom4j/io/HTMLWriter;->writer:Ljava/io/Writer;

    const-string v1, ">"

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_17

    :cond_2a
    invoke-super {p0, p1}, Lorg/dom4j/io/XMLWriter;->writeEmptyElementClose(Ljava/lang/String;)V

    goto :goto_17
.end method

.method protected writeEntity(Lorg/dom4j/Entity;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/dom4j/io/HTMLWriter;->writer:Ljava/io/Writer;

    invoke-interface {p1}, Lorg/dom4j/Entity;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const/4 v0, 0x5

    iput v0, p0, Lorg/dom4j/io/HTMLWriter;->lastOutputNodeType:I

    return-void
.end method

.method protected writeString(Ljava/lang/String;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "\n"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    iget-object v0, p0, Lorg/dom4j/io/HTMLWriter;->formatStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->empty()Z

    move-result v0

    if-nez v0, :cond_15

    sget-object v0, Lorg/dom4j/io/HTMLWriter;->lineSeparator:Ljava/lang/String;

    invoke-super {p0, v0}, Lorg/dom4j/io/XMLWriter;->writeString(Ljava/lang/String;)V

    :cond_15
    :goto_15
    return-void

    :cond_16
    iput-object p1, p0, Lorg/dom4j/io/HTMLWriter;->lastText:Ljava/lang/String;

    iget-object v0, p0, Lorg/dom4j/io/HTMLWriter;->formatStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->empty()Z

    move-result v0

    if-eqz v0, :cond_28

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-super {p0, v0}, Lorg/dom4j/io/XMLWriter;->writeString(Ljava/lang/String;)V

    goto :goto_15

    :cond_28
    invoke-super {p0, p1}, Lorg/dom4j/io/XMLWriter;->writeString(Ljava/lang/String;)V

    goto :goto_15
.end method
