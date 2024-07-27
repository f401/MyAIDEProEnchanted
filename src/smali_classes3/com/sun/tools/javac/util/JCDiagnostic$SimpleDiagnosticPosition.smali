.class public Lcom/sun/tools/javac/util/JCDiagnostic$SimpleDiagnosticPosition;
.super Ljava/lang/Object;
.source "JCDiagnostic.java"

# interfaces
.implements Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/tools/javac/util/JCDiagnostic;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SimpleDiagnosticPosition"
.end annotation


# instance fields
.field private final pos:I


# direct methods
.method public constructor <init>(I)V
    .registers 2

    .line 315
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 316
    iput p1, p0, Lcom/sun/tools/javac/util/JCDiagnostic$SimpleDiagnosticPosition;->pos:I

    .line 317
    return-void
.end method


# virtual methods
.method public getEndPosition(Ljava/util/Map;)I
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Lcom/sun/tools/javac/tree/JCTree;",
            "Ljava/lang/Integer;",
            ">;)I"
        }
    .end annotation

    .line 332
    iget v0, p0, Lcom/sun/tools/javac/util/JCDiagnostic$SimpleDiagnosticPosition;->pos:I

    return v0
.end method

.method public getPreferredPosition()I
    .registers 2

    .line 328
    iget v0, p0, Lcom/sun/tools/javac/util/JCDiagnostic$SimpleDiagnosticPosition;->pos:I

    return v0
.end method

.method public getStartPosition()I
    .registers 2

    .line 324
    iget v0, p0, Lcom/sun/tools/javac/util/JCDiagnostic$SimpleDiagnosticPosition;->pos:I

    return v0
.end method

.method public getTree()Lcom/sun/tools/javac/tree/JCTree;
    .registers 2

    .line 320
    const/4 v0, 0x0

    return-object v0
.end method
