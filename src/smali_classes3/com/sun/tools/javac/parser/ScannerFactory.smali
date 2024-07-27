.class public Lcom/sun/tools/javac/parser/ScannerFactory;
.super Ljava/lang/Object;
.source "ScannerFactory.java"


# static fields
.field public static final scannerFactoryKey:Lcom/sun/tools/javac/util/Context$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sun/tools/javac/util/Context$Key",
            "<",
            "Lcom/sun/tools/javac/parser/ScannerFactory;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final keywords:Lcom/sun/tools/javac/parser/Keywords;

.field public final log:Lcom/sun/tools/javac/util/Log;

.field public final names:Lcom/sun/tools/javac/util/Names;

.field public final source:Lcom/sun/tools/javac/code/Source;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 48
    new-instance v0, Lcom/sun/tools/javac/util/Context$Key;

    invoke-direct {v0}, Lcom/sun/tools/javac/util/Context$Key;-><init>()V

    sput-object v0, Lcom/sun/tools/javac/parser/ScannerFactory;->scannerFactoryKey:Lcom/sun/tools/javac/util/Context$Key;

    return-void
.end method

.method protected constructor <init>(Lcom/sun/tools/javac/util/Context;)V
    .registers 3

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    sget-object v0, Lcom/sun/tools/javac/parser/ScannerFactory;->scannerFactoryKey:Lcom/sun/tools/javac/util/Context$Key;

    invoke-virtual {p1, v0, p0}, Lcom/sun/tools/javac/util/Context;->put(Lcom/sun/tools/javac/util/Context$Key;Ljava/lang/Object;)V

    .line 61
    invoke-static {p1}, Lcom/sun/tools/javac/util/Log;->instance(Lcom/sun/tools/javac/util/Context;)Lcom/sun/tools/javac/util/Log;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/tools/javac/parser/ScannerFactory;->log:Lcom/sun/tools/javac/util/Log;

    .line 62
    invoke-static {p1}, Lcom/sun/tools/javac/util/Names;->instance(Lcom/sun/tools/javac/util/Context;)Lcom/sun/tools/javac/util/Names;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/tools/javac/parser/ScannerFactory;->names:Lcom/sun/tools/javac/util/Names;

    .line 63
    invoke-static {p1}, Lcom/sun/tools/javac/code/Source;->instance(Lcom/sun/tools/javac/util/Context;)Lcom/sun/tools/javac/code/Source;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/tools/javac/parser/ScannerFactory;->source:Lcom/sun/tools/javac/code/Source;

    .line 64
    invoke-static {p1}, Lcom/sun/tools/javac/parser/Keywords;->instance(Lcom/sun/tools/javac/util/Context;)Lcom/sun/tools/javac/parser/Keywords;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/tools/javac/parser/ScannerFactory;->keywords:Lcom/sun/tools/javac/parser/Keywords;

    .line 65
    return-void
.end method

.method public static instance(Lcom/sun/tools/javac/util/Context;)Lcom/sun/tools/javac/parser/ScannerFactory;
    .registers 2

    .line 71
    sget-object v0, Lcom/sun/tools/javac/parser/ScannerFactory;->scannerFactoryKey:Lcom/sun/tools/javac/util/Context$Key;

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/util/Context;->get(Lcom/sun/tools/javac/util/Context$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/tools/javac/parser/ScannerFactory;

    .line 72
    if-nez v0, :cond_0

    .line 73
    new-instance v0, Lcom/sun/tools/javac/parser/ScannerFactory;

    invoke-direct {v0, p0}, Lcom/sun/tools/javac/parser/ScannerFactory;-><init>(Lcom/sun/tools/javac/util/Context;)V

    .line 74
    :cond_0
    return-object v0
.end method


# virtual methods
.method public newScanner(Ljava/lang/CharSequence;Z)Lcom/sun/tools/javac/parser/Scanner;
    .registers 5

    .line 78
    instance-of v0, p1, Ljava/nio/CharBuffer;

    if-eqz v0, :cond_1

    .line 79
    check-cast p1, Ljava/nio/CharBuffer;

    .line 80
    if-eqz p2, :cond_0

    .line 81
    new-instance v0, Lcom/sun/tools/javac/parser/DocCommentScanner;

    invoke-direct {v0, p0, p1}, Lcom/sun/tools/javac/parser/DocCommentScanner;-><init>(Lcom/sun/tools/javac/parser/ScannerFactory;Ljava/nio/CharBuffer;)V

    .line 86
    :goto_0
    return-object v0

    .line 83
    :cond_0
    new-instance v0, Lcom/sun/tools/javac/parser/Scanner;

    invoke-direct {v0, p0, p1}, Lcom/sun/tools/javac/parser/Scanner;-><init>(Lcom/sun/tools/javac/parser/ScannerFactory;Ljava/nio/CharBuffer;)V

    goto :goto_0

    .line 85
    :cond_1
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    .line 86
    array-length v1, v0

    invoke-virtual {p0, v0, v1, p2}, Lcom/sun/tools/javac/parser/ScannerFactory;->newScanner([CIZ)Lcom/sun/tools/javac/parser/Scanner;

    move-result-object v0

    goto :goto_0
.end method

.method public newScanner([CIZ)Lcom/sun/tools/javac/parser/Scanner;
    .registers 5

    .line 91
    if-eqz p3, :cond_0

    .line 92
    new-instance v0, Lcom/sun/tools/javac/parser/DocCommentScanner;

    invoke-direct {v0, p0, p1, p2}, Lcom/sun/tools/javac/parser/DocCommentScanner;-><init>(Lcom/sun/tools/javac/parser/ScannerFactory;[CI)V

    .line 94
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/sun/tools/javac/parser/Scanner;

    invoke-direct {v0, p0, p1, p2}, Lcom/sun/tools/javac/parser/Scanner;-><init>(Lcom/sun/tools/javac/parser/ScannerFactory;[CI)V

    goto :goto_0
.end method
