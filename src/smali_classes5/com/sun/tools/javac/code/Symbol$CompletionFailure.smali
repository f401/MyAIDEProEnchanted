.class public Lcom/sun/tools/javac/code/Symbol$CompletionFailure;
.super Ljava/lang/RuntimeException;
.source "Symbol.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/tools/javac/code/Symbol;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CompletionFailure"
.end annotation


# static fields
.field private static final serialVersionUID:J


# instance fields
.field public diag:Lcom/sun/tools/javac/util/JCDiagnostic;

.field public errmsg:Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public sym:Lcom/sun/tools/javac/code/Symbol;


# direct methods
.method public constructor <init>(Lcom/sun/tools/javac/code/Symbol;Lcom/sun/tools/javac/util/JCDiagnostic;)V
    .registers 3

    .line 1390
    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    .line 1391
    iput-object p1, p0, Lcom/sun/tools/javac/code/Symbol$CompletionFailure;->sym:Lcom/sun/tools/javac/code/Symbol;

    .line 1392
    iput-object p2, p0, Lcom/sun/tools/javac/code/Symbol$CompletionFailure;->diag:Lcom/sun/tools/javac/util/JCDiagnostic;

    .line 1394
    return-void
.end method

.method public constructor <init>(Lcom/sun/tools/javac/code/Symbol;Ljava/lang/String;)V
    .registers 3

    .line 1384
    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    .line 1385
    iput-object p1, p0, Lcom/sun/tools/javac/code/Symbol$CompletionFailure;->sym:Lcom/sun/tools/javac/code/Symbol;

    .line 1386
    iput-object p2, p0, Lcom/sun/tools/javac/code/Symbol$CompletionFailure;->errmsg:Ljava/lang/String;

    .line 1388
    return-void
.end method


# virtual methods
.method public getDetailValue()Ljava/lang/Object;
    .registers 2

    .line 1409
    iget-object v0, p0, Lcom/sun/tools/javac/code/Symbol$CompletionFailure;->diag:Lcom/sun/tools/javac/util/JCDiagnostic;

    if-eqz v0, :cond_5

    :goto_4
    return-object v0

    :cond_5
    iget-object v0, p0, Lcom/sun/tools/javac/code/Symbol$CompletionFailure;->errmsg:Ljava/lang/String;

    goto :goto_4
.end method

.method public getDiagnostic()Lcom/sun/tools/javac/util/JCDiagnostic;
    .registers 2

    .line 1397
    iget-object v0, p0, Lcom/sun/tools/javac/code/Symbol$CompletionFailure;->diag:Lcom/sun/tools/javac/util/JCDiagnostic;

    return-object v0
.end method

.method public getMessage()Ljava/lang/String;
    .registers 3

    .line 1402
    iget-object v0, p0, Lcom/sun/tools/javac/code/Symbol$CompletionFailure;->diag:Lcom/sun/tools/javac/util/JCDiagnostic;

    if-eqz v0, :cond_a

    .line 1403
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sun/tools/javac/util/JCDiagnostic;->getMessage(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    .line 1405
    :goto_9
    return-object v0

    :cond_a
    iget-object v0, p0, Lcom/sun/tools/javac/code/Symbol$CompletionFailure;->errmsg:Ljava/lang/String;

    goto :goto_9
.end method

.method public initCause(Ljava/lang/Throwable;)Lcom/sun/tools/javac/code/Symbol$CompletionFailure;
    .registers 2

    .line 1414
    invoke-super {p0, p1}, Ljava/lang/RuntimeException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 1415
    return-object p0
.end method

.method public bridge synthetic initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;
    .registers 3

    .line 1370
    invoke-virtual {p0, p1}, Lcom/sun/tools/javac/code/Symbol$CompletionFailure;->initCause(Ljava/lang/Throwable;)Lcom/sun/tools/javac/code/Symbol$CompletionFailure;

    move-result-object v0

    return-object v0
.end method
