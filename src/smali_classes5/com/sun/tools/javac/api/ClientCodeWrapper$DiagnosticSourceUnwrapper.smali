.class public Lcom/sun/tools/javac/api/ClientCodeWrapper$DiagnosticSourceUnwrapper;
.super Ljava/lang/Object;
.source "ClientCodeWrapper.java"

# interfaces
.implements Ljavax/tools/Diagnostic;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/tools/javac/api/ClientCodeWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "DiagnosticSourceUnwrapper"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljavax/tools/Diagnostic",
        "<",
        "Ljavax/tools/JavaFileObject;",
        ">;"
    }
.end annotation


# instance fields
.field public final d:Lcom/sun/tools/javac/util/JCDiagnostic;

.field final this$0:Lcom/sun/tools/javac/api/ClientCodeWrapper;


# direct methods
.method constructor <init>(Lcom/sun/tools/javac/api/ClientCodeWrapper;Lcom/sun/tools/javac/util/JCDiagnostic;)V
    .registers 3

    .line 573
    iput-object p1, p0, Lcom/sun/tools/javac/api/ClientCodeWrapper$DiagnosticSourceUnwrapper;->this$0:Lcom/sun/tools/javac/api/ClientCodeWrapper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 574
    iput-object p2, p0, Lcom/sun/tools/javac/api/ClientCodeWrapper$DiagnosticSourceUnwrapper;->d:Lcom/sun/tools/javac/util/JCDiagnostic;

    .line 575
    return-void
.end method


# virtual methods
.method public getCode()Ljava/lang/String;
    .registers 2

    .line 606
    iget-object v0, p0, Lcom/sun/tools/javac/api/ClientCodeWrapper$DiagnosticSourceUnwrapper;->d:Lcom/sun/tools/javac/util/JCDiagnostic;

    invoke-virtual {v0}, Lcom/sun/tools/javac/util/JCDiagnostic;->getCode()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getColumnNumber()J
    .registers 3

    .line 602
    iget-object v0, p0, Lcom/sun/tools/javac/api/ClientCodeWrapper$DiagnosticSourceUnwrapper;->d:Lcom/sun/tools/javac/util/JCDiagnostic;

    invoke-virtual {v0}, Lcom/sun/tools/javac/util/JCDiagnostic;->getColumnNumber()J

    move-result-wide v0

    return-wide v0
.end method

.method public getEndPosition()J
    .registers 3

    .line 594
    iget-object v0, p0, Lcom/sun/tools/javac/api/ClientCodeWrapper$DiagnosticSourceUnwrapper;->d:Lcom/sun/tools/javac/util/JCDiagnostic;

    invoke-virtual {v0}, Lcom/sun/tools/javac/util/JCDiagnostic;->getEndPosition()J

    move-result-wide v0

    return-wide v0
.end method

.method public getKind()Ljavax/tools/Diagnostic$Kind;
    .registers 2

    .line 578
    iget-object v0, p0, Lcom/sun/tools/javac/api/ClientCodeWrapper$DiagnosticSourceUnwrapper;->d:Lcom/sun/tools/javac/util/JCDiagnostic;

    invoke-virtual {v0}, Lcom/sun/tools/javac/util/JCDiagnostic;->getKind()Ljavax/tools/Diagnostic$Kind;

    move-result-object v0

    return-object v0
.end method

.method public getLineNumber()J
    .registers 3

    .line 598
    iget-object v0, p0, Lcom/sun/tools/javac/api/ClientCodeWrapper$DiagnosticSourceUnwrapper;->d:Lcom/sun/tools/javac/util/JCDiagnostic;

    invoke-virtual {v0}, Lcom/sun/tools/javac/util/JCDiagnostic;->getLineNumber()J

    move-result-wide v0

    return-wide v0
.end method

.method public getMessage(Ljava/util/Locale;)Ljava/lang/String;
    .registers 3

    .line 610
    iget-object v0, p0, Lcom/sun/tools/javac/api/ClientCodeWrapper$DiagnosticSourceUnwrapper;->d:Lcom/sun/tools/javac/util/JCDiagnostic;

    invoke-virtual {v0, p1}, Lcom/sun/tools/javac/util/JCDiagnostic;->getMessage(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPosition()J
    .registers 3

    .line 586
    iget-object v0, p0, Lcom/sun/tools/javac/api/ClientCodeWrapper$DiagnosticSourceUnwrapper;->d:Lcom/sun/tools/javac/util/JCDiagnostic;

    invoke-virtual {v0}, Lcom/sun/tools/javac/util/JCDiagnostic;->getPosition()J

    move-result-wide v0

    return-wide v0
.end method

.method public bridge synthetic getSource()Ljava/lang/Object;
    .registers 2

    .line 570
    invoke-virtual {p0}, Lcom/sun/tools/javac/api/ClientCodeWrapper$DiagnosticSourceUnwrapper;->getSource()Ljavax/tools/JavaFileObject;

    move-result-object v0

    return-object v0
.end method

.method public getSource()Ljavax/tools/JavaFileObject;
    .registers 3

    .line 582
    iget-object v0, p0, Lcom/sun/tools/javac/api/ClientCodeWrapper$DiagnosticSourceUnwrapper;->this$0:Lcom/sun/tools/javac/api/ClientCodeWrapper;

    iget-object v1, p0, Lcom/sun/tools/javac/api/ClientCodeWrapper$DiagnosticSourceUnwrapper;->d:Lcom/sun/tools/javac/util/JCDiagnostic;

    invoke-virtual {v1}, Lcom/sun/tools/javac/util/JCDiagnostic;->getSource()Ljavax/tools/JavaFileObject;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sun/tools/javac/api/ClientCodeWrapper;->unwrap(Ljavax/tools/JavaFileObject;)Ljavax/tools/JavaFileObject;

    move-result-object v0

    return-object v0
.end method

.method public getStartPosition()J
    .registers 3

    .line 590
    iget-object v0, p0, Lcom/sun/tools/javac/api/ClientCodeWrapper$DiagnosticSourceUnwrapper;->d:Lcom/sun/tools/javac/util/JCDiagnostic;

    invoke-virtual {v0}, Lcom/sun/tools/javac/util/JCDiagnostic;->getStartPosition()J

    move-result-wide v0

    return-wide v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .line 614
    iget-object v0, p0, Lcom/sun/tools/javac/api/ClientCodeWrapper$DiagnosticSourceUnwrapper;->d:Lcom/sun/tools/javac/util/JCDiagnostic;

    invoke-virtual {v0}, Lcom/sun/tools/javac/util/JCDiagnostic;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
