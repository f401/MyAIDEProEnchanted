.class Lcom/sun/tools/javac/api/JavacTrees$Copier;
.super Lcom/sun/tools/javac/tree/TreeCopier;
.source "JavacTrees.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/tools/javac/api/JavacTrees;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Copier"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/sun/tools/javac/tree/TreeCopier",
        "<",
        "Lcom/sun/tools/javac/tree/JCTree;",
        ">;"
    }
.end annotation


# instance fields
.field leafCopy:Lcom/sun/tools/javac/tree/JCTree;


# direct methods
.method constructor <init>(Lcom/sun/tools/javac/tree/TreeMaker;)V
    .registers 3

    .line 360
    invoke-direct {p0, p1}, Lcom/sun/tools/javac/tree/TreeCopier;-><init>(Lcom/sun/tools/javac/tree/TreeMaker;)V

    .line 357
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sun/tools/javac/api/JavacTrees$Copier;->leafCopy:Lcom/sun/tools/javac/tree/JCTree;

    .line 361
    return-void
.end method


# virtual methods
.method public copy(Lcom/sun/tools/javac/tree/JCTree;Lcom/sun/tools/javac/tree/JCTree;)Lcom/sun/tools/javac/tree/JCTree;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/sun/tools/javac/tree/JCTree;",
            ">(TT;",
            "Lcom/sun/tools/javac/tree/JCTree;",
            ")TT;"
        }
    .end annotation

    .line 365
    invoke-super {p0, p1, p2}, Lcom/sun/tools/javac/tree/TreeCopier;->copy(Lcom/sun/tools/javac/tree/JCTree;Ljava/lang/Object;)Lcom/sun/tools/javac/tree/JCTree;

    move-result-object v0

    .line 366
    if-ne p1, p2, :cond_0

    .line 367
    iput-object v0, p0, Lcom/sun/tools/javac/api/JavacTrees$Copier;->leafCopy:Lcom/sun/tools/javac/tree/JCTree;

    .line 368
    :cond_0
    return-object v0
.end method

.method public bridge synthetic copy(Lcom/sun/tools/javac/tree/JCTree;Ljava/lang/Object;)Lcom/sun/tools/javac/tree/JCTree;
    .registers 4

    .line 356
    check-cast p2, Lcom/sun/tools/javac/tree/JCTree;

    invoke-virtual {p0, p1, p2}, Lcom/sun/tools/javac/api/JavacTrees$Copier;->copy(Lcom/sun/tools/javac/tree/JCTree;Lcom/sun/tools/javac/tree/JCTree;)Lcom/sun/tools/javac/tree/JCTree;

    move-result-object v0

    return-object v0
.end method
