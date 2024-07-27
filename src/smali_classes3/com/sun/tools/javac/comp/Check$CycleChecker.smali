.class Lcom/sun/tools/javac/comp/Check$CycleChecker;
.super Lcom/sun/tools/javac/tree/TreeScanner;
.source "Check.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/tools/javac/comp/Check;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "CycleChecker"
.end annotation


# instance fields
.field errorFound:Z

.field partialCheck:Z

.field seenClasses:Lcom/sun/tools/javac/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sun/tools/javac/util/List",
            "<",
            "Lcom/sun/tools/javac/code/Symbol;",
            ">;"
        }
    .end annotation
.end field

.field final this$0:Lcom/sun/tools/javac/comp/Check;


# direct methods
.method constructor <init>(Lcom/sun/tools/javac/comp/Check;)V
    .registers 4

    const/4 v1, 0x0

    .line 1836
    iput-object p1, p0, Lcom/sun/tools/javac/comp/Check$CycleChecker;->this$0:Lcom/sun/tools/javac/comp/Check;

    invoke-direct {p0}, Lcom/sun/tools/javac/tree/TreeScanner;-><init>()V

    .line 1838
    invoke-static {}, Lcom/sun/tools/javac/util/List;->nil()Lcom/sun/tools/javac/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/tools/javac/comp/Check$CycleChecker;->seenClasses:Lcom/sun/tools/javac/util/List;

    .line 1839
    iput-boolean v1, p0, Lcom/sun/tools/javac/comp/Check$CycleChecker;->errorFound:Z

    .line 1840
    iput-boolean v1, p0, Lcom/sun/tools/javac/comp/Check$CycleChecker;->partialCheck:Z

    return-void
.end method

.method private checkSymbol(Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lcom/sun/tools/javac/code/Symbol;)V
    .registers 7

    const/4 v2, 0x2

    .line 1843
    if-eqz p2, :cond_2

    iget v0, p2, Lcom/sun/tools/javac/code/Symbol;->kind:I

    if-ne v0, v2, :cond_2

    .line 1844
    iget-object v0, p0, Lcom/sun/tools/javac/comp/Check$CycleChecker;->this$0:Lcom/sun/tools/javac/comp/Check;

    invoke-static {v0}, Lcom/sun/tools/javac/comp/Check;->access$400(Lcom/sun/tools/javac/comp/Check;)Lcom/sun/tools/javac/comp/Enter;

    move-result-object v1

    move-object v0, p2

    check-cast v0, Lcom/sun/tools/javac/code/Symbol$TypeSymbol;

    invoke-virtual {v1, v0}, Lcom/sun/tools/javac/comp/Enter;->getEnv(Lcom/sun/tools/javac/code/Symbol$TypeSymbol;)Lcom/sun/tools/javac/comp/Env;

    move-result-object v0

    .line 1845
    if-eqz v0, :cond_1

    .line 1846
    iget-object v1, p0, Lcom/sun/tools/javac/comp/Check$CycleChecker;->this$0:Lcom/sun/tools/javac/comp/Check;

    invoke-static {v1}, Lcom/sun/tools/javac/comp/Check;->access$100(Lcom/sun/tools/javac/comp/Check;)Lcom/sun/tools/javac/util/Log;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sun/tools/javac/util/Log;->currentSource()Lcom/sun/tools/javac/util/DiagnosticSource;

    move-result-object v1

    .line 1848
    :try_start_0
    iget-object v2, p0, Lcom/sun/tools/javac/comp/Check$CycleChecker;->this$0:Lcom/sun/tools/javac/comp/Check;

    invoke-static {v2}, Lcom/sun/tools/javac/comp/Check;->access$100(Lcom/sun/tools/javac/comp/Check;)Lcom/sun/tools/javac/util/Log;

    move-result-object v2

    iget-object v3, v0, Lcom/sun/tools/javac/comp/Env;->toplevel:Lcom/sun/tools/javac/tree/JCTree$JCCompilationUnit;

    iget-object v3, v3, Lcom/sun/tools/javac/tree/JCTree$JCCompilationUnit;->sourcefile:Ljavax/tools/JavaFileObject;

    invoke-virtual {v2, v3}, Lcom/sun/tools/javac/util/Log;->useSource(Ljavax/tools/JavaFileObject;)Ljavax/tools/JavaFileObject;

    .line 1849
    iget-object v0, v0, Lcom/sun/tools/javac/comp/Env;->tree:Lcom/sun/tools/javac/tree/JCTree;

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/comp/Check$CycleChecker;->scan(Lcom/sun/tools/javac/tree/JCTree;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1852
    iget-object v0, p0, Lcom/sun/tools/javac/comp/Check$CycleChecker;->this$0:Lcom/sun/tools/javac/comp/Check;

    invoke-static {v0}, Lcom/sun/tools/javac/comp/Check;->access$100(Lcom/sun/tools/javac/comp/Check;)Lcom/sun/tools/javac/util/Log;

    move-result-object v0

    invoke-virtual {v1}, Lcom/sun/tools/javac/util/DiagnosticSource;->getFile()Ljavax/tools/JavaFileObject;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sun/tools/javac/util/Log;->useSource(Ljavax/tools/JavaFileObject;)Ljavax/tools/JavaFileObject;

    .line 1861
    :cond_0
    :goto_0
    return-void

    .line 1852
    :catchall_0
    move-exception v0

    iget-object v2, p0, Lcom/sun/tools/javac/comp/Check$CycleChecker;->this$0:Lcom/sun/tools/javac/comp/Check;

    invoke-static {v2}, Lcom/sun/tools/javac/comp/Check;->access$100(Lcom/sun/tools/javac/comp/Check;)Lcom/sun/tools/javac/util/Log;

    move-result-object v2

    invoke-virtual {v1}, Lcom/sun/tools/javac/util/DiagnosticSource;->getFile()Ljavax/tools/JavaFileObject;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/sun/tools/javac/util/Log;->useSource(Ljavax/tools/JavaFileObject;)Ljavax/tools/JavaFileObject;

    .line 1853
    throw v0

    .line 1854
    :cond_1
    iget v0, p2, Lcom/sun/tools/javac/code/Symbol;->kind:I

    if-ne v0, v2, :cond_0

    .line 1855
    invoke-static {}, Lcom/sun/tools/javac/util/List;->nil()Lcom/sun/tools/javac/util/List;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/sun/tools/javac/comp/Check$CycleChecker;->checkClass(Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lcom/sun/tools/javac/code/Symbol;Lcom/sun/tools/javac/util/List;)V

    goto :goto_0

    .line 1859
    :cond_2
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sun/tools/javac/comp/Check$CycleChecker;->partialCheck:Z

    goto :goto_0
.end method


# virtual methods
.method checkClass(Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lcom/sun/tools/javac/code/Symbol;Lcom/sun/tools/javac/util/List;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;",
            "Lcom/sun/tools/javac/code/Symbol;",
            "Lcom/sun/tools/javac/util/List",
            "<",
            "Lcom/sun/tools/javac/tree/JCTree;",
            ">;)V"
        }
    .end annotation

    const/4 v4, 0x1

    .line 1899
    iget-wide v0, p2, Lcom/sun/tools/javac/code/Symbol;->flags_field:J

    const-wide/32 v2, 0x40000000

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    .line 1932
    :cond_0
    :goto_0
    return-void

    .line 1901
    :cond_1
    iget-object v0, p0, Lcom/sun/tools/javac/comp/Check$CycleChecker;->seenClasses:Lcom/sun/tools/javac/util/List;

    invoke-virtual {v0, p2}, Lcom/sun/tools/javac/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1902
    iput-boolean v4, p0, Lcom/sun/tools/javac/comp/Check$CycleChecker;->errorFound:Z

    .line 1903
    iget-object v0, p0, Lcom/sun/tools/javac/comp/Check$CycleChecker;->this$0:Lcom/sun/tools/javac/comp/Check;

    check-cast p2, Lcom/sun/tools/javac/code/Symbol$ClassSymbol;

    invoke-static {v0, p1, p2}, Lcom/sun/tools/javac/comp/Check;->access$500(Lcom/sun/tools/javac/comp/Check;Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lcom/sun/tools/javac/code/Symbol$ClassSymbol;)V

    goto :goto_0

    .line 1904
    :cond_2
    iget-object v0, p2, Lcom/sun/tools/javac/code/Symbol;->type:Lcom/sun/tools/javac/code/Type;

    invoke-virtual {v0}, Lcom/sun/tools/javac/code/Type;->isErroneous()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1906
    :try_start_0
    iget-object v0, p0, Lcom/sun/tools/javac/comp/Check$CycleChecker;->seenClasses:Lcom/sun/tools/javac/util/List;

    invoke-virtual {v0, p2}, Lcom/sun/tools/javac/util/List;->prepend(Ljava/lang/Object;)Lcom/sun/tools/javac/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/tools/javac/comp/Check$CycleChecker;->seenClasses:Lcom/sun/tools/javac/util/List;

    .line 1907
    iget-object v0, p2, Lcom/sun/tools/javac/code/Symbol;->type:Lcom/sun/tools/javac/code/Type;

    iget v0, v0, Lcom/sun/tools/javac/code/Type;->tag:I

    const/16 v1, 0xa

    if-ne v0, v1, :cond_4

    .line 1908
    invoke-virtual {p3}, Lcom/sun/tools/javac/util/List;->nonEmpty()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1909
    invoke-virtual {p0, p3}, Lcom/sun/tools/javac/comp/Check$CycleChecker;->scan(Lcom/sun/tools/javac/util/List;)V

    .line 1924
    :cond_3
    iget-object v0, p2, Lcom/sun/tools/javac/code/Symbol;->owner:Lcom/sun/tools/javac/code/Symbol;

    iget v0, v0, Lcom/sun/tools/javac/code/Symbol;->kind:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_4

    .line 1925
    iget-object v0, p2, Lcom/sun/tools/javac/code/Symbol;->owner:Lcom/sun/tools/javac/code/Symbol;

    invoke-direct {p0, p1, v0}, Lcom/sun/tools/javac/comp/Check$CycleChecker;->checkSymbol(Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lcom/sun/tools/javac/code/Symbol;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1929
    :cond_4
    iget-object v0, p0, Lcom/sun/tools/javac/comp/Check$CycleChecker;->seenClasses:Lcom/sun/tools/javac/util/List;

    iget-object v0, v0, Lcom/sun/tools/javac/util/List;->tail:Lcom/sun/tools/javac/util/List;

    iput-object v0, p0, Lcom/sun/tools/javac/comp/Check$CycleChecker;->seenClasses:Lcom/sun/tools/javac/util/List;

    goto :goto_0

    .line 1912
    :cond_5
    :try_start_1
    iget-object v0, p2, Lcom/sun/tools/javac/code/Symbol;->type:Lcom/sun/tools/javac/code/Type;

    check-cast v0, Lcom/sun/tools/javac/code/Type$ClassType;

    .line 1913
    iget-object v1, v0, Lcom/sun/tools/javac/code/Type$ClassType;->supertype_field:Lcom/sun/tools/javac/code/Type;

    if-eqz v1, :cond_6

    iget-object v1, v0, Lcom/sun/tools/javac/code/Type$ClassType;->interfaces_field:Lcom/sun/tools/javac/util/List;

    if-nez v1, :cond_7

    .line 1916
    :cond_6
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sun/tools/javac/comp/Check$CycleChecker;->partialCheck:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1929
    iget-object v0, p0, Lcom/sun/tools/javac/comp/Check$CycleChecker;->seenClasses:Lcom/sun/tools/javac/util/List;

    iget-object v0, v0, Lcom/sun/tools/javac/util/List;->tail:Lcom/sun/tools/javac/util/List;

    iput-object v0, p0, Lcom/sun/tools/javac/comp/Check$CycleChecker;->seenClasses:Lcom/sun/tools/javac/util/List;

    goto :goto_0

    .line 1919
    :cond_7
    :try_start_2
    iget-object v1, v0, Lcom/sun/tools/javac/code/Type$ClassType;->supertype_field:Lcom/sun/tools/javac/code/Type;

    iget-object v1, v1, Lcom/sun/tools/javac/code/Type;->tsym:Lcom/sun/tools/javac/code/Symbol$TypeSymbol;

    invoke-direct {p0, p1, v1}, Lcom/sun/tools/javac/comp/Check$CycleChecker;->checkSymbol(Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lcom/sun/tools/javac/code/Symbol;)V

    .line 1920
    iget-object v0, v0, Lcom/sun/tools/javac/code/Type$ClassType;->interfaces_field:Lcom/sun/tools/javac/util/List;

    invoke-virtual {v0}, Lcom/sun/tools/javac/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/tools/javac/code/Type;

    .line 1921
    iget-object v0, v0, Lcom/sun/tools/javac/code/Type;->tsym:Lcom/sun/tools/javac/code/Symbol$TypeSymbol;

    invoke-direct {p0, p1, v0}, Lcom/sun/tools/javac/comp/Check$CycleChecker;->checkSymbol(Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lcom/sun/tools/javac/code/Symbol;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 1929
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/sun/tools/javac/comp/Check$CycleChecker;->seenClasses:Lcom/sun/tools/javac/util/List;

    iget-object v1, v1, Lcom/sun/tools/javac/util/List;->tail:Lcom/sun/tools/javac/util/List;

    iput-object v1, p0, Lcom/sun/tools/javac/comp/Check$CycleChecker;->seenClasses:Lcom/sun/tools/javac/util/List;

    .line 1930
    throw v0
.end method

.method public visitClassDef(Lcom/sun/tools/javac/tree/JCTree$JCClassDecl;)V
    .registers 5

    .line 1886
    invoke-static {}, Lcom/sun/tools/javac/util/List;->nil()Lcom/sun/tools/javac/util/List;

    move-result-object v0

    .line 1887
    invoke-virtual {p1}, Lcom/sun/tools/javac/tree/JCTree$JCClassDecl;->getExtendsClause()Lcom/sun/tools/javac/tree/JCTree;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1888
    invoke-virtual {p1}, Lcom/sun/tools/javac/tree/JCTree$JCClassDecl;->getExtendsClause()Lcom/sun/tools/javac/tree/JCTree;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sun/tools/javac/util/List;->prepend(Ljava/lang/Object;)Lcom/sun/tools/javac/util/List;

    move-result-object v0

    .line 1890
    :cond_0
    invoke-virtual {p1}, Lcom/sun/tools/javac/tree/JCTree$JCClassDecl;->getImplementsClause()Lcom/sun/tools/javac/util/List;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 1891
    invoke-virtual {p1}, Lcom/sun/tools/javac/tree/JCTree$JCClassDecl;->getImplementsClause()Lcom/sun/tools/javac/util/List;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sun/tools/javac/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move-object v1, v0

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/tools/javac/tree/JCTree;

    .line 1892
    invoke-virtual {v1, v0}, Lcom/sun/tools/javac/util/List;->prepend(Ljava/lang/Object;)Lcom/sun/tools/javac/util/List;

    move-result-object v0

    move-object v1, v0

    .line 1893
    goto :goto_0

    :cond_1
    move-object v1, v0

    .line 1895
    :cond_2
    invoke-virtual {p1}, Lcom/sun/tools/javac/tree/JCTree$JCClassDecl;->pos()Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    move-result-object v0

    iget-object v2, p1, Lcom/sun/tools/javac/tree/JCTree$JCClassDecl;->sym:Lcom/sun/tools/javac/code/Symbol$ClassSymbol;

    invoke-virtual {p0, v0, v2, v1}, Lcom/sun/tools/javac/comp/Check$CycleChecker;->checkClass(Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lcom/sun/tools/javac/code/Symbol;Lcom/sun/tools/javac/util/List;)V

    .line 1896
    return-void
.end method

.method public visitIdent(Lcom/sun/tools/javac/tree/JCTree$JCIdent;)V
    .registers 4

    .line 1871
    invoke-virtual {p1}, Lcom/sun/tools/javac/tree/JCTree$JCIdent;->pos()Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    move-result-object v0

    iget-object v1, p1, Lcom/sun/tools/javac/tree/JCTree$JCIdent;->sym:Lcom/sun/tools/javac/code/Symbol;

    invoke-direct {p0, v0, v1}, Lcom/sun/tools/javac/comp/Check$CycleChecker;->checkSymbol(Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lcom/sun/tools/javac/code/Symbol;)V

    .line 1872
    return-void
.end method

.method public visitSelect(Lcom/sun/tools/javac/tree/JCTree$JCFieldAccess;)V
    .registers 4

    .line 1865
    invoke-super {p0, p1}, Lcom/sun/tools/javac/tree/TreeScanner;->visitSelect(Lcom/sun/tools/javac/tree/JCTree$JCFieldAccess;)V

    .line 1866
    invoke-virtual {p1}, Lcom/sun/tools/javac/tree/JCTree$JCFieldAccess;->pos()Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    move-result-object v0

    iget-object v1, p1, Lcom/sun/tools/javac/tree/JCTree$JCFieldAccess;->sym:Lcom/sun/tools/javac/code/Symbol;

    invoke-direct {p0, v0, v1}, Lcom/sun/tools/javac/comp/Check$CycleChecker;->checkSymbol(Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lcom/sun/tools/javac/code/Symbol;)V

    .line 1867
    return-void
.end method

.method public visitTypeApply(Lcom/sun/tools/javac/tree/JCTree$JCTypeApply;)V
    .registers 3

    .line 1876
    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCTypeApply;->clazz:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/comp/Check$CycleChecker;->scan(Lcom/sun/tools/javac/tree/JCTree;)V

    .line 1877
    return-void
.end method

.method public visitTypeArray(Lcom/sun/tools/javac/tree/JCTree$JCArrayTypeTree;)V
    .registers 3

    .line 1881
    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCArrayTypeTree;->elemtype:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/comp/Check$CycleChecker;->scan(Lcom/sun/tools/javac/tree/JCTree;)V

    .line 1882
    return-void
.end method
