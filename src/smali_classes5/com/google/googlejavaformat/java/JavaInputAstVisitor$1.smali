.class Lcom/google/googlejavaformat/java/JavaInputAstVisitor$1;
.super Ljava/lang/Object;
.source "JavaInputAstVisitor.java"

# interfaces
.implements Lcom/google/common/base/Predicate;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/googlejavaformat/java/JavaInputAstVisitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/common/base/Predicate",
        "<",
        "Lcom/sun/source/tree/ExpressionTree;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 150
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public apply(Lcom/sun/source/tree/ExpressionTree;)Z
    .registers 5

    const/4 v1, 0x0

    .line 153
    instance-of v0, p1, Lcom/sun/source/tree/AssignmentTree;

    if-nez v0, :cond_6

    .line 157
    :goto_5
    return v1

    .line 156
    :cond_6
    check-cast p1, Lcom/sun/source/tree/AssignmentTree;

    invoke-interface {p1}, Lcom/sun/source/tree/AssignmentTree;->getExpression()Lcom/sun/source/tree/ExpressionTree;

    move-result-object v0

    .line 157
    instance-of v2, v0, Lcom/sun/source/tree/NewArrayTree;

    if-eqz v2, :cond_1b

    check-cast v0, Lcom/sun/source/tree/NewArrayTree;

    .line 158
    invoke-interface {v0}, Lcom/sun/source/tree/NewArrayTree;->getType()Lcom/sun/source/tree/Tree;

    move-result-object v0

    if-nez v0, :cond_1b

    const/4 v0, 0x1

    :goto_19
    move v1, v0

    .line 157
    goto :goto_5

    :cond_1b
    move v0, v1

    goto :goto_19
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Z
    .registers 3

    .line 150
    check-cast p1, Lcom/sun/source/tree/ExpressionTree;

    invoke-virtual {p0, p1}, Lcom/google/googlejavaformat/java/JavaInputAstVisitor$1;->apply(Lcom/sun/source/tree/ExpressionTree;)Z

    move-result v0

    return v0
.end method
