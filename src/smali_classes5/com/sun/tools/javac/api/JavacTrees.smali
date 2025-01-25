.class public Lcom/sun/tools/javac/api/JavacTrees;
.super Lcom/sun/source/util/Trees;
.source "JavacTrees.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sun/tools/javac/api/JavacTrees$Copier;
    }
.end annotation


# instance fields
.field private attr:Lcom/sun/tools/javac/comp/Attr;

.field private elements:Lcom/sun/tools/javac/model/JavacElements;

.field private enter:Lcom/sun/tools/javac/comp/Enter;

.field private javacTaskImpl:Lcom/sun/tools/javac/api/JavacTaskImpl;

.field private log:Lcom/sun/tools/javac/util/Log;

.field private memberEnter:Lcom/sun/tools/javac/comp/MemberEnter;

.field private resolve:Lcom/sun/tools/javac/comp/Resolve;

.field private treeMaker:Lcom/sun/tools/javac/tree/TreeMaker;


# direct methods
.method private constructor <init>(Lcom/sun/tools/javac/util/Context;)V
    .registers 3

    .line 115
    invoke-direct {p0}, Lcom/sun/source/util/Trees;-><init>()V

    .line 116
    const-class v0, Lcom/sun/tools/javac/api/JavacTrees;

    invoke-virtual {p1, v0, p0}, Lcom/sun/tools/javac/util/Context;->put(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 117
    invoke-direct {p0, p1}, Lcom/sun/tools/javac/api/JavacTrees;->init(Lcom/sun/tools/javac/util/Context;)V

    .line 118
    return-void
.end method

.method private attribExprToTree(Lcom/sun/tools/javac/tree/JCTree$JCExpression;Lcom/sun/tools/javac/comp/Env;Lcom/sun/tools/javac/tree/JCTree;)Lcom/sun/tools/javac/comp/Env;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sun/tools/javac/tree/JCTree$JCExpression;",
            "Lcom/sun/tools/javac/comp/Env",
            "<",
            "Lcom/sun/tools/javac/comp/AttrContext;",
            ">;",
            "Lcom/sun/tools/javac/tree/JCTree;",
            ")",
            "Lcom/sun/tools/javac/comp/Env",
            "<",
            "Lcom/sun/tools/javac/comp/AttrContext;",
            ">;"
        }
    .end annotation

    .line 345
    iget-object v0, p0, Lcom/sun/tools/javac/api/JavacTrees;->log:Lcom/sun/tools/javac/util/Log;

    iget-object v1, p2, Lcom/sun/tools/javac/comp/Env;->toplevel:Lcom/sun/tools/javac/tree/JCTree$JCCompilationUnit;

    iget-object v1, v1, Lcom/sun/tools/javac/tree/JCTree$JCCompilationUnit;->sourcefile:Ljavax/tools/JavaFileObject;

    invoke-virtual {v0, v1}, Lcom/sun/tools/javac/util/Log;->useSource(Ljavax/tools/JavaFileObject;)Ljavax/tools/JavaFileObject;

    move-result-object v1

    .line 347
    :try_start_a
    iget-object v0, p0, Lcom/sun/tools/javac/api/JavacTrees;->attr:Lcom/sun/tools/javac/comp/Attr;

    invoke-virtual {v0, p1, p2, p3}, Lcom/sun/tools/javac/comp/Attr;->attribExprToTree(Lcom/sun/tools/javac/tree/JCTree;Lcom/sun/tools/javac/comp/Env;Lcom/sun/tools/javac/tree/JCTree;)Lcom/sun/tools/javac/comp/Env;
    :try_end_f
    .catchall {:try_start_a .. :try_end_f} :catchall_16

    move-result-object v0

    .line 349
    iget-object v2, p0, Lcom/sun/tools/javac/api/JavacTrees;->log:Lcom/sun/tools/javac/util/Log;

    invoke-virtual {v2, v1}, Lcom/sun/tools/javac/util/Log;->useSource(Ljavax/tools/JavaFileObject;)Ljavax/tools/JavaFileObject;

    .line 347
    return-object v0

    .line 349
    :catchall_16
    move-exception v0

    iget-object v2, p0, Lcom/sun/tools/javac/api/JavacTrees;->log:Lcom/sun/tools/javac/util/Log;

    invoke-virtual {v2, v1}, Lcom/sun/tools/javac/util/Log;->useSource(Ljavax/tools/JavaFileObject;)Ljavax/tools/JavaFileObject;

    .line 350
    throw v0
.end method

.method private attribStatToTree(Lcom/sun/tools/javac/tree/JCTree;Lcom/sun/tools/javac/comp/Env;Lcom/sun/tools/javac/tree/JCTree;)Lcom/sun/tools/javac/comp/Env;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sun/tools/javac/tree/JCTree;",
            "Lcom/sun/tools/javac/comp/Env",
            "<",
            "Lcom/sun/tools/javac/comp/AttrContext;",
            ">;",
            "Lcom/sun/tools/javac/tree/JCTree;",
            ")",
            "Lcom/sun/tools/javac/comp/Env",
            "<",
            "Lcom/sun/tools/javac/comp/AttrContext;",
            ">;"
        }
    .end annotation

    .line 336
    iget-object v0, p0, Lcom/sun/tools/javac/api/JavacTrees;->log:Lcom/sun/tools/javac/util/Log;

    iget-object v1, p2, Lcom/sun/tools/javac/comp/Env;->toplevel:Lcom/sun/tools/javac/tree/JCTree$JCCompilationUnit;

    iget-object v1, v1, Lcom/sun/tools/javac/tree/JCTree$JCCompilationUnit;->sourcefile:Ljavax/tools/JavaFileObject;

    invoke-virtual {v0, v1}, Lcom/sun/tools/javac/util/Log;->useSource(Ljavax/tools/JavaFileObject;)Ljavax/tools/JavaFileObject;

    move-result-object v1

    .line 338
    :try_start_a
    iget-object v0, p0, Lcom/sun/tools/javac/api/JavacTrees;->attr:Lcom/sun/tools/javac/comp/Attr;

    invoke-virtual {v0, p1, p2, p3}, Lcom/sun/tools/javac/comp/Attr;->attribStatToTree(Lcom/sun/tools/javac/tree/JCTree;Lcom/sun/tools/javac/comp/Env;Lcom/sun/tools/javac/tree/JCTree;)Lcom/sun/tools/javac/comp/Env;
    :try_end_f
    .catchall {:try_start_a .. :try_end_f} :catchall_16

    move-result-object v0

    .line 340
    iget-object v2, p0, Lcom/sun/tools/javac/api/JavacTrees;->log:Lcom/sun/tools/javac/util/Log;

    invoke-virtual {v2, v1}, Lcom/sun/tools/javac/util/Log;->useSource(Ljavax/tools/JavaFileObject;)Ljavax/tools/JavaFileObject;

    .line 338
    return-object v0

    .line 340
    :catchall_16
    move-exception v0

    iget-object v2, p0, Lcom/sun/tools/javac/api/JavacTrees;->log:Lcom/sun/tools/javac/util/Log;

    invoke-virtual {v2, v1}, Lcom/sun/tools/javac/util/Log;->useSource(Ljavax/tools/JavaFileObject;)Ljavax/tools/JavaFileObject;

    .line 341
    throw v0
.end method

.method private getAttrContext(Lcom/sun/source/util/TreePath;)Lcom/sun/tools/javac/comp/Env;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sun/source/util/TreePath;",
            ")",
            "Lcom/sun/tools/javac/comp/Env",
            "<",
            "Lcom/sun/tools/javac/comp/AttrContext;",
            ">;"
        }
    .end annotation

    const/4 v3, 0x0

    .line 263
    invoke-virtual {p1}, Lcom/sun/source/util/TreePath;->getLeaf()Lcom/sun/source/tree/Tree;

    move-result-object v0

    instance-of v0, v0, Lcom/sun/tools/javac/tree/JCTree;

    if-eqz v0, :cond_d0

    .line 269
    iget-object v0, p0, Lcom/sun/tools/javac/api/JavacTrees;->javacTaskImpl:Lcom/sun/tools/javac/api/JavacTaskImpl;

    if-eqz v0, :cond_11

    .line 271
    const/4 v1, 0x0

    :try_start_e
    invoke-virtual {v0, v1}, Lcom/sun/tools/javac/api/JavacTaskImpl;->enter(Ljava/lang/Iterable;)Ljava/lang/Iterable;
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_11} :catch_36

    .line 278
    :cond_11
    invoke-virtual {p1}, Lcom/sun/source/util/TreePath;->getCompilationUnit()Lcom/sun/source/tree/CompilationUnitTree;

    move-result-object v0

    check-cast v0, Lcom/sun/tools/javac/tree/JCTree$JCCompilationUnit;

    .line 279
    new-instance v6, Lcom/sun/tools/javac/api/JavacTrees$Copier;

    iget-object v1, p0, Lcom/sun/tools/javac/api/JavacTrees;->treeMaker:Lcom/sun/tools/javac/tree/TreeMaker;

    invoke-virtual {v1, v0}, Lcom/sun/tools/javac/tree/TreeMaker;->forToplevel(Lcom/sun/tools/javac/tree/JCTree$JCCompilationUnit;)Lcom/sun/tools/javac/tree/TreeMaker;

    move-result-object v0

    invoke-direct {v6, v0}, Lcom/sun/tools/javac/api/JavacTrees$Copier;-><init>(Lcom/sun/tools/javac/tree/TreeMaker;)V

    .line 285
    invoke-static {}, Lcom/sun/tools/javac/util/List;->nil()Lcom/sun/tools/javac/util/List;

    move-result-object v0

    move-object v1, p1

    .line 287
    :goto_27
    if-eqz v1, :cond_d9

    .line 288
    invoke-virtual {v1}, Lcom/sun/source/util/TreePath;->getLeaf()Lcom/sun/source/tree/Tree;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/sun/tools/javac/util/List;->prepend(Ljava/lang/Object;)Lcom/sun/tools/javac/util/List;

    move-result-object v0

    .line 289
    invoke-virtual {v1}, Lcom/sun/source/util/TreePath;->getParentPath()Lcom/sun/source/util/TreePath;

    move-result-object v1

    goto :goto_27

    .line 272
    :catch_36
    move-exception v0

    .line 273
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unexpected error while entering symbols: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    new-instance v0, Ljava/lang/Error;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v0

    .line 312
    :pswitch_4e  #0x7
    check-cast v0, Lcom/sun/tools/javac/tree/JCTree$JCVariableDecl;

    move-object v2, v0

    move-object v3, v4

    .line 292
    :goto_52
    iget-object v0, v1, Lcom/sun/tools/javac/util/List;->tail:Lcom/sun/tools/javac/util/List;

    move-object v1, v0

    move-object v4, v3

    :goto_56
    invoke-virtual {v1}, Lcom/sun/tools/javac/util/List;->nonEmpty()Z

    move-result v0

    if-eqz v0, :cond_c7

    .line 293
    iget-object v0, v1, Lcom/sun/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v0, Lcom/sun/source/tree/Tree;

    .line 294
    sget-object v3, Lcom/sun/tools/javac/api/JavacTrees$2;->$SwitchMap$com$sun$source$tree$Tree$Kind:[I

    invoke-interface {v0}, Lcom/sun/source/tree/Tree;->getKind()Lcom/sun/source/tree/Tree$Kind;

    move-result-object v7

    invoke-virtual {v7}, Lcom/sun/source/tree/Tree$Kind;->ordinal()I

    move-result v7

    aget v3, v3, v7

    packed-switch v3, :pswitch_data_e0

    .line 324
    if-eqz v2, :cond_d6

    invoke-virtual {v2}, Lcom/sun/tools/javac/tree/JCTree$JCVariableDecl;->getInitializer()Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    move-result-object v3

    if-ne v3, v0, :cond_d6

    .line 325
    iget-object v1, p0, Lcom/sun/tools/javac/api/JavacTrees;->memberEnter:Lcom/sun/tools/javac/comp/MemberEnter;

    invoke-virtual {v1, v2, v5}, Lcom/sun/tools/javac/comp/MemberEnter;->getInitEnv(Lcom/sun/tools/javac/tree/JCTree$JCVariableDecl;Lcom/sun/tools/javac/comp/Env;)Lcom/sun/tools/javac/comp/Env;

    move-result-object v2

    .line 326
    check-cast v0, Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    invoke-virtual {p1}, Lcom/sun/source/util/TreePath;->getLeaf()Lcom/sun/source/tree/Tree;

    move-result-object v1

    check-cast v1, Lcom/sun/tools/javac/tree/JCTree;

    invoke-virtual {v6, v0, v1}, Lcom/sun/tools/javac/api/JavacTrees$Copier;->copy(Lcom/sun/tools/javac/tree/JCTree;Lcom/sun/tools/javac/tree/JCTree;)Lcom/sun/tools/javac/tree/JCTree;

    move-result-object v0

    check-cast v0, Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    .line 327
    iget-object v1, v6, Lcom/sun/tools/javac/api/JavacTrees$Copier;->leafCopy:Lcom/sun/tools/javac/tree/JCTree;

    invoke-direct {p0, v0, v2, v1}, Lcom/sun/tools/javac/api/JavacTrees;->attribExprToTree(Lcom/sun/tools/javac/tree/JCTree$JCExpression;Lcom/sun/tools/javac/comp/Env;Lcom/sun/tools/javac/tree/JCTree;)Lcom/sun/tools/javac/comp/Env;

    move-result-object v5

    .line 332
    :cond_91
    :goto_91
    return-object v5

    .line 316
    :pswitch_92  #0x8
    if-eqz v4, :cond_9a

    .line 317
    iget-object v1, p0, Lcom/sun/tools/javac/api/JavacTrees;->memberEnter:Lcom/sun/tools/javac/comp/MemberEnter;

    invoke-virtual {v1, v4, v5}, Lcom/sun/tools/javac/comp/MemberEnter;->getMethodEnv(Lcom/sun/tools/javac/tree/JCTree$JCMethodDecl;Lcom/sun/tools/javac/comp/Env;)Lcom/sun/tools/javac/comp/Env;

    move-result-object v5

    .line 318
    :cond_9a
    check-cast v0, Lcom/sun/tools/javac/tree/JCTree;

    invoke-virtual {p1}, Lcom/sun/source/util/TreePath;->getLeaf()Lcom/sun/source/tree/Tree;

    move-result-object v1

    check-cast v1, Lcom/sun/tools/javac/tree/JCTree;

    invoke-virtual {v6, v0, v1}, Lcom/sun/tools/javac/api/JavacTrees$Copier;->copy(Lcom/sun/tools/javac/tree/JCTree;Lcom/sun/tools/javac/tree/JCTree;)Lcom/sun/tools/javac/tree/JCTree;

    move-result-object v0

    .line 319
    iget-object v1, v6, Lcom/sun/tools/javac/api/JavacTrees$Copier;->leafCopy:Lcom/sun/tools/javac/tree/JCTree;

    invoke-direct {p0, v0, v5, v1}, Lcom/sun/tools/javac/api/JavacTrees;->attribStatToTree(Lcom/sun/tools/javac/tree/JCTree;Lcom/sun/tools/javac/comp/Env;Lcom/sun/tools/javac/tree/JCTree;)Lcom/sun/tools/javac/comp/Env;

    move-result-object v5

    goto :goto_91

    .line 308
    :pswitch_ad  #0x6
    check-cast v0, Lcom/sun/tools/javac/tree/JCTree$JCMethodDecl;

    move-object v3, v0

    .line 309
    goto :goto_52

    .line 304
    :pswitch_b1  #0x2, 0x3, 0x4, 0x5
    iget-object v3, p0, Lcom/sun/tools/javac/api/JavacTrees;->enter:Lcom/sun/tools/javac/comp/Enter;

    check-cast v0, Lcom/sun/tools/javac/tree/JCTree$JCClassDecl;

    iget-object v0, v0, Lcom/sun/tools/javac/tree/JCTree$JCClassDecl;->sym:Lcom/sun/tools/javac/code/Symbol$ClassSymbol;

    invoke-virtual {v3, v0}, Lcom/sun/tools/javac/comp/Enter;->getClassEnv(Lcom/sun/tools/javac/code/Symbol$TypeSymbol;)Lcom/sun/tools/javac/comp/Env;

    move-result-object v5

    move-object v3, v4

    .line 305
    goto :goto_52

    .line 297
    :pswitch_bd  #0x1
    iget-object v3, p0, Lcom/sun/tools/javac/api/JavacTrees;->enter:Lcom/sun/tools/javac/comp/Enter;

    check-cast v0, Lcom/sun/tools/javac/tree/JCTree$JCCompilationUnit;

    invoke-virtual {v3, v0}, Lcom/sun/tools/javac/comp/Enter;->getTopLevelEnv(Lcom/sun/tools/javac/tree/JCTree$JCCompilationUnit;)Lcom/sun/tools/javac/comp/Env;

    move-result-object v5

    move-object v3, v4

    goto :goto_52

    .line 332
    :cond_c7
    if-eqz v2, :cond_91

    iget-object v0, p0, Lcom/sun/tools/javac/api/JavacTrees;->memberEnter:Lcom/sun/tools/javac/comp/MemberEnter;

    invoke-virtual {v0, v2, v5}, Lcom/sun/tools/javac/comp/MemberEnter;->getInitEnv(Lcom/sun/tools/javac/tree/JCTree$JCVariableDecl;Lcom/sun/tools/javac/comp/Env;)Lcom/sun/tools/javac/comp/Env;

    move-result-object v5

    goto :goto_91

    .line 264
    :cond_d0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_d6
    move-object v3, v4

    goto/16 :goto_52

    :cond_d9
    move-object v1, v0

    move-object v2, v3

    move-object v4, v3

    move-object v5, v3

    goto/16 :goto_56

    .line 294
    nop

    :pswitch_data_e0
    .packed-switch 0x1
        :pswitch_bd  #00000001
        :pswitch_b1  #00000002
        :pswitch_b1  #00000003
        :pswitch_b1  #00000004
        :pswitch_b1  #00000005
        :pswitch_ad  #00000006
        :pswitch_4e  #00000007
        :pswitch_92  #00000008
    .end packed-switch
.end method

.method private init(Lcom/sun/tools/javac/util/Context;)V
    .registers 3

    .line 125
    invoke-static {p1}, Lcom/sun/tools/javac/comp/Attr;->instance(Lcom/sun/tools/javac/util/Context;)Lcom/sun/tools/javac/comp/Attr;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/tools/javac/api/JavacTrees;->attr:Lcom/sun/tools/javac/comp/Attr;

    .line 126
    invoke-static {p1}, Lcom/sun/tools/javac/comp/Enter;->instance(Lcom/sun/tools/javac/util/Context;)Lcom/sun/tools/javac/comp/Enter;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/tools/javac/api/JavacTrees;->enter:Lcom/sun/tools/javac/comp/Enter;

    .line 127
    invoke-static {p1}, Lcom/sun/tools/javac/model/JavacElements;->instance(Lcom/sun/tools/javac/util/Context;)Lcom/sun/tools/javac/model/JavacElements;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/tools/javac/api/JavacTrees;->elements:Lcom/sun/tools/javac/model/JavacElements;

    .line 128
    invoke-static {p1}, Lcom/sun/tools/javac/util/Log;->instance(Lcom/sun/tools/javac/util/Context;)Lcom/sun/tools/javac/util/Log;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/tools/javac/api/JavacTrees;->log:Lcom/sun/tools/javac/util/Log;

    .line 129
    invoke-static {p1}, Lcom/sun/tools/javac/comp/Resolve;->instance(Lcom/sun/tools/javac/util/Context;)Lcom/sun/tools/javac/comp/Resolve;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/tools/javac/api/JavacTrees;->resolve:Lcom/sun/tools/javac/comp/Resolve;

    .line 130
    invoke-static {p1}, Lcom/sun/tools/javac/tree/TreeMaker;->instance(Lcom/sun/tools/javac/util/Context;)Lcom/sun/tools/javac/tree/TreeMaker;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/tools/javac/api/JavacTrees;->treeMaker:Lcom/sun/tools/javac/tree/TreeMaker;

    .line 131
    invoke-static {p1}, Lcom/sun/tools/javac/comp/MemberEnter;->instance(Lcom/sun/tools/javac/util/Context;)Lcom/sun/tools/javac/comp/MemberEnter;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/tools/javac/api/JavacTrees;->memberEnter:Lcom/sun/tools/javac/comp/MemberEnter;

    .line 132
    const-class v0, Lcom/sun/tools/javac/api/JavacTaskImpl;

    invoke-virtual {p1, v0}, Lcom/sun/tools/javac/util/Context;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/tools/javac/api/JavacTaskImpl;

    iput-object v0, p0, Lcom/sun/tools/javac/api/JavacTrees;->javacTaskImpl:Lcom/sun/tools/javac/api/JavacTaskImpl;

    .line 133
    return-void
.end method

.method public static instance(Lcom/sun/tools/javac/util/Context;)Lcom/sun/tools/javac/api/JavacTrees;
    .registers 2

    .line 109
    const-class v0, Lcom/sun/tools/javac/api/JavacTrees;

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/util/Context;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/tools/javac/api/JavacTrees;

    .line 110
    if-nez v0, :cond_f

    .line 111
    new-instance v0, Lcom/sun/tools/javac/api/JavacTrees;

    invoke-direct {v0, p0}, Lcom/sun/tools/javac/api/JavacTrees;-><init>(Lcom/sun/tools/javac/util/Context;)V

    .line 112
    :cond_f
    return-object v0
.end method

.method public static instance(Ljavax/annotation/processing/ProcessingEnvironment;)Lcom/sun/tools/javac/api/JavacTrees;
    .registers 2

    .line 103
    instance-of v0, p0, Lcom/sun/tools/javac/processing/JavacProcessingEnvironment;

    if-eqz v0, :cond_f

    .line 105
    check-cast p0, Lcom/sun/tools/javac/processing/JavacProcessingEnvironment;

    invoke-virtual {p0}, Lcom/sun/tools/javac/processing/JavacProcessingEnvironment;->getContext()Lcom/sun/tools/javac/util/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sun/tools/javac/api/JavacTrees;->instance(Lcom/sun/tools/javac/util/Context;)Lcom/sun/tools/javac/api/JavacTrees;

    move-result-object v0

    return-object v0

    .line 104
    :cond_f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method public static instance(Ljavax/tools/JavaCompiler$CompilationTask;)Lcom/sun/tools/javac/api/JavacTrees;
    .registers 2

    .line 97
    instance-of v0, p0, Lcom/sun/tools/javac/api/JavacTaskImpl;

    if-eqz v0, :cond_f

    .line 99
    check-cast p0, Lcom/sun/tools/javac/api/JavacTaskImpl;

    invoke-virtual {p0}, Lcom/sun/tools/javac/api/JavacTaskImpl;->getContext()Lcom/sun/tools/javac/util/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sun/tools/javac/api/JavacTrees;->instance(Lcom/sun/tools/javac/util/Context;)Lcom/sun/tools/javac/api/JavacTrees;

    move-result-object v0

    return-object v0

    .line 98
    :cond_f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method


# virtual methods
.method public getDocComment(Lcom/sun/source/util/TreePath;)Ljava/lang/String;
    .registers 4

    .line 234
    invoke-virtual {p1}, Lcom/sun/source/util/TreePath;->getCompilationUnit()Lcom/sun/source/tree/CompilationUnitTree;

    move-result-object v0

    .line 235
    instance-of v1, v0, Lcom/sun/tools/javac/tree/JCTree$JCCompilationUnit;

    if-eqz v1, :cond_1b

    .line 236
    check-cast v0, Lcom/sun/tools/javac/tree/JCTree$JCCompilationUnit;

    .line 237
    iget-object v1, v0, Lcom/sun/tools/javac/tree/JCTree$JCCompilationUnit;->docComments:Ljava/util/Map;

    if-eqz v1, :cond_1b

    .line 238
    iget-object v0, v0, Lcom/sun/tools/javac/tree/JCTree$JCCompilationUnit;->docComments:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/sun/source/util/TreePath;->getLeaf()Lcom/sun/source/tree/Tree;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 241
    :goto_1a
    return-object v0

    :cond_1b
    const/4 v0, 0x0

    goto :goto_1a
.end method

.method public getElement(Lcom/sun/source/util/TreePath;)Ljavax/lang/model/element/Element;
    .registers 10

    .line 204
    invoke-virtual {p1}, Lcom/sun/source/util/TreePath;->getLeaf()Lcom/sun/source/tree/Tree;

    move-result-object v0

    check-cast v0, Lcom/sun/tools/javac/tree/JCTree;

    .line 205
    invoke-static {v0}, Lcom/sun/tools/javac/tree/TreeInfo;->symbolFor(Lcom/sun/tools/javac/tree/JCTree;)Lcom/sun/tools/javac/code/Symbol;

    move-result-object v2

    .line 206
    if-nez v2, :cond_4a

    invoke-static {v0}, Lcom/sun/tools/javac/tree/TreeInfo;->isDeclaration(Lcom/sun/tools/javac/tree/JCTree;)Z

    move-result v1

    if-eqz v1, :cond_4a

    .line 207
    :goto_12
    if-eqz p1, :cond_4a

    .line 208
    invoke-virtual {p1}, Lcom/sun/source/util/TreePath;->getLeaf()Lcom/sun/source/tree/Tree;

    move-result-object v1

    check-cast v1, Lcom/sun/tools/javac/tree/JCTree;

    .line 209
    invoke-virtual {v1}, Lcom/sun/tools/javac/tree/JCTree;->getTag()I

    move-result v3

    const/4 v4, 0x3

    if-ne v3, v4, :cond_45

    .line 210
    check-cast v1, Lcom/sun/tools/javac/tree/JCTree$JCClassDecl;

    .line 211
    iget-object v3, v1, Lcom/sun/tools/javac/tree/JCTree$JCClassDecl;->sym:Lcom/sun/tools/javac/code/Symbol$ClassSymbol;

    if-eqz v3, :cond_45

    .line 212
    iget-object v3, v1, Lcom/sun/tools/javac/tree/JCTree$JCClassDecl;->sym:Lcom/sun/tools/javac/code/Symbol$ClassSymbol;

    iget-wide v4, v3, Lcom/sun/tools/javac/code/Symbol$ClassSymbol;->flags_field:J

    const-wide/32 v6, 0x10000000

    and-long/2addr v4, v6

    const-wide/16 v6, 0x0

    cmp-long v3, v4, v6

    if-eqz v3, :cond_4a

    .line 213
    iget-object v2, p0, Lcom/sun/tools/javac/api/JavacTrees;->attr:Lcom/sun/tools/javac/comp/Attr;

    invoke-virtual {v1}, Lcom/sun/tools/javac/tree/JCTree$JCClassDecl;->pos()Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    move-result-object v3

    iget-object v1, v1, Lcom/sun/tools/javac/tree/JCTree$JCClassDecl;->sym:Lcom/sun/tools/javac/code/Symbol$ClassSymbol;

    invoke-virtual {v2, v3, v1}, Lcom/sun/tools/javac/comp/Attr;->attribClass(Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lcom/sun/tools/javac/code/Symbol$ClassSymbol;)V

    .line 214
    invoke-static {v0}, Lcom/sun/tools/javac/tree/TreeInfo;->symbolFor(Lcom/sun/tools/javac/tree/JCTree;)Lcom/sun/tools/javac/code/Symbol;

    move-result-object v0

    .line 221
    :goto_44
    return-object v0

    .line 207
    :cond_45
    invoke-virtual {p1}, Lcom/sun/source/util/TreePath;->getParentPath()Lcom/sun/source/util/TreePath;

    move-result-object p1

    goto :goto_12

    :cond_4a
    move-object v0, v2

    goto :goto_44
.end method

.method public getLub(Lcom/sun/source/tree/CatchTree;)Ljavax/lang/model/type/TypeMirror;
    .registers 5

    .line 438
    check-cast p1, Lcom/sun/tools/javac/tree/JCTree$JCCatch;

    .line 439
    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCCatch;->param:Lcom/sun/tools/javac/tree/JCTree$JCVariableDecl;

    .line 440
    iget-object v1, v0, Lcom/sun/tools/javac/tree/JCTree$JCVariableDecl;->type:Lcom/sun/tools/javac/code/Type;

    if-eqz v1, :cond_1b

    iget-object v1, v0, Lcom/sun/tools/javac/tree/JCTree$JCVariableDecl;->type:Lcom/sun/tools/javac/code/Type;

    invoke-virtual {v1}, Lcom/sun/tools/javac/code/Type;->getKind()Ljavax/lang/model/type/TypeKind;

    move-result-object v1

    sget-object v2, Ljavax/lang/model/type/TypeKind;->UNION:Ljavax/lang/model/type/TypeKind;

    if-ne v1, v2, :cond_1b

    .line 441
    iget-object v0, v0, Lcom/sun/tools/javac/tree/JCTree$JCVariableDecl;->type:Lcom/sun/tools/javac/code/Type;

    check-cast v0, Lcom/sun/tools/javac/code/Type$UnionClassType;

    .line 442
    invoke-virtual {v0}, Lcom/sun/tools/javac/code/Type$UnionClassType;->getLub()Lcom/sun/tools/javac/code/Type;

    move-result-object v0

    .line 444
    :goto_1a
    return-object v0

    :cond_1b
    iget-object v0, v0, Lcom/sun/tools/javac/tree/JCTree$JCVariableDecl;->type:Lcom/sun/tools/javac/code/Type;

    goto :goto_1a
.end method

.method public getOriginalType(Ljavax/lang/model/type/ErrorType;)Ljavax/lang/model/type/TypeMirror;
    .registers 3

    .line 379
    instance-of v0, p1, Lcom/sun/tools/javac/code/Type$ErrorType;

    if-eqz v0, :cond_b

    .line 380
    check-cast p1, Lcom/sun/tools/javac/code/Type$ErrorType;

    invoke-virtual {p1}, Lcom/sun/tools/javac/code/Type$ErrorType;->getOriginalType()Lcom/sun/tools/javac/code/Type;

    move-result-object v0

    .line 383
    :goto_a
    return-object v0

    :cond_b
    sget-object v0, Lcom/sun/tools/javac/code/Type;->noType:Lcom/sun/tools/javac/code/Type$JCNoType;

    goto :goto_a
.end method

.method public getPath(Lcom/sun/source/tree/CompilationUnitTree;Lcom/sun/source/tree/Tree;)Lcom/sun/source/util/TreePath;
    .registers 4

    .line 185
    invoke-static {p1, p2}, Lcom/sun/source/util/TreePath;->getPath(Lcom/sun/source/tree/CompilationUnitTree;Lcom/sun/source/tree/Tree;)Lcom/sun/source/util/TreePath;

    move-result-object v0

    return-object v0
.end method

.method public getPath(Ljavax/lang/model/element/Element;)Lcom/sun/source/util/TreePath;
    .registers 3

    const/4 v0, 0x0

    .line 189
    invoke-virtual {p0, p1, v0, v0}, Lcom/sun/tools/javac/api/JavacTrees;->getPath(Ljavax/lang/model/element/Element;Ljavax/lang/model/element/AnnotationMirror;Ljavax/lang/model/element/AnnotationValue;)Lcom/sun/source/util/TreePath;

    move-result-object v0

    return-object v0
.end method

.method public getPath(Ljavax/lang/model/element/Element;Ljavax/lang/model/element/AnnotationMirror;)Lcom/sun/source/util/TreePath;
    .registers 4

    .line 193
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/sun/tools/javac/api/JavacTrees;->getPath(Ljavax/lang/model/element/Element;Ljavax/lang/model/element/AnnotationMirror;Ljavax/lang/model/element/AnnotationValue;)Lcom/sun/source/util/TreePath;

    move-result-object v0

    return-object v0
.end method

.method public getPath(Ljavax/lang/model/element/Element;Ljavax/lang/model/element/AnnotationMirror;Ljavax/lang/model/element/AnnotationValue;)Lcom/sun/source/util/TreePath;
    .registers 6

    .line 197
    iget-object v0, p0, Lcom/sun/tools/javac/api/JavacTrees;->elements:Lcom/sun/tools/javac/model/JavacElements;

    invoke-virtual {v0, p1, p2, p3}, Lcom/sun/tools/javac/model/JavacElements;->getTreeAndTopLevel(Ljavax/lang/model/element/Element;Ljavax/lang/model/element/AnnotationMirror;Ljavax/lang/model/element/AnnotationValue;)Lcom/sun/tools/javac/util/Pair;

    move-result-object v1

    .line 198
    if-nez v1, :cond_a

    .line 199
    const/4 v0, 0x0

    .line 200
    :goto_9
    return-object v0

    :cond_a
    iget-object v0, v1, Lcom/sun/tools/javac/util/Pair;->snd:Ljava/lang/Object;

    check-cast v0, Lcom/sun/source/tree/CompilationUnitTree;

    iget-object v1, v1, Lcom/sun/tools/javac/util/Pair;->fst:Ljava/lang/Object;

    check-cast v1, Lcom/sun/source/tree/Tree;

    invoke-static {v0, v1}, Lcom/sun/source/util/TreePath;->getPath(Lcom/sun/source/tree/CompilationUnitTree;Lcom/sun/source/tree/Tree;)Lcom/sun/source/util/TreePath;

    move-result-object v0

    goto :goto_9
.end method

.method public bridge synthetic getScope(Lcom/sun/source/util/TreePath;)Lcom/sun/source/tree/Scope;
    .registers 3

    .line 84
    invoke-virtual {p0, p1}, Lcom/sun/tools/javac/api/JavacTrees;->getScope(Lcom/sun/source/util/TreePath;)Lcom/sun/tools/javac/api/JavacScope;

    move-result-object v0

    return-object v0
.end method

.method public getScope(Lcom/sun/source/util/TreePath;)Lcom/sun/tools/javac/api/JavacScope;
    .registers 4

    .line 230
    new-instance v0, Lcom/sun/tools/javac/api/JavacScope;

    invoke-direct {p0, p1}, Lcom/sun/tools/javac/api/JavacTrees;->getAttrContext(Lcom/sun/source/util/TreePath;)Lcom/sun/tools/javac/comp/Env;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/sun/tools/javac/api/JavacScope;-><init>(Lcom/sun/tools/javac/comp/Env;)V

    return-object v0
.end method

.method public getSourcePositions()Lcom/sun/source/util/SourcePositions;
    .registers 2

    .line 136
    new-instance v0, Lcom/sun/tools/javac/api/JavacTrees$1;

    invoke-direct {v0, p0}, Lcom/sun/tools/javac/api/JavacTrees$1;-><init>(Lcom/sun/tools/javac/api/JavacTrees;)V

    return-object v0
.end method

.method public bridge synthetic getTree(Ljavax/lang/model/element/TypeElement;)Lcom/sun/source/tree/ClassTree;
    .registers 3

    .line 84
    invoke-virtual {p0, p1}, Lcom/sun/tools/javac/api/JavacTrees;->getTree(Ljavax/lang/model/element/TypeElement;)Lcom/sun/tools/javac/tree/JCTree$JCClassDecl;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getTree(Ljavax/lang/model/element/ExecutableElement;)Lcom/sun/source/tree/MethodTree;
    .registers 3

    .line 84
    invoke-virtual {p0, p1}, Lcom/sun/tools/javac/api/JavacTrees;->getTree(Ljavax/lang/model/element/ExecutableElement;)Lcom/sun/tools/javac/tree/JCTree$JCMethodDecl;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getTree(Ljavax/lang/model/element/Element;)Lcom/sun/source/tree/Tree;
    .registers 3

    .line 84
    invoke-virtual {p0, p1}, Lcom/sun/tools/javac/api/JavacTrees;->getTree(Ljavax/lang/model/element/Element;)Lcom/sun/tools/javac/tree/JCTree;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getTree(Ljavax/lang/model/element/Element;Ljavax/lang/model/element/AnnotationMirror;)Lcom/sun/source/tree/Tree;
    .registers 4

    .line 84
    invoke-virtual {p0, p1, p2}, Lcom/sun/tools/javac/api/JavacTrees;->getTree(Ljavax/lang/model/element/Element;Ljavax/lang/model/element/AnnotationMirror;)Lcom/sun/tools/javac/tree/JCTree;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getTree(Ljavax/lang/model/element/Element;Ljavax/lang/model/element/AnnotationMirror;Ljavax/lang/model/element/AnnotationValue;)Lcom/sun/source/tree/Tree;
    .registers 5

    .line 84
    invoke-virtual {p0, p1, p2, p3}, Lcom/sun/tools/javac/api/JavacTrees;->getTree(Ljavax/lang/model/element/Element;Ljavax/lang/model/element/AnnotationMirror;Ljavax/lang/model/element/AnnotationValue;)Lcom/sun/tools/javac/tree/JCTree;

    move-result-object v0

    return-object v0
.end method

.method public getTree(Ljavax/lang/model/element/TypeElement;)Lcom/sun/tools/javac/tree/JCTree$JCClassDecl;
    .registers 3

    .line 149
    invoke-virtual {p0, p1}, Lcom/sun/tools/javac/api/JavacTrees;->getTree(Ljavax/lang/model/element/Element;)Lcom/sun/tools/javac/tree/JCTree;

    move-result-object v0

    check-cast v0, Lcom/sun/tools/javac/tree/JCTree$JCClassDecl;

    return-object v0
.end method

.method public getTree(Ljavax/lang/model/element/ExecutableElement;)Lcom/sun/tools/javac/tree/JCTree$JCMethodDecl;
    .registers 3

    .line 153
    invoke-virtual {p0, p1}, Lcom/sun/tools/javac/api/JavacTrees;->getTree(Ljavax/lang/model/element/Element;)Lcom/sun/tools/javac/tree/JCTree;

    move-result-object v0

    check-cast v0, Lcom/sun/tools/javac/tree/JCTree$JCMethodDecl;

    return-object v0
.end method

.method public getTree(Ljavax/lang/model/element/Element;)Lcom/sun/tools/javac/tree/JCTree;
    .registers 6

    const/4 v1, 0x0

    .line 157
    move-object v0, p1

    check-cast v0, Lcom/sun/tools/javac/code/Symbol;

    .line 158
    invoke-virtual {v0}, Lcom/sun/tools/javac/code/Symbol;->enclClass()Lcom/sun/tools/javac/code/Symbol$ClassSymbol;

    move-result-object v0

    .line 159
    iget-object v2, p0, Lcom/sun/tools/javac/api/JavacTrees;->enter:Lcom/sun/tools/javac/comp/Enter;

    invoke-virtual {v2, v0}, Lcom/sun/tools/javac/comp/Enter;->getEnv(Lcom/sun/tools/javac/code/Symbol$TypeSymbol;)Lcom/sun/tools/javac/comp/Env;

    move-result-object v0

    .line 160
    if-nez v0, :cond_12

    move-object v0, v1

    .line 170
    :cond_11
    :goto_11
    return-object v0

    .line 162
    :cond_12
    iget-object v0, v0, Lcom/sun/tools/javac/comp/Env;->enclClass:Lcom/sun/tools/javac/tree/JCTree$JCClassDecl;

    .line 163
    if-eqz v0, :cond_37

    .line 164
    invoke-static {v0}, Lcom/sun/tools/javac/tree/TreeInfo;->symbolFor(Lcom/sun/tools/javac/tree/JCTree;)Lcom/sun/tools/javac/code/Symbol;

    move-result-object v2

    if-eq v2, p1, :cond_11

    .line 166
    invoke-virtual {v0}, Lcom/sun/tools/javac/tree/JCTree$JCClassDecl;->getMembers()Lcom/sun/tools/javac/util/List;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sun/tools/javac/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_24
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_37

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/tools/javac/tree/JCTree;

    .line 167
    invoke-static {v0}, Lcom/sun/tools/javac/tree/TreeInfo;->symbolFor(Lcom/sun/tools/javac/tree/JCTree;)Lcom/sun/tools/javac/code/Symbol;

    move-result-object v3

    if-ne v3, p1, :cond_24

    goto :goto_11

    :cond_37
    move-object v0, v1

    .line 170
    goto :goto_11
.end method

.method public getTree(Ljavax/lang/model/element/Element;Ljavax/lang/model/element/AnnotationMirror;)Lcom/sun/tools/javac/tree/JCTree;
    .registers 4

    .line 174
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/sun/tools/javac/api/JavacTrees;->getTree(Ljavax/lang/model/element/Element;Ljavax/lang/model/element/AnnotationMirror;Ljavax/lang/model/element/AnnotationValue;)Lcom/sun/tools/javac/tree/JCTree;

    move-result-object v0

    return-object v0
.end method

.method public getTree(Ljavax/lang/model/element/Element;Ljavax/lang/model/element/AnnotationMirror;Ljavax/lang/model/element/AnnotationValue;)Lcom/sun/tools/javac/tree/JCTree;
    .registers 5

    .line 178
    iget-object v0, p0, Lcom/sun/tools/javac/api/JavacTrees;->elements:Lcom/sun/tools/javac/model/JavacElements;

    invoke-virtual {v0, p1, p2, p3}, Lcom/sun/tools/javac/model/JavacElements;->getTreeAndTopLevel(Ljavax/lang/model/element/Element;Ljavax/lang/model/element/AnnotationMirror;Ljavax/lang/model/element/AnnotationValue;)Lcom/sun/tools/javac/util/Pair;

    move-result-object v0

    .line 179
    if-nez v0, :cond_a

    .line 180
    const/4 v0, 0x0

    .line 181
    :goto_9
    return-object v0

    :cond_a
    iget-object v0, v0, Lcom/sun/tools/javac/util/Pair;->fst:Ljava/lang/Object;

    check-cast v0, Lcom/sun/tools/javac/tree/JCTree;

    goto :goto_9
.end method

.method public getTypeMirror(Lcom/sun/source/util/TreePath;)Ljavax/lang/model/type/TypeMirror;
    .registers 3

    .line 225
    invoke-virtual {p1}, Lcom/sun/source/util/TreePath;->getLeaf()Lcom/sun/source/tree/Tree;

    move-result-object v0

    .line 226
    check-cast v0, Lcom/sun/tools/javac/tree/JCTree;

    iget-object v0, v0, Lcom/sun/tools/javac/tree/JCTree;->type:Lcom/sun/tools/javac/code/Type;

    return-object v0
.end method

.method public isAccessible(Lcom/sun/source/tree/Scope;Ljavax/lang/model/element/Element;Ljavax/lang/model/type/DeclaredType;)Z
    .registers 7

    .line 253
    instance-of v0, p1, Lcom/sun/tools/javac/api/JavacScope;

    if-eqz v0, :cond_1c

    instance-of v0, p2, Lcom/sun/tools/javac/code/Symbol;

    if-eqz v0, :cond_1c

    instance-of v0, p3, Lcom/sun/tools/javac/code/Type;

    if-eqz v0, :cond_1c

    .line 256
    check-cast p1, Lcom/sun/tools/javac/api/JavacScope;

    iget-object v0, p1, Lcom/sun/tools/javac/api/JavacScope;->env:Lcom/sun/tools/javac/comp/Env;

    .line 257
    iget-object v1, p0, Lcom/sun/tools/javac/api/JavacTrees;->resolve:Lcom/sun/tools/javac/comp/Resolve;

    check-cast p3, Lcom/sun/tools/javac/code/Type;

    check-cast p2, Lcom/sun/tools/javac/code/Symbol;

    const/4 v2, 0x1

    invoke-virtual {v1, v0, p3, p2, v2}, Lcom/sun/tools/javac/comp/Resolve;->isAccessible(Lcom/sun/tools/javac/comp/Env;Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Symbol;Z)Z

    move-result v0

    .line 259
    :goto_1b
    return v0

    :cond_1c
    const/4 v0, 0x0

    goto :goto_1b
.end method

.method public isAccessible(Lcom/sun/source/tree/Scope;Ljavax/lang/model/element/TypeElement;)Z
    .registers 6

    .line 245
    instance-of v0, p1, Lcom/sun/tools/javac/api/JavacScope;

    if-eqz v0, :cond_16

    instance-of v0, p2, Lcom/sun/tools/javac/code/Symbol$ClassSymbol;

    if-eqz v0, :cond_16

    .line 246
    check-cast p1, Lcom/sun/tools/javac/api/JavacScope;

    iget-object v0, p1, Lcom/sun/tools/javac/api/JavacScope;->env:Lcom/sun/tools/javac/comp/Env;

    .line 247
    iget-object v1, p0, Lcom/sun/tools/javac/api/JavacTrees;->resolve:Lcom/sun/tools/javac/comp/Resolve;

    check-cast p2, Lcom/sun/tools/javac/code/Symbol$ClassSymbol;

    const/4 v2, 0x1

    invoke-virtual {v1, v0, p2, v2}, Lcom/sun/tools/javac/comp/Resolve;->isAccessible(Lcom/sun/tools/javac/comp/Env;Lcom/sun/tools/javac/code/Symbol$TypeSymbol;Z)Z

    move-result v0

    .line 249
    :goto_15
    return v0

    :cond_16
    const/4 v0, 0x0

    goto :goto_15
.end method

.method public printMessage(Ljavax/tools/Diagnostic$Kind;Ljava/lang/CharSequence;Lcom/sun/source/tree/Tree;Lcom/sun/source/tree/CompilationUnitTree;)V
    .registers 13

    const/4 v1, 0x0

    const/4 v4, 0x1

    .line 398
    .line 402
    invoke-interface {p4}, Lcom/sun/source/tree/CompilationUnitTree;->getSourceFile()Ljavax/tools/JavaFileObject;

    move-result-object v0

    .line 403
    if-eqz v0, :cond_8b

    .line 404
    iget-object v1, p0, Lcom/sun/tools/javac/api/JavacTrees;->log:Lcom/sun/tools/javac/util/Log;

    invoke-virtual {v1, v0}, Lcom/sun/tools/javac/util/Log;->useSource(Ljavax/tools/JavaFileObject;)Ljavax/tools/JavaFileObject;

    move-result-object v1

    .line 405
    check-cast p3, Lcom/sun/tools/javac/tree/JCTree;

    invoke-virtual {p3}, Lcom/sun/tools/javac/tree/JCTree;->pos()Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    move-result-object v0

    move-object v2, v1

    .line 409
    :goto_15
    :try_start_15
    sget-object v1, Lcom/sun/tools/javac/api/JavacTrees$2;->$SwitchMap$javax$tools$Diagnostic$Kind:[I

    invoke-virtual {p1}, Ljavax/tools/Diagnostic$Kind;->ordinal()I

    move-result v3

    aget v1, v1, v3

    if-eq v1, v4, :cond_6b

    const/4 v3, 0x2

    if-eq v1, v3, :cond_59

    const/4 v3, 0x3

    if-eq v1, v3, :cond_3e

    .line 428
    iget-object v1, p0, Lcom/sun/tools/javac/api/JavacTrees;->log:Lcom/sun/tools/javac/util/Log;

    const-string v3, "proc.messager"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v1, v0, v3, v4}, Lcom/sun/tools/javac/util/Log;->note(Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_36
    .catchall {:try_start_15 .. :try_end_36} :catchall_50

    .line 416
    :goto_36
    if-eqz v2, :cond_3d

    .line 432
    iget-object v0, p0, Lcom/sun/tools/javac/api/JavacTrees;->log:Lcom/sun/tools/javac/util/Log;

    invoke-virtual {v0, v2}, Lcom/sun/tools/javac/util/Log;->useSource(Ljavax/tools/JavaFileObject;)Ljavax/tools/JavaFileObject;

    .line 434
    :cond_3d
    return-void

    .line 424
    :cond_3e
    :try_start_3e
    iget-object v1, p0, Lcom/sun/tools/javac/api/JavacTrees;->log:Lcom/sun/tools/javac/util/Log;

    const-string v3, "proc.messager"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v1, v0, v3, v4}, Lcom/sun/tools/javac/util/Log;->mandatoryWarning(Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_4f
    .catchall {:try_start_3e .. :try_end_4f} :catchall_50

    goto :goto_36

    .line 431
    :catchall_50
    move-exception v0

    if-eqz v2, :cond_58

    .line 432
    iget-object v1, p0, Lcom/sun/tools/javac/api/JavacTrees;->log:Lcom/sun/tools/javac/util/Log;

    invoke-virtual {v1, v2}, Lcom/sun/tools/javac/util/Log;->useSource(Ljavax/tools/JavaFileObject;)Ljavax/tools/JavaFileObject;

    .line 433
    :cond_58
    throw v0

    .line 420
    :cond_59
    :try_start_59
    iget-object v1, p0, Lcom/sun/tools/javac/api/JavacTrees;->log:Lcom/sun/tools/javac/util/Log;

    const-string v3, "proc.messager"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v1, v0, v3, v4}, Lcom/sun/tools/javac/util/Log;->warning(Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_36

    .line 411
    :cond_6b
    iget-object v1, p0, Lcom/sun/tools/javac/api/JavacTrees;->log:Lcom/sun/tools/javac/util/Log;

    iget-boolean v1, v1, Lcom/sun/tools/javac/util/Log;->multipleErrors:Z
    :try_end_6f
    .catchall {:try_start_59 .. :try_end_6f} :catchall_50

    .line 413
    :try_start_6f
    iget-object v3, p0, Lcom/sun/tools/javac/api/JavacTrees;->log:Lcom/sun/tools/javac/util/Log;

    const-string v4, "proc.messager"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v3, v0, v4, v5}, Lcom/sun/tools/javac/util/Log;->error(Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_80
    .catchall {:try_start_6f .. :try_end_80} :catchall_85

    .line 415
    :try_start_80
    iget-object v0, p0, Lcom/sun/tools/javac/api/JavacTrees;->log:Lcom/sun/tools/javac/util/Log;

    iput-boolean v1, v0, Lcom/sun/tools/javac/util/Log;->multipleErrors:Z

    goto :goto_36

    :catchall_85
    move-exception v0

    iget-object v3, p0, Lcom/sun/tools/javac/api/JavacTrees;->log:Lcom/sun/tools/javac/util/Log;

    iput-boolean v1, v3, Lcom/sun/tools/javac/util/Log;->multipleErrors:Z

    .line 416
    throw v0
    :try_end_8b
    .catchall {:try_start_80 .. :try_end_8b} :catchall_50

    :cond_8b
    move-object v0, v1

    move-object v2, v1

    goto :goto_15
.end method

.method public updateContext(Lcom/sun/tools/javac/util/Context;)V
    .registers 2

    .line 121
    invoke-direct {p0, p1}, Lcom/sun/tools/javac/api/JavacTrees;->init(Lcom/sun/tools/javac/util/Context;)V

    .line 122
    return-void
.end method
