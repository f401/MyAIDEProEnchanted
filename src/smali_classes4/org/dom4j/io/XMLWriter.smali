.class public Lorg/dom4j/io/XMLWriter;
.super Lorg/xml/sax/helpers/XMLFilterImpl;

# interfaces
.implements Lorg/xml/sax/ext/LexicalHandler;


# static fields
.field protected static final DEFAULT_FORMAT:Lorg/dom4j/io/OutputFormat;

.field protected static final LEXICAL_HANDLER_NAMES:[Ljava/lang/String;

.field private static final PAD_TEXT:Ljava/lang/String; = " "


# instance fields
.field private autoFlush:Z

.field private buffer:Ljava/lang/StringBuffer;

.field private charsAdded:Z

.field private escapeText:Z

.field private format:Lorg/dom4j/io/OutputFormat;

.field private inDTD:Z

.field private indentLevel:I

.field private lastChar:C

.field private lastElementClosed:Z

.field protected lastOutputNodeType:I

.field private lexicalHandler:Lorg/xml/sax/ext/LexicalHandler;

.field private maximumAllowedCharacter:I

.field private namespaceStack:Lorg/dom4j/tree/NamespaceStack;

.field private namespacesMap:Ljava/util/Map;

.field protected preserve:Z

.field private resolveEntityRefs:Z

.field private showCommentsInDTDs:Z

.field protected writer:Ljava/io/Writer;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "http://xml.org/sax/properties/lexical-handler"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "http://xml.org/sax/handlers/LexicalHandler"

    aput-object v2, v0, v1

    sput-object v0, Lorg/dom4j/io/XMLWriter;->LEXICAL_HANDLER_NAMES:[Ljava/lang/String;

    new-instance v0, Lorg/dom4j/io/OutputFormat;

    invoke-direct {v0}, Lorg/dom4j/io/OutputFormat;-><init>()V

    sput-object v0, Lorg/dom4j/io/XMLWriter;->DEFAULT_FORMAT:Lorg/dom4j/io/OutputFormat;

    return-void
.end method

.method public constructor <init>()V
    .registers 5

    const/4 v3, 0x1

    const/4 v1, 0x0

    invoke-direct {p0}, Lorg/xml/sax/helpers/XMLFilterImpl;-><init>()V

    iput-boolean v3, p0, Lorg/dom4j/io/XMLWriter;->resolveEntityRefs:Z

    iput-boolean v1, p0, Lorg/dom4j/io/XMLWriter;->lastElementClosed:Z

    iput-boolean v1, p0, Lorg/dom4j/io/XMLWriter;->preserve:Z

    new-instance v0, Lorg/dom4j/tree/NamespaceStack;

    invoke-direct {v0}, Lorg/dom4j/tree/NamespaceStack;-><init>()V

    iput-object v0, p0, Lorg/dom4j/io/XMLWriter;->namespaceStack:Lorg/dom4j/tree/NamespaceStack;

    iput-boolean v3, p0, Lorg/dom4j/io/XMLWriter;->escapeText:Z

    iput v1, p0, Lorg/dom4j/io/XMLWriter;->indentLevel:I

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lorg/dom4j/io/XMLWriter;->buffer:Ljava/lang/StringBuffer;

    iput-boolean v1, p0, Lorg/dom4j/io/XMLWriter;->charsAdded:Z

    sget-object v0, Lorg/dom4j/io/XMLWriter;->DEFAULT_FORMAT:Lorg/dom4j/io/OutputFormat;

    iput-object v0, p0, Lorg/dom4j/io/XMLWriter;->format:Lorg/dom4j/io/OutputFormat;

    new-instance v0, Ljava/io/BufferedWriter;

    new-instance v1, Ljava/io/OutputStreamWriter;

    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-direct {v1, v2}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    iput-object v0, p0, Lorg/dom4j/io/XMLWriter;->writer:Ljava/io/Writer;

    iput-boolean v3, p0, Lorg/dom4j/io/XMLWriter;->autoFlush:Z

    iget-object v0, p0, Lorg/dom4j/io/XMLWriter;->namespaceStack:Lorg/dom4j/tree/NamespaceStack;

    sget-object v1, Lorg/dom4j/Namespace;->NO_NAMESPACE:Lorg/dom4j/Namespace;

    invoke-virtual {v0, v1}, Lorg/dom4j/tree/NamespaceStack;->push(Lorg/dom4j/Namespace;)V

    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-direct {p0}, Lorg/xml/sax/helpers/XMLFilterImpl;-><init>()V

    iput-boolean v2, p0, Lorg/dom4j/io/XMLWriter;->resolveEntityRefs:Z

    iput-boolean v1, p0, Lorg/dom4j/io/XMLWriter;->lastElementClosed:Z

    iput-boolean v1, p0, Lorg/dom4j/io/XMLWriter;->preserve:Z

    new-instance v0, Lorg/dom4j/tree/NamespaceStack;

    invoke-direct {v0}, Lorg/dom4j/tree/NamespaceStack;-><init>()V

    iput-object v0, p0, Lorg/dom4j/io/XMLWriter;->namespaceStack:Lorg/dom4j/tree/NamespaceStack;

    iput-boolean v2, p0, Lorg/dom4j/io/XMLWriter;->escapeText:Z

    iput v1, p0, Lorg/dom4j/io/XMLWriter;->indentLevel:I

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lorg/dom4j/io/XMLWriter;->buffer:Ljava/lang/StringBuffer;

    iput-boolean v1, p0, Lorg/dom4j/io/XMLWriter;->charsAdded:Z

    sget-object v0, Lorg/dom4j/io/XMLWriter;->DEFAULT_FORMAT:Lorg/dom4j/io/OutputFormat;

    iput-object v0, p0, Lorg/dom4j/io/XMLWriter;->format:Lorg/dom4j/io/OutputFormat;

    iget-object v0, p0, Lorg/dom4j/io/XMLWriter;->format:Lorg/dom4j/io/OutputFormat;

    invoke-virtual {v0}, Lorg/dom4j/io/OutputFormat;->getEncoding()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lorg/dom4j/io/XMLWriter;->createWriter(Ljava/io/OutputStream;Ljava/lang/String;)Ljava/io/Writer;

    move-result-object v0

    iput-object v0, p0, Lorg/dom4j/io/XMLWriter;->writer:Ljava/io/Writer;

    iput-boolean v2, p0, Lorg/dom4j/io/XMLWriter;->autoFlush:Z

    iget-object v0, p0, Lorg/dom4j/io/XMLWriter;->namespaceStack:Lorg/dom4j/tree/NamespaceStack;

    sget-object v1, Lorg/dom4j/Namespace;->NO_NAMESPACE:Lorg/dom4j/Namespace;

    invoke-virtual {v0, v1}, Lorg/dom4j/tree/NamespaceStack;->push(Lorg/dom4j/Namespace;)V

    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;Lorg/dom4j/io/OutputFormat;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-direct {p0}, Lorg/xml/sax/helpers/XMLFilterImpl;-><init>()V

    iput-boolean v2, p0, Lorg/dom4j/io/XMLWriter;->resolveEntityRefs:Z

    iput-boolean v1, p0, Lorg/dom4j/io/XMLWriter;->lastElementClosed:Z

    iput-boolean v1, p0, Lorg/dom4j/io/XMLWriter;->preserve:Z

    new-instance v0, Lorg/dom4j/tree/NamespaceStack;

    invoke-direct {v0}, Lorg/dom4j/tree/NamespaceStack;-><init>()V

    iput-object v0, p0, Lorg/dom4j/io/XMLWriter;->namespaceStack:Lorg/dom4j/tree/NamespaceStack;

    iput-boolean v2, p0, Lorg/dom4j/io/XMLWriter;->escapeText:Z

    iput v1, p0, Lorg/dom4j/io/XMLWriter;->indentLevel:I

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lorg/dom4j/io/XMLWriter;->buffer:Ljava/lang/StringBuffer;

    iput-boolean v1, p0, Lorg/dom4j/io/XMLWriter;->charsAdded:Z

    iput-object p2, p0, Lorg/dom4j/io/XMLWriter;->format:Lorg/dom4j/io/OutputFormat;

    invoke-virtual {p2}, Lorg/dom4j/io/OutputFormat;->getEncoding()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lorg/dom4j/io/XMLWriter;->createWriter(Ljava/io/OutputStream;Ljava/lang/String;)Ljava/io/Writer;

    move-result-object v0

    iput-object v0, p0, Lorg/dom4j/io/XMLWriter;->writer:Ljava/io/Writer;

    iput-boolean v2, p0, Lorg/dom4j/io/XMLWriter;->autoFlush:Z

    iget-object v0, p0, Lorg/dom4j/io/XMLWriter;->namespaceStack:Lorg/dom4j/tree/NamespaceStack;

    sget-object v1, Lorg/dom4j/Namespace;->NO_NAMESPACE:Lorg/dom4j/Namespace;

    invoke-virtual {v0, v1}, Lorg/dom4j/tree/NamespaceStack;->push(Lorg/dom4j/Namespace;)V

    return-void
.end method

.method public constructor <init>(Ljava/io/Writer;)V
    .registers 3

    sget-object v0, Lorg/dom4j/io/XMLWriter;->DEFAULT_FORMAT:Lorg/dom4j/io/OutputFormat;

    invoke-direct {p0, p1, v0}, Lorg/dom4j/io/XMLWriter;-><init>(Ljava/io/Writer;Lorg/dom4j/io/OutputFormat;)V

    return-void
.end method

.method public constructor <init>(Ljava/io/Writer;Lorg/dom4j/io/OutputFormat;)V
    .registers 6

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-direct {p0}, Lorg/xml/sax/helpers/XMLFilterImpl;-><init>()V

    iput-boolean v2, p0, Lorg/dom4j/io/XMLWriter;->resolveEntityRefs:Z

    iput-boolean v1, p0, Lorg/dom4j/io/XMLWriter;->lastElementClosed:Z

    iput-boolean v1, p0, Lorg/dom4j/io/XMLWriter;->preserve:Z

    new-instance v0, Lorg/dom4j/tree/NamespaceStack;

    invoke-direct {v0}, Lorg/dom4j/tree/NamespaceStack;-><init>()V

    iput-object v0, p0, Lorg/dom4j/io/XMLWriter;->namespaceStack:Lorg/dom4j/tree/NamespaceStack;

    iput-boolean v2, p0, Lorg/dom4j/io/XMLWriter;->escapeText:Z

    iput v1, p0, Lorg/dom4j/io/XMLWriter;->indentLevel:I

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lorg/dom4j/io/XMLWriter;->buffer:Ljava/lang/StringBuffer;

    iput-boolean v1, p0, Lorg/dom4j/io/XMLWriter;->charsAdded:Z

    iput-object p1, p0, Lorg/dom4j/io/XMLWriter;->writer:Ljava/io/Writer;

    iput-object p2, p0, Lorg/dom4j/io/XMLWriter;->format:Lorg/dom4j/io/OutputFormat;

    iget-object v0, p0, Lorg/dom4j/io/XMLWriter;->namespaceStack:Lorg/dom4j/tree/NamespaceStack;

    sget-object v1, Lorg/dom4j/Namespace;->NO_NAMESPACE:Lorg/dom4j/Namespace;

    invoke-virtual {v0, v1}, Lorg/dom4j/tree/NamespaceStack;->push(Lorg/dom4j/Namespace;)V

    return-void
.end method

.method public constructor <init>(Lorg/dom4j/io/OutputFormat;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-direct {p0}, Lorg/xml/sax/helpers/XMLFilterImpl;-><init>()V

    iput-boolean v2, p0, Lorg/dom4j/io/XMLWriter;->resolveEntityRefs:Z

    iput-boolean v1, p0, Lorg/dom4j/io/XMLWriter;->lastElementClosed:Z

    iput-boolean v1, p0, Lorg/dom4j/io/XMLWriter;->preserve:Z

    new-instance v0, Lorg/dom4j/tree/NamespaceStack;

    invoke-direct {v0}, Lorg/dom4j/tree/NamespaceStack;-><init>()V

    iput-object v0, p0, Lorg/dom4j/io/XMLWriter;->namespaceStack:Lorg/dom4j/tree/NamespaceStack;

    iput-boolean v2, p0, Lorg/dom4j/io/XMLWriter;->escapeText:Z

    iput v1, p0, Lorg/dom4j/io/XMLWriter;->indentLevel:I

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lorg/dom4j/io/XMLWriter;->buffer:Ljava/lang/StringBuffer;

    iput-boolean v1, p0, Lorg/dom4j/io/XMLWriter;->charsAdded:Z

    iput-object p1, p0, Lorg/dom4j/io/XMLWriter;->format:Lorg/dom4j/io/OutputFormat;

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {p1}, Lorg/dom4j/io/OutputFormat;->getEncoding()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/dom4j/io/XMLWriter;->createWriter(Ljava/io/OutputStream;Ljava/lang/String;)Ljava/io/Writer;

    move-result-object v0

    iput-object v0, p0, Lorg/dom4j/io/XMLWriter;->writer:Ljava/io/Writer;

    iput-boolean v2, p0, Lorg/dom4j/io/XMLWriter;->autoFlush:Z

    iget-object v0, p0, Lorg/dom4j/io/XMLWriter;->namespaceStack:Lorg/dom4j/tree/NamespaceStack;

    sget-object v1, Lorg/dom4j/Namespace;->NO_NAMESPACE:Lorg/dom4j/Namespace;

    invoke-virtual {v0, v1}, Lorg/dom4j/tree/NamespaceStack;->push(Lorg/dom4j/Namespace;)V

    return-void
.end method


# virtual methods
.method public characters([CII)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    const/4 v3, 0x3

    const/4 v2, 0x1

    if-eqz p1, :cond_9

    array-length v0, p1

    if-eqz v0, :cond_9

    if-gtz p3, :cond_a

    :cond_9
    :goto_9
    return-void

    :cond_a
    :try_start_a
    invoke-static {p1, p2, p3}, Ljava/lang/String;->valueOf([CII)Ljava/lang/String;

    move-result-object v0

    iget-boolean v1, p0, Lorg/dom4j/io/XMLWriter;->escapeText:Z

    if-eqz v1, :cond_9e

    invoke-virtual {p0, v0}, Lorg/dom4j/io/XMLWriter;->escapeElementEntities(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    :goto_17
    iget-object v0, p0, Lorg/dom4j/io/XMLWriter;->format:Lorg/dom4j/io/OutputFormat;

    invoke-virtual {v0}, Lorg/dom4j/io/OutputFormat;->isTrimText()Z

    move-result v0

    if-eqz v0, :cond_86

    iget v0, p0, Lorg/dom4j/io/XMLWriter;->lastOutputNodeType:I

    if-ne v0, v3, :cond_4c

    iget-boolean v0, p0, Lorg/dom4j/io/XMLWriter;->charsAdded:Z

    if-nez v0, :cond_4c

    iget-object v0, p0, Lorg/dom4j/io/XMLWriter;->writer:Ljava/io/Writer;

    const/16 v2, 0x20

    invoke-virtual {v0, v2}, Ljava/io/Writer;->write(I)V
    :try_end_2e
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_2e} :catch_60

    :cond_2e
    :goto_2e
    const-string v0, ""

    :try_start_30
    new-instance v2, Ljava/util/StringTokenizer;

    invoke-direct {v2, v1}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;)V

    :goto_35
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v1

    if-eqz v1, :cond_8b

    iget-object v1, p0, Lorg/dom4j/io/XMLWriter;->writer:Ljava/io/Writer;

    invoke-virtual {v1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    iget-object v0, p0, Lorg/dom4j/io/XMLWriter;->writer:Ljava/io/Writer;

    invoke-virtual {v2}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V
    :try_end_49
    .catch Ljava/io/IOException; {:try_start_30 .. :try_end_49} :catch_60

    const-string v0, " "

    goto :goto_35

    :cond_4c
    :try_start_4c
    iget-boolean v0, p0, Lorg/dom4j/io/XMLWriter;->charsAdded:Z

    if-eqz v0, :cond_65

    iget-char v0, p0, Lorg/dom4j/io/XMLWriter;->lastChar:C

    invoke-static {v0}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v0

    if-eqz v0, :cond_65

    iget-object v0, p0, Lorg/dom4j/io/XMLWriter;->writer:Ljava/io/Writer;

    const/16 v2, 0x20

    invoke-virtual {v0, v2}, Ljava/io/Writer;->write(I)V
    :try_end_5f
    .catch Ljava/io/IOException; {:try_start_4c .. :try_end_5f} :catch_60

    goto :goto_2e

    :catch_60
    move-exception v0

    invoke-virtual {p0, v0}, Lorg/dom4j/io/XMLWriter;->handleException(Ljava/io/IOException;)V

    goto :goto_9

    :cond_65
    :try_start_65
    iget v0, p0, Lorg/dom4j/io/XMLWriter;->lastOutputNodeType:I

    if-ne v0, v2, :cond_2e

    iget-object v0, p0, Lorg/dom4j/io/XMLWriter;->format:Lorg/dom4j/io/OutputFormat;

    invoke-virtual {v0}, Lorg/dom4j/io/OutputFormat;->isPadText()Z

    move-result v0

    if-eqz v0, :cond_2e

    iget-boolean v0, p0, Lorg/dom4j/io/XMLWriter;->lastElementClosed:Z

    if-eqz v0, :cond_2e

    const/4 v0, 0x0

    aget-char v0, p1, v0

    invoke-static {v0}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v0

    if-eqz v0, :cond_2e

    iget-object v0, p0, Lorg/dom4j/io/XMLWriter;->writer:Ljava/io/Writer;

    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_2e

    :cond_86
    iget-object v0, p0, Lorg/dom4j/io/XMLWriter;->writer:Ljava/io/Writer;

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    :cond_8b
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/dom4j/io/XMLWriter;->charsAdded:Z

    add-int v0, p2, p3

    add-int/lit8 v0, v0, -0x1

    aget-char v0, p1, v0

    iput-char v0, p0, Lorg/dom4j/io/XMLWriter;->lastChar:C

    const/4 v0, 0x3

    iput v0, p0, Lorg/dom4j/io/XMLWriter;->lastOutputNodeType:I

    invoke-super {p0, p1, p2, p3}, Lorg/xml/sax/helpers/XMLFilterImpl;->characters([CII)V
    :try_end_9c
    .catch Ljava/io/IOException; {:try_start_65 .. :try_end_9c} :catch_60

    goto/16 :goto_9

    :cond_9e
    move-object v1, v0

    goto/16 :goto_17
.end method

.method public close()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/dom4j/io/XMLWriter;->writer:Ljava/io/Writer;

    invoke-virtual {v0}, Ljava/io/Writer;->close()V

    return-void
.end method

.method public comment([CII)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    iget-boolean v0, p0, Lorg/dom4j/io/XMLWriter;->showCommentsInDTDs:Z

    if-nez v0, :cond_8

    iget-boolean v0, p0, Lorg/dom4j/io/XMLWriter;->inDTD:Z

    if-nez v0, :cond_13

    :cond_8
    const/4 v0, 0x0

    :try_start_9
    iput-boolean v0, p0, Lorg/dom4j/io/XMLWriter;->charsAdded:Z

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1, p2, p3}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {p0, v0}, Lorg/dom4j/io/XMLWriter;->writeComment(Ljava/lang/String;)V
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_13} :catch_1d

    :cond_13
    :goto_13
    iget-object v0, p0, Lorg/dom4j/io/XMLWriter;->lexicalHandler:Lorg/xml/sax/ext/LexicalHandler;

    if-eqz v0, :cond_1c

    iget-object v0, p0, Lorg/dom4j/io/XMLWriter;->lexicalHandler:Lorg/xml/sax/ext/LexicalHandler;

    invoke-interface {v0, p1, p2, p3}, Lorg/xml/sax/ext/LexicalHandler;->comment([CII)V

    :cond_1c
    return-void

    :catch_1d
    move-exception v0

    invoke-virtual {p0, v0}, Lorg/dom4j/io/XMLWriter;->handleException(Ljava/io/IOException;)V

    goto :goto_13
.end method

.method protected createWriter(Ljava/io/OutputStream;Ljava/lang/String;)Ljava/io/Writer;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    new-instance v0, Ljava/io/BufferedWriter;

    new-instance v1, Ljava/io/OutputStreamWriter;

    invoke-direct {v1, p1, p2}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    return-object v0
.end method

.method protected defaultMaximumAllowedCharacter()I
    .registers 3

    iget-object v0, p0, Lorg/dom4j/io/XMLWriter;->format:Lorg/dom4j/io/OutputFormat;

    invoke-virtual {v0}, Lorg/dom4j/io/OutputFormat;->getEncoding()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_13

    const-string v1, "US-ASCII"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    const/16 v0, 0x7f

    :goto_12
    return v0

    :cond_13
    const/4 v0, -0x1

    goto :goto_12
.end method

.method public endCDATA()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lorg/dom4j/io/XMLWriter;->writer:Ljava/io/Writer;

    const-string v1, "]]>"

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_7} :catch_11

    :goto_7
    iget-object v0, p0, Lorg/dom4j/io/XMLWriter;->lexicalHandler:Lorg/xml/sax/ext/LexicalHandler;

    if-eqz v0, :cond_10

    iget-object v0, p0, Lorg/dom4j/io/XMLWriter;->lexicalHandler:Lorg/xml/sax/ext/LexicalHandler;

    invoke-interface {v0}, Lorg/xml/sax/ext/LexicalHandler;->endCDATA()V

    :cond_10
    return-void

    :catch_11
    move-exception v0

    invoke-virtual {p0, v0}, Lorg/dom4j/io/XMLWriter;->handleException(Ljava/io/IOException;)V

    goto :goto_7
.end method

.method public endDTD()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/dom4j/io/XMLWriter;->inDTD:Z

    iget-object v0, p0, Lorg/dom4j/io/XMLWriter;->lexicalHandler:Lorg/xml/sax/ext/LexicalHandler;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lorg/dom4j/io/XMLWriter;->lexicalHandler:Lorg/xml/sax/ext/LexicalHandler;

    invoke-interface {v0}, Lorg/xml/sax/ext/LexicalHandler;->endDTD()V

    :cond_c
    return-void
.end method

.method public endDocument()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    invoke-super {p0}, Lorg/xml/sax/helpers/XMLFilterImpl;->endDocument()V

    iget-boolean v0, p0, Lorg/dom4j/io/XMLWriter;->autoFlush:Z

    if-eqz v0, :cond_a

    :try_start_7
    invoke-virtual {p0}, Lorg/dom4j/io/XMLWriter;->flush()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_a} :catch_b

    :cond_a
    :goto_a
    return-void

    :catch_b
    move-exception v0

    goto :goto_a
.end method

.method public endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    const/4 v0, 0x0

    :try_start_1
    iput-boolean v0, p0, Lorg/dom4j/io/XMLWriter;->charsAdded:Z

    iget v0, p0, Lorg/dom4j/io/XMLWriter;->indentLevel:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/dom4j/io/XMLWriter;->indentLevel:I

    iget-boolean v0, p0, Lorg/dom4j/io/XMLWriter;->lastElementClosed:Z

    if-eqz v0, :cond_13

    invoke-virtual {p0}, Lorg/dom4j/io/XMLWriter;->writePrintln()V

    invoke-virtual {p0}, Lorg/dom4j/io/XMLWriter;->indent()V

    :cond_13
    invoke-virtual {p0, p3}, Lorg/dom4j/io/XMLWriter;->writeClose(Ljava/lang/String;)V

    const/4 v0, 0x1

    iput v0, p0, Lorg/dom4j/io/XMLWriter;->lastOutputNodeType:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/dom4j/io/XMLWriter;->lastElementClosed:Z

    invoke-super {p0, p1, p2, p3}, Lorg/xml/sax/helpers/XMLFilterImpl;->endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1f
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1f} :catch_20

    :goto_1f
    return-void

    :catch_20
    move-exception v0

    invoke-virtual {p0, v0}, Lorg/dom4j/io/XMLWriter;->handleException(Ljava/io/IOException;)V

    goto :goto_1f
.end method

.method public endEntity(Ljava/lang/String;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    iget-object v0, p0, Lorg/dom4j/io/XMLWriter;->lexicalHandler:Lorg/xml/sax/ext/LexicalHandler;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lorg/dom4j/io/XMLWriter;->lexicalHandler:Lorg/xml/sax/ext/LexicalHandler;

    invoke-interface {v0, p1}, Lorg/xml/sax/ext/LexicalHandler;->endEntity(Ljava/lang/String;)V

    :cond_9
    return-void
.end method

.method public endPrefixMapping(Ljava/lang/String;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    invoke-super {p0, p1}, Lorg/xml/sax/helpers/XMLFilterImpl;->endPrefixMapping(Ljava/lang/String;)V

    return-void
.end method

.method protected escapeAttributeEntities(Ljava/lang/String;)Ljava/lang/String;
    .registers 12

    const/4 v4, 0x0

    const/4 v3, 0x0

    iget-object v0, p0, Lorg/dom4j/io/XMLWriter;->format:Lorg/dom4j/io/OutputFormat;

    invoke-virtual {v0}, Lorg/dom4j/io/OutputFormat;->getAttributeQuoteCharacter()C

    move-result v6

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v7

    move-object v0, v3

    move v1, v4

    move v5, v4

    :goto_f
    if-ge v5, v7, :cond_6e

    invoke-virtual {p1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v2

    sparse-switch v2, :sswitch_data_8e

    const/16 v8, 0x20

    if-lt v2, v8, :cond_22

    invoke-virtual {p0, v2}, Lorg/dom4j/io/XMLWriter;->shouldEncodeChar(C)Z

    move-result v8

    if-eqz v8, :cond_8c

    :cond_22
    new-instance v8, Ljava/lang/StringBuffer;

    invoke-direct {v8}, Ljava/lang/StringBuffer;-><init>()V

    const-string v9, "&#"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v8, ";"

    invoke-virtual {v2, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_3b
    if-eqz v2, :cond_51

    if-nez v0, :cond_43

    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    :cond_43
    iget-object v8, p0, Lorg/dom4j/io/XMLWriter;->buffer:Ljava/lang/StringBuffer;

    sub-int v9, v5, v1

    invoke-virtual {v8, v0, v1, v9}, Ljava/lang/StringBuffer;->append([CII)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lorg/dom4j/io/XMLWriter;->buffer:Ljava/lang/StringBuffer;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v1, v5, 0x1

    :cond_51
    add-int/lit8 v2, v5, 0x1

    move v5, v2

    goto :goto_f

    :sswitch_55
    const-string v2, "&lt;"

    goto :goto_3b

    :sswitch_58
    const-string v2, "&gt;"

    goto :goto_3b

    :sswitch_5b
    const/16 v2, 0x27

    if-ne v6, v2, :cond_8c

    const-string v2, "&apos;"

    goto :goto_3b

    :sswitch_62
    const/16 v2, 0x22

    if-ne v6, v2, :cond_8c

    const-string v2, "&quot;"

    goto :goto_3b

    :sswitch_69
    const-string v2, "&amp;"

    goto :goto_3b

    :sswitch_6c
    move-object v2, v3

    goto :goto_3b

    :cond_6e
    if-nez v1, :cond_71

    :goto_70
    return-object p1

    :cond_71
    if-ge v1, v7, :cond_80

    if-nez v0, :cond_79

    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    :cond_79
    iget-object v2, p0, Lorg/dom4j/io/XMLWriter;->buffer:Ljava/lang/StringBuffer;

    sub-int v3, v5, v1

    invoke-virtual {v2, v0, v1, v3}, Ljava/lang/StringBuffer;->append([CII)Ljava/lang/StringBuffer;

    :cond_80
    iget-object v0, p0, Lorg/dom4j/io/XMLWriter;->buffer:Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lorg/dom4j/io/XMLWriter;->buffer:Ljava/lang/StringBuffer;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->setLength(I)V

    goto :goto_70

    :cond_8c
    move-object v2, v3

    goto :goto_3b

    :sswitch_data_8e
    .sparse-switch
        0x9 -> :sswitch_6c
        0xa -> :sswitch_6c
        0xd -> :sswitch_6c
        0x22 -> :sswitch_62
        0x26 -> :sswitch_69
        0x27 -> :sswitch_5b
        0x3c -> :sswitch_55
        0x3e -> :sswitch_58
    .end sparse-switch
.end method

.method protected escapeElementEntities(Ljava/lang/String;)Ljava/lang/String;
    .registers 11

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v6

    move-object v0, v3

    move v1, v4

    move v5, v4

    :goto_9
    if-ge v5, v6, :cond_61

    invoke-virtual {p1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v2

    sparse-switch v2, :sswitch_data_82

    const/16 v7, 0x20

    if-lt v2, v7, :cond_1c

    invoke-virtual {p0, v2}, Lorg/dom4j/io/XMLWriter;->shouldEncodeChar(C)Z

    move-result v7

    if-eqz v7, :cond_7f

    :cond_1c
    new-instance v7, Ljava/lang/StringBuffer;

    invoke-direct {v7}, Ljava/lang/StringBuffer;-><init>()V

    const-string v8, "&#"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v7, ";"

    invoke-virtual {v2, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_35
    if-eqz v2, :cond_4b

    if-nez v0, :cond_3d

    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    :cond_3d
    iget-object v7, p0, Lorg/dom4j/io/XMLWriter;->buffer:Ljava/lang/StringBuffer;

    sub-int v8, v5, v1

    invoke-virtual {v7, v0, v1, v8}, Ljava/lang/StringBuffer;->append([CII)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lorg/dom4j/io/XMLWriter;->buffer:Ljava/lang/StringBuffer;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v1, v5, 0x1

    :cond_4b
    add-int/lit8 v2, v5, 0x1

    move v5, v2

    goto :goto_9

    :sswitch_4f
    const-string v2, "&lt;"

    goto :goto_35

    :sswitch_52
    const-string v2, "&gt;"

    goto :goto_35

    :sswitch_55
    const-string v2, "&amp;"

    goto :goto_35

    :sswitch_58
    iget-boolean v7, p0, Lorg/dom4j/io/XMLWriter;->preserve:Z

    if-eqz v7, :cond_7f

    invoke-static {v2}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v2

    goto :goto_35

    :cond_61
    if-nez v1, :cond_64

    :goto_63
    return-object p1

    :cond_64
    if-ge v1, v6, :cond_73

    if-nez v0, :cond_6c

    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    :cond_6c
    iget-object v2, p0, Lorg/dom4j/io/XMLWriter;->buffer:Ljava/lang/StringBuffer;

    sub-int v3, v5, v1

    invoke-virtual {v2, v0, v1, v3}, Ljava/lang/StringBuffer;->append([CII)Ljava/lang/StringBuffer;

    :cond_73
    iget-object v0, p0, Lorg/dom4j/io/XMLWriter;->buffer:Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lorg/dom4j/io/XMLWriter;->buffer:Ljava/lang/StringBuffer;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->setLength(I)V

    goto :goto_63

    :cond_7f
    move-object v2, v3

    goto :goto_35

    nop

    :sswitch_data_82
    .sparse-switch
        0x9 -> :sswitch_58
        0xa -> :sswitch_58
        0xd -> :sswitch_58
        0x26 -> :sswitch_55
        0x3c -> :sswitch_4f
        0x3e -> :sswitch_52
    .end sparse-switch
.end method

.method public flush()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/dom4j/io/XMLWriter;->writer:Ljava/io/Writer;

    invoke-virtual {v0}, Ljava/io/Writer;->flush()V

    return-void
.end method

.method public getLexicalHandler()Lorg/xml/sax/ext/LexicalHandler;
    .registers 2

    iget-object v0, p0, Lorg/dom4j/io/XMLWriter;->lexicalHandler:Lorg/xml/sax/ext/LexicalHandler;

    return-object v0
.end method

.method public getMaximumAllowedCharacter()I
    .registers 2

    iget v0, p0, Lorg/dom4j/io/XMLWriter;->maximumAllowedCharacter:I

    if-nez v0, :cond_a

    invoke-virtual {p0}, Lorg/dom4j/io/XMLWriter;->defaultMaximumAllowedCharacter()I

    move-result v0

    iput v0, p0, Lorg/dom4j/io/XMLWriter;->maximumAllowedCharacter:I

    :cond_a
    iget v0, p0, Lorg/dom4j/io/XMLWriter;->maximumAllowedCharacter:I

    return v0
.end method

.method protected getOutputFormat()Lorg/dom4j/io/OutputFormat;
    .registers 2

    iget-object v0, p0, Lorg/dom4j/io/XMLWriter;->format:Lorg/dom4j/io/OutputFormat;

    return-object v0
.end method

.method public getProperty(Ljava/lang/String;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXNotRecognizedException;,
            Lorg/xml/sax/SAXNotSupportedException;
        }
    .end annotation

    const/4 v0, 0x0

    :goto_1
    sget-object v1, Lorg/dom4j/io/XMLWriter;->LEXICAL_HANDLER_NAMES:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_18

    sget-object v1, Lorg/dom4j/io/XMLWriter;->LEXICAL_HANDLER_NAMES:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_15

    invoke-virtual {p0}, Lorg/dom4j/io/XMLWriter;->getLexicalHandler()Lorg/xml/sax/ext/LexicalHandler;

    move-result-object v0

    :goto_14
    return-object v0

    :cond_15
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_18
    invoke-super {p0, p1}, Lorg/xml/sax/helpers/XMLFilterImpl;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_14
.end method

.method protected handleException(Ljava/io/IOException;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    new-instance v0, Lorg/xml/sax/SAXException;

    invoke-direct {v0, p1}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/Exception;)V

    throw v0
.end method

.method public ignorableWhitespace([CII)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    invoke-super {p0, p1, p2, p3}, Lorg/xml/sax/helpers/XMLFilterImpl;->ignorableWhitespace([CII)V

    return-void
.end method

.method protected indent()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/dom4j/io/XMLWriter;->format:Lorg/dom4j/io/OutputFormat;

    invoke-virtual {v0}, Lorg/dom4j/io/OutputFormat;->getIndent()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1b

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1b

    const/4 v0, 0x0

    :goto_f
    iget v2, p0, Lorg/dom4j/io/XMLWriter;->indentLevel:I

    if-ge v0, v2, :cond_1b

    iget-object v2, p0, Lorg/dom4j/io/XMLWriter;->writer:Ljava/io/Writer;

    invoke-virtual {v2, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_f

    :cond_1b
    return-void
.end method

.method protected installLexicalHandler()V
    .registers 4

    invoke-virtual {p0}, Lorg/dom4j/io/XMLWriter;->getParent()Lorg/xml/sax/XMLReader;

    move-result-object v1

    if-nez v1, :cond_e

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "No parent for filter"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_e
    const/4 v0, 0x0

    :goto_f
    sget-object v2, Lorg/dom4j/io/XMLWriter;->LEXICAL_HANDLER_NAMES:[Ljava/lang/String;

    array-length v2, v2

    if-ge v0, v2, :cond_1b

    :try_start_14
    sget-object v2, Lorg/dom4j/io/XMLWriter;->LEXICAL_HANDLER_NAMES:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-interface {v1, v2, p0}, Lorg/xml/sax/XMLReader;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_1b
    .catch Lorg/xml/sax/SAXNotRecognizedException; {:try_start_14 .. :try_end_1b} :catch_1c
    .catch Lorg/xml/sax/SAXNotSupportedException; {:try_start_14 .. :try_end_1b} :catch_20

    :cond_1b
    return-void

    :catch_1c
    move-exception v2

    :goto_1d
    add-int/lit8 v0, v0, 0x1

    goto :goto_f

    :catch_20
    move-exception v2

    goto :goto_1d
.end method

.method protected final isElementSpacePreserved(Lorg/dom4j/Element;)Z
    .registers 5

    const-string v0, "space"

    invoke-interface {p1, v0}, Lorg/dom4j/Element;->attribute(Ljava/lang/String;)Lorg/dom4j/Attribute;

    move-result-object v1

    iget-boolean v0, p0, Lorg/dom4j/io/XMLWriter;->preserve:Z

    if-eqz v1, :cond_23

    const-string v0, "xml"

    invoke-interface {v1}, Lorg/dom4j/Attribute;->getNamespacePrefix()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_24

    const-string v0, "preserve"

    invoke-interface {v1}, Lorg/dom4j/Attribute;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_24

    const/4 v0, 0x1

    :cond_23
    :goto_23
    return v0

    :cond_24
    const/4 v0, 0x0

    goto :goto_23
.end method

.method public isEscapeText()Z
    .registers 2

    iget-boolean v0, p0, Lorg/dom4j/io/XMLWriter;->escapeText:Z

    return v0
.end method

.method protected isExpandEmptyElements()Z
    .registers 2

    iget-object v0, p0, Lorg/dom4j/io/XMLWriter;->format:Lorg/dom4j/io/OutputFormat;

    invoke-virtual {v0}, Lorg/dom4j/io/OutputFormat;->isExpandEmptyElements()Z

    move-result v0

    return v0
.end method

.method protected isNamespaceDeclaration(Lorg/dom4j/Namespace;)Z
    .registers 3

    if-eqz p1, :cond_16

    sget-object v0, Lorg/dom4j/Namespace;->XML_NAMESPACE:Lorg/dom4j/Namespace;

    if-eq p1, v0, :cond_16

    invoke-virtual {p1}, Lorg/dom4j/Namespace;->getURI()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_16

    iget-object v0, p0, Lorg/dom4j/io/XMLWriter;->namespaceStack:Lorg/dom4j/tree/NamespaceStack;

    invoke-virtual {v0, p1}, Lorg/dom4j/tree/NamespaceStack;->contains(Lorg/dom4j/Namespace;)Z

    move-result v0

    if-nez v0, :cond_16

    const/4 v0, 0x1

    :goto_15
    return v0

    :cond_16
    const/4 v0, 0x0

    goto :goto_15
.end method

.method public notationDecl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    invoke-super {p0, p1, p2, p3}, Lorg/xml/sax/helpers/XMLFilterImpl;->notationDecl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public parse(Lorg/xml/sax/InputSource;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    invoke-virtual {p0}, Lorg/dom4j/io/XMLWriter;->installLexicalHandler()V

    invoke-super {p0, p1}, Lorg/xml/sax/helpers/XMLFilterImpl;->parse(Lorg/xml/sax/InputSource;)V

    return-void
.end method

.method public println()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/dom4j/io/XMLWriter;->writer:Ljava/io/Writer;

    iget-object v1, p0, Lorg/dom4j/io/XMLWriter;->format:Lorg/dom4j/io/OutputFormat;

    invoke-virtual {v1}, Lorg/dom4j/io/OutputFormat;->getLineSeparator()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    return-void
.end method

.method public processingInstruction(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    :try_start_0
    invoke-virtual {p0}, Lorg/dom4j/io/XMLWriter;->indent()V

    iget-object v0, p0, Lorg/dom4j/io/XMLWriter;->writer:Ljava/io/Writer;

    const-string v1, "<?"

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    iget-object v0, p0, Lorg/dom4j/io/XMLWriter;->writer:Ljava/io/Writer;

    invoke-virtual {v0, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    iget-object v0, p0, Lorg/dom4j/io/XMLWriter;->writer:Ljava/io/Writer;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    iget-object v0, p0, Lorg/dom4j/io/XMLWriter;->writer:Ljava/io/Writer;

    invoke-virtual {v0, p2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    iget-object v0, p0, Lorg/dom4j/io/XMLWriter;->writer:Ljava/io/Writer;

    const-string v1, "?>"

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/dom4j/io/XMLWriter;->writePrintln()V

    const/4 v0, 0x7

    iput v0, p0, Lorg/dom4j/io/XMLWriter;->lastOutputNodeType:I

    invoke-super {p0, p1, p2}, Lorg/xml/sax/helpers/XMLFilterImpl;->processingInstruction(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2b
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_2b} :catch_2c

    :goto_2b
    return-void

    :catch_2c
    move-exception v0

    invoke-virtual {p0, v0}, Lorg/dom4j/io/XMLWriter;->handleException(Ljava/io/IOException;)V

    goto :goto_2b
.end method

.method public resolveEntityRefs()Z
    .registers 2

    iget-boolean v0, p0, Lorg/dom4j/io/XMLWriter;->resolveEntityRefs:Z

    return v0
.end method

.method public setDocumentLocator(Lorg/xml/sax/Locator;)V
    .registers 2

    invoke-super {p0, p1}, Lorg/xml/sax/helpers/XMLFilterImpl;->setDocumentLocator(Lorg/xml/sax/Locator;)V

    return-void
.end method

.method public setEscapeText(Z)V
    .registers 2

    iput-boolean p1, p0, Lorg/dom4j/io/XMLWriter;->escapeText:Z

    return-void
.end method

.method public setIndentLevel(I)V
    .registers 2

    iput p1, p0, Lorg/dom4j/io/XMLWriter;->indentLevel:I

    return-void
.end method

.method public setLexicalHandler(Lorg/xml/sax/ext/LexicalHandler;)V
    .registers 4

    if-nez p1, :cond_a

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Null lexical handler"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_a
    iput-object p1, p0, Lorg/dom4j/io/XMLWriter;->lexicalHandler:Lorg/xml/sax/ext/LexicalHandler;

    return-void
.end method

.method public setMaximumAllowedCharacter(I)V
    .registers 2

    iput p1, p0, Lorg/dom4j/io/XMLWriter;->maximumAllowedCharacter:I

    return-void
.end method

.method public setOutputStream(Ljava/io/OutputStream;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    iget-object v0, p0, Lorg/dom4j/io/XMLWriter;->format:Lorg/dom4j/io/OutputFormat;

    invoke-virtual {v0}, Lorg/dom4j/io/OutputFormat;->getEncoding()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lorg/dom4j/io/XMLWriter;->createWriter(Ljava/io/OutputStream;Ljava/lang/String;)Ljava/io/Writer;

    move-result-object v0

    iput-object v0, p0, Lorg/dom4j/io/XMLWriter;->writer:Ljava/io/Writer;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/dom4j/io/XMLWriter;->autoFlush:Z

    return-void
.end method

.method public setProperty(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXNotRecognizedException;,
            Lorg/xml/sax/SAXNotSupportedException;
        }
    .end annotation

    const/4 v0, 0x0

    :goto_1
    sget-object v1, Lorg/dom4j/io/XMLWriter;->LEXICAL_HANDLER_NAMES:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_19

    sget-object v1, Lorg/dom4j/io/XMLWriter;->LEXICAL_HANDLER_NAMES:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_16

    check-cast p2, Lorg/xml/sax/ext/LexicalHandler;

    invoke-virtual {p0, p2}, Lorg/dom4j/io/XMLWriter;->setLexicalHandler(Lorg/xml/sax/ext/LexicalHandler;)V

    :goto_15
    return-void

    :cond_16
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_19
    invoke-super {p0, p1, p2}, Lorg/xml/sax/helpers/XMLFilterImpl;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_15
.end method

.method public setResolveEntityRefs(Z)V
    .registers 2

    iput-boolean p1, p0, Lorg/dom4j/io/XMLWriter;->resolveEntityRefs:Z

    return-void
.end method

.method public setWriter(Ljava/io/Writer;)V
    .registers 3

    iput-object p1, p0, Lorg/dom4j/io/XMLWriter;->writer:Ljava/io/Writer;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/dom4j/io/XMLWriter;->autoFlush:Z

    return-void
.end method

.method protected shouldEncodeChar(C)Z
    .registers 3

    invoke-virtual {p0}, Lorg/dom4j/io/XMLWriter;->getMaximumAllowedCharacter()I

    move-result v0

    if-lez v0, :cond_a

    if-le p1, v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public startCDATA()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lorg/dom4j/io/XMLWriter;->writer:Ljava/io/Writer;

    const-string v1, "<![CDATA["

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_7} :catch_11

    :goto_7
    iget-object v0, p0, Lorg/dom4j/io/XMLWriter;->lexicalHandler:Lorg/xml/sax/ext/LexicalHandler;

    if-eqz v0, :cond_10

    iget-object v0, p0, Lorg/dom4j/io/XMLWriter;->lexicalHandler:Lorg/xml/sax/ext/LexicalHandler;

    invoke-interface {v0}, Lorg/xml/sax/ext/LexicalHandler;->startCDATA()V

    :cond_10
    return-void

    :catch_11
    move-exception v0

    invoke-virtual {p0, v0}, Lorg/dom4j/io/XMLWriter;->handleException(Ljava/io/IOException;)V

    goto :goto_7
.end method

.method public startDTD(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/dom4j/io/XMLWriter;->inDTD:Z

    :try_start_3
    invoke-virtual {p0, p1, p2, p3}, Lorg/dom4j/io/XMLWriter;->writeDocType(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_6} :catch_10

    :goto_6
    iget-object v0, p0, Lorg/dom4j/io/XMLWriter;->lexicalHandler:Lorg/xml/sax/ext/LexicalHandler;

    if-eqz v0, :cond_f

    iget-object v0, p0, Lorg/dom4j/io/XMLWriter;->lexicalHandler:Lorg/xml/sax/ext/LexicalHandler;

    invoke-interface {v0, p1, p2, p3}, Lorg/xml/sax/ext/LexicalHandler;->startDTD(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_f
    return-void

    :catch_10
    move-exception v0

    invoke-virtual {p0, v0}, Lorg/dom4j/io/XMLWriter;->handleException(Ljava/io/IOException;)V

    goto :goto_6
.end method

.method public startDocument()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    :try_start_0
    invoke-virtual {p0}, Lorg/dom4j/io/XMLWriter;->writeDeclaration()V

    invoke-super {p0}, Lorg/xml/sax/helpers/XMLFilterImpl;->startDocument()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_6} :catch_7

    :goto_6
    return-void

    :catch_7
    move-exception v0

    invoke-virtual {p0, v0}, Lorg/dom4j/io/XMLWriter;->handleException(Ljava/io/IOException;)V

    goto :goto_6
.end method

.method public startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    const/4 v0, 0x0

    :try_start_1
    iput-boolean v0, p0, Lorg/dom4j/io/XMLWriter;->charsAdded:Z

    invoke-virtual {p0}, Lorg/dom4j/io/XMLWriter;->writePrintln()V

    invoke-virtual {p0}, Lorg/dom4j/io/XMLWriter;->indent()V

    iget-object v0, p0, Lorg/dom4j/io/XMLWriter;->writer:Ljava/io/Writer;

    const-string v1, "<"

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    iget-object v0, p0, Lorg/dom4j/io/XMLWriter;->writer:Ljava/io/Writer;

    invoke-virtual {v0, p3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/dom4j/io/XMLWriter;->writeNamespaces()V

    invoke-virtual {p0, p4}, Lorg/dom4j/io/XMLWriter;->writeAttributes(Lorg/xml/sax/Attributes;)V

    iget-object v0, p0, Lorg/dom4j/io/XMLWriter;->writer:Ljava/io/Writer;

    const-string v1, ">"

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    iget v0, p0, Lorg/dom4j/io/XMLWriter;->indentLevel:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/dom4j/io/XMLWriter;->indentLevel:I

    const/4 v0, 0x1

    iput v0, p0, Lorg/dom4j/io/XMLWriter;->lastOutputNodeType:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/dom4j/io/XMLWriter;->lastElementClosed:Z

    invoke-super {p0, p1, p2, p3, p4}, Lorg/xml/sax/helpers/XMLFilterImpl;->startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    :try_end_31
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_31} :catch_32

    :goto_31
    return-void

    :catch_32
    move-exception v0

    invoke-virtual {p0, v0}, Lorg/dom4j/io/XMLWriter;->handleException(Ljava/io/IOException;)V

    goto :goto_31
.end method

.method public startEntity(Ljava/lang/String;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    :try_start_0
    invoke-virtual {p0, p1}, Lorg/dom4j/io/XMLWriter;->writeEntityRef(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_3} :catch_d

    :goto_3
    iget-object v0, p0, Lorg/dom4j/io/XMLWriter;->lexicalHandler:Lorg/xml/sax/ext/LexicalHandler;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lorg/dom4j/io/XMLWriter;->lexicalHandler:Lorg/xml/sax/ext/LexicalHandler;

    invoke-interface {v0, p1}, Lorg/xml/sax/ext/LexicalHandler;->startEntity(Ljava/lang/String;)V

    :cond_c
    return-void

    :catch_d
    move-exception v0

    invoke-virtual {p0, v0}, Lorg/dom4j/io/XMLWriter;->handleException(Ljava/io/IOException;)V

    goto :goto_3
.end method

.method public startPrefixMapping(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    iget-object v0, p0, Lorg/dom4j/io/XMLWriter;->namespacesMap:Ljava/util/Map;

    if-nez v0, :cond_b

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/dom4j/io/XMLWriter;->namespacesMap:Ljava/util/Map;

    :cond_b
    iget-object v0, p0, Lorg/dom4j/io/XMLWriter;->namespacesMap:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-super {p0, p1, p2}, Lorg/xml/sax/helpers/XMLFilterImpl;->startPrefixMapping(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public unparsedEntityDecl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    invoke-super {p0, p1, p2, p3, p4}, Lorg/xml/sax/helpers/XMLFilterImpl;->unparsedEntityDecl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public write(Ljava/lang/Object;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    instance-of v0, p1, Lorg/dom4j/Node;

    if-eqz v0, :cond_a

    check-cast p1, Lorg/dom4j/Node;

    invoke-virtual {p0, p1}, Lorg/dom4j/io/XMLWriter;->write(Lorg/dom4j/Node;)V

    :cond_9
    :goto_9
    return-void

    :cond_a
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_14

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lorg/dom4j/io/XMLWriter;->write(Ljava/lang/String;)V

    goto :goto_9

    :cond_14
    instance-of v0, p1, Ljava/util/List;

    if-eqz v0, :cond_2b

    check-cast p1, Ljava/util/List;

    const/4 v0, 0x0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    :goto_1f
    if-ge v0, v1, :cond_9

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/dom4j/io/XMLWriter;->write(Ljava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1f

    :cond_2b
    if-eqz p1, :cond_9

    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "Invalid object: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public write(Ljava/lang/String;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lorg/dom4j/io/XMLWriter;->writeString(Ljava/lang/String;)V

    iget-boolean v0, p0, Lorg/dom4j/io/XMLWriter;->autoFlush:Z

    if-eqz v0, :cond_a

    invoke-virtual {p0}, Lorg/dom4j/io/XMLWriter;->flush()V

    :cond_a
    return-void
.end method

.method public write(Lorg/dom4j/Attribute;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lorg/dom4j/io/XMLWriter;->writeAttribute(Lorg/dom4j/Attribute;)V

    iget-boolean v0, p0, Lorg/dom4j/io/XMLWriter;->autoFlush:Z

    if-eqz v0, :cond_a

    invoke-virtual {p0}, Lorg/dom4j/io/XMLWriter;->flush()V

    :cond_a
    return-void
.end method

.method public write(Lorg/dom4j/CDATA;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-interface {p1}, Lorg/dom4j/CDATA;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/dom4j/io/XMLWriter;->writeCDATA(Ljava/lang/String;)V

    iget-boolean v0, p0, Lorg/dom4j/io/XMLWriter;->autoFlush:Z

    if-eqz v0, :cond_e

    invoke-virtual {p0}, Lorg/dom4j/io/XMLWriter;->flush()V

    :cond_e
    return-void
.end method

.method public write(Lorg/dom4j/Comment;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-interface {p1}, Lorg/dom4j/Comment;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/dom4j/io/XMLWriter;->writeComment(Ljava/lang/String;)V

    iget-boolean v0, p0, Lorg/dom4j/io/XMLWriter;->autoFlush:Z

    if-eqz v0, :cond_e

    invoke-virtual {p0}, Lorg/dom4j/io/XMLWriter;->flush()V

    :cond_e
    return-void
.end method

.method public write(Lorg/dom4j/Document;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lorg/dom4j/io/XMLWriter;->writeDeclaration()V

    invoke-interface {p1}, Lorg/dom4j/Document;->getDocType()Lorg/dom4j/DocumentType;

    move-result-object v0

    if-eqz v0, :cond_13

    invoke-virtual {p0}, Lorg/dom4j/io/XMLWriter;->indent()V

    invoke-interface {p1}, Lorg/dom4j/Document;->getDocType()Lorg/dom4j/DocumentType;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/dom4j/io/XMLWriter;->writeDocType(Lorg/dom4j/DocumentType;)V

    :cond_13
    const/4 v0, 0x0

    invoke-interface {p1}, Lorg/dom4j/Document;->nodeCount()I

    move-result v1

    :goto_18
    if-ge v0, v1, :cond_24

    invoke-interface {p1, v0}, Lorg/dom4j/Document;->node(I)Lorg/dom4j/Node;

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/dom4j/io/XMLWriter;->writeNode(Lorg/dom4j/Node;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_18

    :cond_24
    invoke-virtual {p0}, Lorg/dom4j/io/XMLWriter;->writePrintln()V

    iget-boolean v0, p0, Lorg/dom4j/io/XMLWriter;->autoFlush:Z

    if-eqz v0, :cond_2e

    invoke-virtual {p0}, Lorg/dom4j/io/XMLWriter;->flush()V

    :cond_2e
    return-void
.end method

.method public write(Lorg/dom4j/DocumentType;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lorg/dom4j/io/XMLWriter;->writeDocType(Lorg/dom4j/DocumentType;)V

    iget-boolean v0, p0, Lorg/dom4j/io/XMLWriter;->autoFlush:Z

    if-eqz v0, :cond_a

    invoke-virtual {p0}, Lorg/dom4j/io/XMLWriter;->flush()V

    :cond_a
    return-void
.end method

.method public write(Lorg/dom4j/Element;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lorg/dom4j/io/XMLWriter;->writeElement(Lorg/dom4j/Element;)V

    iget-boolean v0, p0, Lorg/dom4j/io/XMLWriter;->autoFlush:Z

    if-eqz v0, :cond_a

    invoke-virtual {p0}, Lorg/dom4j/io/XMLWriter;->flush()V

    :cond_a
    return-void
.end method

.method public write(Lorg/dom4j/Entity;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lorg/dom4j/io/XMLWriter;->writeEntity(Lorg/dom4j/Entity;)V

    iget-boolean v0, p0, Lorg/dom4j/io/XMLWriter;->autoFlush:Z

    if-eqz v0, :cond_a

    invoke-virtual {p0}, Lorg/dom4j/io/XMLWriter;->flush()V

    :cond_a
    return-void
.end method

.method public write(Lorg/dom4j/Namespace;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lorg/dom4j/io/XMLWriter;->writeNamespace(Lorg/dom4j/Namespace;)V

    iget-boolean v0, p0, Lorg/dom4j/io/XMLWriter;->autoFlush:Z

    if-eqz v0, :cond_a

    invoke-virtual {p0}, Lorg/dom4j/io/XMLWriter;->flush()V

    :cond_a
    return-void
.end method

.method public write(Lorg/dom4j/Node;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lorg/dom4j/io/XMLWriter;->writeNode(Lorg/dom4j/Node;)V

    iget-boolean v0, p0, Lorg/dom4j/io/XMLWriter;->autoFlush:Z

    if-eqz v0, :cond_a

    invoke-virtual {p0}, Lorg/dom4j/io/XMLWriter;->flush()V

    :cond_a
    return-void
.end method

.method public write(Lorg/dom4j/ProcessingInstruction;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lorg/dom4j/io/XMLWriter;->writeProcessingInstruction(Lorg/dom4j/ProcessingInstruction;)V

    iget-boolean v0, p0, Lorg/dom4j/io/XMLWriter;->autoFlush:Z

    if-eqz v0, :cond_a

    invoke-virtual {p0}, Lorg/dom4j/io/XMLWriter;->flush()V

    :cond_a
    return-void
.end method

.method public write(Lorg/dom4j/Text;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-interface {p1}, Lorg/dom4j/Text;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/dom4j/io/XMLWriter;->writeString(Ljava/lang/String;)V

    iget-boolean v0, p0, Lorg/dom4j/io/XMLWriter;->autoFlush:Z

    if-eqz v0, :cond_e

    invoke-virtual {p0}, Lorg/dom4j/io/XMLWriter;->flush()V

    :cond_e
    return-void
.end method

.method protected writeAttribute(Lorg/dom4j/Attribute;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/dom4j/io/XMLWriter;->writer:Ljava/io/Writer;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    iget-object v0, p0, Lorg/dom4j/io/XMLWriter;->writer:Ljava/io/Writer;

    invoke-interface {p1}, Lorg/dom4j/Attribute;->getQualifiedName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    iget-object v0, p0, Lorg/dom4j/io/XMLWriter;->writer:Ljava/io/Writer;

    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    iget-object v0, p0, Lorg/dom4j/io/XMLWriter;->format:Lorg/dom4j/io/OutputFormat;

    invoke-virtual {v0}, Lorg/dom4j/io/OutputFormat;->getAttributeQuoteCharacter()C

    move-result v0

    iget-object v1, p0, Lorg/dom4j/io/XMLWriter;->writer:Ljava/io/Writer;

    invoke-virtual {v1, v0}, Ljava/io/Writer;->write(I)V

    invoke-interface {p1}, Lorg/dom4j/Attribute;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/dom4j/io/XMLWriter;->writeEscapeAttributeEntities(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/dom4j/io/XMLWriter;->writer:Ljava/io/Writer;

    invoke-virtual {v1, v0}, Ljava/io/Writer;->write(I)V

    const/4 v0, 0x2

    iput v0, p0, Lorg/dom4j/io/XMLWriter;->lastOutputNodeType:I

    return-void
.end method

.method protected writeAttribute(Lorg/xml/sax/Attributes;I)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/dom4j/io/XMLWriter;->format:Lorg/dom4j/io/OutputFormat;

    invoke-virtual {v0}, Lorg/dom4j/io/OutputFormat;->getAttributeQuoteCharacter()C

    move-result v0

    iget-object v1, p0, Lorg/dom4j/io/XMLWriter;->writer:Ljava/io/Writer;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/dom4j/io/XMLWriter;->writer:Ljava/io/Writer;

    invoke-interface {p1, p2}, Lorg/xml/sax/Attributes;->getQName(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/dom4j/io/XMLWriter;->writer:Ljava/io/Writer;

    const-string v2, "="

    invoke-virtual {v1, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/dom4j/io/XMLWriter;->writer:Ljava/io/Writer;

    invoke-virtual {v1, v0}, Ljava/io/Writer;->write(I)V

    invoke-interface {p1, p2}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/dom4j/io/XMLWriter;->writeEscapeAttributeEntities(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/dom4j/io/XMLWriter;->writer:Ljava/io/Writer;

    invoke-virtual {v1, v0}, Ljava/io/Writer;->write(I)V

    return-void
.end method

.method protected writeAttributes(Lorg/dom4j/Element;)V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v6, 0x0

    const/4 v0, 0x0

    invoke-interface {p1}, Lorg/dom4j/Element;->attributeCount()I

    move-result v1

    :goto_6
    if-ge v0, v1, :cond_aa

    invoke-interface {p1, v0}, Lorg/dom4j/Element;->attribute(I)Lorg/dom4j/Attribute;

    move-result-object v2

    invoke-interface {v2}, Lorg/dom4j/Attribute;->getNamespace()Lorg/dom4j/Namespace;

    move-result-object v3

    if-eqz v3, :cond_36

    sget-object v4, Lorg/dom4j/Namespace;->NO_NAMESPACE:Lorg/dom4j/Namespace;

    if-eq v3, v4, :cond_36

    sget-object v4, Lorg/dom4j/Namespace;->XML_NAMESPACE:Lorg/dom4j/Namespace;

    if-eq v3, v4, :cond_36

    invoke-virtual {v3}, Lorg/dom4j/Namespace;->getPrefix()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lorg/dom4j/io/XMLWriter;->namespaceStack:Lorg/dom4j/tree/NamespaceStack;

    invoke-virtual {v5, v4}, Lorg/dom4j/tree/NamespaceStack;->getURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3}, Lorg/dom4j/Namespace;->getURI()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_36

    invoke-virtual {p0, v3}, Lorg/dom4j/io/XMLWriter;->writeNamespace(Lorg/dom4j/Namespace;)V

    iget-object v4, p0, Lorg/dom4j/io/XMLWriter;->namespaceStack:Lorg/dom4j/tree/NamespaceStack;

    invoke-virtual {v4, v3}, Lorg/dom4j/tree/NamespaceStack;->push(Lorg/dom4j/Namespace;)V

    :cond_36
    invoke-interface {v2}, Lorg/dom4j/Attribute;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "xmlns:"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5e

    const/4 v4, 0x6

    invoke-virtual {v3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lorg/dom4j/io/XMLWriter;->namespaceStack:Lorg/dom4j/tree/NamespaceStack;

    invoke-virtual {v4, v3}, Lorg/dom4j/tree/NamespaceStack;->getNamespaceForPrefix(Ljava/lang/String;)Lorg/dom4j/Namespace;

    move-result-object v4

    if-nez v4, :cond_5b

    invoke-interface {v2}, Lorg/dom4j/Attribute;->getValue()Ljava/lang/String;

    move-result-object v2

    iget-object v4, p0, Lorg/dom4j/io/XMLWriter;->namespaceStack:Lorg/dom4j/tree/NamespaceStack;

    invoke-virtual {v4, v3, v2}, Lorg/dom4j/tree/NamespaceStack;->push(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v3, v2}, Lorg/dom4j/io/XMLWriter;->writeNamespace(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5b
    :goto_5b
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    :cond_5e
    const-string v4, "xmlns"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7b

    iget-object v3, p0, Lorg/dom4j/io/XMLWriter;->namespaceStack:Lorg/dom4j/tree/NamespaceStack;

    invoke-virtual {v3}, Lorg/dom4j/tree/NamespaceStack;->getDefaultNamespace()Lorg/dom4j/Namespace;

    move-result-object v3

    if-nez v3, :cond_5b

    invoke-interface {v2}, Lorg/dom4j/Attribute;->getValue()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lorg/dom4j/io/XMLWriter;->namespaceStack:Lorg/dom4j/tree/NamespaceStack;

    invoke-virtual {v3, v6, v2}, Lorg/dom4j/tree/NamespaceStack;->push(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v6, v2}, Lorg/dom4j/io/XMLWriter;->writeNamespace(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5b

    :cond_7b
    iget-object v3, p0, Lorg/dom4j/io/XMLWriter;->format:Lorg/dom4j/io/OutputFormat;

    invoke-virtual {v3}, Lorg/dom4j/io/OutputFormat;->getAttributeQuoteCharacter()C

    move-result v3

    iget-object v4, p0, Lorg/dom4j/io/XMLWriter;->writer:Ljava/io/Writer;

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    iget-object v4, p0, Lorg/dom4j/io/XMLWriter;->writer:Ljava/io/Writer;

    invoke-interface {v2}, Lorg/dom4j/Attribute;->getQualifiedName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    iget-object v4, p0, Lorg/dom4j/io/XMLWriter;->writer:Ljava/io/Writer;

    const-string v5, "="

    invoke-virtual {v4, v5}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    iget-object v4, p0, Lorg/dom4j/io/XMLWriter;->writer:Ljava/io/Writer;

    invoke-virtual {v4, v3}, Ljava/io/Writer;->write(I)V

    invoke-interface {v2}, Lorg/dom4j/Attribute;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/dom4j/io/XMLWriter;->writeEscapeAttributeEntities(Ljava/lang/String;)V

    iget-object v2, p0, Lorg/dom4j/io/XMLWriter;->writer:Ljava/io/Writer;

    invoke-virtual {v2, v3}, Ljava/io/Writer;->write(I)V

    goto :goto_5b

    :cond_aa
    return-void
.end method

.method protected writeAttributes(Lorg/xml/sax/Attributes;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-interface {p1}, Lorg/xml/sax/Attributes;->getLength()I

    move-result v1

    :goto_5
    if-ge v0, v1, :cond_d

    invoke-virtual {p0, p1, v0}, Lorg/dom4j/io/XMLWriter;->writeAttribute(Lorg/xml/sax/Attributes;I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    :cond_d
    return-void
.end method

.method protected writeCDATA(Ljava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/dom4j/io/XMLWriter;->writer:Ljava/io/Writer;

    const-string v1, "<![CDATA["

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    if-eqz p1, :cond_e

    iget-object v0, p0, Lorg/dom4j/io/XMLWriter;->writer:Ljava/io/Writer;

    invoke-virtual {v0, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    :cond_e
    iget-object v0, p0, Lorg/dom4j/io/XMLWriter;->writer:Ljava/io/Writer;

    const-string v1, "]]>"

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const/4 v0, 0x4

    iput v0, p0, Lorg/dom4j/io/XMLWriter;->lastOutputNodeType:I

    return-void
.end method

.method protected writeClose(Ljava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/dom4j/io/XMLWriter;->writer:Ljava/io/Writer;

    const-string v1, "</"

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    iget-object v0, p0, Lorg/dom4j/io/XMLWriter;->writer:Ljava/io/Writer;

    invoke-virtual {v0, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    iget-object v0, p0, Lorg/dom4j/io/XMLWriter;->writer:Ljava/io/Writer;

    const-string v1, ">"

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    return-void
.end method

.method public writeClose(Lorg/dom4j/Element;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-interface {p1}, Lorg/dom4j/Element;->getQualifiedName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/dom4j/io/XMLWriter;->writeClose(Ljava/lang/String;)V

    return-void
.end method

.method protected writeComment(Ljava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/dom4j/io/XMLWriter;->format:Lorg/dom4j/io/OutputFormat;

    invoke-virtual {v0}, Lorg/dom4j/io/OutputFormat;->isNewlines()Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-virtual {p0}, Lorg/dom4j/io/XMLWriter;->println()V

    invoke-virtual {p0}, Lorg/dom4j/io/XMLWriter;->indent()V

    :cond_e
    iget-object v0, p0, Lorg/dom4j/io/XMLWriter;->writer:Ljava/io/Writer;

    const-string v1, "<!--"

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    iget-object v0, p0, Lorg/dom4j/io/XMLWriter;->writer:Ljava/io/Writer;

    invoke-virtual {v0, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    iget-object v0, p0, Lorg/dom4j/io/XMLWriter;->writer:Ljava/io/Writer;

    const-string v1, "-->"

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const/16 v0, 0x8

    iput v0, p0, Lorg/dom4j/io/XMLWriter;->lastOutputNodeType:I

    return-void
.end method

.method protected writeDeclaration()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/dom4j/io/XMLWriter;->format:Lorg/dom4j/io/OutputFormat;

    invoke-virtual {v0}, Lorg/dom4j/io/OutputFormat;->getEncoding()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lorg/dom4j/io/XMLWriter;->format:Lorg/dom4j/io/OutputFormat;

    invoke-virtual {v1}, Lorg/dom4j/io/OutputFormat;->isSuppressDeclaration()Z

    move-result v1

    if-nez v1, :cond_3e

    const-string v1, "UTF8"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3f

    iget-object v0, p0, Lorg/dom4j/io/XMLWriter;->writer:Ljava/io/Writer;

    const-string v1, "<?xml version=\"1.0\""

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    iget-object v0, p0, Lorg/dom4j/io/XMLWriter;->format:Lorg/dom4j/io/OutputFormat;

    invoke-virtual {v0}, Lorg/dom4j/io/OutputFormat;->isOmitEncoding()Z

    move-result v0

    if-nez v0, :cond_2c

    iget-object v0, p0, Lorg/dom4j/io/XMLWriter;->writer:Ljava/io/Writer;

    const-string v1, " encoding=\"UTF-8\""

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    :cond_2c
    iget-object v0, p0, Lorg/dom4j/io/XMLWriter;->writer:Ljava/io/Writer;

    const-string v1, "?>"

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    :goto_33
    iget-object v0, p0, Lorg/dom4j/io/XMLWriter;->format:Lorg/dom4j/io/OutputFormat;

    invoke-virtual {v0}, Lorg/dom4j/io/OutputFormat;->isNewLineAfterDeclaration()Z

    move-result v0

    if-eqz v0, :cond_3e

    invoke-virtual {p0}, Lorg/dom4j/io/XMLWriter;->println()V

    :cond_3e
    return-void

    :cond_3f
    iget-object v1, p0, Lorg/dom4j/io/XMLWriter;->writer:Ljava/io/Writer;

    const-string v2, "<?xml version=\"1.0\""

    invoke-virtual {v1, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/dom4j/io/XMLWriter;->format:Lorg/dom4j/io/OutputFormat;

    invoke-virtual {v1}, Lorg/dom4j/io/OutputFormat;->isOmitEncoding()Z

    move-result v1

    if-nez v1, :cond_6c

    iget-object v1, p0, Lorg/dom4j/io/XMLWriter;->writer:Ljava/io/Writer;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, " encoding=\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v2, "\""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    :cond_6c
    iget-object v0, p0, Lorg/dom4j/io/XMLWriter;->writer:Ljava/io/Writer;

    const-string v1, "?>"

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_33
.end method

.method protected writeDocType(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    iget-object v1, p0, Lorg/dom4j/io/XMLWriter;->writer:Ljava/io/Writer;

    const-string v2, "<!DOCTYPE "

    invoke-virtual {v1, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/dom4j/io/XMLWriter;->writer:Ljava/io/Writer;

    invoke-virtual {v1, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    if-eqz p2, :cond_2b

    const-string v1, ""

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2b

    iget-object v0, p0, Lorg/dom4j/io/XMLWriter;->writer:Ljava/io/Writer;

    const-string v1, " PUBLIC \""

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    iget-object v0, p0, Lorg/dom4j/io/XMLWriter;->writer:Ljava/io/Writer;

    invoke-virtual {v0, p2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    iget-object v0, p0, Lorg/dom4j/io/XMLWriter;->writer:Ljava/io/Writer;

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const/4 v0, 0x1

    :cond_2b
    if-eqz p3, :cond_51

    const-string v1, ""

    invoke-virtual {p3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_51

    if-nez v0, :cond_3e

    iget-object v0, p0, Lorg/dom4j/io/XMLWriter;->writer:Ljava/io/Writer;

    const-string v1, " SYSTEM"

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    :cond_3e
    iget-object v0, p0, Lorg/dom4j/io/XMLWriter;->writer:Ljava/io/Writer;

    const-string v1, " \""

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    iget-object v0, p0, Lorg/dom4j/io/XMLWriter;->writer:Ljava/io/Writer;

    invoke-virtual {v0, p3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    iget-object v0, p0, Lorg/dom4j/io/XMLWriter;->writer:Ljava/io/Writer;

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    :cond_51
    iget-object v0, p0, Lorg/dom4j/io/XMLWriter;->writer:Ljava/io/Writer;

    const-string v1, ">"

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/dom4j/io/XMLWriter;->writePrintln()V

    return-void
.end method

.method protected writeDocType(Lorg/dom4j/DocumentType;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_a

    iget-object v0, p0, Lorg/dom4j/io/XMLWriter;->writer:Ljava/io/Writer;

    invoke-interface {p1, v0}, Lorg/dom4j/DocumentType;->write(Ljava/io/Writer;)V

    invoke-virtual {p0}, Lorg/dom4j/io/XMLWriter;->writePrintln()V

    :cond_a
    return-void
.end method

.method protected writeElement(Lorg/dom4j/Element;)V
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v4, 0x1

    const/4 v2, 0x0

    invoke-interface {p1}, Lorg/dom4j/Element;->nodeCount()I

    move-result v5

    invoke-interface {p1}, Lorg/dom4j/Element;->getQualifiedName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0}, Lorg/dom4j/io/XMLWriter;->writePrintln()V

    invoke-virtual {p0}, Lorg/dom4j/io/XMLWriter;->indent()V

    iget-object v0, p0, Lorg/dom4j/io/XMLWriter;->writer:Ljava/io/Writer;

    const-string v1, "<"

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    iget-object v0, p0, Lorg/dom4j/io/XMLWriter;->writer:Ljava/io/Writer;

    invoke-virtual {v0, v6}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    iget-object v0, p0, Lorg/dom4j/io/XMLWriter;->namespaceStack:Lorg/dom4j/tree/NamespaceStack;

    invoke-virtual {v0}, Lorg/dom4j/tree/NamespaceStack;->size()I

    move-result v7

    invoke-interface {p1}, Lorg/dom4j/Element;->getNamespace()Lorg/dom4j/Namespace;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/dom4j/io/XMLWriter;->isNamespaceDeclaration(Lorg/dom4j/Namespace;)Z

    move-result v1

    if-eqz v1, :cond_34

    iget-object v1, p0, Lorg/dom4j/io/XMLWriter;->namespaceStack:Lorg/dom4j/tree/NamespaceStack;

    invoke-virtual {v1, v0}, Lorg/dom4j/tree/NamespaceStack;->push(Lorg/dom4j/Namespace;)V

    invoke-virtual {p0, v0}, Lorg/dom4j/io/XMLWriter;->writeNamespace(Lorg/dom4j/Namespace;)V

    :cond_34
    move v3, v2

    move v1, v4

    :goto_36
    if-ge v3, v5, :cond_61

    invoke-interface {p1, v3}, Lorg/dom4j/Element;->node(I)Lorg/dom4j/Node;

    move-result-object v0

    instance-of v8, v0, Lorg/dom4j/Namespace;

    if-eqz v8, :cond_55

    check-cast v0, Lorg/dom4j/Namespace;

    invoke-virtual {p0, v0}, Lorg/dom4j/io/XMLWriter;->isNamespaceDeclaration(Lorg/dom4j/Namespace;)Z

    move-result v8

    if-eqz v8, :cond_50

    iget-object v8, p0, Lorg/dom4j/io/XMLWriter;->namespaceStack:Lorg/dom4j/tree/NamespaceStack;

    invoke-virtual {v8, v0}, Lorg/dom4j/tree/NamespaceStack;->push(Lorg/dom4j/Namespace;)V

    invoke-virtual {p0, v0}, Lorg/dom4j/io/XMLWriter;->writeNamespace(Lorg/dom4j/Namespace;)V

    :cond_50
    move v0, v1

    :goto_51
    add-int/lit8 v3, v3, 0x1

    move v1, v0

    goto :goto_36

    :cond_55
    instance-of v8, v0, Lorg/dom4j/Element;

    if-eqz v8, :cond_5b

    move v0, v2

    goto :goto_51

    :cond_5b
    instance-of v0, v0, Lorg/dom4j/Comment;

    if-eqz v0, :cond_b2

    move v0, v2

    goto :goto_51

    :cond_61
    invoke-virtual {p0, p1}, Lorg/dom4j/io/XMLWriter;->writeAttributes(Lorg/dom4j/Element;)V

    iput v4, p0, Lorg/dom4j/io/XMLWriter;->lastOutputNodeType:I

    if-gtz v5, :cond_79

    invoke-virtual {p0, v6}, Lorg/dom4j/io/XMLWriter;->writeEmptyElementClose(Ljava/lang/String;)V

    :goto_6b
    iget-object v0, p0, Lorg/dom4j/io/XMLWriter;->namespaceStack:Lorg/dom4j/tree/NamespaceStack;

    invoke-virtual {v0}, Lorg/dom4j/tree/NamespaceStack;->size()I

    move-result v0

    if-le v0, v7, :cond_af

    iget-object v0, p0, Lorg/dom4j/io/XMLWriter;->namespaceStack:Lorg/dom4j/tree/NamespaceStack;

    invoke-virtual {v0}, Lorg/dom4j/tree/NamespaceStack;->pop()Lorg/dom4j/Namespace;

    goto :goto_6b

    :cond_79
    iget-object v0, p0, Lorg/dom4j/io/XMLWriter;->writer:Ljava/io/Writer;

    const-string v2, ">"

    invoke-virtual {v0, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    if-eqz v1, :cond_99

    invoke-virtual {p0, p1}, Lorg/dom4j/io/XMLWriter;->writeElementContent(Lorg/dom4j/Element;)V

    :goto_85
    iget-object v0, p0, Lorg/dom4j/io/XMLWriter;->writer:Ljava/io/Writer;

    const-string v1, "</"

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    iget-object v0, p0, Lorg/dom4j/io/XMLWriter;->writer:Ljava/io/Writer;

    invoke-virtual {v0, v6}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    iget-object v0, p0, Lorg/dom4j/io/XMLWriter;->writer:Ljava/io/Writer;

    const-string v1, ">"

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_6b

    :cond_99
    iget v0, p0, Lorg/dom4j/io/XMLWriter;->indentLevel:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/dom4j/io/XMLWriter;->indentLevel:I

    invoke-virtual {p0, p1}, Lorg/dom4j/io/XMLWriter;->writeElementContent(Lorg/dom4j/Element;)V

    iget v0, p0, Lorg/dom4j/io/XMLWriter;->indentLevel:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/dom4j/io/XMLWriter;->indentLevel:I

    invoke-virtual {p0}, Lorg/dom4j/io/XMLWriter;->writePrintln()V

    invoke-virtual {p0}, Lorg/dom4j/io/XMLWriter;->indent()V

    goto :goto_85

    :cond_af
    iput v4, p0, Lorg/dom4j/io/XMLWriter;->lastOutputNodeType:I

    return-void

    :cond_b2
    move v0, v1

    goto :goto_51
.end method

.method protected writeElementContent(Lorg/dom4j/Element;)V
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v3, 0x61

    const/4 v2, 0x1

    const/4 v4, 0x0

    const/4 v7, 0x0

    iget-object v0, p0, Lorg/dom4j/io/XMLWriter;->format:Lorg/dom4j/io/OutputFormat;

    invoke-virtual {v0}, Lorg/dom4j/io/OutputFormat;->isTrimText()Z

    move-result v0

    iget-boolean v9, p0, Lorg/dom4j/io/XMLWriter;->preserve:Z

    if-eqz v0, :cond_1a

    invoke-virtual {p0, p1}, Lorg/dom4j/io/XMLWriter;->isElementSpacePreserved(Lorg/dom4j/Element;)Z

    move-result v0

    iput-boolean v0, p0, Lorg/dom4j/io/XMLWriter;->preserve:Z

    iget-boolean v0, p0, Lorg/dom4j/io/XMLWriter;->preserve:Z

    if-nez v0, :cond_37

    move v0, v2

    :cond_1a
    :goto_1a
    if-eqz v0, :cond_101

    invoke-interface {p1}, Lorg/dom4j/Element;->nodeCount()I

    move-result v10

    move-object v5, v4

    move-object v1, v4

    move v8, v7

    :goto_23
    if-ge v8, v10, :cond_c5

    invoke-interface {p1, v8}, Lorg/dom4j/Element;->node(I)Lorg/dom4j/Node;

    move-result-object v0

    instance-of v6, v0, Lorg/dom4j/Text;

    if-eqz v6, :cond_50

    if-nez v5, :cond_39

    check-cast v0, Lorg/dom4j/Text;

    move v6, v2

    :goto_32
    add-int/lit8 v8, v8, 0x1

    move-object v5, v0

    move v2, v6

    goto :goto_23

    :cond_37
    move v0, v7

    goto :goto_1a

    :cond_39
    if-nez v1, :cond_44

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-interface {v5}, Lorg/dom4j/Text;->getText()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v1, v6}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    :cond_44
    check-cast v0, Lorg/dom4j/Text;

    invoke-interface {v0}, Lorg/dom4j/Text;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-object v0, v5

    move v6, v2

    goto :goto_32

    :cond_50
    if-nez v2, :cond_6d

    iget-object v2, p0, Lorg/dom4j/io/XMLWriter;->format:Lorg/dom4j/io/OutputFormat;

    invoke-virtual {v2}, Lorg/dom4j/io/OutputFormat;->isPadText()Z

    move-result v2

    if-eqz v2, :cond_6d

    if-eqz v1, :cond_a1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v2

    :goto_60
    invoke-static {v2}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v2

    if-eqz v2, :cond_6d

    iget-object v2, p0, Lorg/dom4j/io/XMLWriter;->writer:Ljava/io/Writer;

    const-string v6, " "

    invoke-virtual {v2, v6}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    :cond_6d
    if-eqz v5, :cond_147

    if-eqz v1, :cond_ac

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/dom4j/io/XMLWriter;->writeString(Ljava/lang/String;)V

    move-object v1, v4

    :goto_79
    iget-object v2, p0, Lorg/dom4j/io/XMLWriter;->format:Lorg/dom4j/io/OutputFormat;

    invoke-virtual {v2}, Lorg/dom4j/io/OutputFormat;->isPadText()Z

    move-result v2

    if-eqz v2, :cond_9a

    if-eqz v1, :cond_b4

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v2

    :goto_8d
    invoke-static {v2}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v2

    if-eqz v2, :cond_9a

    iget-object v2, p0, Lorg/dom4j/io/XMLWriter;->writer:Ljava/io/Writer;

    const-string v5, " "

    invoke-virtual {v2, v5}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    :cond_9a
    move-object v2, v4

    :goto_9b
    invoke-virtual {p0, v0}, Lorg/dom4j/io/XMLWriter;->writeNode(Lorg/dom4j/Node;)V

    move-object v0, v2

    move v6, v7

    goto :goto_32

    :cond_a1
    if-eqz v5, :cond_144

    invoke-interface {v5}, Lorg/dom4j/Text;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/String;->charAt(I)C

    move-result v2

    goto :goto_60

    :cond_ac
    invoke-interface {v5}, Lorg/dom4j/Text;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/dom4j/io/XMLWriter;->writeString(Ljava/lang/String;)V

    goto :goto_79

    :cond_b4
    if-eqz v5, :cond_141

    invoke-interface {v5}, Lorg/dom4j/Text;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v2, v5}, Ljava/lang/String;->charAt(I)C

    move-result v2

    goto :goto_8d

    :cond_c5
    if-eqz v5, :cond_ed

    if-nez v2, :cond_e4

    iget-object v0, p0, Lorg/dom4j/io/XMLWriter;->format:Lorg/dom4j/io/OutputFormat;

    invoke-virtual {v0}, Lorg/dom4j/io/OutputFormat;->isPadText()Z

    move-result v0

    if-eqz v0, :cond_e4

    if-eqz v1, :cond_f0

    invoke-virtual {v1, v7}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v0

    :goto_d7
    invoke-static {v0}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v0

    if-eqz v0, :cond_e4

    iget-object v0, p0, Lorg/dom4j/io/XMLWriter;->writer:Ljava/io/Writer;

    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    :cond_e4
    if-eqz v1, :cond_f9

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/dom4j/io/XMLWriter;->writeString(Ljava/lang/String;)V

    :cond_ed
    :goto_ed
    iput-boolean v9, p0, Lorg/dom4j/io/XMLWriter;->preserve:Z

    return-void

    :cond_f0
    invoke-interface {v5}, Lorg/dom4j/Text;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v0

    goto :goto_d7

    :cond_f9
    invoke-interface {v5}, Lorg/dom4j/Text;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/dom4j/io/XMLWriter;->writeString(Ljava/lang/String;)V

    goto :goto_ed

    :cond_101
    invoke-interface {p1}, Lorg/dom4j/Element;->nodeCount()I

    move-result v2

    move-object v1, v4

    :goto_106
    if-ge v7, v2, :cond_ed

    invoke-interface {p1, v7}, Lorg/dom4j/Element;->node(I)Lorg/dom4j/Node;

    move-result-object v0

    instance-of v3, v0, Lorg/dom4j/Text;

    if-eqz v3, :cond_117

    invoke-virtual {p0, v0}, Lorg/dom4j/io/XMLWriter;->writeNode(Lorg/dom4j/Node;)V

    :goto_113
    add-int/lit8 v7, v7, 0x1

    move-object v1, v0

    goto :goto_106

    :cond_117
    if-eqz v1, :cond_13c

    iget-object v3, p0, Lorg/dom4j/io/XMLWriter;->format:Lorg/dom4j/io/OutputFormat;

    invoke-virtual {v3}, Lorg/dom4j/io/OutputFormat;->isPadText()Z

    move-result v3

    if-eqz v3, :cond_13c

    invoke-interface {v1}, Lorg/dom4j/Node;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v1

    if-eqz v1, :cond_13c

    iget-object v1, p0, Lorg/dom4j/io/XMLWriter;->writer:Ljava/io/Writer;

    const-string v3, " "

    invoke-virtual {v1, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    :cond_13c
    invoke-virtual {p0, v0}, Lorg/dom4j/io/XMLWriter;->writeNode(Lorg/dom4j/Node;)V

    move-object v0, v4

    goto :goto_113

    :cond_141
    move v2, v3

    goto/16 :goto_8d

    :cond_144
    move v2, v3

    goto/16 :goto_60

    :cond_147
    move-object v2, v5

    goto/16 :goto_9b
.end method

.method protected writeEmptyElementClose(Ljava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/dom4j/io/XMLWriter;->format:Lorg/dom4j/io/OutputFormat;

    invoke-virtual {v0}, Lorg/dom4j/io/OutputFormat;->isExpandEmptyElements()Z

    move-result v0

    if-nez v0, :cond_10

    iget-object v0, p0, Lorg/dom4j/io/XMLWriter;->writer:Ljava/io/Writer;

    const-string v1, "/>"

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    :goto_f
    return-void

    :cond_10
    iget-object v0, p0, Lorg/dom4j/io/XMLWriter;->writer:Ljava/io/Writer;

    const-string v1, "></"

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    iget-object v0, p0, Lorg/dom4j/io/XMLWriter;->writer:Ljava/io/Writer;

    invoke-virtual {v0, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    iget-object v0, p0, Lorg/dom4j/io/XMLWriter;->writer:Ljava/io/Writer;

    const-string v1, ">"

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_f
.end method

.method protected writeEntity(Lorg/dom4j/Entity;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lorg/dom4j/io/XMLWriter;->resolveEntityRefs()Z

    move-result v0

    if-nez v0, :cond_e

    invoke-interface {p1}, Lorg/dom4j/Entity;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/dom4j/io/XMLWriter;->writeEntityRef(Ljava/lang/String;)V

    :goto_d
    return-void

    :cond_e
    iget-object v0, p0, Lorg/dom4j/io/XMLWriter;->writer:Ljava/io/Writer;

    invoke-interface {p1}, Lorg/dom4j/Entity;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_d
.end method

.method protected writeEntityRef(Ljava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/dom4j/io/XMLWriter;->writer:Ljava/io/Writer;

    const-string v1, "&"

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    iget-object v0, p0, Lorg/dom4j/io/XMLWriter;->writer:Ljava/io/Writer;

    invoke-virtual {v0, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    iget-object v0, p0, Lorg/dom4j/io/XMLWriter;->writer:Ljava/io/Writer;

    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const/4 v0, 0x5

    iput v0, p0, Lorg/dom4j/io/XMLWriter;->lastOutputNodeType:I

    return-void
.end method

.method protected writeEscapeAttributeEntities(Ljava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_b

    invoke-virtual {p0, p1}, Lorg/dom4j/io/XMLWriter;->escapeAttributeEntities(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lorg/dom4j/io/XMLWriter;->writer:Ljava/io/Writer;

    invoke-virtual {v1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    :cond_b
    return-void
.end method

.method protected writeNamespace(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_28

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_28

    iget-object v0, p0, Lorg/dom4j/io/XMLWriter;->writer:Ljava/io/Writer;

    const-string v1, " xmlns:"

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    iget-object v0, p0, Lorg/dom4j/io/XMLWriter;->writer:Ljava/io/Writer;

    invoke-virtual {v0, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    iget-object v0, p0, Lorg/dom4j/io/XMLWriter;->writer:Ljava/io/Writer;

    const-string v1, "=\""

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    :goto_1b
    iget-object v0, p0, Lorg/dom4j/io/XMLWriter;->writer:Ljava/io/Writer;

    invoke-virtual {v0, p2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    iget-object v0, p0, Lorg/dom4j/io/XMLWriter;->writer:Ljava/io/Writer;

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    return-void

    :cond_28
    iget-object v0, p0, Lorg/dom4j/io/XMLWriter;->writer:Ljava/io/Writer;

    const-string v1, " xmlns=\""

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_1b
.end method

.method protected writeNamespace(Lorg/dom4j/Namespace;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_d

    invoke-virtual {p1}, Lorg/dom4j/Namespace;->getPrefix()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lorg/dom4j/Namespace;->getURI()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/dom4j/io/XMLWriter;->writeNamespace(Ljava/lang/String;Ljava/lang/String;)V

    :cond_d
    return-void
.end method

.method protected writeNamespaces()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/dom4j/io/XMLWriter;->namespacesMap:Ljava/util/Map;

    if-eqz v0, :cond_2d

    iget-object v0, p0, Lorg/dom4j/io/XMLWriter;->namespacesMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_e
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v1, v0}, Lorg/dom4j/io/XMLWriter;->writeNamespace(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_e

    :cond_2a
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/dom4j/io/XMLWriter;->namespacesMap:Ljava/util/Map;

    :cond_2d
    return-void
.end method

.method protected writeNode(Lorg/dom4j/Node;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-interface {p1}, Lorg/dom4j/Node;->getNodeType()S

    move-result v0

    packed-switch v0, :pswitch_data_58

    :pswitch_7  #0x6, 0xb, 0xc
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "Invalid node type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_20  #0x1
    check-cast p1, Lorg/dom4j/Element;

    invoke-virtual {p0, p1}, Lorg/dom4j/io/XMLWriter;->writeElement(Lorg/dom4j/Element;)V

    :goto_25
    :pswitch_25  #0xd
    return-void

    :pswitch_26  #0x2
    check-cast p1, Lorg/dom4j/Attribute;

    invoke-virtual {p0, p1}, Lorg/dom4j/io/XMLWriter;->writeAttribute(Lorg/dom4j/Attribute;)V

    goto :goto_25

    :pswitch_2c  #0x3
    invoke-virtual {p0, p1}, Lorg/dom4j/io/XMLWriter;->writeNodeText(Lorg/dom4j/Node;)V

    goto :goto_25

    :pswitch_30  #0x4
    invoke-interface {p1}, Lorg/dom4j/Node;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/dom4j/io/XMLWriter;->writeCDATA(Ljava/lang/String;)V

    goto :goto_25

    :pswitch_38  #0x5
    check-cast p1, Lorg/dom4j/Entity;

    invoke-virtual {p0, p1}, Lorg/dom4j/io/XMLWriter;->writeEntity(Lorg/dom4j/Entity;)V

    goto :goto_25

    :pswitch_3e  #0x7
    check-cast p1, Lorg/dom4j/ProcessingInstruction;

    invoke-virtual {p0, p1}, Lorg/dom4j/io/XMLWriter;->writeProcessingInstruction(Lorg/dom4j/ProcessingInstruction;)V

    goto :goto_25

    :pswitch_44  #0x8
    invoke-interface {p1}, Lorg/dom4j/Node;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/dom4j/io/XMLWriter;->writeComment(Ljava/lang/String;)V

    goto :goto_25

    :pswitch_4c  #0x9
    check-cast p1, Lorg/dom4j/Document;

    invoke-virtual {p0, p1}, Lorg/dom4j/io/XMLWriter;->write(Lorg/dom4j/Document;)V

    goto :goto_25

    :pswitch_52  #0xa
    check-cast p1, Lorg/dom4j/DocumentType;

    invoke-virtual {p0, p1}, Lorg/dom4j/io/XMLWriter;->writeDocType(Lorg/dom4j/DocumentType;)V

    goto :goto_25

    :pswitch_data_58
    .packed-switch 0x1
        :pswitch_20  #00000001
        :pswitch_26  #00000002
        :pswitch_2c  #00000003
        :pswitch_30  #00000004
        :pswitch_38  #00000005
        :pswitch_7  #00000006
        :pswitch_3e  #00000007
        :pswitch_44  #00000008
        :pswitch_4c  #00000009
        :pswitch_52  #0000000a
        :pswitch_7  #0000000b
        :pswitch_7  #0000000c
        :pswitch_25  #0000000d
    .end packed-switch
.end method

.method protected writeNodeText(Lorg/dom4j/Node;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-interface {p1}, Lorg/dom4j/Node;->getText()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_28

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_28

    iget-boolean v1, p0, Lorg/dom4j/io/XMLWriter;->escapeText:Z

    if-eqz v1, :cond_14

    invoke-virtual {p0, v0}, Lorg/dom4j/io/XMLWriter;->escapeElementEntities(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_14
    const/4 v1, 0x3

    iput v1, p0, Lorg/dom4j/io/XMLWriter;->lastOutputNodeType:I

    iget-object v1, p0, Lorg/dom4j/io/XMLWriter;->writer:Ljava/io/Writer;

    invoke-virtual {v1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    iput-char v0, p0, Lorg/dom4j/io/XMLWriter;->lastChar:C

    :cond_28
    return-void
.end method

.method public writeOpen(Lorg/dom4j/Element;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/dom4j/io/XMLWriter;->writer:Ljava/io/Writer;

    const-string v1, "<"

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    iget-object v0, p0, Lorg/dom4j/io/XMLWriter;->writer:Ljava/io/Writer;

    invoke-interface {p1}, Lorg/dom4j/Element;->getQualifiedName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lorg/dom4j/io/XMLWriter;->writeAttributes(Lorg/dom4j/Element;)V

    iget-object v0, p0, Lorg/dom4j/io/XMLWriter;->writer:Ljava/io/Writer;

    const-string v1, ">"

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    return-void
.end method

.method protected writePrintln()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/dom4j/io/XMLWriter;->format:Lorg/dom4j/io/OutputFormat;

    invoke-virtual {v0}, Lorg/dom4j/io/OutputFormat;->isNewlines()Z

    move-result v0

    if-eqz v0, :cond_27

    iget-object v0, p0, Lorg/dom4j/io/XMLWriter;->format:Lorg/dom4j/io/OutputFormat;

    invoke-virtual {v0}, Lorg/dom4j/io/OutputFormat;->getLineSeparator()Ljava/lang/String;

    move-result-object v0

    iget-char v1, p0, Lorg/dom4j/io/XMLWriter;->lastChar:C

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_27

    iget-object v0, p0, Lorg/dom4j/io/XMLWriter;->writer:Ljava/io/Writer;

    iget-object v1, p0, Lorg/dom4j/io/XMLWriter;->format:Lorg/dom4j/io/OutputFormat;

    invoke-virtual {v1}, Lorg/dom4j/io/OutputFormat;->getLineSeparator()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    :cond_27
    return-void
.end method

.method protected writeProcessingInstruction(Lorg/dom4j/ProcessingInstruction;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/dom4j/io/XMLWriter;->writer:Ljava/io/Writer;

    const-string v1, "<?"

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    iget-object v0, p0, Lorg/dom4j/io/XMLWriter;->writer:Ljava/io/Writer;

    invoke-interface {p1}, Lorg/dom4j/ProcessingInstruction;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    iget-object v0, p0, Lorg/dom4j/io/XMLWriter;->writer:Ljava/io/Writer;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    iget-object v0, p0, Lorg/dom4j/io/XMLWriter;->writer:Ljava/io/Writer;

    invoke-interface {p1}, Lorg/dom4j/ProcessingInstruction;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    iget-object v0, p0, Lorg/dom4j/io/XMLWriter;->writer:Ljava/io/Writer;

    const-string v1, "?>"

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/dom4j/io/XMLWriter;->writePrintln()V

    const/4 v0, 0x7

    iput v0, p0, Lorg/dom4j/io/XMLWriter;->lastOutputNodeType:I

    return-void
.end method

.method protected writeString(Ljava/lang/String;)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v5, 0x3

    if-eqz p1, :cond_66

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_66

    iget-boolean v0, p0, Lorg/dom4j/io/XMLWriter;->escapeText:Z

    if-eqz v0, :cond_11

    invoke-virtual {p0, p1}, Lorg/dom4j/io/XMLWriter;->escapeElementEntities(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :cond_11
    iget-object v0, p0, Lorg/dom4j/io/XMLWriter;->format:Lorg/dom4j/io/OutputFormat;

    invoke-virtual {v0}, Lorg/dom4j/io/OutputFormat;->isTrimText()Z

    move-result v0

    if-eqz v0, :cond_53

    const/4 v0, 0x1

    new-instance v1, Ljava/util/StringTokenizer;

    invoke-direct {v1, p1}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;)V

    :goto_1f
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v2

    if-eqz v2, :cond_66

    invoke-virtual {v1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v2

    if-eqz v0, :cond_4b

    const/4 v0, 0x0

    iget v3, p0, Lorg/dom4j/io/XMLWriter;->lastOutputNodeType:I

    if-ne v3, v5, :cond_37

    iget-object v3, p0, Lorg/dom4j/io/XMLWriter;->writer:Ljava/io/Writer;

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    :cond_37
    :goto_37
    iget-object v3, p0, Lorg/dom4j/io/XMLWriter;->writer:Ljava/io/Writer;

    invoke-virtual {v3, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    iput v5, p0, Lorg/dom4j/io/XMLWriter;->lastOutputNodeType:I

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v2

    iput-char v2, p0, Lorg/dom4j/io/XMLWriter;->lastChar:C

    goto :goto_1f

    :cond_4b
    iget-object v3, p0, Lorg/dom4j/io/XMLWriter;->writer:Ljava/io/Writer;

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_37

    :cond_53
    iput v5, p0, Lorg/dom4j/io/XMLWriter;->lastOutputNodeType:I

    iget-object v0, p0, Lorg/dom4j/io/XMLWriter;->writer:Ljava/io/Writer;

    invoke-virtual {v0, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    iput-char v0, p0, Lorg/dom4j/io/XMLWriter;->lastChar:C

    :cond_66
    return-void
.end method
