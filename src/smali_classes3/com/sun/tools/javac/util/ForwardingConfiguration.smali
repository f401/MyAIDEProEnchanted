.class public Lcom/sun/tools/javac/util/ForwardingConfiguration;
.super Ljava/lang/Object;
.source "ForwardingConfiguration.java"

# interfaces
.implements Lcom/sun/tools/javac/api/DiagnosticFormatter$Configuration;


# instance fields
.field protected configuration:Lcom/sun/tools/javac/api/DiagnosticFormatter$Configuration;


# direct methods
.method public constructor <init>(Lcom/sun/tools/javac/api/DiagnosticFormatter$Configuration;)V
    .registers 2

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/sun/tools/javac/util/ForwardingConfiguration;->configuration:Lcom/sun/tools/javac/api/DiagnosticFormatter$Configuration;

    .line 20
    return-void
.end method


# virtual methods
.method public getDelegatedConfiguration()Lcom/sun/tools/javac/api/DiagnosticFormatter$Configuration;
    .registers 2

    .line 28
    iget-object v0, p0, Lcom/sun/tools/javac/util/ForwardingConfiguration;->configuration:Lcom/sun/tools/javac/api/DiagnosticFormatter$Configuration;

    return-object v0
.end method

.method public getMultilineLimit(Lcom/sun/tools/javac/api/DiagnosticFormatter$Configuration$MultilineLimit;)I
    .registers 3

    .line 32
    iget-object v0, p0, Lcom/sun/tools/javac/util/ForwardingConfiguration;->configuration:Lcom/sun/tools/javac/api/DiagnosticFormatter$Configuration;

    invoke-interface {v0, p1}, Lcom/sun/tools/javac/api/DiagnosticFormatter$Configuration;->getMultilineLimit(Lcom/sun/tools/javac/api/DiagnosticFormatter$Configuration$MultilineLimit;)I

    move-result v0

    return v0
.end method

.method public getVisible()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Lcom/sun/tools/javac/api/DiagnosticFormatter$Configuration$DiagnosticPart;",
            ">;"
        }
    .end annotation

    .line 36
    iget-object v0, p0, Lcom/sun/tools/javac/util/ForwardingConfiguration;->configuration:Lcom/sun/tools/javac/api/DiagnosticFormatter$Configuration;

    invoke-interface {v0}, Lcom/sun/tools/javac/api/DiagnosticFormatter$Configuration;->getVisible()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public setMultilineLimit(Lcom/sun/tools/javac/api/DiagnosticFormatter$Configuration$MultilineLimit;I)V
    .registers 4

    .line 40
    iget-object v0, p0, Lcom/sun/tools/javac/util/ForwardingConfiguration;->configuration:Lcom/sun/tools/javac/api/DiagnosticFormatter$Configuration;

    invoke-interface {v0, p1, p2}, Lcom/sun/tools/javac/api/DiagnosticFormatter$Configuration;->setMultilineLimit(Lcom/sun/tools/javac/api/DiagnosticFormatter$Configuration$MultilineLimit;I)V

    .line 41
    return-void
.end method

.method public setVisible(Ljava/util/Set;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Lcom/sun/tools/javac/api/DiagnosticFormatter$Configuration$DiagnosticPart;",
            ">;)V"
        }
    .end annotation

    .line 44
    iget-object v0, p0, Lcom/sun/tools/javac/util/ForwardingConfiguration;->configuration:Lcom/sun/tools/javac/api/DiagnosticFormatter$Configuration;

    invoke-interface {v0, p1}, Lcom/sun/tools/javac/api/DiagnosticFormatter$Configuration;->setVisible(Ljava/util/Set;)V

    .line 45
    return-void
.end method
