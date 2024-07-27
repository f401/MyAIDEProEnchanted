.class Lcom/sun/tools/javac/processing/JavacProcessingEnvironment$Round;
.super Ljava/lang/Object;
.source "JavacProcessingEnvironment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/tools/javac/processing/JavacProcessingEnvironment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Round"
.end annotation


# instance fields
.field annotationsPresent:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljavax/lang/model/element/TypeElement;",
            ">;"
        }
    .end annotation
.end field

.field final compiler:Lcom/sun/tools/javac/main/JavaCompiler;

.field final context:Lcom/sun/tools/javac/util/Context;

.field genClassFiles:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljavax/tools/JavaFileObject;",
            ">;"
        }
    .end annotation
.end field

.field final log:Lcom/sun/tools/javac/util/Log;

.field nMessagerErrors:I

.field final number:I

.field packageInfoFiles:Lcom/sun/tools/javac/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sun/tools/javac/util/List",
            "<",
            "Lcom/sun/tools/javac/code/Symbol$PackageSymbol;",
            ">;"
        }
    .end annotation
.end field

.field roots:Lcom/sun/tools/javac/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sun/tools/javac/util/List",
            "<",
            "Lcom/sun/tools/javac/tree/JCTree$JCCompilationUnit;",
            ">;"
        }
    .end annotation
.end field

.field final this$0:Lcom/sun/tools/javac/processing/JavacProcessingEnvironment;

.field topLevelClasses:Lcom/sun/tools/javac/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sun/tools/javac/util/List",
            "<",
            "Lcom/sun/tools/javac/code/Symbol$ClassSymbol;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/sun/tools/javac/processing/JavacProcessingEnvironment;Lcom/sun/tools/javac/processing/JavacProcessingEnvironment$Round;Ljava/util/Set;Ljava/util/Map;)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sun/tools/javac/processing/JavacProcessingEnvironment$Round;",
            "Ljava/util/Set",
            "<",
            "Ljavax/tools/JavaFileObject;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljavax/tools/JavaFileObject;",
            ">;)V"
        }
    .end annotation

    .line 878
    invoke-direct {p2}, Lcom/sun/tools/javac/processing/JavacProcessingEnvironment$Round;->nextContext()Lcom/sun/tools/javac/util/Context;

    move-result-object v2

    iget v0, p2, Lcom/sun/tools/javac/processing/JavacProcessingEnvironment$Round;->number:I

    add-int/lit8 v3, v0, 0x1

    iget v4, p2, Lcom/sun/tools/javac/processing/JavacProcessingEnvironment$Round;->nMessagerErrors:I

    iget-object v0, p2, Lcom/sun/tools/javac/processing/JavacProcessingEnvironment$Round;->compiler:Lcom/sun/tools/javac/main/JavaCompiler;

    iget-object v0, v0, Lcom/sun/tools/javac/main/JavaCompiler;->log:Lcom/sun/tools/javac/util/Log;

    iget v5, v0, Lcom/sun/tools/javac/util/Log;->nwarnings:I

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/sun/tools/javac/processing/JavacProcessingEnvironment$Round;-><init>(Lcom/sun/tools/javac/processing/JavacProcessingEnvironment;Lcom/sun/tools/javac/util/Context;III)V

    .line 882
    iget-object v0, p2, Lcom/sun/tools/javac/processing/JavacProcessingEnvironment$Round;->genClassFiles:Ljava/util/Map;

    iput-object v0, p0, Lcom/sun/tools/javac/processing/JavacProcessingEnvironment$Round;->genClassFiles:Ljava/util/Map;

    .line 884
    iget-object v0, p0, Lcom/sun/tools/javac/processing/JavacProcessingEnvironment$Round;->compiler:Lcom/sun/tools/javac/main/JavaCompiler;

    invoke-virtual {v0, p3}, Lcom/sun/tools/javac/main/JavaCompiler;->parseFiles(Ljava/lang/Iterable;)Lcom/sun/tools/javac/util/List;

    move-result-object v0

    .line 885
    iget-object v1, p2, Lcom/sun/tools/javac/processing/JavacProcessingEnvironment$Round;->roots:Lcom/sun/tools/javac/util/List;

    invoke-static {v1}, Lcom/sun/tools/javac/processing/JavacProcessingEnvironment;->access$600(Lcom/sun/tools/javac/util/List;)Lcom/sun/tools/javac/util/List;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/sun/tools/javac/util/List;->appendList(Lcom/sun/tools/javac/util/List;)Lcom/sun/tools/javac/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/sun/tools/javac/processing/JavacProcessingEnvironment$Round;->roots:Lcom/sun/tools/javac/util/List;

    .line 888
    invoke-virtual {p0}, Lcom/sun/tools/javac/processing/JavacProcessingEnvironment$Round;->unrecoverableError()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 908
    :cond_0
    :goto_0
    return-void

    .line 891
    :cond_1
    iget-object v1, p0, Lcom/sun/tools/javac/processing/JavacProcessingEnvironment$Round;->genClassFiles:Ljava/util/Map;

    invoke-direct {p0, v1}, Lcom/sun/tools/javac/processing/JavacProcessingEnvironment$Round;->enterClassFiles(Ljava/util/Map;)Lcom/sun/tools/javac/util/List;

    .line 892
    invoke-direct {p0, p4}, Lcom/sun/tools/javac/processing/JavacProcessingEnvironment$Round;->enterClassFiles(Ljava/util/Map;)Lcom/sun/tools/javac/util/List;

    move-result-object v1

    .line 893
    iget-object v2, p0, Lcom/sun/tools/javac/processing/JavacProcessingEnvironment$Round;->genClassFiles:Ljava/util/Map;

    invoke-interface {v2, p4}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 894
    iget-object v2, p0, Lcom/sun/tools/javac/processing/JavacProcessingEnvironment$Round;->roots:Lcom/sun/tools/javac/util/List;

    invoke-direct {p0, v2}, Lcom/sun/tools/javac/processing/JavacProcessingEnvironment$Round;->enterTrees(Lcom/sun/tools/javac/util/List;)V

    .line 896
    invoke-virtual {p0}, Lcom/sun/tools/javac/processing/JavacProcessingEnvironment$Round;->unrecoverableError()Z

    move-result v2

    if-nez v2, :cond_0

    .line 899
    invoke-static {p1, v0}, Lcom/sun/tools/javac/processing/JavacProcessingEnvironment;->access$400(Lcom/sun/tools/javac/processing/JavacProcessingEnvironment;Lcom/sun/tools/javac/util/List;)Lcom/sun/tools/javac/util/List;

    move-result-object v2

    .line 901
    invoke-static {p1, v1}, Lcom/sun/tools/javac/processing/JavacProcessingEnvironment;->access$700(Lcom/sun/tools/javac/processing/JavacProcessingEnvironment;Lcom/sun/tools/javac/util/List;)Lcom/sun/tools/javac/util/List;

    move-result-object v3

    .line 899
    invoke-static {v2, v3}, Lcom/sun/tools/javac/processing/JavacProcessingEnvironment;->access$800(Lcom/sun/tools/javac/util/List;Lcom/sun/tools/javac/util/List;)Lcom/sun/tools/javac/util/List;

    move-result-object v2

    iput-object v2, p0, Lcom/sun/tools/javac/processing/JavacProcessingEnvironment$Round;->topLevelClasses:Lcom/sun/tools/javac/util/List;

    .line 903
    invoke-static {p1, v0}, Lcom/sun/tools/javac/processing/JavacProcessingEnvironment;->access$500(Lcom/sun/tools/javac/processing/JavacProcessingEnvironment;Lcom/sun/tools/javac/util/List;)Lcom/sun/tools/javac/util/List;

    move-result-object v0

    .line 905
    invoke-static {p1, v1}, Lcom/sun/tools/javac/processing/JavacProcessingEnvironment;->access$900(Lcom/sun/tools/javac/processing/JavacProcessingEnvironment;Lcom/sun/tools/javac/util/List;)Lcom/sun/tools/javac/util/List;

    move-result-object v1

    .line 903
    invoke-static {v0, v1}, Lcom/sun/tools/javac/processing/JavacProcessingEnvironment;->access$800(Lcom/sun/tools/javac/util/List;Lcom/sun/tools/javac/util/List;)Lcom/sun/tools/javac/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/tools/javac/processing/JavacProcessingEnvironment$Round;->packageInfoFiles:Lcom/sun/tools/javac/util/List;

    .line 907
    invoke-virtual {p0}, Lcom/sun/tools/javac/processing/JavacProcessingEnvironment$Round;->findAnnotationsPresent()V

    goto :goto_0
.end method

.method private constructor <init>(Lcom/sun/tools/javac/processing/JavacProcessingEnvironment;Lcom/sun/tools/javac/util/Context;III)V
    .registers 8

    .line 838
    iput-object p1, p0, Lcom/sun/tools/javac/processing/JavacProcessingEnvironment$Round;->this$0:Lcom/sun/tools/javac/processing/JavacProcessingEnvironment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 839
    iput-object p2, p0, Lcom/sun/tools/javac/processing/JavacProcessingEnvironment$Round;->context:Lcom/sun/tools/javac/util/Context;

    .line 840
    iput p3, p0, Lcom/sun/tools/javac/processing/JavacProcessingEnvironment$Round;->number:I

    .line 842
    invoke-static {p2}, Lcom/sun/tools/javac/main/JavaCompiler;->instance(Lcom/sun/tools/javac/util/Context;)Lcom/sun/tools/javac/main/JavaCompiler;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/tools/javac/processing/JavacProcessingEnvironment$Round;->compiler:Lcom/sun/tools/javac/main/JavaCompiler;

    .line 843
    invoke-static {p2}, Lcom/sun/tools/javac/util/Log;->instance(Lcom/sun/tools/javac/util/Context;)Lcom/sun/tools/javac/util/Log;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/tools/javac/processing/JavacProcessingEnvironment$Round;->log:Lcom/sun/tools/javac/util/Log;

    .line 844
    iput p4, v0, Lcom/sun/tools/javac/util/Log;->nerrors:I

    .line 845
    iget-object v0, p0, Lcom/sun/tools/javac/processing/JavacProcessingEnvironment$Round;->log:Lcom/sun/tools/javac/util/Log;

    iget v1, v0, Lcom/sun/tools/javac/util/Log;->nwarnings:I

    add-int/2addr v1, p5

    iput v1, v0, Lcom/sun/tools/javac/util/Log;->nwarnings:I

    .line 846
    iget-object v0, p0, Lcom/sun/tools/javac/processing/JavacProcessingEnvironment$Round;->log:Lcom/sun/tools/javac/util/Log;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/sun/tools/javac/util/Log;->deferDiagnostics:Z

    .line 849
    invoke-static {p1, p2}, Lcom/sun/tools/javac/processing/JavacProcessingEnvironment;->access$302(Lcom/sun/tools/javac/processing/JavacProcessingEnvironment;Lcom/sun/tools/javac/util/Context;)Lcom/sun/tools/javac/util/Context;

    .line 852
    invoke-static {}, Lcom/sun/tools/javac/util/List;->nil()Lcom/sun/tools/javac/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/tools/javac/processing/JavacProcessingEnvironment$Round;->topLevelClasses:Lcom/sun/tools/javac/util/List;

    .line 853
    invoke-static {}, Lcom/sun/tools/javac/util/List;->nil()Lcom/sun/tools/javac/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/tools/javac/processing/JavacProcessingEnvironment$Round;->packageInfoFiles:Lcom/sun/tools/javac/util/List;

    .line 854
    return-void
.end method

.method constructor <init>(Lcom/sun/tools/javac/processing/JavacProcessingEnvironment;Lcom/sun/tools/javac/util/Context;Lcom/sun/tools/javac/util/List;Lcom/sun/tools/javac/util/List;)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sun/tools/javac/util/Context;",
            "Lcom/sun/tools/javac/util/List",
            "<",
            "Lcom/sun/tools/javac/tree/JCTree$JCCompilationUnit;",
            ">;",
            "Lcom/sun/tools/javac/util/List",
            "<",
            "Lcom/sun/tools/javac/code/Symbol$ClassSymbol;",
            ">;)V"
        }
    .end annotation

    const/4 v4, 0x0

    .line 858
    const/4 v3, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v5, v4

    invoke-direct/range {v0 .. v5}, Lcom/sun/tools/javac/processing/JavacProcessingEnvironment$Round;-><init>(Lcom/sun/tools/javac/processing/JavacProcessingEnvironment;Lcom/sun/tools/javac/util/Context;III)V

    .line 859
    iput-object p3, p0, Lcom/sun/tools/javac/processing/JavacProcessingEnvironment$Round;->roots:Lcom/sun/tools/javac/util/List;

    .line 860
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sun/tools/javac/processing/JavacProcessingEnvironment$Round;->genClassFiles:Ljava/util/Map;

    .line 862
    iget-object v0, p0, Lcom/sun/tools/javac/processing/JavacProcessingEnvironment$Round;->compiler:Lcom/sun/tools/javac/main/JavaCompiler;

    iget-object v0, v0, Lcom/sun/tools/javac/main/JavaCompiler;->todo:Lcom/sun/tools/javac/comp/Todo;

    invoke-virtual {v0}, Lcom/sun/tools/javac/comp/Todo;->clear()V

    .line 867
    invoke-static {p1, p3}, Lcom/sun/tools/javac/processing/JavacProcessingEnvironment;->access$400(Lcom/sun/tools/javac/processing/JavacProcessingEnvironment;Lcom/sun/tools/javac/util/List;)Lcom/sun/tools/javac/util/List;

    move-result-object v0

    invoke-virtual {p4}, Lcom/sun/tools/javac/util/List;->reverse()Lcom/sun/tools/javac/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sun/tools/javac/util/List;->prependList(Lcom/sun/tools/javac/util/List;)Lcom/sun/tools/javac/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/tools/javac/processing/JavacProcessingEnvironment$Round;->topLevelClasses:Lcom/sun/tools/javac/util/List;

    .line 870
    invoke-static {p1, p3}, Lcom/sun/tools/javac/processing/JavacProcessingEnvironment;->access$500(Lcom/sun/tools/javac/processing/JavacProcessingEnvironment;Lcom/sun/tools/javac/util/List;)Lcom/sun/tools/javac/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/tools/javac/processing/JavacProcessingEnvironment$Round;->packageInfoFiles:Lcom/sun/tools/javac/util/List;

    .line 872
    invoke-virtual {p0}, Lcom/sun/tools/javac/processing/JavacProcessingEnvironment$Round;->findAnnotationsPresent()V

    .line 873
    return-void
.end method

.method private enterClassFiles(Ljava/util/Map;)Lcom/sun/tools/javac/util/List;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljavax/tools/JavaFileObject;",
            ">;)",
            "Lcom/sun/tools/javac/util/List",
            "<",
            "Lcom/sun/tools/javac/code/Symbol$ClassSymbol;",
            ">;"
        }
    .end annotation

    .line 981
    iget-object v0, p0, Lcom/sun/tools/javac/processing/JavacProcessingEnvironment$Round;->context:Lcom/sun/tools/javac/util/Context;

    invoke-static {v0}, Lcom/sun/tools/javac/jvm/ClassReader;->instance(Lcom/sun/tools/javac/util/Context;)Lcom/sun/tools/javac/jvm/ClassReader;

    move-result-object v3

    .line 982
    iget-object v0, p0, Lcom/sun/tools/javac/processing/JavacProcessingEnvironment$Round;->context:Lcom/sun/tools/javac/util/Context;

    invoke-static {v0}, Lcom/sun/tools/javac/util/Names;->instance(Lcom/sun/tools/javac/util/Context;)Lcom/sun/tools/javac/util/Names;

    move-result-object v4

    .line 983
    invoke-static {}, Lcom/sun/tools/javac/util/List;->nil()Lcom/sun/tools/javac/util/List;

    move-result-object v0

    .line 985
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move-object v2, v0

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 986
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v4, v1}, Lcom/sun/tools/javac/util/Names;->fromString(Ljava/lang/String;)Lcom/sun/tools/javac/util/Name;

    move-result-object v1

    .line 987
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/tools/JavaFileObject;

    .line 988
    invoke-interface {v0}, Ljavax/tools/JavaFileObject;->getKind()Ljavax/tools/JavaFileObject$Kind;

    move-result-object v6

    sget-object v7, Ljavax/tools/JavaFileObject$Kind;->CLASS:Ljavax/tools/JavaFileObject$Kind;

    if-ne v6, v7, :cond_3

    .line 991
    iget-object v6, p0, Lcom/sun/tools/javac/processing/JavacProcessingEnvironment$Round;->this$0:Lcom/sun/tools/javac/processing/JavacProcessingEnvironment;

    sget-object v7, Ljavax/tools/JavaFileObject$Kind;->CLASS:Ljavax/tools/JavaFileObject$Kind;

    invoke-static {v6, v0, v7}, Lcom/sun/tools/javac/processing/JavacProcessingEnvironment;->access$1400(Lcom/sun/tools/javac/processing/JavacProcessingEnvironment;Ljavax/tools/JavaFileObject;Ljavax/tools/JavaFileObject$Kind;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 992
    invoke-static {v1}, Lcom/sun/tools/javac/util/Convert;->packagePart(Lcom/sun/tools/javac/util/Name;)Lcom/sun/tools/javac/util/Name;

    move-result-object v6

    .line 993
    invoke-virtual {v3, v6}, Lcom/sun/tools/javac/jvm/ClassReader;->enterPackage(Lcom/sun/tools/javac/util/Name;)Lcom/sun/tools/javac/code/Symbol$PackageSymbol;

    move-result-object v6

    .line 994
    iget-object v7, v6, Lcom/sun/tools/javac/code/Symbol$PackageSymbol;->package_info:Lcom/sun/tools/javac/code/Symbol$ClassSymbol;

    if-nez v7, :cond_0

    .line 995
    invoke-static {v1}, Lcom/sun/tools/javac/util/Convert;->shortName(Lcom/sun/tools/javac/util/Name;)Lcom/sun/tools/javac/util/Name;

    move-result-object v1

    invoke-virtual {v3, v1, v6}, Lcom/sun/tools/javac/jvm/ClassReader;->enterClass(Lcom/sun/tools/javac/util/Name;Lcom/sun/tools/javac/code/Symbol$TypeSymbol;)Lcom/sun/tools/javac/code/Symbol$ClassSymbol;

    move-result-object v1

    iput-object v1, v6, Lcom/sun/tools/javac/code/Symbol$PackageSymbol;->package_info:Lcom/sun/tools/javac/code/Symbol$ClassSymbol;

    .line 996
    :cond_0
    iget-object v1, v6, Lcom/sun/tools/javac/code/Symbol$PackageSymbol;->package_info:Lcom/sun/tools/javac/code/Symbol$ClassSymbol;

    .line 997
    iget-object v6, v1, Lcom/sun/tools/javac/code/Symbol$ClassSymbol;->classfile:Ljavax/tools/JavaFileObject;

    if-nez v6, :cond_1

    .line 998
    iput-object v0, v1, Lcom/sun/tools/javac/code/Symbol$ClassSymbol;->classfile:Ljavax/tools/JavaFileObject;

    :cond_1
    move-object v0, v1

    .line 1001
    :goto_1
    invoke-virtual {v2, v0}, Lcom/sun/tools/javac/util/List;->prepend(Ljava/lang/Object;)Lcom/sun/tools/javac/util/List;

    move-result-object v0

    move-object v2, v0

    .line 1002
    goto :goto_0

    .line 1000
    :cond_2
    invoke-virtual {v3, v1, v0}, Lcom/sun/tools/javac/jvm/ClassReader;->enterClass(Lcom/sun/tools/javac/util/Name;Ljavax/tools/JavaFileObject;)Lcom/sun/tools/javac/code/Symbol$ClassSymbol;

    move-result-object v0

    goto :goto_1

    .line 989
    :cond_3
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1

    .line 1003
    :cond_4
    invoke-virtual {v2}, Lcom/sun/tools/javac/util/List;->reverse()Lcom/sun/tools/javac/util/List;

    move-result-object v0

    return-object v0
.end method

.method private enterTrees(Lcom/sun/tools/javac/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sun/tools/javac/util/List",
            "<",
            "Lcom/sun/tools/javac/tree/JCTree$JCCompilationUnit;",
            ">;)V"
        }
    .end annotation

    .line 1008
    iget-object v0, p0, Lcom/sun/tools/javac/processing/JavacProcessingEnvironment$Round;->compiler:Lcom/sun/tools/javac/main/JavaCompiler;

    invoke-virtual {v0, p1}, Lcom/sun/tools/javac/main/JavaCompiler;->enterTrees(Lcom/sun/tools/javac/util/List;)Lcom/sun/tools/javac/util/List;

    .line 1009
    return-void
.end method

.method private nextContext()Lcom/sun/tools/javac/util/Context;
    .registers 4

    .line 1066
    new-instance v1, Lcom/sun/tools/javac/util/Context;

    iget-object v0, p0, Lcom/sun/tools/javac/processing/JavacProcessingEnvironment$Round;->context:Lcom/sun/tools/javac/util/Context;

    invoke-direct {v1, v0}, Lcom/sun/tools/javac/util/Context;-><init>(Lcom/sun/tools/javac/util/Context;)V

    .line 1068
    iget-object v0, p0, Lcom/sun/tools/javac/processing/JavacProcessingEnvironment$Round;->context:Lcom/sun/tools/javac/util/Context;

    invoke-static {v0}, Lcom/sun/tools/javac/util/Options;->instance(Lcom/sun/tools/javac/util/Context;)Lcom/sun/tools/javac/util/Options;

    move-result-object v0

    .line 1069
    invoke-static {v0}, Lcom/sun/tools/javac/util/Assert;->checkNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1070
    sget-object v2, Lcom/sun/tools/javac/util/Options;->optionsKey:Lcom/sun/tools/javac/util/Context$Key;

    invoke-virtual {v1, v2, v0}, Lcom/sun/tools/javac/util/Context;->put(Lcom/sun/tools/javac/util/Context$Key;Ljava/lang/Object;)V

    .line 1072
    iget-object v0, p0, Lcom/sun/tools/javac/processing/JavacProcessingEnvironment$Round;->context:Lcom/sun/tools/javac/util/Context;

    sget-object v2, Lcom/sun/tools/javac/util/Log;->outKey:Lcom/sun/tools/javac/util/Context$Key;

    invoke-virtual {v0, v2}, Lcom/sun/tools/javac/util/Context;->get(Lcom/sun/tools/javac/util/Context$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/PrintWriter;

    .line 1073
    invoke-static {v0}, Lcom/sun/tools/javac/util/Assert;->checkNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1074
    sget-object v2, Lcom/sun/tools/javac/util/Log;->outKey:Lcom/sun/tools/javac/util/Context$Key;

    invoke-virtual {v1, v2, v0}, Lcom/sun/tools/javac/util/Context;->put(Lcom/sun/tools/javac/util/Context$Key;Ljava/lang/Object;)V

    .line 1075
    iget-object v0, p0, Lcom/sun/tools/javac/processing/JavacProcessingEnvironment$Round;->context:Lcom/sun/tools/javac/util/Context;

    const-class v2, Ljava/util/Locale;

    invoke-virtual {v0, v2}, Lcom/sun/tools/javac/util/Context;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Locale;

    .line 1076
    if-eqz v0, :cond_0

    .line 1077
    const-class v2, Ljava/util/Locale;

    invoke-virtual {v1, v2, v0}, Lcom/sun/tools/javac/util/Context;->put(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 1078
    :cond_0
    iget-object v0, p0, Lcom/sun/tools/javac/processing/JavacProcessingEnvironment$Round;->this$0:Lcom/sun/tools/javac/processing/JavacProcessingEnvironment;

    invoke-static {v0}, Lcom/sun/tools/javac/processing/JavacProcessingEnvironment;->access$2000(Lcom/sun/tools/javac/processing/JavacProcessingEnvironment;)Lcom/sun/tools/javac/util/JavacMessages;

    move-result-object v0

    invoke-static {v0}, Lcom/sun/tools/javac/util/Assert;->checkNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1079
    sget-object v0, Lcom/sun/tools/javac/util/JavacMessages;->messagesKey:Lcom/sun/tools/javac/util/Context$Key;

    iget-object v2, p0, Lcom/sun/tools/javac/processing/JavacProcessingEnvironment$Round;->this$0:Lcom/sun/tools/javac/processing/JavacProcessingEnvironment;

    invoke-static {v2}, Lcom/sun/tools/javac/processing/JavacProcessingEnvironment;->access$2000(Lcom/sun/tools/javac/processing/JavacProcessingEnvironment;)Lcom/sun/tools/javac/util/JavacMessages;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/sun/tools/javac/util/Context;->put(Lcom/sun/tools/javac/util/Context$Key;Ljava/lang/Object;)V

    .line 1081
    iget-object v0, p0, Lcom/sun/tools/javac/processing/JavacProcessingEnvironment$Round;->context:Lcom/sun/tools/javac/util/Context;

    invoke-static {v0}, Lcom/sun/tools/javac/util/Names;->instance(Lcom/sun/tools/javac/util/Context;)Lcom/sun/tools/javac/util/Names;

    move-result-object v0

    .line 1084
    invoke-static {v0}, Lcom/sun/tools/javac/util/Assert;->checkNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1085
    sget-object v2, Lcom/sun/tools/javac/util/Names;->namesKey:Lcom/sun/tools/javac/util/Context$Key;

    invoke-virtual {v1, v2, v0}, Lcom/sun/tools/javac/util/Context;->put(Lcom/sun/tools/javac/util/Context$Key;Ljava/lang/Object;)V

    .line 1088
    iget-object v0, p0, Lcom/sun/tools/javac/processing/JavacProcessingEnvironment$Round;->context:Lcom/sun/tools/javac/util/Context;

    const-class v2, Ljavax/tools/DiagnosticListener;

    invoke-virtual {v0, v2}, Lcom/sun/tools/javac/util/Context;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/tools/DiagnosticListener;

    .line 1089
    if-eqz v0, :cond_1

    .line 1090
    const-class v2, Ljavax/tools/DiagnosticListener;

    invoke-virtual {v1, v2, v0}, Lcom/sun/tools/javac/util/Context;->put(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 1092
    :cond_1
    iget-object v0, p0, Lcom/sun/tools/javac/processing/JavacProcessingEnvironment$Round;->context:Lcom/sun/tools/javac/util/Context;

    const-class v2, Lcom/sun/source/util/TaskListener;

    invoke-virtual {v0, v2}, Lcom/sun/tools/javac/util/Context;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/source/util/TaskListener;

    .line 1093
    if-eqz v0, :cond_2

    .line 1094
    const-class v2, Lcom/sun/source/util/TaskListener;

    invoke-virtual {v1, v2, v0}, Lcom/sun/tools/javac/util/Context;->put(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 1096
    :cond_2
    iget-object v0, p0, Lcom/sun/tools/javac/processing/JavacProcessingEnvironment$Round;->context:Lcom/sun/tools/javac/util/Context;

    const-class v2, Lcom/sun/tools/javac/file/FSInfo;

    invoke-virtual {v0, v2}, Lcom/sun/tools/javac/util/Context;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/tools/javac/file/FSInfo;

    .line 1097
    if-eqz v0, :cond_3

    .line 1098
    const-class v2, Lcom/sun/tools/javac/file/FSInfo;

    invoke-virtual {v1, v2, v0}, Lcom/sun/tools/javac/util/Context;->put(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 1100
    :cond_3
    iget-object v0, p0, Lcom/sun/tools/javac/processing/JavacProcessingEnvironment$Round;->context:Lcom/sun/tools/javac/util/Context;

    const-class v2, Ljavax/tools/JavaFileManager;

    invoke-virtual {v0, v2}, Lcom/sun/tools/javac/util/Context;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/tools/JavaFileManager;

    .line 1101
    invoke-static {v0}, Lcom/sun/tools/javac/util/Assert;->checkNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1102
    const-class v2, Ljavax/tools/JavaFileManager;

    invoke-virtual {v1, v2, v0}, Lcom/sun/tools/javac/util/Context;->put(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 1103
    instance-of v2, v0, Lcom/sun/tools/javac/file/JavacFileManager;

    if-eqz v2, :cond_4

    .line 1104
    check-cast v0, Lcom/sun/tools/javac/file/JavacFileManager;

    invoke-virtual {v0, v1}, Lcom/sun/tools/javac/file/JavacFileManager;->setContext(Lcom/sun/tools/javac/util/Context;)V

    .line 1107
    :cond_4
    iget-object v0, p0, Lcom/sun/tools/javac/processing/JavacProcessingEnvironment$Round;->context:Lcom/sun/tools/javac/util/Context;

    invoke-static {v0}, Lcom/sun/tools/javac/util/Names;->instance(Lcom/sun/tools/javac/util/Context;)Lcom/sun/tools/javac/util/Names;

    move-result-object v0

    .line 1108
    invoke-static {v0}, Lcom/sun/tools/javac/util/Assert;->checkNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1109
    sget-object v2, Lcom/sun/tools/javac/util/Names;->namesKey:Lcom/sun/tools/javac/util/Context$Key;

    invoke-virtual {v1, v2, v0}, Lcom/sun/tools/javac/util/Context;->put(Lcom/sun/tools/javac/util/Context$Key;Ljava/lang/Object;)V

    .line 1111
    iget-object v0, p0, Lcom/sun/tools/javac/processing/JavacProcessingEnvironment$Round;->context:Lcom/sun/tools/javac/util/Context;

    invoke-static {v0}, Lcom/sun/tools/javac/parser/Keywords;->instance(Lcom/sun/tools/javac/util/Context;)Lcom/sun/tools/javac/parser/Keywords;

    move-result-object v0

    .line 1112
    invoke-static {v0}, Lcom/sun/tools/javac/util/Assert;->checkNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1113
    sget-object v2, Lcom/sun/tools/javac/parser/Keywords;->keywordsKey:Lcom/sun/tools/javac/util/Context$Key;

    invoke-virtual {v1, v2, v0}, Lcom/sun/tools/javac/util/Context;->put(Lcom/sun/tools/javac/util/Context$Key;Ljava/lang/Object;)V

    .line 1115
    iget-object v0, p0, Lcom/sun/tools/javac/processing/JavacProcessingEnvironment$Round;->context:Lcom/sun/tools/javac/util/Context;

    invoke-static {v0}, Lcom/sun/tools/javac/main/JavaCompiler;->instance(Lcom/sun/tools/javac/util/Context;)Lcom/sun/tools/javac/main/JavaCompiler;

    move-result-object v0

    .line 1116
    invoke-static {v1}, Lcom/sun/tools/javac/main/JavaCompiler;->instance(Lcom/sun/tools/javac/util/Context;)Lcom/sun/tools/javac/main/JavaCompiler;

    move-result-object v2

    .line 1117
    invoke-virtual {v2, v0}, Lcom/sun/tools/javac/main/JavaCompiler;->initRound(Lcom/sun/tools/javac/main/JavaCompiler;)V

    .line 1119
    iget-object v0, p0, Lcom/sun/tools/javac/processing/JavacProcessingEnvironment$Round;->this$0:Lcom/sun/tools/javac/processing/JavacProcessingEnvironment;

    invoke-static {v0}, Lcom/sun/tools/javac/processing/JavacProcessingEnvironment;->access$1500(Lcom/sun/tools/javac/processing/JavacProcessingEnvironment;)Lcom/sun/tools/javac/processing/JavacFiler;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/sun/tools/javac/processing/JavacFiler;->newRound(Lcom/sun/tools/javac/util/Context;)V

    .line 1120
    iget-object v0, p0, Lcom/sun/tools/javac/processing/JavacProcessingEnvironment$Round;->this$0:Lcom/sun/tools/javac/processing/JavacProcessingEnvironment;

    invoke-static {v0}, Lcom/sun/tools/javac/processing/JavacProcessingEnvironment;->access$1000(Lcom/sun/tools/javac/processing/JavacProcessingEnvironment;)Lcom/sun/tools/javac/processing/JavacMessager;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/sun/tools/javac/processing/JavacMessager;->newRound(Lcom/sun/tools/javac/util/Context;)V

    .line 1121
    iget-object v0, p0, Lcom/sun/tools/javac/processing/JavacProcessingEnvironment$Round;->this$0:Lcom/sun/tools/javac/processing/JavacProcessingEnvironment;

    invoke-static {v0}, Lcom/sun/tools/javac/processing/JavacProcessingEnvironment;->access$1300(Lcom/sun/tools/javac/processing/JavacProcessingEnvironment;)Lcom/sun/tools/javac/model/JavacElements;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/sun/tools/javac/model/JavacElements;->setContext(Lcom/sun/tools/javac/util/Context;)V

    .line 1122
    iget-object v0, p0, Lcom/sun/tools/javac/processing/JavacProcessingEnvironment$Round;->this$0:Lcom/sun/tools/javac/processing/JavacProcessingEnvironment;

    invoke-static {v0}, Lcom/sun/tools/javac/processing/JavacProcessingEnvironment;->access$2100(Lcom/sun/tools/javac/processing/JavacProcessingEnvironment;)Lcom/sun/tools/javac/model/JavacTypes;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/sun/tools/javac/model/JavacTypes;->setContext(Lcom/sun/tools/javac/util/Context;)V

    .line 1124
    iget-object v0, p0, Lcom/sun/tools/javac/processing/JavacProcessingEnvironment$Round;->context:Lcom/sun/tools/javac/util/Context;

    const-class v2, Lcom/sun/tools/javac/api/JavacTaskImpl;

    invoke-virtual {v0, v2}, Lcom/sun/tools/javac/util/Context;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/tools/javac/api/JavacTaskImpl;

    .line 1125
    if-eqz v0, :cond_5

    .line 1126
    const-class v2, Lcom/sun/tools/javac/api/JavacTaskImpl;

    invoke-virtual {v1, v2, v0}, Lcom/sun/tools/javac/util/Context;->put(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 1127
    invoke-virtual {v0, v1}, Lcom/sun/tools/javac/api/JavacTaskImpl;->updateContext(Lcom/sun/tools/javac/util/Context;)V

    .line 1130
    :cond_5
    iget-object v0, p0, Lcom/sun/tools/javac/processing/JavacProcessingEnvironment$Round;->context:Lcom/sun/tools/javac/util/Context;

    const-class v2, Lcom/sun/tools/javac/api/JavacTrees;

    invoke-virtual {v0, v2}, Lcom/sun/tools/javac/util/Context;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/tools/javac/api/JavacTrees;

    .line 1131
    if-eqz v0, :cond_6

    .line 1132
    const-class v2, Lcom/sun/tools/javac/api/JavacTrees;

    invoke-virtual {v1, v2, v0}, Lcom/sun/tools/javac/util/Context;->put(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 1133
    invoke-virtual {v0, v1}, Lcom/sun/tools/javac/api/JavacTrees;->updateContext(Lcom/sun/tools/javac/util/Context;)V

    .line 1136
    :cond_6
    iget-object v0, p0, Lcom/sun/tools/javac/processing/JavacProcessingEnvironment$Round;->context:Lcom/sun/tools/javac/util/Context;

    invoke-virtual {v0}, Lcom/sun/tools/javac/util/Context;->clear()V

    .line 1137
    return-object v1
.end method

.method private printRoundInfo(Z)V
    .registers 9

    .line 1050
    iget-object v0, p0, Lcom/sun/tools/javac/processing/JavacProcessingEnvironment$Round;->this$0:Lcom/sun/tools/javac/processing/JavacProcessingEnvironment;

    invoke-static {v0}, Lcom/sun/tools/javac/processing/JavacProcessingEnvironment;->access$1800(Lcom/sun/tools/javac/processing/JavacProcessingEnvironment;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sun/tools/javac/processing/JavacProcessingEnvironment$Round;->this$0:Lcom/sun/tools/javac/processing/JavacProcessingEnvironment;

    invoke-static {v0}, Lcom/sun/tools/javac/processing/JavacProcessingEnvironment;->access$1900(Lcom/sun/tools/javac/processing/JavacProcessingEnvironment;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1051
    :cond_0
    if-eqz p1, :cond_2

    invoke-static {}, Lcom/sun/tools/javac/util/List;->nil()Lcom/sun/tools/javac/util/List;

    move-result-object v0

    move-object v1, v0

    .line 1052
    :goto_0
    if-eqz p1, :cond_3

    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    .line 1053
    :goto_1
    iget-object v2, p0, Lcom/sun/tools/javac/processing/JavacProcessingEnvironment$Round;->log:Lcom/sun/tools/javac/util/Log;

    iget v3, p0, Lcom/sun/tools/javac/processing/JavacProcessingEnvironment$Round;->number:I

    .line 1054
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "{"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1055
    const-string v5, ", "

    invoke-virtual {v1, v5}, Lcom/sun/tools/javac/util/List;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1057
    const-string v4, "x.print.rounds"

    const/4 v5, 0x4

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v5, v6

    const/4 v3, 0x1

    aput-object v1, v5, v3

    const/4 v1, 0x2

    aput-object v0, v5, v1

    const/4 v0, 0x3

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    aput-object v1, v5, v0

    invoke-virtual {v2, v4, v5}, Lcom/sun/tools/javac/util/Log;->printNoteLines(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1059
    :cond_1
    return-void

    .line 1051
    :cond_2
    iget-object v0, p0, Lcom/sun/tools/javac/processing/JavacProcessingEnvironment$Round;->topLevelClasses:Lcom/sun/tools/javac/util/List;

    move-object v1, v0

    goto :goto_0

    .line 1052
    :cond_3
    iget-object v0, p0, Lcom/sun/tools/javac/processing/JavacProcessingEnvironment$Round;->annotationsPresent:Ljava/util/Set;

    goto :goto_1
.end method


# virtual methods
.method errorCount()I
    .registers 2

    .line 937
    iget-object v0, p0, Lcom/sun/tools/javac/processing/JavacProcessingEnvironment$Round;->compiler:Lcom/sun/tools/javac/main/JavaCompiler;

    invoke-virtual {v0}, Lcom/sun/tools/javac/main/JavaCompiler;->errorCount()I

    move-result v0

    return v0
.end method

.method finalCompiler(Z)Lcom/sun/tools/javac/main/JavaCompiler;
    .registers 7

    const/4 v4, 0x0

    .line 922
    :try_start_0
    invoke-direct {p0}, Lcom/sun/tools/javac/processing/JavacProcessingEnvironment$Round;->nextContext()Lcom/sun/tools/javac/util/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sun/tools/javac/main/JavaCompiler;->instance(Lcom/sun/tools/javac/util/Context;)Lcom/sun/tools/javac/main/JavaCompiler;

    move-result-object v0

    .line 923
    iget-object v1, v0, Lcom/sun/tools/javac/main/JavaCompiler;->log:Lcom/sun/tools/javac/util/Log;

    iget v2, v1, Lcom/sun/tools/javac/util/Log;->nwarnings:I

    iget-object v3, p0, Lcom/sun/tools/javac/processing/JavacProcessingEnvironment$Round;->compiler:Lcom/sun/tools/javac/main/JavaCompiler;

    iget-object v3, v3, Lcom/sun/tools/javac/main/JavaCompiler;->log:Lcom/sun/tools/javac/util/Log;

    iget v3, v3, Lcom/sun/tools/javac/util/Log;->nwarnings:I

    add-int/2addr v2, v3

    iput v2, v1, Lcom/sun/tools/javac/util/Log;->nwarnings:I

    .line 924
    if-eqz p1, :cond_0

    .line 925
    iget-object v1, v0, Lcom/sun/tools/javac/main/JavaCompiler;->log:Lcom/sun/tools/javac/util/Log;

    iget v2, v1, Lcom/sun/tools/javac/util/Log;->nerrors:I

    iget-object v3, p0, Lcom/sun/tools/javac/processing/JavacProcessingEnvironment$Round;->compiler:Lcom/sun/tools/javac/main/JavaCompiler;

    iget-object v3, v3, Lcom/sun/tools/javac/main/JavaCompiler;->log:Lcom/sun/tools/javac/util/Log;

    iget v3, v3, Lcom/sun/tools/javac/util/Log;->nerrors:I

    add-int/2addr v2, v3

    iput v2, v1, Lcom/sun/tools/javac/util/Log;->nerrors:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 927
    :cond_0
    iget-object v1, p0, Lcom/sun/tools/javac/processing/JavacProcessingEnvironment$Round;->compiler:Lcom/sun/tools/javac/main/JavaCompiler;

    invoke-virtual {v1, v4}, Lcom/sun/tools/javac/main/JavaCompiler;->close(Z)V

    return-object v0

    .line 929
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/sun/tools/javac/processing/JavacProcessingEnvironment$Round;->compiler:Lcom/sun/tools/javac/main/JavaCompiler;

    invoke-virtual {v1, v4}, Lcom/sun/tools/javac/main/JavaCompiler;->close(Z)V

    .line 930
    throw v0
.end method

.method findAnnotationsPresent()V
    .registers 5

    .line 970
    new-instance v1, Lcom/sun/tools/javac/processing/JavacProcessingEnvironment$ComputeAnnotationSet;

    iget-object v0, p0, Lcom/sun/tools/javac/processing/JavacProcessingEnvironment$Round;->this$0:Lcom/sun/tools/javac/processing/JavacProcessingEnvironment;

    invoke-static {v0}, Lcom/sun/tools/javac/processing/JavacProcessingEnvironment;->access$1300(Lcom/sun/tools/javac/processing/JavacProcessingEnvironment;)Lcom/sun/tools/javac/model/JavacElements;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/sun/tools/javac/processing/JavacProcessingEnvironment$ComputeAnnotationSet;-><init>(Ljavax/lang/model/util/Elements;)V

    .line 972
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Lcom/sun/tools/javac/processing/JavacProcessingEnvironment$Round;->annotationsPresent:Ljava/util/Set;

    .line 973
    iget-object v0, p0, Lcom/sun/tools/javac/processing/JavacProcessingEnvironment$Round;->topLevelClasses:Lcom/sun/tools/javac/util/List;

    invoke-virtual {v0}, Lcom/sun/tools/javac/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/tools/javac/code/Symbol$ClassSymbol;

    .line 974
    iget-object v3, p0, Lcom/sun/tools/javac/processing/JavacProcessingEnvironment$Round;->annotationsPresent:Ljava/util/Set;

    invoke-virtual {v1, v0, v3}, Lcom/sun/tools/javac/processing/JavacProcessingEnvironment$ComputeAnnotationSet;->scan(Ljavax/lang/model/element/Element;Ljava/util/Set;)Ljava/util/Set;

    goto :goto_0

    .line 975
    :cond_0
    iget-object v0, p0, Lcom/sun/tools/javac/processing/JavacProcessingEnvironment$Round;->packageInfoFiles:Lcom/sun/tools/javac/util/List;

    invoke-virtual {v0}, Lcom/sun/tools/javac/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/tools/javac/code/Symbol$PackageSymbol;

    .line 976
    iget-object v3, p0, Lcom/sun/tools/javac/processing/JavacProcessingEnvironment$Round;->annotationsPresent:Ljava/util/Set;

    invoke-virtual {v1, v0, v3}, Lcom/sun/tools/javac/processing/JavacProcessingEnvironment$ComputeAnnotationSet;->scan(Ljavax/lang/model/element/Element;Ljava/util/Set;)Ljava/util/Set;

    goto :goto_1

    .line 977
    :cond_1
    return-void
.end method

.method next(Ljava/util/Set;Ljava/util/Map;)Lcom/sun/tools/javac/processing/JavacProcessingEnvironment$Round;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljavax/tools/JavaFileObject;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljavax/tools/JavaFileObject;",
            ">;)",
            "Lcom/sun/tools/javac/processing/JavacProcessingEnvironment$Round;"
        }
    .end annotation

    const/4 v2, 0x0

    .line 913
    :try_start_0
    new-instance v0, Lcom/sun/tools/javac/processing/JavacProcessingEnvironment$Round;

    iget-object v1, p0, Lcom/sun/tools/javac/processing/JavacProcessingEnvironment$Round;->this$0:Lcom/sun/tools/javac/processing/JavacProcessingEnvironment;

    invoke-direct {v0, v1, p0, p1, p2}, Lcom/sun/tools/javac/processing/JavacProcessingEnvironment$Round;-><init>(Lcom/sun/tools/javac/processing/JavacProcessingEnvironment;Lcom/sun/tools/javac/processing/JavacProcessingEnvironment$Round;Ljava/util/Set;Ljava/util/Map;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 915
    iget-object v1, p0, Lcom/sun/tools/javac/processing/JavacProcessingEnvironment$Round;->compiler:Lcom/sun/tools/javac/main/JavaCompiler;

    invoke-virtual {v1, v2}, Lcom/sun/tools/javac/main/JavaCompiler;->close(Z)V

    .line 913
    return-object v0

    .line 915
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/sun/tools/javac/processing/JavacProcessingEnvironment$Round;->compiler:Lcom/sun/tools/javac/main/JavaCompiler;

    invoke-virtual {v1, v2}, Lcom/sun/tools/javac/main/JavaCompiler;->close(Z)V

    .line 916
    throw v0
.end method

.method run(ZZ)V
    .registers 9

    .line 1013
    invoke-direct {p0, p1}, Lcom/sun/tools/javac/processing/JavacProcessingEnvironment$Round;->printRoundInfo(Z)V

    .line 1015
    iget-object v0, p0, Lcom/sun/tools/javac/processing/JavacProcessingEnvironment$Round;->context:Lcom/sun/tools/javac/util/Context;

    const-class v1, Lcom/sun/source/util/TaskListener;

    invoke-virtual {v0, v1}, Lcom/sun/tools/javac/util/Context;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/source/util/TaskListener;

    .line 1016
    if-eqz v0, :cond_0

    .line 1017
    new-instance v1, Lcom/sun/source/util/TaskEvent;

    sget-object v2, Lcom/sun/source/util/TaskEvent$Kind;->ANNOTATION_PROCESSING_ROUND:Lcom/sun/source/util/TaskEvent$Kind;

    invoke-direct {v1, v2}, Lcom/sun/source/util/TaskEvent;-><init>(Lcom/sun/source/util/TaskEvent$Kind;)V

    invoke-interface {v0, v1}, Lcom/sun/source/util/TaskListener;->started(Lcom/sun/source/util/TaskEvent;)V

    .line 1020
    :cond_0
    if-eqz p1, :cond_2

    .line 1021
    :try_start_0
    iget-object v1, p0, Lcom/sun/tools/javac/processing/JavacProcessingEnvironment$Round;->this$0:Lcom/sun/tools/javac/processing/JavacProcessingEnvironment;

    invoke-static {v1}, Lcom/sun/tools/javac/processing/JavacProcessingEnvironment;->access$1500(Lcom/sun/tools/javac/processing/JavacProcessingEnvironment;)Lcom/sun/tools/javac/processing/JavacFiler;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/sun/tools/javac/processing/JavacFiler;->setLastRound(Z)V

    .line 1022
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v1

    .line 1023
    new-instance v2, Lcom/sun/tools/javac/processing/JavacRoundEnvironment;

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/sun/tools/javac/processing/JavacProcessingEnvironment$Round;->this$0:Lcom/sun/tools/javac/processing/JavacProcessingEnvironment;

    invoke-direct {v2, v3, p2, v1, v4}, Lcom/sun/tools/javac/processing/JavacRoundEnvironment;-><init>(ZZLjava/util/Set;Ljavax/annotation/processing/ProcessingEnvironment;)V

    .line 1027
    iget-object v1, p0, Lcom/sun/tools/javac/processing/JavacProcessingEnvironment$Round;->this$0:Lcom/sun/tools/javac/processing/JavacProcessingEnvironment;

    invoke-static {v1}, Lcom/sun/tools/javac/processing/JavacProcessingEnvironment;->access$1600(Lcom/sun/tools/javac/processing/JavacProcessingEnvironment;)Lcom/sun/tools/javac/processing/JavacProcessingEnvironment$DiscoveredProcessors;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sun/tools/javac/processing/JavacProcessingEnvironment$DiscoveredProcessors;->iterator()Lcom/sun/tools/javac/processing/JavacProcessingEnvironment$DiscoveredProcessors$ProcessorStateIterator;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/sun/tools/javac/processing/JavacProcessingEnvironment$DiscoveredProcessors$ProcessorStateIterator;->runContributingProcs(Ljavax/annotation/processing/RoundEnvironment;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1032
    :goto_0
    if-eqz v0, :cond_1

    .line 1033
    new-instance v1, Lcom/sun/source/util/TaskEvent;

    sget-object v2, Lcom/sun/source/util/TaskEvent$Kind;->ANNOTATION_PROCESSING_ROUND:Lcom/sun/source/util/TaskEvent$Kind;

    invoke-direct {v1, v2}, Lcom/sun/source/util/TaskEvent;-><init>(Lcom/sun/source/util/TaskEvent$Kind;)V

    invoke-interface {v0, v1}, Lcom/sun/source/util/TaskListener;->finished(Lcom/sun/source/util/TaskEvent;)V

    .line 1036
    :cond_1
    iget-object v0, p0, Lcom/sun/tools/javac/processing/JavacProcessingEnvironment$Round;->this$0:Lcom/sun/tools/javac/processing/JavacProcessingEnvironment;

    invoke-static {v0}, Lcom/sun/tools/javac/processing/JavacProcessingEnvironment;->access$1000(Lcom/sun/tools/javac/processing/JavacProcessingEnvironment;)Lcom/sun/tools/javac/processing/JavacMessager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sun/tools/javac/processing/JavacMessager;->errorCount()I

    move-result v0

    iput v0, p0, Lcom/sun/tools/javac/processing/JavacProcessingEnvironment$Round;->nMessagerErrors:I

    .line 1037
    return-void

    .line 1029
    :cond_2
    :try_start_1
    iget-object v1, p0, Lcom/sun/tools/javac/processing/JavacProcessingEnvironment$Round;->this$0:Lcom/sun/tools/javac/processing/JavacProcessingEnvironment;

    iget-object v2, p0, Lcom/sun/tools/javac/processing/JavacProcessingEnvironment$Round;->context:Lcom/sun/tools/javac/util/Context;

    iget-object v3, p0, Lcom/sun/tools/javac/processing/JavacProcessingEnvironment$Round;->annotationsPresent:Ljava/util/Set;

    iget-object v4, p0, Lcom/sun/tools/javac/processing/JavacProcessingEnvironment$Round;->topLevelClasses:Lcom/sun/tools/javac/util/List;

    iget-object v5, p0, Lcom/sun/tools/javac/processing/JavacProcessingEnvironment$Round;->packageInfoFiles:Lcom/sun/tools/javac/util/List;

    invoke-static {v1, v2, v3, v4, v5}, Lcom/sun/tools/javac/processing/JavacProcessingEnvironment;->access$1700(Lcom/sun/tools/javac/processing/JavacProcessingEnvironment;Lcom/sun/tools/javac/util/Context;Ljava/util/Set;Lcom/sun/tools/javac/util/List;Lcom/sun/tools/javac/util/List;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1032
    :catchall_0
    move-exception v1

    if-eqz v0, :cond_3

    .line 1033
    new-instance v2, Lcom/sun/source/util/TaskEvent;

    sget-object v3, Lcom/sun/source/util/TaskEvent$Kind;->ANNOTATION_PROCESSING_ROUND:Lcom/sun/source/util/TaskEvent$Kind;

    invoke-direct {v2, v3}, Lcom/sun/source/util/TaskEvent;-><init>(Lcom/sun/source/util/TaskEvent$Kind;)V

    invoke-interface {v0, v2}, Lcom/sun/source/util/TaskListener;->finished(Lcom/sun/source/util/TaskEvent;)V

    .line 1034
    :cond_3
    throw v1
.end method

.method showDiagnostics(Z)V
    .registers 4

    .line 1040
    const-class v0, Ljavax/tools/Diagnostic$Kind;

    invoke-static {v0}, Ljava/util/EnumSet;->allOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v0

    .line 1041
    if-nez p1, :cond_0

    .line 1043
    sget-object v1, Ljavax/tools/Diagnostic$Kind;->ERROR:Ljavax/tools/Diagnostic$Kind;

    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 1045
    :cond_0
    iget-object v1, p0, Lcom/sun/tools/javac/processing/JavacProcessingEnvironment$Round;->log:Lcom/sun/tools/javac/util/Log;

    invoke-virtual {v1, v0}, Lcom/sun/tools/javac/util/Log;->reportDeferredDiagnostics(Ljava/util/Set;)V

    .line 1046
    return-void
.end method

.method unrecoverableError()Z
    .registers 6

    const/4 v1, 0x1

    .line 947
    iget-object v0, p0, Lcom/sun/tools/javac/processing/JavacProcessingEnvironment$Round;->this$0:Lcom/sun/tools/javac/processing/JavacProcessingEnvironment;

    invoke-static {v0}, Lcom/sun/tools/javac/processing/JavacProcessingEnvironment;->access$1000(Lcom/sun/tools/javac/processing/JavacProcessingEnvironment;)Lcom/sun/tools/javac/processing/JavacMessager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sun/tools/javac/processing/JavacMessager;->errorRaised()Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    .line 964
    :goto_0
    return v0

    .line 950
    :cond_0
    iget-object v0, p0, Lcom/sun/tools/javac/processing/JavacProcessingEnvironment$Round;->log:Lcom/sun/tools/javac/util/Log;

    iget-object v0, v0, Lcom/sun/tools/javac/util/Log;->deferredDiagnostics:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/tools/javac/util/JCDiagnostic;

    .line 951
    sget-object v3, Lcom/sun/tools/javac/processing/JavacProcessingEnvironment$2;->$SwitchMap$javax$tools$Diagnostic$Kind:[I

    invoke-virtual {v0}, Lcom/sun/tools/javac/util/JCDiagnostic;->getKind()Ljavax/tools/Diagnostic$Kind;

    move-result-object v4

    invoke-virtual {v4}, Ljavax/tools/Diagnostic$Kind;->ordinal()I

    move-result v4

    aget v3, v3, v4

    if-eq v3, v1, :cond_3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    .line 958
    iget-object v3, p0, Lcom/sun/tools/javac/processing/JavacProcessingEnvironment$Round;->this$0:Lcom/sun/tools/javac/processing/JavacProcessingEnvironment;

    invoke-static {v3}, Lcom/sun/tools/javac/processing/JavacProcessingEnvironment;->access$1200(Lcom/sun/tools/javac/processing/JavacProcessingEnvironment;)Z

    move-result v3

    if-nez v3, :cond_2

    sget-object v3, Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticFlag;->RECOVERABLE:Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticFlag;

    invoke-virtual {v0, v3}, Lcom/sun/tools/javac/util/JCDiagnostic;->isFlagSet(Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticFlag;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_2
    move v0, v1

    .line 959
    goto :goto_0

    .line 953
    :cond_3
    iget-object v0, p0, Lcom/sun/tools/javac/processing/JavacProcessingEnvironment$Round;->this$0:Lcom/sun/tools/javac/processing/JavacProcessingEnvironment;

    invoke-static {v0}, Lcom/sun/tools/javac/processing/JavacProcessingEnvironment;->access$1100(Lcom/sun/tools/javac/processing/JavacProcessingEnvironment;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    .line 954
    goto :goto_0

    .line 964
    :cond_4
    const/4 v0, 0x0

    goto :goto_0
.end method

.method warningCount()I
    .registers 2

    .line 942
    iget-object v0, p0, Lcom/sun/tools/javac/processing/JavacProcessingEnvironment$Round;->compiler:Lcom/sun/tools/javac/main/JavaCompiler;

    invoke-virtual {v0}, Lcom/sun/tools/javac/main/JavaCompiler;->warningCount()I

    move-result v0

    return v0
.end method
