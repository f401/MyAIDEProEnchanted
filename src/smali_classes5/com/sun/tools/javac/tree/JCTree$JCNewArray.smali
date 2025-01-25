.class public Lcom/sun/tools/javac/tree/JCTree$JCNewArray;
.super Lcom/sun/tools/javac/tree/JCTree$JCExpression;
.source "JCTree.java"

# interfaces
.implements Lcom/sun/source/tree/NewArrayTree;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/tools/javac/tree/JCTree;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "JCNewArray"
.end annotation


# instance fields
.field public dims:Lcom/sun/tools/javac/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sun/tools/javac/util/List",
            "<",
            "Lcom/sun/tools/javac/tree/JCTree$JCExpression;",
            ">;"
        }
    .end annotation
.end field

.field public elems:Lcom/sun/tools/javac/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sun/tools/javac/util/List",
            "<",
            "Lcom/sun/tools/javac/tree/JCTree$JCExpression;",
            ">;"
        }
    .end annotation
.end field

.field public elemtype:Lcom/sun/tools/javac/tree/JCTree$JCExpression;


# direct methods
.method protected constructor <init>(Lcom/sun/tools/javac/tree/JCTree$JCExpression;Lcom/sun/tools/javac/util/List;Lcom/sun/tools/javac/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sun/tools/javac/tree/JCTree$JCExpression;",
            "Lcom/sun/tools/javac/util/List",
            "<",
            "Lcom/sun/tools/javac/tree/JCTree$JCExpression;",
            ">;",
            "Lcom/sun/tools/javac/util/List",
            "<",
            "Lcom/sun/tools/javac/tree/JCTree$JCExpression;",
            ">;)V"
        }
    .end annotation

    .line 2045
    invoke-direct {p0}, Lcom/sun/tools/javac/tree/JCTree$JCExpression;-><init>()V

    .line 2046
    iput-object p1, p0, Lcom/sun/tools/javac/tree/JCTree$JCNewArray;->elemtype:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    .line 2047
    iput-object p2, p0, Lcom/sun/tools/javac/tree/JCTree$JCNewArray;->dims:Lcom/sun/tools/javac/util/List;

    .line 2048
    iput-object p3, p0, Lcom/sun/tools/javac/tree/JCTree$JCNewArray;->elems:Lcom/sun/tools/javac/util/List;

    .line 2049
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

    .line 2074
    invoke-interface {p1, p0, p2}, Lcom/sun/source/tree/TreeVisitor;->visitNewArray(Lcom/sun/source/tree/NewArrayTree;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public accept(Lcom/sun/tools/javac/tree/JCTree$Visitor;)V
    .registers 2

    .line 2053
    invoke-virtual {p1, p0}, Lcom/sun/tools/javac/tree/JCTree$Visitor;->visitNewArray(Lcom/sun/tools/javac/tree/JCTree$JCNewArray;)V

    .line 2054
    return-void
.end method

.method public getDimensions()Lcom/sun/tools/javac/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/sun/tools/javac/util/List",
            "<",
            "Lcom/sun/tools/javac/tree/JCTree$JCExpression;",
            ">;"
        }
    .end annotation

    .line 2065
    iget-object v0, p0, Lcom/sun/tools/javac/tree/JCTree$JCNewArray;->dims:Lcom/sun/tools/javac/util/List;

    return-object v0
.end method

.method public bridge synthetic getDimensions()Ljava/util/List;
    .registers 2

    .line 2038
    invoke-virtual {p0}, Lcom/sun/tools/javac/tree/JCTree$JCNewArray;->getDimensions()Lcom/sun/tools/javac/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getInitializers()Lcom/sun/tools/javac/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/sun/tools/javac/util/List",
            "<",
            "Lcom/sun/tools/javac/tree/JCTree$JCExpression;",
            ">;"
        }
    .end annotation

    .line 2069
    iget-object v0, p0, Lcom/sun/tools/javac/tree/JCTree$JCNewArray;->elems:Lcom/sun/tools/javac/util/List;

    return-object v0
.end method

.method public bridge synthetic getInitializers()Ljava/util/List;
    .registers 2

    .line 2038
    invoke-virtual {p0}, Lcom/sun/tools/javac/tree/JCTree$JCNewArray;->getInitializers()Lcom/sun/tools/javac/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getKind()Lcom/sun/source/tree/Tree$Kind;
    .registers 2

    .line 2057
    sget-object v0, Lcom/sun/source/tree/Tree$Kind;->NEW_ARRAY:Lcom/sun/source/tree/Tree$Kind;

    return-object v0
.end method

.method public getTag()I
    .registers 2

    .line 2079
    const/16 v0, 0x1c

    return v0
.end method

.method public bridge synthetic getType()Lcom/sun/source/tree/Tree;
    .registers 2

    .line 2038
    invoke-virtual {p0}, Lcom/sun/tools/javac/tree/JCTree$JCNewArray;->getType()Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    move-result-object v0

    return-object v0
.end method

.method public getType()Lcom/sun/tools/javac/tree/JCTree$JCExpression;
    .registers 2

    .line 2061
    iget-object v0, p0, Lcom/sun/tools/javac/tree/JCTree$JCNewArray;->elemtype:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    return-object v0
.end method
