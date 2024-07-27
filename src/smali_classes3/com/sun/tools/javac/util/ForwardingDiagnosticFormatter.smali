.class public Lcom/sun/tools/javac/util/ForwardingDiagnosticFormatter;
.super Ljava/lang/Object;
.source "ForwardingDiagnosticFormatter.java"

# interfaces
.implements Lcom/sun/tools/javac/api/DiagnosticFormatter;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<D::",
        "Ljavax/tools/Diagnostic",
        "<*>;F::",
        "Lcom/sun/tools/javac/api/DiagnosticFormatter",
        "<TD;>;>",
        "Ljava/lang/Object;",
        "Lcom/sun/tools/javac/api/DiagnosticFormatter",
        "<TD;>;"
    }
.end annotation


# instance fields
.field protected configuration:Lcom/sun/tools/javac/util/ForwardingConfiguration;

.field protected formatter:Lcom/sun/tools/javac/api/DiagnosticFormatter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TF;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/sun/tools/javac/api/DiagnosticFormatter;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TF;)V"
        }
    .end annotation

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iput-object p1, p0, Lcom/sun/tools/javac/util/ForwardingDiagnosticFormatter;->formatter:Lcom/sun/tools/javac/api/DiagnosticFormatter;

    .line 57
    new-instance v0, Lcom/sun/tools/javac/util/ForwardingConfiguration;

    invoke-interface {p1}, Lcom/sun/tools/javac/api/DiagnosticFormatter;->getConfiguration()Lcom/sun/tools/javac/api/DiagnosticFormatter$Configuration;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/sun/tools/javac/util/ForwardingConfiguration;-><init>(Lcom/sun/tools/javac/api/DiagnosticFormatter$Configuration;)V

    iput-object v0, p0, Lcom/sun/tools/javac/util/ForwardingDiagnosticFormatter;->configuration:Lcom/sun/tools/javac/util/ForwardingConfiguration;

    .line 58
    return-void
.end method


# virtual methods
.method public displaySource(Ljavax/tools/Diagnostic;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TD;)Z"
        }
    .end annotation

    .line 73
    iget-object v0, p0, Lcom/sun/tools/javac/util/ForwardingDiagnosticFormatter;->formatter:Lcom/sun/tools/javac/api/DiagnosticFormatter;

    invoke-interface {v0, p1}, Lcom/sun/tools/javac/api/DiagnosticFormatter;->displaySource(Ljavax/tools/Diagnostic;)Z

    move-result v0

    return v0
.end method

.method public format(Ljavax/tools/Diagnostic;Ljava/util/Locale;)Ljava/lang/String;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TD;",
            "Ljava/util/Locale;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 77
    iget-object v0, p0, Lcom/sun/tools/javac/util/ForwardingDiagnosticFormatter;->formatter:Lcom/sun/tools/javac/api/DiagnosticFormatter;

    invoke-interface {v0, p1, p2}, Lcom/sun/tools/javac/api/DiagnosticFormatter;->format(Ljavax/tools/Diagnostic;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public formatKind(Ljavax/tools/Diagnostic;Ljava/util/Locale;)Ljava/lang/String;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TD;",
            "Ljava/util/Locale;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 81
    iget-object v0, p0, Lcom/sun/tools/javac/util/ForwardingDiagnosticFormatter;->formatter:Lcom/sun/tools/javac/api/DiagnosticFormatter;

    invoke-interface {v0, p1, p2}, Lcom/sun/tools/javac/api/DiagnosticFormatter;->formatKind(Ljavax/tools/Diagnostic;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public formatMessage(Ljavax/tools/Diagnostic;Ljava/util/Locale;)Ljava/lang/String;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TD;",
            "Ljava/util/Locale;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 85
    iget-object v0, p0, Lcom/sun/tools/javac/util/ForwardingDiagnosticFormatter;->formatter:Lcom/sun/tools/javac/api/DiagnosticFormatter;

    invoke-interface {v0, p1, p2}, Lcom/sun/tools/javac/api/DiagnosticFormatter;->formatMessage(Ljavax/tools/Diagnostic;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public formatPosition(Ljavax/tools/Diagnostic;Lcom/sun/tools/javac/api/DiagnosticFormatter$PositionKind;Ljava/util/Locale;)Ljava/lang/String;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TD;",
            "Lcom/sun/tools/javac/api/DiagnosticFormatter$PositionKind;",
            "Ljava/util/Locale;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 89
    iget-object v0, p0, Lcom/sun/tools/javac/util/ForwardingDiagnosticFormatter;->formatter:Lcom/sun/tools/javac/api/DiagnosticFormatter;

    invoke-interface {v0, p1, p2, p3}, Lcom/sun/tools/javac/api/DiagnosticFormatter;->formatPosition(Ljavax/tools/Diagnostic;Lcom/sun/tools/javac/api/DiagnosticFormatter$PositionKind;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public formatSource(Ljavax/tools/Diagnostic;ZLjava/util/Locale;)Ljava/lang/String;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TD;Z",
            "Ljava/util/Locale;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 93
    iget-object v0, p0, Lcom/sun/tools/javac/util/ForwardingDiagnosticFormatter;->formatter:Lcom/sun/tools/javac/api/DiagnosticFormatter;

    invoke-interface {v0, p1, p2, p3}, Lcom/sun/tools/javac/api/DiagnosticFormatter;->formatSource(Ljavax/tools/Diagnostic;ZLjava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getConfiguration()Lcom/sun/tools/javac/api/DiagnosticFormatter$Configuration;
    .registers 2

    .line 69
    iget-object v0, p0, Lcom/sun/tools/javac/util/ForwardingDiagnosticFormatter;->configuration:Lcom/sun/tools/javac/util/ForwardingConfiguration;

    return-object v0
.end method

.method public getDelegatedFormatter()Lcom/sun/tools/javac/api/DiagnosticFormatter;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TF;"
        }
    .end annotation

    .line 65
    iget-object v0, p0, Lcom/sun/tools/javac/util/ForwardingDiagnosticFormatter;->formatter:Lcom/sun/tools/javac/api/DiagnosticFormatter;

    return-object v0
.end method
