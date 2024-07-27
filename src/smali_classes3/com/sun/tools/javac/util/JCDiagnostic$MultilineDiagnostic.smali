.class public Lcom/sun/tools/javac/util/JCDiagnostic$MultilineDiagnostic;
.super Lcom/sun/tools/javac/util/JCDiagnostic;
.source "JCDiagnostic.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/tools/javac/util/JCDiagnostic;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MultilineDiagnostic"
.end annotation


# instance fields
.field private final subdiagnostics:Lcom/sun/tools/javac/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sun/tools/javac/util/List",
            "<",
            "Lcom/sun/tools/javac/util/JCDiagnostic;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/sun/tools/javac/util/JCDiagnostic;Lcom/sun/tools/javac/util/List;)V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sun/tools/javac/util/JCDiagnostic;",
            "Lcom/sun/tools/javac/util/List",
            "<",
            "Lcom/sun/tools/javac/util/JCDiagnostic;",
            ">;)V"
        }
    .end annotation

    .line 580
    invoke-static {p1}, Lcom/sun/tools/javac/util/JCDiagnostic;->access$000(Lcom/sun/tools/javac/util/JCDiagnostic;)Lcom/sun/tools/javac/api/DiagnosticFormatter;

    move-result-object v1

    .line 581
    invoke-virtual {p1}, Lcom/sun/tools/javac/util/JCDiagnostic;->getType()Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticType;

    move-result-object v2

    .line 582
    invoke-virtual {p1}, Lcom/sun/tools/javac/util/JCDiagnostic;->getLintCategory()Lcom/sun/tools/javac/code/Lint$LintCategory;

    move-result-object v3

    .line 583
    invoke-static {p1}, Lcom/sun/tools/javac/util/JCDiagnostic;->access$100(Lcom/sun/tools/javac/util/JCDiagnostic;)Ljava/util/Set;

    move-result-object v4

    .line 584
    invoke-virtual {p1}, Lcom/sun/tools/javac/util/JCDiagnostic;->getDiagnosticSource()Lcom/sun/tools/javac/util/DiagnosticSource;

    move-result-object v5

    .line 585
    invoke-static {p1}, Lcom/sun/tools/javac/util/JCDiagnostic;->access$200(Lcom/sun/tools/javac/util/JCDiagnostic;)Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    move-result-object v6

    .line 586
    invoke-virtual {p1}, Lcom/sun/tools/javac/util/JCDiagnostic;->getCode()Ljava/lang/String;

    move-result-object v7

    .line 587
    invoke-virtual {p1}, Lcom/sun/tools/javac/util/JCDiagnostic;->getArgs()[Ljava/lang/Object;

    move-result-object v8

    move-object v0, p0

    .line 580
    invoke-direct/range {v0 .. v8}, Lcom/sun/tools/javac/util/JCDiagnostic;-><init>(Lcom/sun/tools/javac/api/DiagnosticFormatter;Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticType;Lcom/sun/tools/javac/code/Lint$LintCategory;Ljava/util/Set;Lcom/sun/tools/javac/util/DiagnosticSource;Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 588
    iput-object p2, p0, Lcom/sun/tools/javac/util/JCDiagnostic$MultilineDiagnostic;->subdiagnostics:Lcom/sun/tools/javac/util/List;

    .line 589
    return-void
.end method


# virtual methods
.method public bridge synthetic getSource()Ljava/lang/Object;
    .registers 2

    .line 575
    invoke-super {p0}, Lcom/sun/tools/javac/util/JCDiagnostic;->getSource()Ljavax/tools/JavaFileObject;

    move-result-object v0

    return-object v0
.end method

.method public getSubdiagnostics()Lcom/sun/tools/javac/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/sun/tools/javac/util/List",
            "<",
            "Lcom/sun/tools/javac/util/JCDiagnostic;",
            ">;"
        }
    .end annotation

    .line 593
    iget-object v0, p0, Lcom/sun/tools/javac/util/JCDiagnostic$MultilineDiagnostic;->subdiagnostics:Lcom/sun/tools/javac/util/List;

    return-object v0
.end method

.method public isMultiline()Z
    .registers 2

    .line 598
    const/4 v0, 0x1

    return v0
.end method
