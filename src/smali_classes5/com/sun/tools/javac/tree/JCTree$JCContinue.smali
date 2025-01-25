.class public Lcom/sun/tools/javac/tree/JCTree$JCContinue;
.super Lcom/sun/tools/javac/tree/JCTree$JCStatement;
.source "JCTree.java"

# interfaces
.implements Lcom/sun/source/tree/ContinueTree;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/tools/javac/tree/JCTree;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "JCContinue"
.end annotation


# instance fields
.field public label:Lcom/sun/tools/javac/util/Name;

.field public target:Lcom/sun/tools/javac/tree/JCTree;


# direct methods
.method protected constructor <init>(Lcom/sun/tools/javac/util/Name;Lcom/sun/tools/javac/tree/JCTree;)V
    .registers 3

    .line 1776
    invoke-direct {p0}, Lcom/sun/tools/javac/tree/JCTree$JCStatement;-><init>()V

    .line 1777
    iput-object p1, p0, Lcom/sun/tools/javac/tree/JCTree$JCContinue;->label:Lcom/sun/tools/javac/util/Name;

    .line 1778
    iput-object p2, p0, Lcom/sun/tools/javac/tree/JCTree$JCContinue;->target:Lcom/sun/tools/javac/tree/JCTree;

    .line 1779
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

    .line 1796
    invoke-interface {p1, p0, p2}, Lcom/sun/source/tree/TreeVisitor;->visitContinue(Lcom/sun/source/tree/ContinueTree;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public accept(Lcom/sun/tools/javac/tree/JCTree$Visitor;)V
    .registers 2

    .line 1783
    invoke-virtual {p1, p0}, Lcom/sun/tools/javac/tree/JCTree$Visitor;->visitContinue(Lcom/sun/tools/javac/tree/JCTree$JCContinue;)V

    .line 1784
    return-void
.end method

.method public getKind()Lcom/sun/source/tree/Tree$Kind;
    .registers 2

    .line 1787
    sget-object v0, Lcom/sun/source/tree/Tree$Kind;->CONTINUE:Lcom/sun/source/tree/Tree$Kind;

    return-object v0
.end method

.method public getLabel()Lcom/sun/tools/javac/util/Name;
    .registers 2

    .line 1791
    iget-object v0, p0, Lcom/sun/tools/javac/tree/JCTree$JCContinue;->label:Lcom/sun/tools/javac/util/Name;

    return-object v0
.end method

.method public bridge synthetic getLabel()Ljavax/lang/model/element/Name;
    .registers 2

    .line 1772
    invoke-virtual {p0}, Lcom/sun/tools/javac/tree/JCTree$JCContinue;->getLabel()Lcom/sun/tools/javac/util/Name;

    move-result-object v0

    return-object v0
.end method

.method public getTag()I
    .registers 2

    .line 1801
    const/16 v0, 0x16

    return v0
.end method
