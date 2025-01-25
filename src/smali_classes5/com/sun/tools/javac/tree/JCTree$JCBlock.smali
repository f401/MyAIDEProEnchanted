.class public Lcom/sun/tools/javac/tree/JCTree$JCBlock;
.super Lcom/sun/tools/javac/tree/JCTree$JCStatement;
.source "JCTree.java"

# interfaces
.implements Lcom/sun/source/tree/BlockTree;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/tools/javac/tree/JCTree;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "JCBlock"
.end annotation


# instance fields
.field public endpos:I

.field public flags:J

.field public stats:Lcom/sun/tools/javac/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sun/tools/javac/util/List",
            "<",
            "Lcom/sun/tools/javac/tree/JCTree$JCStatement;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(JLcom/sun/tools/javac/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lcom/sun/tools/javac/util/List",
            "<",
            "Lcom/sun/tools/javac/tree/JCTree$JCStatement;",
            ">;)V"
        }
    .end annotation

    .line 1131
    invoke-direct {p0}, Lcom/sun/tools/javac/tree/JCTree$JCStatement;-><init>()V

    .line 1129
    const/4 v0, -0x1

    iput v0, p0, Lcom/sun/tools/javac/tree/JCTree$JCBlock;->endpos:I

    .line 1132
    iput-object p3, p0, Lcom/sun/tools/javac/tree/JCTree$JCBlock;->stats:Lcom/sun/tools/javac/util/List;

    .line 1133
    iput-wide p1, p0, Lcom/sun/tools/javac/tree/JCTree$JCBlock;->flags:J

    .line 1134
    return-void
.end method


# virtual methods
.method public accept(Lcom/sun/source/tree/TreeVisitor;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            "D:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/sun/source/tree/TreeVisitor",
            "<TR;TD;>;TD;)TR;"
        }
    .end annotation

    .line 1155
    invoke-interface {p1, p0, p2}, Lcom/sun/source/tree/TreeVisitor;->visitBlock(Lcom/sun/source/tree/BlockTree;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public accept(Lcom/sun/tools/javac/tree/JCTree$Visitor;)V
    .registers 2

    .line 1138
    invoke-virtual {p1, p0}, Lcom/sun/tools/javac/tree/JCTree$Visitor;->visitBlock(Lcom/sun/tools/javac/tree/JCTree$JCBlock;)V

    .line 1139
    return-void
.end method

.method public getKind()Lcom/sun/source/tree/Tree$Kind;
    .registers 2

    .line 1142
    sget-object v0, Lcom/sun/source/tree/Tree$Kind;->BLOCK:Lcom/sun/source/tree/Tree$Kind;

    return-object v0
.end method

.method public getStatements()Lcom/sun/tools/javac/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/sun/tools/javac/util/List",
            "<",
            "Lcom/sun/tools/javac/tree/JCTree$JCStatement;",
            ">;"
        }
    .end annotation

    .line 1146
    iget-object v0, p0, Lcom/sun/tools/javac/tree/JCTree$JCBlock;->stats:Lcom/sun/tools/javac/util/List;

    return-object v0
.end method

.method public bridge synthetic getStatements()Ljava/util/List;
    .registers 2

    .line 1123
    invoke-virtual {p0}, Lcom/sun/tools/javac/tree/JCTree$JCBlock;->getStatements()Lcom/sun/tools/javac/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getTag()I
    .registers 2

    .line 1160
    const/4 v0, 0x7

    return v0
.end method

.method public isStatic()Z
    .registers 5

    .line 1150
    iget-wide v0, p0, Lcom/sun/tools/javac/tree/JCTree$JCBlock;->flags:J

    const-wide/16 v2, 0x8

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_d

    const/4 v0, 0x1

    :goto_c
    return v0

    :cond_d
    const/4 v0, 0x0

    goto :goto_c
.end method
