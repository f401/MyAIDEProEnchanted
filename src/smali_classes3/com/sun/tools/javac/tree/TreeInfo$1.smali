.class Lcom/sun/tools/javac/tree/TreeInfo$1;
.super Ljava/lang/Object;
.source "TreeInfo.java"

# interfaces
.implements Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sun/tools/javac/tree/TreeInfo;->diagEndPos(Lcom/sun/tools/javac/tree/JCTree;)Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final val$endPos:I

.field final val$tree:Lcom/sun/tools/javac/tree/JCTree;


# direct methods
.method constructor <init>(Lcom/sun/tools/javac/tree/JCTree;I)V
    .registers 3

    .line 433
    iput-object p1, p0, Lcom/sun/tools/javac/tree/TreeInfo$1;->val$tree:Lcom/sun/tools/javac/tree/JCTree;

    iput p2, p0, Lcom/sun/tools/javac/tree/TreeInfo$1;->val$endPos:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

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

    .line 438
    iget-object v0, p0, Lcom/sun/tools/javac/tree/TreeInfo$1;->val$tree:Lcom/sun/tools/javac/tree/JCTree;

    invoke-static {v0, p1}, Lcom/sun/tools/javac/tree/TreeInfo;->getEndPos(Lcom/sun/tools/javac/tree/JCTree;Ljava/util/Map;)I

    move-result v0

    return v0
.end method

.method public getPreferredPosition()I
    .registers 2

    .line 436
    iget v0, p0, Lcom/sun/tools/javac/tree/TreeInfo$1;->val$endPos:I

    return v0
.end method

.method public getStartPosition()I
    .registers 2

    .line 435
    iget-object v0, p0, Lcom/sun/tools/javac/tree/TreeInfo$1;->val$tree:Lcom/sun/tools/javac/tree/JCTree;

    invoke-static {v0}, Lcom/sun/tools/javac/tree/TreeInfo;->getStartPos(Lcom/sun/tools/javac/tree/JCTree;)I

    move-result v0

    return v0
.end method

.method public getTree()Lcom/sun/tools/javac/tree/JCTree;
    .registers 2

    .line 434
    iget-object v0, p0, Lcom/sun/tools/javac/tree/TreeInfo$1;->val$tree:Lcom/sun/tools/javac/tree/JCTree;

    return-object v0
.end method
