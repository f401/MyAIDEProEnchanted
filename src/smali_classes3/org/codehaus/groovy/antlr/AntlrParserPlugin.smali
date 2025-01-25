.class public Lorg/codehaus/groovy/antlr/AntlrParserPlugin;
.super Lorg/codehaus/groovy/syntax/ASTHelper;

# interfaces
.implements Lorg/codehaus/groovy/control/ParserPlugin;
.implements Lorg/codehaus/groovy/antlr/parser/GroovyTokenTypes;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/codehaus/groovy/antlr/AntlrParserPlugin$AnonymousInnerClassCarrier;
    }
.end annotation


# instance fields
.field protected DW:Lgroovyjarjarantlr/collections/AST;

.field private FH:[Ljava/lang/String;

.field private Hw:I

.field private VH:Z

.field private Zo:Z

.field private gn:Z

.field private v5:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lorg/codehaus/groovy/syntax/ASTHelper;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lorg/codehaus/groovy/antlr/AntlrParserPlugin;->Hw:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/codehaus/groovy/antlr/AntlrParserPlugin;->v5:Z

    iput-boolean v0, p0, Lorg/codehaus/groovy/antlr/AntlrParserPlugin;->Zo:Z

    iput-boolean v0, p0, Lorg/codehaus/groovy/antlr/AntlrParserPlugin;->VH:Z

    iput-boolean v0, p0, Lorg/codehaus/groovy/antlr/AntlrParserPlugin;->gn:Z

    return-void
.end method

.method private j6(Ljava/lang/String;Lgroovyjarjarantlr/collections/AST;)V
    .registers 7

    const-string v0, ".antlr.xml"

    new-instance v1, Lcom/thoughtworks/xstream/XStream;

    invoke-direct {v1}, Lcom/thoughtworks/xstream/XStream;-><init>()V

    :try_start_7
    new-instance v2, Ljava/io/FileWriter;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2, v2}, Lcom/thoughtworks/xstream/XStream;->toXML(Ljava/lang/Object;Ljava/io/Writer;)V

    sget-object p2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Written AST to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_37
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_37} :catch_38

    goto :goto_55

    :catch_38
    move-exception p2

    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Couldn\'t write to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/lang/Exception;->printStackTrace()V

    :goto_55
    return-void
.end method

.method static synthetic j6(Lorg/codehaus/groovy/antlr/AntlrParserPlugin;Lorg/codehaus/groovy/control/SourceUnit;Lorg/codehaus/groovy/antlr/SourceBuffer;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lorg/codehaus/groovy/antlr/AntlrParserPlugin;->j6(Lorg/codehaus/groovy/control/SourceUnit;Lorg/codehaus/groovy/antlr/SourceBuffer;)V

    return-void
.end method

.method private j6(Lorg/codehaus/groovy/control/SourceUnit;Lorg/codehaus/groovy/antlr/SourceBuffer;)V
    .registers 11

    const-string v0, ".html"

    const-string v1, ".pretty.groovy"

    const-string v2, "ANTLR.AST"

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "xml"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1f

    invoke-virtual {p1}, Lorg/codehaus/groovy/control/SourceUnit;->Hw()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lorg/codehaus/groovy/antlr/AntlrParserPlugin;->DW:Lgroovyjarjarantlr/collections/AST;

    invoke-direct {p0, v3, v4}, Lorg/codehaus/groovy/antlr/AntlrParserPlugin;->j6(Ljava/lang/String;Lgroovyjarjarantlr/collections/AST;)V

    :cond_1f
    const-string v3, "groovy"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const-string v4, "Cannot create "

    if-eqz v3, :cond_74

    :try_start_29
    new-instance v3, Ljava/io/PrintStream;

    new-instance v5, Ljava/io/FileOutputStream;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lorg/codehaus/groovy/control/SourceUnit;->Hw()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, v5}, Ljava/io/PrintStream;-><init>(Ljava/io/OutputStream;)V

    new-instance v5, Lorg/codehaus/groovy/antlr/treewalker/SourcePrinter;

    iget-object v6, p0, Lorg/codehaus/groovy/antlr/AntlrParserPlugin;->FH:[Ljava/lang/String;

    invoke-direct {v5, v3, v6}, Lorg/codehaus/groovy/antlr/treewalker/SourcePrinter;-><init>(Ljava/io/PrintStream;[Ljava/lang/String;)V

    new-instance v3, Lorg/codehaus/groovy/antlr/treewalker/SourceCodeTraversal;

    invoke-direct {v3, v5}, Lorg/codehaus/groovy/antlr/treewalker/SourceCodeTraversal;-><init>(Lorg/codehaus/groovy/antlr/treewalker/Visitor;)V

    iget-object v5, p0, Lorg/codehaus/groovy/antlr/AntlrParserPlugin;->DW:Lgroovyjarjarantlr/collections/AST;

    invoke-interface {v3, v5}, Lorg/codehaus/groovy/antlr/AntlrASTProcessor;->j6(Lgroovyjarjarantlr/collections/AST;)Lgroovyjarjarantlr/collections/AST;
    :try_end_57
    .catch Ljava/io/FileNotFoundException; {:try_start_29 .. :try_end_57} :catch_58

    goto :goto_74

    :catch_58
    move-exception v3

    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lorg/codehaus/groovy/control/SourceUnit;->Hw()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_74
    :goto_74
    const-string v1, "mindmap"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v3, ".mm"

    if-eqz v1, :cond_c9

    :try_start_7e
    new-instance v1, Ljava/io/PrintStream;

    new-instance v5, Ljava/io/FileOutputStream;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lorg/codehaus/groovy/control/SourceUnit;->Hw()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v5}, Ljava/io/PrintStream;-><init>(Ljava/io/OutputStream;)V

    new-instance v5, Lorg/codehaus/groovy/antlr/treewalker/MindMapPrinter;

    iget-object v6, p0, Lorg/codehaus/groovy/antlr/AntlrParserPlugin;->FH:[Ljava/lang/String;

    invoke-direct {v5, v1, v6}, Lorg/codehaus/groovy/antlr/treewalker/MindMapPrinter;-><init>(Ljava/io/PrintStream;[Ljava/lang/String;)V

    new-instance v1, Lorg/codehaus/groovy/antlr/treewalker/PreOrderTraversal;

    invoke-direct {v1, v5}, Lorg/codehaus/groovy/antlr/treewalker/PreOrderTraversal;-><init>(Lorg/codehaus/groovy/antlr/treewalker/Visitor;)V

    iget-object v5, p0, Lorg/codehaus/groovy/antlr/AntlrParserPlugin;->DW:Lgroovyjarjarantlr/collections/AST;

    invoke-interface {v1, v5}, Lorg/codehaus/groovy/antlr/AntlrASTProcessor;->j6(Lgroovyjarjarantlr/collections/AST;)Lgroovyjarjarantlr/collections/AST;
    :try_end_ac
    .catch Ljava/io/FileNotFoundException; {:try_start_7e .. :try_end_ac} :catch_ad

    goto :goto_c9

    :catch_ad
    move-exception v1

    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lorg/codehaus/groovy/control/SourceUnit;->Hw()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_c9
    :goto_c9
    const-string v1, "extendedMindmap"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_11c

    :try_start_d1
    new-instance v1, Ljava/io/PrintStream;

    new-instance v5, Ljava/io/FileOutputStream;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lorg/codehaus/groovy/control/SourceUnit;->Hw()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v5}, Ljava/io/PrintStream;-><init>(Ljava/io/OutputStream;)V

    new-instance v5, Lorg/codehaus/groovy/antlr/treewalker/MindMapPrinter;

    iget-object v6, p0, Lorg/codehaus/groovy/antlr/AntlrParserPlugin;->FH:[Ljava/lang/String;

    invoke-direct {v5, v1, v6, p2}, Lorg/codehaus/groovy/antlr/treewalker/MindMapPrinter;-><init>(Ljava/io/PrintStream;[Ljava/lang/String;Lorg/codehaus/groovy/antlr/SourceBuffer;)V

    new-instance p2, Lorg/codehaus/groovy/antlr/treewalker/PreOrderTraversal;

    invoke-direct {p2, v5}, Lorg/codehaus/groovy/antlr/treewalker/PreOrderTraversal;-><init>(Lorg/codehaus/groovy/antlr/treewalker/Visitor;)V

    iget-object v1, p0, Lorg/codehaus/groovy/antlr/AntlrParserPlugin;->DW:Lgroovyjarjarantlr/collections/AST;

    invoke-interface {p2, v1}, Lorg/codehaus/groovy/antlr/AntlrASTProcessor;->j6(Lgroovyjarjarantlr/collections/AST;)Lgroovyjarjarantlr/collections/AST;
    :try_end_ff
    .catch Ljava/io/FileNotFoundException; {:try_start_d1 .. :try_end_ff} :catch_100

    goto :goto_11c

    :catch_100
    move-exception p2

    sget-object p2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lorg/codehaus/groovy/control/SourceUnit;->Hw()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_11c
    :goto_11c
    const-string p2, "html"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_186

    :try_start_124
    new-instance p2, Ljava/io/PrintStream;

    new-instance v1, Ljava/io/FileOutputStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lorg/codehaus/groovy/control/SourceUnit;->Hw()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {p2, v1}, Ljava/io/PrintStream;-><init>(Ljava/io/OutputStream;)V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Lorg/codehaus/groovy/antlr/treewalker/NodeAsHTMLPrinter;

    iget-object v3, p0, Lorg/codehaus/groovy/antlr/AntlrParserPlugin;->FH:[Ljava/lang/String;

    invoke-direct {v2, p2, v3}, Lorg/codehaus/groovy/antlr/treewalker/NodeAsHTMLPrinter;-><init>(Ljava/io/PrintStream;[Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v2, Lorg/codehaus/groovy/antlr/treewalker/SourcePrinter;

    iget-object v3, p0, Lorg/codehaus/groovy/antlr/AntlrParserPlugin;->FH:[Ljava/lang/String;

    invoke-direct {v2, p2, v3}, Lorg/codehaus/groovy/antlr/treewalker/SourcePrinter;-><init>(Ljava/io/PrintStream;[Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance p2, Lorg/codehaus/groovy/antlr/treewalker/CompositeVisitor;

    invoke-direct {p2, v1}, Lorg/codehaus/groovy/antlr/treewalker/CompositeVisitor;-><init>(Ljava/util/List;)V

    new-instance v1, Lorg/codehaus/groovy/antlr/treewalker/SourceCodeTraversal;

    invoke-direct {v1, p2}, Lorg/codehaus/groovy/antlr/treewalker/SourceCodeTraversal;-><init>(Lorg/codehaus/groovy/antlr/treewalker/Visitor;)V

    iget-object p2, p0, Lorg/codehaus/groovy/antlr/AntlrParserPlugin;->DW:Lgroovyjarjarantlr/collections/AST;

    invoke-interface {v1, p2}, Lorg/codehaus/groovy/antlr/AntlrASTProcessor;->j6(Lgroovyjarjarantlr/collections/AST;)Lgroovyjarjarantlr/collections/AST;
    :try_end_169
    .catch Ljava/io/FileNotFoundException; {:try_start_124 .. :try_end_169} :catch_16a

    goto :goto_186

    :catch_16a
    move-exception p2

    sget-object p2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lorg/codehaus/groovy/control/SourceUnit;->Hw()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_186
    :goto_186
    return-void
.end method
