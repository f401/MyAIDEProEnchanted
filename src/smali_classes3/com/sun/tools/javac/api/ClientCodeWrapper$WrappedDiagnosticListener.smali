.class public Lcom/sun/tools/javac/api/ClientCodeWrapper$WrappedDiagnosticListener;
.super Ljava/lang/Object;
.source "ClientCodeWrapper.java"

# interfaces
.implements Ljavax/tools/DiagnosticListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/tools/javac/api/ClientCodeWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "WrappedDiagnosticListener"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljavax/tools/DiagnosticListener",
        "<TT;>;"
    }
.end annotation


# instance fields
.field protected clientDiagnosticListener:Ljavax/tools/DiagnosticListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/tools/DiagnosticListener",
            "<TT;>;"
        }
    .end annotation
.end field

.field final this$0:Lcom/sun/tools/javac/api/ClientCodeWrapper;


# direct methods
.method constructor <init>(Lcom/sun/tools/javac/api/ClientCodeWrapper;Ljavax/tools/DiagnosticListener;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/tools/DiagnosticListener",
            "<TT;>;)V"
        }
    .end annotation

    .line 551
    iput-object p1, p0, Lcom/sun/tools/javac/api/ClientCodeWrapper$WrappedDiagnosticListener;->this$0:Lcom/sun/tools/javac/api/ClientCodeWrapper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 552
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 553
    iput-object p2, p0, Lcom/sun/tools/javac/api/ClientCodeWrapper$WrappedDiagnosticListener;->clientDiagnosticListener:Ljavax/tools/DiagnosticListener;

    .line 554
    return-void
.end method


# virtual methods
.method public report(Ljavax/tools/Diagnostic;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/tools/Diagnostic",
            "<+TT;>;)V"
        }
    .end annotation

    .line 559
    :try_start_0
    iget-object v0, p0, Lcom/sun/tools/javac/api/ClientCodeWrapper$WrappedDiagnosticListener;->clientDiagnosticListener:Ljavax/tools/DiagnosticListener;

    iget-object v1, p0, Lcom/sun/tools/javac/api/ClientCodeWrapper$WrappedDiagnosticListener;->this$0:Lcom/sun/tools/javac/api/ClientCodeWrapper;

    invoke-static {v1, p1}, Lcom/sun/tools/javac/api/ClientCodeWrapper;->access$000(Lcom/sun/tools/javac/api/ClientCodeWrapper;Ljavax/tools/Diagnostic;)Ljavax/tools/Diagnostic;

    move-result-object v1

    invoke-interface {v0, v1}, Ljavax/tools/DiagnosticListener;->report(Ljavax/tools/Diagnostic;)V
    :try_end_0
    .catch Lcom/sun/tools/javac/util/ClientCodeException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0

    .line 566
    return-void

    .line 564
    :catch_0
    move-exception v0

    .line 565
    new-instance v1, Lcom/sun/tools/javac/util/ClientCodeException;

    invoke-direct {v1, v0}, Lcom/sun/tools/javac/util/ClientCodeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 562
    :catch_1
    move-exception v0

    .line 563
    new-instance v1, Lcom/sun/tools/javac/util/ClientCodeException;

    invoke-direct {v1, v0}, Lcom/sun/tools/javac/util/ClientCodeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 560
    :catch_2
    move-exception v0

    .line 561
    throw v0
.end method
