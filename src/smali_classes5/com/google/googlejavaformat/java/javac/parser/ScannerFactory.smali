.class public Lcom/google/googlejavaformat/java/javac/parser/ScannerFactory;
.super Ljava/lang/Object;
.source "ScannerFactory.java"


# static fields
.field public static final scannerFactoryKey:Lcom/sun/tools/javac/util/Context$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sun/tools/javac/util/Context$Key",
            "<",
            "Lcom/google/googlejavaformat/java/javac/parser/ScannerFactory;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final log:Lcom/sun/tools/javac/util/Log;

.field final names:Lcom/sun/tools/javac/util/Names;

.field final source:Lcom/sun/tools/javac/code/Source;

.field final tokens:Lcom/google/googlejavaformat/java/javac/parser/Tokens;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 48
    new-instance v0, Lcom/sun/tools/javac/util/Context$Key;

    invoke-direct {v0}, Lcom/sun/tools/javac/util/Context$Key;-><init>()V

    sput-object v0, Lcom/google/googlejavaformat/java/javac/parser/ScannerFactory;->scannerFactoryKey:Lcom/sun/tools/javac/util/Context$Key;

    return-void
.end method

.method protected constructor <init>(Lcom/sun/tools/javac/util/Context;)V
    .registers 3

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    sget-object v0, Lcom/google/googlejavaformat/java/javac/parser/ScannerFactory;->scannerFactoryKey:Lcom/sun/tools/javac/util/Context$Key;

    invoke-virtual {p1, v0, p0}, Lcom/sun/tools/javac/util/Context;->put(Lcom/sun/tools/javac/util/Context$Key;Ljava/lang/Object;)V

    .line 60
    invoke-static {p1}, Lcom/sun/tools/javac/util/Log;->instance(Lcom/sun/tools/javac/util/Context;)Lcom/sun/tools/javac/util/Log;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlejavaformat/java/javac/parser/ScannerFactory;->log:Lcom/sun/tools/javac/util/Log;

    .line 61
    invoke-static {p1}, Lcom/sun/tools/javac/util/Names;->instance(Lcom/sun/tools/javac/util/Context;)Lcom/sun/tools/javac/util/Names;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlejavaformat/java/javac/parser/ScannerFactory;->names:Lcom/sun/tools/javac/util/Names;

    .line 62
    invoke-static {p1}, Lcom/sun/tools/javac/code/Source;->instance(Lcom/sun/tools/javac/util/Context;)Lcom/sun/tools/javac/code/Source;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlejavaformat/java/javac/parser/ScannerFactory;->source:Lcom/sun/tools/javac/code/Source;

    .line 63
    invoke-static {p1}, Lcom/google/googlejavaformat/java/javac/parser/Tokens;->instance(Lcom/sun/tools/javac/util/Context;)Lcom/google/googlejavaformat/java/javac/parser/Tokens;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlejavaformat/java/javac/parser/ScannerFactory;->tokens:Lcom/google/googlejavaformat/java/javac/parser/Tokens;

    .line 64
    return-void
.end method

.method public static instance(Lcom/sun/tools/javac/util/Context;)Lcom/google/googlejavaformat/java/javac/parser/ScannerFactory;
    .registers 2

    .line 70
    sget-object v0, Lcom/google/googlejavaformat/java/javac/parser/ScannerFactory;->scannerFactoryKey:Lcom/sun/tools/javac/util/Context$Key;

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/util/Context;->get(Lcom/sun/tools/javac/util/Context$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlejavaformat/java/javac/parser/ScannerFactory;

    .line 71
    if-nez v0, :cond_f

    .line 72
    new-instance v0, Lcom/google/googlejavaformat/java/javac/parser/ScannerFactory;

    invoke-direct {v0, p0}, Lcom/google/googlejavaformat/java/javac/parser/ScannerFactory;-><init>(Lcom/sun/tools/javac/util/Context;)V

    .line 73
    :cond_f
    return-object v0
.end method


# virtual methods
.method public newScanner(Ljava/lang/CharSequence;Z)Lcom/google/googlejavaformat/java/javac/parser/Scanner;
    .registers 5

    .line 77
    instance-of v0, p1, Ljava/nio/CharBuffer;

    if-eqz v0, :cond_19

    .line 78
    check-cast p1, Ljava/nio/CharBuffer;

    .line 79
    if-eqz p2, :cond_13

    .line 80
    new-instance v0, Lcom/google/googlejavaformat/java/javac/parser/Scanner;

    new-instance v1, Lcom/google/googlejavaformat/java/javac/parser/JavadocTokenizer;

    invoke-direct {v1, p0, p1}, Lcom/google/googlejavaformat/java/javac/parser/JavadocTokenizer;-><init>(Lcom/google/googlejavaformat/java/javac/parser/ScannerFactory;Ljava/nio/CharBuffer;)V

    invoke-direct {v0, p0, v1}, Lcom/google/googlejavaformat/java/javac/parser/Scanner;-><init>(Lcom/google/googlejavaformat/java/javac/parser/ScannerFactory;Lcom/google/googlejavaformat/java/javac/parser/JavaTokenizer;)V

    .line 85
    :goto_12
    return-object v0

    .line 82
    :cond_13
    new-instance v0, Lcom/google/googlejavaformat/java/javac/parser/Scanner;

    invoke-direct {v0, p0, p1}, Lcom/google/googlejavaformat/java/javac/parser/Scanner;-><init>(Lcom/google/googlejavaformat/java/javac/parser/ScannerFactory;Ljava/nio/CharBuffer;)V

    goto :goto_12

    .line 84
    :cond_19
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    .line 85
    array-length v1, v0

    invoke-virtual {p0, v0, v1, p2}, Lcom/google/googlejavaformat/java/javac/parser/ScannerFactory;->newScanner([CIZ)Lcom/google/googlejavaformat/java/javac/parser/Scanner;

    move-result-object v0

    goto :goto_12
.end method

.method public newScanner([CIZ)Lcom/google/googlejavaformat/java/javac/parser/Scanner;
    .registers 6

    .line 90
    if-eqz p3, :cond_d

    .line 91
    new-instance v0, Lcom/google/googlejavaformat/java/javac/parser/Scanner;

    new-instance v1, Lcom/google/googlejavaformat/java/javac/parser/JavadocTokenizer;

    invoke-direct {v1, p0, p1, p2}, Lcom/google/googlejavaformat/java/javac/parser/JavadocTokenizer;-><init>(Lcom/google/googlejavaformat/java/javac/parser/ScannerFactory;[CI)V

    invoke-direct {v0, p0, v1}, Lcom/google/googlejavaformat/java/javac/parser/Scanner;-><init>(Lcom/google/googlejavaformat/java/javac/parser/ScannerFactory;Lcom/google/googlejavaformat/java/javac/parser/JavaTokenizer;)V

    .line 93
    :goto_c
    return-object v0

    :cond_d
    new-instance v0, Lcom/google/googlejavaformat/java/javac/parser/Scanner;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/googlejavaformat/java/javac/parser/Scanner;-><init>(Lcom/google/googlejavaformat/java/javac/parser/ScannerFactory;[CI)V

    goto :goto_c
.end method
