.class public Lcom/sun/tools/javac/tree/JCTree$JCImport;
.super Lcom/sun/tools/javac/tree/JCTree;
.source "JCTree.java"

# interfaces
.implements Lcom/sun/source/tree/ImportTree;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/tools/javac/tree/JCTree;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "JCImport"
.end annotation


# instance fields
.field public qualid:Lcom/sun/tools/javac/tree/JCTree;

.field public staticImport:Z


# direct methods
.method protected constructor <init>(Lcom/sun/tools/javac/tree/JCTree;Z)V
    .registers 3

    .line 783
    invoke-direct {p0}, Lcom/sun/tools/javac/tree/JCTree;-><init>()V

    .line 784
    iput-object p1, p0, Lcom/sun/tools/javac/tree/JCTree$JCImport;->qualid:Lcom/sun/tools/javac/tree/JCTree;

    .line 785
    iput-boolean p2, p0, Lcom/sun/tools/javac/tree/JCTree$JCImport;->staticImport:Z

    .line 786
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

    .line 807
    invoke-interface {p1, p0, p2}, Lcom/sun/source/tree/TreeVisitor;->visitImport(Lcom/sun/source/tree/ImportTree;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public accept(Lcom/sun/tools/javac/tree/JCTree$Visitor;)V
    .registers 2

    .line 790
    invoke-virtual {p1, p0}, Lcom/sun/tools/javac/tree/JCTree$Visitor;->visitImport(Lcom/sun/tools/javac/tree/JCTree$JCImport;)V

    .line 791
    return-void
.end method

.method public getKind()Lcom/sun/source/tree/Tree$Kind;
    .registers 2

    .line 802
    sget-object v0, Lcom/sun/source/tree/Tree$Kind;->IMPORT:Lcom/sun/source/tree/Tree$Kind;

    return-object v0
.end method

.method public bridge synthetic getQualifiedIdentifier()Lcom/sun/source/tree/Tree;
    .registers 2

    .line 779
    invoke-virtual {p0}, Lcom/sun/tools/javac/tree/JCTree$JCImport;->getQualifiedIdentifier()Lcom/sun/tools/javac/tree/JCTree;

    move-result-object v0

    return-object v0
.end method

.method public getQualifiedIdentifier()Lcom/sun/tools/javac/tree/JCTree;
    .registers 2

    .line 798
    iget-object v0, p0, Lcom/sun/tools/javac/tree/JCTree$JCImport;->qualid:Lcom/sun/tools/javac/tree/JCTree;

    return-object v0
.end method

.method public getTag()I
    .registers 2

    .line 812
    const/4 v0, 0x2

    return v0
.end method

.method public isStatic()Z
    .registers 2

    .line 794
    iget-boolean v0, p0, Lcom/sun/tools/javac/tree/JCTree$JCImport;->staticImport:Z

    return v0
.end method
