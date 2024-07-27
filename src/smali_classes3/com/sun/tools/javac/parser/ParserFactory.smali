.class public Lcom/sun/tools/javac/parser/ParserFactory;
.super Ljava/lang/Object;
.source "ParserFactory.java"


# static fields
.field protected static final parserFactoryKey:Lcom/sun/tools/javac/util/Context$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sun/tools/javac/util/Context$Key",
            "<",
            "Lcom/sun/tools/javac/parser/ParserFactory;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final F:Lcom/sun/tools/javac/tree/TreeMaker;

.field final keywords:Lcom/sun/tools/javac/parser/Keywords;

.field final log:Lcom/sun/tools/javac/util/Log;

.field final names:Lcom/sun/tools/javac/util/Names;

.field final options:Lcom/sun/tools/javac/util/Options;

.field final scannerFactory:Lcom/sun/tools/javac/parser/ScannerFactory;

.field final source:Lcom/sun/tools/javac/code/Source;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 46
    new-instance v0, Lcom/sun/tools/javac/util/Context$Key;

    invoke-direct {v0}, Lcom/sun/tools/javac/util/Context$Key;-><init>()V

    sput-object v0, Lcom/sun/tools/javac/parser/ParserFactory;->parserFactoryKey:Lcom/sun/tools/javac/util/Context$Key;

    return-void
.end method

.method protected constructor <init>(Lcom/sun/tools/javac/util/Context;)V
    .registers 3

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    sget-object v0, Lcom/sun/tools/javac/parser/ParserFactory;->parserFactoryKey:Lcom/sun/tools/javac/util/Context$Key;

    invoke-virtual {p1, v0, p0}, Lcom/sun/tools/javac/util/Context;->put(Lcom/sun/tools/javac/util/Context$Key;Ljava/lang/Object;)V

    .line 67
    invoke-static {p1}, Lcom/sun/tools/javac/tree/TreeMaker;->instance(Lcom/sun/tools/javac/util/Context;)Lcom/sun/tools/javac/tree/TreeMaker;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/tools/javac/parser/ParserFactory;->F:Lcom/sun/tools/javac/tree/TreeMaker;

    .line 68
    invoke-static {p1}, Lcom/sun/tools/javac/util/Log;->instance(Lcom/sun/tools/javac/util/Context;)Lcom/sun/tools/javac/util/Log;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/tools/javac/parser/ParserFactory;->log:Lcom/sun/tools/javac/util/Log;

    .line 69
    invoke-static {p1}, Lcom/sun/tools/javac/util/Names;->instance(Lcom/sun/tools/javac/util/Context;)Lcom/sun/tools/javac/util/Names;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/tools/javac/parser/ParserFactory;->names:Lcom/sun/tools/javac/util/Names;

    .line 70
    invoke-static {p1}, Lcom/sun/tools/javac/parser/Keywords;->instance(Lcom/sun/tools/javac/util/Context;)Lcom/sun/tools/javac/parser/Keywords;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/tools/javac/parser/ParserFactory;->keywords:Lcom/sun/tools/javac/parser/Keywords;

    .line 71
    invoke-static {p1}, Lcom/sun/tools/javac/code/Source;->instance(Lcom/sun/tools/javac/util/Context;)Lcom/sun/tools/javac/code/Source;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/tools/javac/parser/ParserFactory;->source:Lcom/sun/tools/javac/code/Source;

    .line 72
    invoke-static {p1}, Lcom/sun/tools/javac/util/Options;->instance(Lcom/sun/tools/javac/util/Context;)Lcom/sun/tools/javac/util/Options;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/tools/javac/parser/ParserFactory;->options:Lcom/sun/tools/javac/util/Options;

    .line 73
    invoke-static {p1}, Lcom/sun/tools/javac/parser/ScannerFactory;->instance(Lcom/sun/tools/javac/util/Context;)Lcom/sun/tools/javac/parser/ScannerFactory;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/tools/javac/parser/ParserFactory;->scannerFactory:Lcom/sun/tools/javac/parser/ScannerFactory;

    .line 74
    return-void
.end method

.method public static instance(Lcom/sun/tools/javac/util/Context;)Lcom/sun/tools/javac/parser/ParserFactory;
    .registers 2

    .line 49
    sget-object v0, Lcom/sun/tools/javac/parser/ParserFactory;->parserFactoryKey:Lcom/sun/tools/javac/util/Context$Key;

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/util/Context;->get(Lcom/sun/tools/javac/util/Context$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/tools/javac/parser/ParserFactory;

    .line 50
    if-nez v0, :cond_0

    .line 51
    new-instance v0, Lcom/sun/tools/javac/parser/ParserFactory;

    invoke-direct {v0, p0}, Lcom/sun/tools/javac/parser/ParserFactory;-><init>(Lcom/sun/tools/javac/util/Context;)V

    .line 53
    :cond_0
    return-object v0
.end method


# virtual methods
.method public newParser(Ljava/lang/CharSequence;ZZZ)Lcom/sun/tools/javac/parser/Parser;
    .registers 7

    .line 77
    iget-object v0, p0, Lcom/sun/tools/javac/parser/ParserFactory;->scannerFactory:Lcom/sun/tools/javac/parser/ScannerFactory;

    invoke-virtual {v0, p1, p2}, Lcom/sun/tools/javac/parser/ScannerFactory;->newScanner(Ljava/lang/CharSequence;Z)Lcom/sun/tools/javac/parser/Scanner;

    move-result-object v1

    .line 78
    if-eqz p3, :cond_0

    .line 79
    new-instance v0, Lcom/sun/tools/javac/parser/EndPosParser;

    invoke-direct {v0, p0, v1, p2, p4}, Lcom/sun/tools/javac/parser/EndPosParser;-><init>(Lcom/sun/tools/javac/parser/ParserFactory;Lcom/sun/tools/javac/parser/Lexer;ZZ)V

    .line 81
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/sun/tools/javac/parser/JavacParser;

    invoke-direct {v0, p0, v1, p2, p4}, Lcom/sun/tools/javac/parser/JavacParser;-><init>(Lcom/sun/tools/javac/parser/ParserFactory;Lcom/sun/tools/javac/parser/Lexer;ZZ)V

    goto :goto_0
.end method
