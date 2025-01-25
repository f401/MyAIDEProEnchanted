.class public final Ljavax/tools/DiagnosticCollector;
.super Ljava/lang/Object;
.source "DiagnosticCollector.java"

# interfaces
.implements Ljavax/tools/DiagnosticListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<S:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljavax/tools/DiagnosticListener",
        "<TS;>;"
    }
.end annotation


# instance fields
.field private diagnostics:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljavax/tools/Diagnostic",
            "<+TS;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 43
    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Ljavax/tools/DiagnosticCollector;->diagnostics:Ljava/util/List;

    .line 42
    return-void
.end method


# virtual methods
.method public getDiagnostics()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljavax/tools/Diagnostic",
            "<+TS;>;>;"
        }
    .end annotation

    .line 56
    iget-object v0, p0, Ljavax/tools/DiagnosticCollector;->diagnostics:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public report(Ljavax/tools/Diagnostic;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/tools/Diagnostic",
            "<+TS;>;)V"
        }
    .end annotation

    .line 46
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 47
    iget-object v0, p0, Ljavax/tools/DiagnosticCollector;->diagnostics:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 48
    return-void
.end method
