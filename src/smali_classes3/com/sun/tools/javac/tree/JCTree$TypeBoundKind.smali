.class public Lcom/sun/tools/javac/tree/JCTree$TypeBoundKind;
.super Lcom/sun/tools/javac/tree/JCTree;
.source "JCTree.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/tools/javac/tree/JCTree;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TypeBoundKind"
.end annotation


# instance fields
.field public kind:Lcom/sun/tools/javac/code/BoundKind;


# direct methods
.method protected constructor <init>(Lcom/sun/tools/javac/code/BoundKind;)V
    .registers 2

    .line 2836
    invoke-direct {p0}, Lcom/sun/tools/javac/tree/JCTree;-><init>()V

    .line 2837
    iput-object p1, p0, Lcom/sun/tools/javac/tree/JCTree$TypeBoundKind;->kind:Lcom/sun/tools/javac/code/BoundKind;

    .line 2838
    return-void
.end method


# virtual methods
.method public accept(Lcom/sun/source/tree/TreeVisitor;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5
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

    .line 2851
    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "TypeBoundKind is not part of a public API"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method public accept(Lcom/sun/tools/javac/tree/JCTree$Visitor;)V
    .registers 2

    .line 2842
    invoke-virtual {p1, p0}, Lcom/sun/tools/javac/tree/JCTree$Visitor;->visitTypeBoundKind(Lcom/sun/tools/javac/tree/JCTree$TypeBoundKind;)V

    .line 2843
    return-void
.end method

.method public getKind()Lcom/sun/source/tree/Tree$Kind;
    .registers 3

    .line 2846
    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "TypeBoundKind is not part of a public API"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method public getTag()I
    .registers 2

    .line 2856
    const/16 v0, 0x2b

    return v0
.end method
