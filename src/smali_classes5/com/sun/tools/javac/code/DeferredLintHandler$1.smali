.class Lcom/sun/tools/javac/code/DeferredLintHandler$1;
.super Lcom/sun/tools/javac/code/DeferredLintHandler;
.source "DeferredLintHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/tools/javac/code/DeferredLintHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 2

    .line 89
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/sun/tools/javac/code/DeferredLintHandler;-><init>(Lcom/sun/tools/javac/code/DeferredLintHandler$1;)V

    return-void
.end method


# virtual methods
.method public report(Lcom/sun/tools/javac/code/DeferredLintHandler$LintLogger;)V
    .registers 2

    .line 92
    invoke-interface {p1}, Lcom/sun/tools/javac/code/DeferredLintHandler$LintLogger;->report()V

    .line 93
    return-void
.end method
