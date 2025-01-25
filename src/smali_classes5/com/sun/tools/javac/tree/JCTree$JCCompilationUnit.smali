.class public Lcom/sun/tools/javac/tree/JCTree$JCCompilationUnit;
.super Lcom/sun/tools/javac/tree/JCTree;
.source "JCTree.java"

# interfaces
.implements Lcom/sun/source/tree/CompilationUnitTree;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/tools/javac/tree/JCTree;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "JCCompilationUnit"
.end annotation


# instance fields
.field public defs:Lcom/sun/tools/javac/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sun/tools/javac/util/List",
            "<",
            "Lcom/sun/tools/javac/tree/JCTree;",
            ">;"
        }
    .end annotation
.end field

.field public docComments:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/sun/tools/javac/tree/JCTree;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public endPositions:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/sun/tools/javac/tree/JCTree;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public flags:J

.field public lineMap:Lcom/sun/tools/javac/util/Position$LineMap;

.field public namedImportScope:Lcom/sun/tools/javac/code/Scope$ImportScope;

.field public packageAnnotations:Lcom/sun/tools/javac/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sun/tools/javac/util/List",
            "<",
            "Lcom/sun/tools/javac/tree/JCTree$JCAnnotation;",
            ">;"
        }
    .end annotation
.end field

.field public packge:Lcom/sun/tools/javac/code/Symbol$PackageSymbol;

.field public pid:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

.field public sourcefile:Ljavax/tools/JavaFileObject;

.field public starImportScope:Lcom/sun/tools/javac/code/Scope$StarImportScope;


# direct methods
.method protected constructor <init>(Lcom/sun/tools/javac/util/List;Lcom/sun/tools/javac/tree/JCTree$JCExpression;Lcom/sun/tools/javac/util/List;Ljavax/tools/JavaFileObject;Lcom/sun/tools/javac/code/Symbol$PackageSymbol;Lcom/sun/tools/javac/code/Scope$ImportScope;Lcom/sun/tools/javac/code/Scope$StarImportScope;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sun/tools/javac/util/List",
            "<",
            "Lcom/sun/tools/javac/tree/JCTree$JCAnnotation;",
            ">;",
            "Lcom/sun/tools/javac/tree/JCTree$JCExpression;",
            "Lcom/sun/tools/javac/util/List",
            "<",
            "Lcom/sun/tools/javac/tree/JCTree;",
            ">;",
            "Ljavax/tools/JavaFileObject;",
            "Lcom/sun/tools/javac/code/Symbol$PackageSymbol;",
            "Lcom/sun/tools/javac/code/Scope$ImportScope;",
            "Lcom/sun/tools/javac/code/Scope$StarImportScope;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 708
    invoke-direct {p0}, Lcom/sun/tools/javac/tree/JCTree;-><init>()V

    .line 698
    iput-object v0, p0, Lcom/sun/tools/javac/tree/JCTree$JCCompilationUnit;->lineMap:Lcom/sun/tools/javac/util/Position$LineMap;

    .line 699
    iput-object v0, p0, Lcom/sun/tools/javac/tree/JCTree$JCCompilationUnit;->docComments:Ljava/util/Map;

    .line 700
    iput-object v0, p0, Lcom/sun/tools/javac/tree/JCTree$JCCompilationUnit;->endPositions:Ljava/util/Map;

    .line 709
    iput-object p1, p0, Lcom/sun/tools/javac/tree/JCTree$JCCompilationUnit;->packageAnnotations:Lcom/sun/tools/javac/util/List;

    .line 710
    iput-object p2, p0, Lcom/sun/tools/javac/tree/JCTree$JCCompilationUnit;->pid:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    .line 711
    iput-object p3, p0, Lcom/sun/tools/javac/tree/JCTree$JCCompilationUnit;->defs:Lcom/sun/tools/javac/util/List;

    .line 712
    iput-object p4, p0, Lcom/sun/tools/javac/tree/JCTree$JCCompilationUnit;->sourcefile:Ljavax/tools/JavaFileObject;

    .line 713
    iput-object p5, p0, Lcom/sun/tools/javac/tree/JCTree$JCCompilationUnit;->packge:Lcom/sun/tools/javac/code/Symbol$PackageSymbol;

    .line 714
    iput-object p6, p0, Lcom/sun/tools/javac/tree/JCTree$JCCompilationUnit;->namedImportScope:Lcom/sun/tools/javac/code/Scope$ImportScope;

    .line 715
    iput-object p7, p0, Lcom/sun/tools/javac/tree/JCTree$JCCompilationUnit;->starImportScope:Lcom/sun/tools/javac/code/Scope$StarImportScope;

    .line 716
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

    .line 765
    invoke-interface {p1, p0, p2}, Lcom/sun/source/tree/TreeVisitor;->visitCompilationUnit(Lcom/sun/source/tree/CompilationUnitTree;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public accept(Lcom/sun/tools/javac/tree/JCTree$Visitor;)V
    .registers 2

    .line 720
    invoke-virtual {p1, p0}, Lcom/sun/tools/javac/tree/JCTree$Visitor;->visitTopLevel(Lcom/sun/tools/javac/tree/JCTree$JCCompilationUnit;)V

    .line 721
    return-void
.end method

.method public getImports()Lcom/sun/tools/javac/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/sun/tools/javac/util/List",
            "<",
            "Lcom/sun/tools/javac/tree/JCTree$JCImport;",
            ">;"
        }
    .end annotation

    .line 732
    new-instance v1, Lcom/sun/tools/javac/util/ListBuffer;

    invoke-direct {v1}, Lcom/sun/tools/javac/util/ListBuffer;-><init>()V

    .line 733
    iget-object v0, p0, Lcom/sun/tools/javac/tree/JCTree$JCCompilationUnit;->defs:Lcom/sun/tools/javac/util/List;

    invoke-virtual {v0}, Lcom/sun/tools/javac/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_b
    :goto_b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_27

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/tools/javac/tree/JCTree;

    .line 734
    invoke-virtual {v0}, Lcom/sun/tools/javac/tree/JCTree;->getTag()I

    move-result v3

    .line 735
    const/4 v4, 0x2

    if-ne v3, v4, :cond_24

    .line 736
    check-cast v0, Lcom/sun/tools/javac/tree/JCTree$JCImport;

    invoke-virtual {v1, v0}, Lcom/sun/tools/javac/util/ListBuffer;->append(Ljava/lang/Object;)Lcom/sun/tools/javac/util/ListBuffer;

    goto :goto_b

    .line 737
    :cond_24
    const/4 v0, 0x6

    if-eq v3, v0, :cond_b

    .line 740
    :cond_27
    invoke-virtual {v1}, Lcom/sun/tools/javac/util/ListBuffer;->toList()Lcom/sun/tools/javac/util/List;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getImports()Ljava/util/List;
    .registers 2

    .line 689
    invoke-virtual {p0}, Lcom/sun/tools/javac/tree/JCTree$JCCompilationUnit;->getImports()Lcom/sun/tools/javac/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getKind()Lcom/sun/source/tree/Tree$Kind;
    .registers 2

    .line 724
    sget-object v0, Lcom/sun/source/tree/Tree$Kind;->COMPILATION_UNIT:Lcom/sun/source/tree/Tree$Kind;

    return-object v0
.end method

.method public bridge synthetic getLineMap()Lcom/sun/source/tree/LineMap;
    .registers 2

    .line 689
    invoke-virtual {p0}, Lcom/sun/tools/javac/tree/JCTree$JCCompilationUnit;->getLineMap()Lcom/sun/tools/javac/util/Position$LineMap;

    move-result-object v0

    return-object v0
.end method

.method public getLineMap()Lcom/sun/tools/javac/util/Position$LineMap;
    .registers 2

    .line 752
    iget-object v0, p0, Lcom/sun/tools/javac/tree/JCTree$JCCompilationUnit;->lineMap:Lcom/sun/tools/javac/util/Position$LineMap;

    return-object v0
.end method

.method public getPackageAnnotations()Lcom/sun/tools/javac/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/sun/tools/javac/util/List",
            "<",
            "Lcom/sun/tools/javac/tree/JCTree$JCAnnotation;",
            ">;"
        }
    .end annotation

    .line 728
    iget-object v0, p0, Lcom/sun/tools/javac/tree/JCTree$JCCompilationUnit;->packageAnnotations:Lcom/sun/tools/javac/util/List;

    return-object v0
.end method

.method public bridge synthetic getPackageAnnotations()Ljava/util/List;
    .registers 2

    .line 689
    invoke-virtual {p0}, Lcom/sun/tools/javac/tree/JCTree$JCCompilationUnit;->getPackageAnnotations()Lcom/sun/tools/javac/util/List;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getPackageName()Lcom/sun/source/tree/ExpressionTree;
    .registers 2

    .line 689
    invoke-virtual {p0}, Lcom/sun/tools/javac/tree/JCTree$JCCompilationUnit;->getPackageName()Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    move-result-object v0

    return-object v0
.end method

.method public getPackageName()Lcom/sun/tools/javac/tree/JCTree$JCExpression;
    .registers 2

    .line 744
    iget-object v0, p0, Lcom/sun/tools/javac/tree/JCTree$JCCompilationUnit;->pid:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    return-object v0
.end method

.method public getSourceFile()Ljavax/tools/JavaFileObject;
    .registers 2

    .line 748
    iget-object v0, p0, Lcom/sun/tools/javac/tree/JCTree$JCCompilationUnit;->sourcefile:Ljavax/tools/JavaFileObject;

    return-object v0
.end method

.method public getTag()I
    .registers 2

    .line 770
    const/4 v0, 0x1

    return v0
.end method

.method public getTypeDecls()Lcom/sun/tools/javac/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/sun/tools/javac/util/List",
            "<",
            "Lcom/sun/tools/javac/tree/JCTree;",
            ">;"
        }
    .end annotation

    .line 757
    iget-object v0, p0, Lcom/sun/tools/javac/tree/JCTree$JCCompilationUnit;->defs:Lcom/sun/tools/javac/util/List;

    move-object v1, v0

    :goto_3
    invoke-virtual {v1}, Lcom/sun/tools/javac/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_14

    .line 758
    iget-object v0, v1, Lcom/sun/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v0, Lcom/sun/tools/javac/tree/JCTree;

    invoke-virtual {v0}, Lcom/sun/tools/javac/tree/JCTree;->getTag()I

    move-result v0

    const/4 v2, 0x2

    if-eq v0, v2, :cond_15

    .line 760
    :cond_14
    return-object v1

    .line 757
    :cond_15
    iget-object v0, v1, Lcom/sun/tools/javac/util/List;->tail:Lcom/sun/tools/javac/util/List;

    move-object v1, v0

    goto :goto_3
.end method

.method public bridge synthetic getTypeDecls()Ljava/util/List;
    .registers 2

    .line 689
    invoke-virtual {p0}, Lcom/sun/tools/javac/tree/JCTree$JCCompilationUnit;->getTypeDecls()Lcom/sun/tools/javac/util/List;

    move-result-object v0

    return-object v0
.end method
