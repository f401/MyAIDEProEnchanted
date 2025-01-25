.class public Lcom/sun/tools/javac/api/JavacTaskImpl;
.super Lcom/sun/source/util/JavacTask;
.source "JavacTaskImpl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sun/tools/javac/api/JavacTaskImpl$Filter;
    }
.end annotation


# instance fields
.field private args:[Ljava/lang/String;

.field private ccw:Lcom/sun/tools/javac/api/ClientCodeWrapper;

.field private classNames:[Ljava/lang/String;

.field private compiler:Lcom/sun/tools/javac/main/JavaCompiler;

.field private compilerMain:Lcom/sun/tools/javac/main/Main;

.field private context:Lcom/sun/tools/javac/util/Context;

.field private fileObjects:Lcom/sun/tools/javac/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sun/tools/javac/util/List",
            "<",
            "Ljavax/tools/JavaFileObject;",
            ">;"
        }
    .end annotation
.end field

.field private genList:Lcom/sun/tools/javac/util/ListBuffer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sun/tools/javac/util/ListBuffer",
            "<",
            "Lcom/sun/tools/javac/comp/Env",
            "<",
            "Lcom/sun/tools/javac/comp/AttrContext;",
            ">;>;"
        }
    .end annotation
.end field

.field private locale:Ljava/util/Locale;

.field private notYetEntered:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljavax/tools/JavaFileObject;",
            "Lcom/sun/tools/javac/tree/JCTree$JCCompilationUnit;",
            ">;"
        }
    .end annotation
.end field

.field private parsed:Z

.field private processors:Ljava/lang/Iterable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Iterable",
            "<+",
            "Ljavax/annotation/processing/Processor;",
            ">;"
        }
    .end annotation
.end field

.field private result:Ljava/lang/Integer;

.field private taskListener:Lcom/sun/source/util/TaskListener;

.field private used:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method constructor <init>(Lcom/sun/tools/javac/main/Main;Ljava/lang/Iterable;Lcom/sun/tools/javac/util/Context;Ljava/lang/Iterable;Ljava/lang/Iterable;)V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sun/tools/javac/main/Main;",
            "Ljava/lang/Iterable",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/sun/tools/javac/util/Context;",
            "Ljava/lang/Iterable",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/Iterable",
            "<+",
            "Ljavax/tools/JavaFileObject;",
            ">;)V"
        }
    .end annotation

    .line 107
    invoke-static {p2}, Lcom/sun/tools/javac/api/JavacTaskImpl;->toArray(Ljava/lang/Iterable;)[Ljava/lang/String;

    move-result-object v2

    invoke-static {p4}, Lcom/sun/tools/javac/api/JavacTaskImpl;->toArray(Ljava/lang/Iterable;)[Ljava/lang/String;

    move-result-object v3

    invoke-static {p5}, Lcom/sun/tools/javac/api/JavacTaskImpl;->toList(Ljava/lang/Iterable;)Lcom/sun/tools/javac/util/List;

    move-result-object v5

    move-object v0, p0

    move-object v1, p1

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/sun/tools/javac/api/JavacTaskImpl;-><init>(Lcom/sun/tools/javac/main/Main;[Ljava/lang/String;[Ljava/lang/String;Lcom/sun/tools/javac/util/Context;Lcom/sun/tools/javac/util/List;)V

    .line 108
    return-void
.end method

.method constructor <init>(Lcom/sun/tools/javac/main/Main;[Ljava/lang/String;[Ljava/lang/String;Lcom/sun/tools/javac/util/Context;Lcom/sun/tools/javac/util/List;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sun/tools/javac/main/Main;",
            "[",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "Lcom/sun/tools/javac/util/Context;",
            "Lcom/sun/tools/javac/util/List",
            "<",
            "Ljavax/tools/JavaFileObject;",
            ">;)V"
        }
    .end annotation

    .line 88
    invoke-direct {p0}, Lcom/sun/source/util/JavacTask;-><init>()V

    .line 79
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lcom/sun/tools/javac/api/JavacTaskImpl;->used:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 82
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sun/tools/javac/api/JavacTaskImpl;->result:Ljava/lang/Integer;

    .line 255
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sun/tools/javac/api/JavacTaskImpl;->parsed:Z

    .line 89
    invoke-static {p4}, Lcom/sun/tools/javac/api/ClientCodeWrapper;->instance(Lcom/sun/tools/javac/util/Context;)Lcom/sun/tools/javac/api/ClientCodeWrapper;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/tools/javac/api/JavacTaskImpl;->ccw:Lcom/sun/tools/javac/api/ClientCodeWrapper;

    .line 90
    iput-object p1, p0, Lcom/sun/tools/javac/api/JavacTaskImpl;->compilerMain:Lcom/sun/tools/javac/main/Main;

    .line 91
    iput-object p2, p0, Lcom/sun/tools/javac/api/JavacTaskImpl;->args:[Ljava/lang/String;

    .line 92
    iput-object p3, p0, Lcom/sun/tools/javac/api/JavacTaskImpl;->classNames:[Ljava/lang/String;

    .line 93
    iput-object p4, p0, Lcom/sun/tools/javac/api/JavacTaskImpl;->context:Lcom/sun/tools/javac/util/Context;

    .line 94
    iput-object p5, p0, Lcom/sun/tools/javac/api/JavacTaskImpl;->fileObjects:Lcom/sun/tools/javac/util/List;

    .line 95
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/api/JavacTaskImpl;->setLocale(Ljava/util/Locale;)V

    .line 97
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 98
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 99
    invoke-virtual {p5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 100
    return-void
.end method

.method static synthetic access$000(Lcom/sun/tools/javac/api/JavacTaskImpl;)Lcom/sun/tools/javac/main/JavaCompiler;
    .registers 2

    .line 67
    iget-object v0, p0, Lcom/sun/tools/javac/api/JavacTaskImpl;->compiler:Lcom/sun/tools/javac/main/JavaCompiler;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sun/tools/javac/api/JavacTaskImpl;Ljava/util/Queue;Lcom/sun/tools/javac/util/ListBuffer;)V
    .registers 3

    .line 67
    invoke-direct {p0, p1, p2}, Lcom/sun/tools/javac/api/JavacTaskImpl;->handleFlowResults(Ljava/util/Queue;Lcom/sun/tools/javac/util/ListBuffer;)V

    return-void
.end method

.method private handleFlowResults(Ljava/util/Queue;Lcom/sun/tools/javac/util/ListBuffer;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Queue",
            "<",
            "Lcom/sun/tools/javac/comp/Env",
            "<",
            "Lcom/sun/tools/javac/comp/AttrContext;",
            ">;>;",
            "Lcom/sun/tools/javac/util/ListBuffer",
            "<",
            "Ljavax/lang/model/element/Element;",
            ">;)V"
        }
    .end annotation

    .line 383
    invoke-interface {p1}, Ljava/util/Queue;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_4
    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_38

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/tools/javac/comp/Env;

    .line 384
    iget-object v2, v0, Lcom/sun/tools/javac/comp/Env;->tree:Lcom/sun/tools/javac/tree/JCTree;

    invoke-virtual {v2}, Lcom/sun/tools/javac/tree/JCTree;->getTag()I

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_2a

    const/4 v3, 0x3

    if-ne v2, v3, :cond_4

    .line 386
    iget-object v0, v0, Lcom/sun/tools/javac/comp/Env;->tree:Lcom/sun/tools/javac/tree/JCTree;

    check-cast v0, Lcom/sun/tools/javac/tree/JCTree$JCClassDecl;

    .line 387
    iget-object v2, v0, Lcom/sun/tools/javac/tree/JCTree$JCClassDecl;->sym:Lcom/sun/tools/javac/code/Symbol$ClassSymbol;

    if-eqz v2, :cond_4

    .line 388
    iget-object v0, v0, Lcom/sun/tools/javac/tree/JCTree$JCClassDecl;->sym:Lcom/sun/tools/javac/code/Symbol$ClassSymbol;

    invoke-virtual {p2, v0}, Lcom/sun/tools/javac/util/ListBuffer;->append(Ljava/lang/Object;)Lcom/sun/tools/javac/util/ListBuffer;

    goto :goto_4

    .line 391
    :cond_2a
    iget-object v0, v0, Lcom/sun/tools/javac/comp/Env;->tree:Lcom/sun/tools/javac/tree/JCTree;

    check-cast v0, Lcom/sun/tools/javac/tree/JCTree$JCCompilationUnit;

    .line 392
    iget-object v2, v0, Lcom/sun/tools/javac/tree/JCTree$JCCompilationUnit;->packge:Lcom/sun/tools/javac/code/Symbol$PackageSymbol;

    if-eqz v2, :cond_4

    .line 393
    iget-object v0, v0, Lcom/sun/tools/javac/tree/JCTree$JCCompilationUnit;->packge:Lcom/sun/tools/javac/code/Symbol$PackageSymbol;

    invoke-virtual {p2, v0}, Lcom/sun/tools/javac/util/ListBuffer;->append(Ljava/lang/Object;)Lcom/sun/tools/javac/util/ListBuffer;

    goto :goto_4

    .line 397
    :cond_38
    iget-object v0, p0, Lcom/sun/tools/javac/api/JavacTaskImpl;->genList:Lcom/sun/tools/javac/util/ListBuffer;

    invoke-virtual {v0, p1}, Lcom/sun/tools/javac/util/ListBuffer;->addAll(Ljava/util/Collection;)Z

    .line 398
    return-void
.end method

.method private initContext()V
    .registers 5

    .line 193
    iget-object v0, p0, Lcom/sun/tools/javac/api/JavacTaskImpl;->context:Lcom/sun/tools/javac/util/Context;

    const-class v1, Lcom/sun/tools/javac/api/JavacTaskImpl;

    invoke-virtual {v0, v1, p0}, Lcom/sun/tools/javac/util/Context;->put(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 194
    iget-object v0, p0, Lcom/sun/tools/javac/api/JavacTaskImpl;->context:Lcom/sun/tools/javac/util/Context;

    const-class v1, Lcom/sun/source/util/TaskListener;

    invoke-virtual {v0, v1}, Lcom/sun/tools/javac/util/Context;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1b

    .line 195
    iget-object v1, p0, Lcom/sun/tools/javac/api/JavacTaskImpl;->context:Lcom/sun/tools/javac/util/Context;

    const-class v2, Lcom/sun/source/util/TaskListener;

    const/4 v0, 0x0

    check-cast v0, Lcom/sun/source/util/TaskListener;

    invoke-virtual {v1, v2, v0}, Lcom/sun/tools/javac/util/Context;->put(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 196
    :cond_1b
    iget-object v0, p0, Lcom/sun/tools/javac/api/JavacTaskImpl;->taskListener:Lcom/sun/source/util/TaskListener;

    if-eqz v0, :cond_2c

    .line 197
    iget-object v1, p0, Lcom/sun/tools/javac/api/JavacTaskImpl;->context:Lcom/sun/tools/javac/util/Context;

    const-class v2, Lcom/sun/source/util/TaskListener;

    iget-object v3, p0, Lcom/sun/tools/javac/api/JavacTaskImpl;->ccw:Lcom/sun/tools/javac/api/ClientCodeWrapper;

    invoke-virtual {v3, v0}, Lcom/sun/tools/javac/api/ClientCodeWrapper;->wrap(Lcom/sun/source/util/TaskListener;)Lcom/sun/source/util/TaskListener;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lcom/sun/tools/javac/util/Context;->put(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 199
    :cond_2c
    iget-object v0, p0, Lcom/sun/tools/javac/api/JavacTaskImpl;->context:Lcom/sun/tools/javac/util/Context;

    const-class v1, Ljava/util/Locale;

    iget-object v2, p0, Lcom/sun/tools/javac/api/JavacTaskImpl;->locale:Ljava/util/Locale;

    invoke-virtual {v0, v1, v2}, Lcom/sun/tools/javac/util/Context;->put(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 200
    return-void
.end method

.method private prepareCompiler()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 155
    iget-object v0, p0, Lcom/sun/tools/javac/api/JavacTaskImpl;->used:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 156
    iget-object v0, p0, Lcom/sun/tools/javac/api/JavacTaskImpl;->compiler:Lcom/sun/tools/javac/main/JavaCompiler;

    if-eqz v0, :cond_f

    .line 179
    :goto_e
    return-void

    .line 157
    :cond_f
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 159
    :cond_15
    invoke-direct {p0}, Lcom/sun/tools/javac/api/JavacTaskImpl;->initContext()V

    .line 160
    iget-object v0, p0, Lcom/sun/tools/javac/api/JavacTaskImpl;->compilerMain:Lcom/sun/tools/javac/main/Main;

    iget-object v1, p0, Lcom/sun/tools/javac/api/JavacTaskImpl;->context:Lcom/sun/tools/javac/util/Context;

    invoke-static {v1}, Lcom/sun/tools/javac/util/Options;->instance(Lcom/sun/tools/javac/util/Context;)Lcom/sun/tools/javac/util/Options;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sun/tools/javac/main/Main;->setOptions(Lcom/sun/tools/javac/util/Options;)V

    .line 161
    iget-object v0, p0, Lcom/sun/tools/javac/api/JavacTaskImpl;->compilerMain:Lcom/sun/tools/javac/main/Main;

    new-instance v1, Ljava/util/LinkedHashSet;

    invoke-direct {v1}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v1, v0, Lcom/sun/tools/javac/main/Main;->filenames:Ljava/util/Set;

    .line 162
    iget-object v0, p0, Lcom/sun/tools/javac/api/JavacTaskImpl;->compilerMain:Lcom/sun/tools/javac/main/Main;

    iget-object v1, p0, Lcom/sun/tools/javac/api/JavacTaskImpl;->args:[Ljava/lang/String;

    invoke-static {v1}, Lcom/sun/tools/javac/main/CommandLine;->parse([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/sun/tools/javac/api/JavacTaskImpl;->classNames:[Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/sun/tools/javac/main/Main;->processArgs([Ljava/lang/String;[Ljava/lang/String;)Ljava/util/Collection;

    move-result-object v0

    .line 163
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_80

    .line 165
    iget-object v0, p0, Lcom/sun/tools/javac/api/JavacTaskImpl;->context:Lcom/sun/tools/javac/util/Context;

    invoke-static {v0}, Lcom/sun/tools/javac/main/JavaCompiler;->instance(Lcom/sun/tools/javac/util/Context;)Lcom/sun/tools/javac/main/JavaCompiler;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/tools/javac/api/JavacTaskImpl;->compiler:Lcom/sun/tools/javac/main/JavaCompiler;

    .line 166
    iput-boolean v4, v0, Lcom/sun/tools/javac/main/JavaCompiler;->keepComments:Z

    .line 167
    iget-object v0, p0, Lcom/sun/tools/javac/api/JavacTaskImpl;->compiler:Lcom/sun/tools/javac/main/JavaCompiler;

    iput-boolean v4, v0, Lcom/sun/tools/javac/main/JavaCompiler;->genEndPos:Z

    .line 169
    iget-object v0, p0, Lcom/sun/tools/javac/api/JavacTaskImpl;->compiler:Lcom/sun/tools/javac/main/JavaCompiler;

    iget-object v1, p0, Lcom/sun/tools/javac/api/JavacTaskImpl;->processors:Ljava/lang/Iterable;

    invoke-virtual {v0, v1}, Lcom/sun/tools/javac/main/JavaCompiler;->initProcessAnnotations(Ljava/lang/Iterable;)V

    .line 170
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sun/tools/javac/api/JavacTaskImpl;->notYetEntered:Ljava/util/Map;

    .line 171
    iget-object v0, p0, Lcom/sun/tools/javac/api/JavacTaskImpl;->fileObjects:Lcom/sun/tools/javac/util/List;

    invoke-virtual {v0}, Lcom/sun/tools/javac/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_62
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_74

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/tools/JavaFileObject;

    .line 172
    iget-object v2, p0, Lcom/sun/tools/javac/api/JavacTaskImpl;->notYetEntered:Ljava/util/Map;

    invoke-interface {v2, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_62

    .line 173
    :cond_74
    new-instance v0, Lcom/sun/tools/javac/util/ListBuffer;

    invoke-direct {v0}, Lcom/sun/tools/javac/util/ListBuffer;-><init>()V

    iput-object v0, p0, Lcom/sun/tools/javac/api/JavacTaskImpl;->genList:Lcom/sun/tools/javac/util/ListBuffer;

    .line 176
    iput-object v3, p0, Lcom/sun/tools/javac/api/JavacTaskImpl;->args:[Ljava/lang/String;

    .line 177
    iput-object v3, p0, Lcom/sun/tools/javac/api/JavacTaskImpl;->classNames:[Ljava/lang/String;

    goto :goto_e

    .line 164
    :cond_80
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Malformed arguments "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {p0, v0, v2}, Lcom/sun/tools/javac/api/JavacTaskImpl;->toString(Ljava/lang/Iterable;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static toArray(Ljava/lang/Iterable;)[Ljava/lang/String;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<",
            "Ljava/lang/String;",
            ">;)[",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 111
    new-instance v1, Lcom/sun/tools/javac/util/ListBuffer;

    invoke-direct {v1}, Lcom/sun/tools/javac/util/ListBuffer;-><init>()V

    .line 112
    if-eqz p0, :cond_1b

    .line 113
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 114
    invoke-virtual {v1, v0}, Lcom/sun/tools/javac/util/ListBuffer;->append(Ljava/lang/Object;)Lcom/sun/tools/javac/util/ListBuffer;

    goto :goto_b

    .line 115
    :cond_1b
    invoke-virtual {v1}, Lcom/sun/tools/javac/util/ListBuffer;->length()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/sun/tools/javac/util/ListBuffer;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method

.method private static toList(Ljava/lang/Iterable;)Lcom/sun/tools/javac/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+",
            "Ljavax/tools/JavaFileObject;",
            ">;)",
            "Lcom/sun/tools/javac/util/List",
            "<",
            "Ljavax/tools/JavaFileObject;",
            ">;"
        }
    .end annotation

    .line 119
    if-nez p0, :cond_7

    .line 120
    invoke-static {}, Lcom/sun/tools/javac/util/List;->nil()Lcom/sun/tools/javac/util/List;

    move-result-object v0

    .line 124
    :goto_6
    return-object v0

    .line 121
    :cond_7
    new-instance v1, Lcom/sun/tools/javac/util/ListBuffer;

    invoke-direct {v1}, Lcom/sun/tools/javac/util/ListBuffer;-><init>()V

    .line 122
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_10
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_20

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/tools/JavaFileObject;

    .line 123
    invoke-virtual {v1, v0}, Lcom/sun/tools/javac/util/ListBuffer;->append(Ljava/lang/Object;)Lcom/sun/tools/javac/util/ListBuffer;

    goto :goto_10

    .line 124
    :cond_20
    invoke-virtual {v1}, Lcom/sun/tools/javac/util/ListBuffer;->toList()Lcom/sun/tools/javac/util/List;

    move-result-object v0

    goto :goto_6
.end method


# virtual methods
.method public analyze()Ljava/lang/Iterable;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Iterable",
            "<+",
            "Ljavax/lang/model/element/Element;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 347
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/api/JavacTaskImpl;->analyze(Ljava/lang/Iterable;)Ljava/lang/Iterable;

    move-result-object v0

    return-object v0
.end method

.method public analyze(Ljava/lang/Iterable;)Ljava/lang/Iterable;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+",
            "Ljavax/lang/model/element/TypeElement;",
            ">;)",
            "Ljava/lang/Iterable",
            "<+",
            "Ljavax/lang/model/element/Element;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 362
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/api/JavacTaskImpl;->enter(Ljava/lang/Iterable;)Ljava/lang/Iterable;

    .line 364
    new-instance v0, Lcom/sun/tools/javac/util/ListBuffer;

    invoke-direct {v0}, Lcom/sun/tools/javac/util/ListBuffer;-><init>()V

    .line 366
    if-nez p1, :cond_26

    .line 367
    :try_start_b
    iget-object v1, p0, Lcom/sun/tools/javac/api/JavacTaskImpl;->compiler:Lcom/sun/tools/javac/main/JavaCompiler;

    iget-object v2, p0, Lcom/sun/tools/javac/api/JavacTaskImpl;->compiler:Lcom/sun/tools/javac/main/JavaCompiler;

    iget-object v3, p0, Lcom/sun/tools/javac/api/JavacTaskImpl;->compiler:Lcom/sun/tools/javac/main/JavaCompiler;

    iget-object v3, v3, Lcom/sun/tools/javac/main/JavaCompiler;->todo:Lcom/sun/tools/javac/comp/Todo;

    invoke-virtual {v2, v3}, Lcom/sun/tools/javac/main/JavaCompiler;->attribute(Ljava/util/Queue;)Ljava/util/Queue;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sun/tools/javac/main/JavaCompiler;->flow(Ljava/util/Queue;)Ljava/util/Queue;

    move-result-object v1

    invoke-direct {p0, v1, v0}, Lcom/sun/tools/javac/api/JavacTaskImpl;->handleFlowResults(Ljava/util/Queue;Lcom/sun/tools/javac/util/ListBuffer;)V
    :try_end_1e
    .catchall {:try_start_b .. :try_end_1e} :catchall_33

    .line 377
    :goto_1e
    iget-object v1, p0, Lcom/sun/tools/javac/api/JavacTaskImpl;->compiler:Lcom/sun/tools/javac/main/JavaCompiler;

    iget-object v1, v1, Lcom/sun/tools/javac/main/JavaCompiler;->log:Lcom/sun/tools/javac/util/Log;

    invoke-virtual {v1}, Lcom/sun/tools/javac/util/Log;->flush()V

    .line 378
    return-object v0

    .line 369
    :cond_26
    :try_start_26
    new-instance v1, Lcom/sun/tools/javac/api/JavacTaskImpl$1;

    invoke-direct {v1, p0, v0}, Lcom/sun/tools/javac/api/JavacTaskImpl$1;-><init>(Lcom/sun/tools/javac/api/JavacTaskImpl;Lcom/sun/tools/javac/util/ListBuffer;)V

    .line 374
    iget-object v2, p0, Lcom/sun/tools/javac/api/JavacTaskImpl;->compiler:Lcom/sun/tools/javac/main/JavaCompiler;

    iget-object v2, v2, Lcom/sun/tools/javac/main/JavaCompiler;->todo:Lcom/sun/tools/javac/comp/Todo;

    invoke-virtual {v1, v2, p1}, Lcom/sun/tools/javac/api/JavacTaskImpl$Filter;->run(Ljava/util/Queue;Ljava/lang/Iterable;)V
    :try_end_32
    .catchall {:try_start_26 .. :try_end_32} :catchall_33

    goto :goto_1e

    .line 377
    :catchall_33
    move-exception v0

    iget-object v1, p0, Lcom/sun/tools/javac/api/JavacTaskImpl;->compiler:Lcom/sun/tools/javac/main/JavaCompiler;

    iget-object v1, v1, Lcom/sun/tools/javac/main/JavaCompiler;->log:Lcom/sun/tools/javac/util/Log;

    invoke-virtual {v1}, Lcom/sun/tools/javac/util/Log;->flush()V

    .line 378
    throw v0
.end method

.method public asJavaFileObject(Ljava/io/File;)Ljavax/tools/JavaFileObject;
    .registers 4

    .line 223
    iget-object v0, p0, Lcom/sun/tools/javac/api/JavacTaskImpl;->context:Lcom/sun/tools/javac/util/Context;

    const-class v1, Ljavax/tools/JavaFileManager;

    invoke-virtual {v0, v1}, Lcom/sun/tools/javac/util/Context;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/tools/javac/file/JavacFileManager;

    .line 224
    invoke-virtual {v0, p1}, Lcom/sun/tools/javac/file/JavacFileManager;->getRegularFile(Ljava/io/File;)Ljavax/tools/JavaFileObject;

    move-result-object v0

    return-object v0
.end method

.method public call()Ljava/lang/Boolean;
    .registers 8

    const/4 v6, 0x1

    .line 128
    iget-object v0, p0, Lcom/sun/tools/javac/api/JavacTaskImpl;->used:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v6}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-nez v0, :cond_41

    .line 129
    invoke-direct {p0}, Lcom/sun/tools/javac/api/JavacTaskImpl;->initContext()V

    .line 130
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sun/tools/javac/api/JavacTaskImpl;->notYetEntered:Ljava/util/Map;

    .line 131
    iget-object v0, p0, Lcom/sun/tools/javac/api/JavacTaskImpl;->compilerMain:Lcom/sun/tools/javac/main/Main;

    invoke-virtual {v0, v6}, Lcom/sun/tools/javac/main/Main;->setAPIMode(Z)V

    .line 132
    iget-object v0, p0, Lcom/sun/tools/javac/api/JavacTaskImpl;->compilerMain:Lcom/sun/tools/javac/main/Main;

    iget-object v1, p0, Lcom/sun/tools/javac/api/JavacTaskImpl;->args:[Ljava/lang/String;

    iget-object v2, p0, Lcom/sun/tools/javac/api/JavacTaskImpl;->classNames:[Ljava/lang/String;

    iget-object v3, p0, Lcom/sun/tools/javac/api/JavacTaskImpl;->context:Lcom/sun/tools/javac/util/Context;

    iget-object v4, p0, Lcom/sun/tools/javac/api/JavacTaskImpl;->fileObjects:Lcom/sun/tools/javac/util/List;

    iget-object v5, p0, Lcom/sun/tools/javac/api/JavacTaskImpl;->processors:Ljava/lang/Iterable;

    invoke-virtual/range {v0 .. v5}, Lcom/sun/tools/javac/main/Main;->compile([Ljava/lang/String;[Ljava/lang/String;Lcom/sun/tools/javac/util/Context;Lcom/sun/tools/javac/util/List;Ljava/lang/Iterable;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/tools/javac/api/JavacTaskImpl;->result:Ljava/lang/Integer;

    .line 133
    invoke-virtual {p0}, Lcom/sun/tools/javac/api/JavacTaskImpl;->cleanup()V

    .line 134
    iget-object v0, p0, Lcom/sun/tools/javac/api/JavacTaskImpl;->result:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-nez v0, :cond_3f

    move v0, v6

    :goto_3a
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    :cond_3f
    const/4 v0, 0x0

    goto :goto_3a

    .line 136
    :cond_41
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "multiple calls to method \'call\'"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 67
    invoke-virtual {p0}, Lcom/sun/tools/javac/api/JavacTaskImpl;->call()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method cleanup()V
    .registers 3

    const/4 v1, 0x0

    .line 203
    iget-object v0, p0, Lcom/sun/tools/javac/api/JavacTaskImpl;->compiler:Lcom/sun/tools/javac/main/JavaCompiler;

    if-eqz v0, :cond_8

    .line 204
    invoke-virtual {v0}, Lcom/sun/tools/javac/main/JavaCompiler;->close()V

    .line 205
    :cond_8
    iput-object v1, p0, Lcom/sun/tools/javac/api/JavacTaskImpl;->compiler:Lcom/sun/tools/javac/main/JavaCompiler;

    .line 206
    iput-object v1, p0, Lcom/sun/tools/javac/api/JavacTaskImpl;->compilerMain:Lcom/sun/tools/javac/main/Main;

    .line 207
    iput-object v1, p0, Lcom/sun/tools/javac/api/JavacTaskImpl;->args:[Ljava/lang/String;

    .line 208
    iput-object v1, p0, Lcom/sun/tools/javac/api/JavacTaskImpl;->classNames:[Ljava/lang/String;

    .line 209
    iput-object v1, p0, Lcom/sun/tools/javac/api/JavacTaskImpl;->context:Lcom/sun/tools/javac/util/Context;

    .line 210
    iput-object v1, p0, Lcom/sun/tools/javac/api/JavacTaskImpl;->fileObjects:Lcom/sun/tools/javac/util/List;

    .line 211
    iput-object v1, p0, Lcom/sun/tools/javac/api/JavacTaskImpl;->notYetEntered:Ljava/util/Map;

    .line 212
    return-void
.end method

.method public enter()Ljava/lang/Iterable;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Iterable",
            "<+",
            "Ljavax/lang/model/element/TypeElement;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 265
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/api/JavacTaskImpl;->enter(Ljava/lang/Iterable;)Ljava/lang/Iterable;

    move-result-object v0

    return-object v0
.end method

.method public enter(Ljava/lang/Iterable;)Ljava/lang/Iterable;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+",
            "Lcom/sun/source/tree/CompilationUnitTree;",
            ">;)",
            "Ljava/lang/Iterable",
            "<+",
            "Ljavax/lang/model/element/TypeElement;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 279
    invoke-direct {p0}, Lcom/sun/tools/javac/api/JavacTaskImpl;->prepareCompiler()V

    .line 283
    if-nez p1, :cond_4b

    .line 288
    iget-object v1, p0, Lcom/sun/tools/javac/api/JavacTaskImpl;->notYetEntered:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    if-lez v1, :cond_ef

    .line 289
    iget-boolean v1, p0, Lcom/sun/tools/javac/api/JavacTaskImpl;->parsed:Z

    if-nez v1, :cond_15

    .line 290
    invoke-virtual {p0}, Lcom/sun/tools/javac/api/JavacTaskImpl;->parse()Ljava/lang/Iterable;

    .line 291
    :cond_15
    iget-object v1, p0, Lcom/sun/tools/javac/api/JavacTaskImpl;->fileObjects:Lcom/sun/tools/javac/util/List;

    invoke-virtual {v1}, Lcom/sun/tools/javac/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move-object v1, v0

    :goto_1c
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3f

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/tools/JavaFileObject;

    .line 292
    iget-object v3, p0, Lcom/sun/tools/javac/api/JavacTaskImpl;->notYetEntered:Ljava/util/Map;

    invoke-interface {v3, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/tools/javac/tree/JCTree$JCCompilationUnit;

    .line 293
    if-eqz v0, :cond_3c

    .line 294
    if-nez v1, :cond_39

    .line 295
    new-instance v1, Lcom/sun/tools/javac/util/ListBuffer;

    invoke-direct {v1}, Lcom/sun/tools/javac/util/ListBuffer;-><init>()V

    .line 296
    :cond_39
    invoke-virtual {v1, v0}, Lcom/sun/tools/javac/util/ListBuffer;->append(Ljava/lang/Object;)Lcom/sun/tools/javac/util/ListBuffer;

    :cond_3c
    move-object v0, v1

    move-object v1, v0

    .line 298
    goto :goto_1c

    .line 299
    :cond_3f
    iget-object v0, p0, Lcom/sun/tools/javac/api/JavacTaskImpl;->notYetEntered:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 315
    :cond_44
    :goto_44
    if-nez v1, :cond_82

    .line 316
    invoke-static {}, Lcom/sun/tools/javac/util/List;->nil()Lcom/sun/tools/javac/util/List;

    move-result-object v0

    .line 334
    :goto_4a
    return-object v0

    .line 303
    :cond_4b
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move-object v1, v0

    :goto_50
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_44

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/source/tree/CompilationUnitTree;

    .line 304
    instance-of v2, v0, Lcom/sun/tools/javac/tree/JCTree$JCCompilationUnit;

    if-eqz v2, :cond_78

    .line 305
    if-nez v1, :cond_ec

    .line 306
    new-instance v2, Lcom/sun/tools/javac/util/ListBuffer;

    invoke-direct {v2}, Lcom/sun/tools/javac/util/ListBuffer;-><init>()V

    :goto_67
    move-object v1, v0

    .line 307
    check-cast v1, Lcom/sun/tools/javac/tree/JCTree$JCCompilationUnit;

    invoke-virtual {v2, v1}, Lcom/sun/tools/javac/util/ListBuffer;->append(Ljava/lang/Object;)Lcom/sun/tools/javac/util/ListBuffer;

    .line 308
    iget-object v1, p0, Lcom/sun/tools/javac/api/JavacTaskImpl;->notYetEntered:Ljava/util/Map;

    invoke-interface {v0}, Lcom/sun/source/tree/CompilationUnitTree;->getSourceFile()Ljavax/tools/JavaFileObject;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-object v1, v2

    .line 312
    goto :goto_50

    .line 311
    :cond_78
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 319
    :cond_82
    :try_start_82
    iget-object v0, p0, Lcom/sun/tools/javac/api/JavacTaskImpl;->compiler:Lcom/sun/tools/javac/main/JavaCompiler;

    invoke-virtual {v1}, Lcom/sun/tools/javac/util/ListBuffer;->toList()Lcom/sun/tools/javac/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sun/tools/javac/main/JavaCompiler;->enterTrees(Lcom/sun/tools/javac/util/List;)Lcom/sun/tools/javac/util/List;

    move-result-object v0

    .line 321
    iget-object v1, p0, Lcom/sun/tools/javac/api/JavacTaskImpl;->notYetEntered:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_9c

    .line 322
    iget-object v1, p0, Lcom/sun/tools/javac/api/JavacTaskImpl;->compiler:Lcom/sun/tools/javac/main/JavaCompiler;

    invoke-virtual {v1, v0}, Lcom/sun/tools/javac/main/JavaCompiler;->processAnnotations(Lcom/sun/tools/javac/util/List;)Lcom/sun/tools/javac/main/JavaCompiler;

    move-result-object v1

    iput-object v1, p0, Lcom/sun/tools/javac/api/JavacTaskImpl;->compiler:Lcom/sun/tools/javac/main/JavaCompiler;

    .line 324
    :cond_9c
    new-instance v1, Lcom/sun/tools/javac/util/ListBuffer;

    invoke-direct {v1}, Lcom/sun/tools/javac/util/ListBuffer;-><init>()V

    .line 325
    invoke-virtual {v0}, Lcom/sun/tools/javac/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_a5
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_df

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/tools/javac/tree/JCTree$JCCompilationUnit;

    .line 326
    iget-object v0, v0, Lcom/sun/tools/javac/tree/JCTree$JCCompilationUnit;->defs:Lcom/sun/tools/javac/util/List;

    invoke-virtual {v0}, Lcom/sun/tools/javac/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_b7
    :goto_b7
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_a5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/tools/javac/tree/JCTree;

    .line 327
    invoke-virtual {v0}, Lcom/sun/tools/javac/tree/JCTree;->getTag()I

    move-result v4

    const/4 v5, 0x3

    if-ne v4, v5, :cond_b7

    .line 328
    check-cast v0, Lcom/sun/tools/javac/tree/JCTree$JCClassDecl;

    .line 329
    iget-object v4, v0, Lcom/sun/tools/javac/tree/JCTree$JCClassDecl;->sym:Lcom/sun/tools/javac/code/Symbol$ClassSymbol;

    if-eqz v4, :cond_b7

    .line 330
    iget-object v0, v0, Lcom/sun/tools/javac/tree/JCTree$JCClassDecl;->sym:Lcom/sun/tools/javac/code/Symbol$ClassSymbol;

    invoke-virtual {v1, v0}, Lcom/sun/tools/javac/util/ListBuffer;->append(Ljava/lang/Object;)Lcom/sun/tools/javac/util/ListBuffer;
    :try_end_d5
    .catchall {:try_start_82 .. :try_end_d5} :catchall_d6

    goto :goto_b7

    .line 337
    :catchall_d6
    move-exception v0

    iget-object v1, p0, Lcom/sun/tools/javac/api/JavacTaskImpl;->compiler:Lcom/sun/tools/javac/main/JavaCompiler;

    iget-object v1, v1, Lcom/sun/tools/javac/main/JavaCompiler;->log:Lcom/sun/tools/javac/util/Log;

    invoke-virtual {v1}, Lcom/sun/tools/javac/util/Log;->flush()V

    .line 338
    throw v0

    .line 334
    :cond_df
    :try_start_df
    invoke-virtual {v1}, Lcom/sun/tools/javac/util/ListBuffer;->toList()Lcom/sun/tools/javac/util/List;
    :try_end_e2
    .catchall {:try_start_df .. :try_end_e2} :catchall_d6

    move-result-object v0

    .line 337
    iget-object v1, p0, Lcom/sun/tools/javac/api/JavacTaskImpl;->compiler:Lcom/sun/tools/javac/main/JavaCompiler;

    iget-object v1, v1, Lcom/sun/tools/javac/main/JavaCompiler;->log:Lcom/sun/tools/javac/util/Log;

    invoke-virtual {v1}, Lcom/sun/tools/javac/util/Log;->flush()V

    goto/16 :goto_4a

    :cond_ec
    move-object v2, v1

    goto/16 :goto_67

    :cond_ef
    move-object v1, v0

    goto/16 :goto_44
.end method

.method public generate()Ljava/lang/Iterable;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Iterable",
            "<+",
            "Ljavax/tools/JavaFileObject;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 407
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/api/JavacTaskImpl;->generate(Ljava/lang/Iterable;)Ljava/lang/Iterable;

    move-result-object v0

    return-object v0
.end method

.method public generate(Ljava/lang/Iterable;)Ljava/lang/Iterable;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+",
            "Ljavax/lang/model/element/TypeElement;",
            ">;)",
            "Ljava/lang/Iterable",
            "<+",
            "Ljavax/tools/JavaFileObject;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 420
    new-instance v0, Lcom/sun/tools/javac/util/ListBuffer;

    invoke-direct {v0}, Lcom/sun/tools/javac/util/ListBuffer;-><init>()V

    .line 422
    const/4 v1, 0x0

    :try_start_6
    invoke-virtual {p0, v1}, Lcom/sun/tools/javac/api/JavacTaskImpl;->analyze(Ljava/lang/Iterable;)Ljava/lang/Iterable;

    .line 424
    if-nez p1, :cond_37

    .line 425
    iget-object v1, p0, Lcom/sun/tools/javac/api/JavacTaskImpl;->compiler:Lcom/sun/tools/javac/main/JavaCompiler;

    iget-object v2, p0, Lcom/sun/tools/javac/api/JavacTaskImpl;->compiler:Lcom/sun/tools/javac/main/JavaCompiler;

    iget-object v3, p0, Lcom/sun/tools/javac/api/JavacTaskImpl;->genList:Lcom/sun/tools/javac/util/ListBuffer;

    invoke-virtual {v2, v3}, Lcom/sun/tools/javac/main/JavaCompiler;->desugar(Ljava/util/Queue;)Ljava/util/Queue;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/sun/tools/javac/main/JavaCompiler;->generate(Ljava/util/Queue;Ljava/util/Queue;)V

    .line 426
    iget-object v1, p0, Lcom/sun/tools/javac/api/JavacTaskImpl;->genList:Lcom/sun/tools/javac/util/ListBuffer;

    invoke-virtual {v1}, Lcom/sun/tools/javac/util/ListBuffer;->clear()V

    .line 436
    :goto_1d
    iget-object v1, p0, Lcom/sun/tools/javac/api/JavacTaskImpl;->genList:Lcom/sun/tools/javac/util/ListBuffer;

    invoke-virtual {v1}, Lcom/sun/tools/javac/util/ListBuffer;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2d

    .line 437
    iget-object v1, p0, Lcom/sun/tools/javac/api/JavacTaskImpl;->compiler:Lcom/sun/tools/javac/main/JavaCompiler;

    invoke-virtual {v1}, Lcom/sun/tools/javac/main/JavaCompiler;->reportDeferredDiagnostics()V

    .line 438
    invoke-virtual {p0}, Lcom/sun/tools/javac/api/JavacTaskImpl;->cleanup()V
    :try_end_2d
    .catchall {:try_start_6 .. :try_end_2d} :catchall_42

    .line 442
    :cond_2d
    iget-object v1, p0, Lcom/sun/tools/javac/api/JavacTaskImpl;->compiler:Lcom/sun/tools/javac/main/JavaCompiler;

    if-eqz v1, :cond_36

    .line 443
    iget-object v1, v1, Lcom/sun/tools/javac/main/JavaCompiler;->log:Lcom/sun/tools/javac/util/Log;

    invoke-virtual {v1}, Lcom/sun/tools/javac/util/Log;->flush()V

    .line 445
    :cond_36
    return-object v0

    .line 429
    :cond_37
    :try_start_37
    new-instance v1, Lcom/sun/tools/javac/api/JavacTaskImpl$2;

    invoke-direct {v1, p0, v0}, Lcom/sun/tools/javac/api/JavacTaskImpl$2;-><init>(Lcom/sun/tools/javac/api/JavacTaskImpl;Lcom/sun/tools/javac/util/ListBuffer;)V

    .line 434
    iget-object v2, p0, Lcom/sun/tools/javac/api/JavacTaskImpl;->genList:Lcom/sun/tools/javac/util/ListBuffer;

    invoke-virtual {v1, v2, p1}, Lcom/sun/tools/javac/api/JavacTaskImpl$Filter;->run(Ljava/util/Queue;Ljava/lang/Iterable;)V
    :try_end_41
    .catchall {:try_start_37 .. :try_end_41} :catchall_42

    goto :goto_1d

    .line 442
    :catchall_42
    move-exception v0

    iget-object v1, p0, Lcom/sun/tools/javac/api/JavacTaskImpl;->compiler:Lcom/sun/tools/javac/main/JavaCompiler;

    if-eqz v1, :cond_4c

    .line 443
    iget-object v1, v1, Lcom/sun/tools/javac/main/JavaCompiler;->log:Lcom/sun/tools/javac/util/Log;

    invoke-virtual {v1}, Lcom/sun/tools/javac/util/Log;->flush()V

    .line 444
    :cond_4c
    throw v0
.end method

.method public getContext()Lcom/sun/tools/javac/util/Context;
    .registers 2

    .line 499
    iget-object v0, p0, Lcom/sun/tools/javac/api/JavacTaskImpl;->context:Lcom/sun/tools/javac/util/Context;

    return-object v0
.end method

.method public getElements()Lcom/sun/tools/javac/model/JavacElements;
    .registers 2

    .line 457
    iget-object v0, p0, Lcom/sun/tools/javac/api/JavacTaskImpl;->context:Lcom/sun/tools/javac/util/Context;

    if-eqz v0, :cond_9

    .line 459
    invoke-static {v0}, Lcom/sun/tools/javac/model/JavacElements;->instance(Lcom/sun/tools/javac/util/Context;)Lcom/sun/tools/javac/model/JavacElements;

    move-result-object v0

    return-object v0

    .line 458
    :cond_9
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public bridge synthetic getElements()Ljavax/lang/model/util/Elements;
    .registers 2

    .line 67
    invoke-virtual {p0}, Lcom/sun/tools/javac/api/JavacTaskImpl;->getElements()Lcom/sun/tools/javac/model/JavacElements;

    move-result-object v0

    return-object v0
.end method

.method public getTypeMirror(Ljava/lang/Iterable;)Ljavax/lang/model/type/TypeMirror;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+",
            "Lcom/sun/source/tree/Tree;",
            ">;)",
            "Ljavax/lang/model/type/TypeMirror;"
        }
    .end annotation

    .line 450
    const/4 v0, 0x0

    .line 451
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_12

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/source/tree/Tree;

    goto :goto_5

    .line 453
    :cond_12
    check-cast v0, Lcom/sun/tools/javac/tree/JCTree;

    iget-object v0, v0, Lcom/sun/tools/javac/tree/JCTree;->type:Lcom/sun/tools/javac/code/Type;

    return-object v0
.end method

.method public getTypes()Lcom/sun/tools/javac/model/JavacTypes;
    .registers 2

    .line 463
    iget-object v0, p0, Lcom/sun/tools/javac/api/JavacTaskImpl;->context:Lcom/sun/tools/javac/util/Context;

    if-eqz v0, :cond_9

    .line 465
    invoke-static {v0}, Lcom/sun/tools/javac/model/JavacTypes;->instance(Lcom/sun/tools/javac/util/Context;)Lcom/sun/tools/javac/model/JavacTypes;

    move-result-object v0

    return-object v0

    .line 464
    :cond_9
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public bridge synthetic getTypes()Ljavax/lang/model/util/Types;
    .registers 2

    .line 67
    invoke-virtual {p0}, Lcom/sun/tools/javac/api/JavacTaskImpl;->getTypes()Lcom/sun/tools/javac/model/JavacTypes;

    move-result-object v0

    return-object v0
.end method

.method public parse()Ljava/lang/Iterable;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Iterable",
            "<+",
            "Lcom/sun/source/tree/CompilationUnitTree;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v5, 0x1

    .line 239
    :try_start_1
    invoke-direct {p0}, Lcom/sun/tools/javac/api/JavacTaskImpl;->prepareCompiler()V

    .line 240
    iget-object v0, p0, Lcom/sun/tools/javac/api/JavacTaskImpl;->compiler:Lcom/sun/tools/javac/main/JavaCompiler;

    iget-object v1, p0, Lcom/sun/tools/javac/api/JavacTaskImpl;->fileObjects:Lcom/sun/tools/javac/util/List;

    invoke-virtual {v0, v1}, Lcom/sun/tools/javac/main/JavaCompiler;->parseFiles(Ljava/lang/Iterable;)Lcom/sun/tools/javac/util/List;

    move-result-object v1

    .line 241
    invoke-virtual {v1}, Lcom/sun/tools/javac/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_10
    :goto_10
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_41

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/tools/javac/tree/JCTree$JCCompilationUnit;

    .line 242
    invoke-virtual {v0}, Lcom/sun/tools/javac/tree/JCTree$JCCompilationUnit;->getSourceFile()Ljavax/tools/JavaFileObject;

    move-result-object v3

    .line 243
    iget-object v4, p0, Lcom/sun/tools/javac/api/JavacTaskImpl;->notYetEntered:Ljava/util/Map;

    invoke-interface {v4, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_10

    .line 244
    iget-object v4, p0, Lcom/sun/tools/javac/api/JavacTaskImpl;->notYetEntered:Ljava/util/Map;

    invoke-interface {v4, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2d
    .catchall {:try_start_1 .. :try_end_2d} :catchall_2e

    goto :goto_10

    .line 249
    :catchall_2e
    move-exception v0

    iput-boolean v5, p0, Lcom/sun/tools/javac/api/JavacTaskImpl;->parsed:Z

    .line 250
    iget-object v1, p0, Lcom/sun/tools/javac/api/JavacTaskImpl;->compiler:Lcom/sun/tools/javac/main/JavaCompiler;

    if-eqz v1, :cond_40

    iget-object v1, v1, Lcom/sun/tools/javac/main/JavaCompiler;->log:Lcom/sun/tools/javac/util/Log;

    if-eqz v1, :cond_40

    .line 251
    iget-object v1, p0, Lcom/sun/tools/javac/api/JavacTaskImpl;->compiler:Lcom/sun/tools/javac/main/JavaCompiler;

    iget-object v1, v1, Lcom/sun/tools/javac/main/JavaCompiler;->log:Lcom/sun/tools/javac/util/Log;

    invoke-virtual {v1}, Lcom/sun/tools/javac/util/Log;->flush()V

    .line 252
    :cond_40
    throw v0

    .line 246
    :cond_41
    iput-boolean v5, p0, Lcom/sun/tools/javac/api/JavacTaskImpl;->parsed:Z

    .line 250
    iget-object v0, p0, Lcom/sun/tools/javac/api/JavacTaskImpl;->compiler:Lcom/sun/tools/javac/main/JavaCompiler;

    if-eqz v0, :cond_52

    iget-object v0, v0, Lcom/sun/tools/javac/main/JavaCompiler;->log:Lcom/sun/tools/javac/util/Log;

    if-eqz v0, :cond_52

    .line 251
    iget-object v0, p0, Lcom/sun/tools/javac/api/JavacTaskImpl;->compiler:Lcom/sun/tools/javac/main/JavaCompiler;

    iget-object v0, v0, Lcom/sun/tools/javac/main/JavaCompiler;->log:Lcom/sun/tools/javac/util/Log;

    invoke-virtual {v0}, Lcom/sun/tools/javac/util/Log;->flush()V

    .line 246
    :cond_52
    return-object v1
.end method

.method public parseType(Ljava/lang/String;Ljavax/lang/model/element/TypeElement;)Lcom/sun/tools/javac/code/Type;
    .registers 10

    .line 515
    if-eqz p1, :cond_65

    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_65

    .line 517
    iget-object v0, p0, Lcom/sun/tools/javac/api/JavacTaskImpl;->context:Lcom/sun/tools/javac/util/Context;

    invoke-static {v0}, Lcom/sun/tools/javac/main/JavaCompiler;->instance(Lcom/sun/tools/javac/util/Context;)Lcom/sun/tools/javac/main/JavaCompiler;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/tools/javac/api/JavacTaskImpl;->compiler:Lcom/sun/tools/javac/main/JavaCompiler;

    .line 518
    iget-object v0, v0, Lcom/sun/tools/javac/main/JavaCompiler;->log:Lcom/sun/tools/javac/util/Log;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sun/tools/javac/util/Log;->useSource(Ljavax/tools/JavaFileObject;)Ljavax/tools/JavaFileObject;

    move-result-object v1

    .line 519
    iget-object v0, p0, Lcom/sun/tools/javac/api/JavacTaskImpl;->context:Lcom/sun/tools/javac/util/Context;

    invoke-static {v0}, Lcom/sun/tools/javac/parser/ParserFactory;->instance(Lcom/sun/tools/javac/util/Context;)Lcom/sun/tools/javac/parser/ParserFactory;

    move-result-object v0

    .line 520
    iget-object v2, p0, Lcom/sun/tools/javac/api/JavacTaskImpl;->context:Lcom/sun/tools/javac/util/Context;

    invoke-static {v2}, Lcom/sun/tools/javac/comp/Attr;->instance(Lcom/sun/tools/javac/util/Context;)Lcom/sun/tools/javac/comp/Attr;

    move-result-object v2

    .line 522
    :try_start_25
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\u0000"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toCharArray()[C

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    invoke-static {v3, v4, v5}, Ljava/nio/CharBuffer;->wrap([CII)Ljava/nio/CharBuffer;

    move-result-object v3

    .line 523
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v0, v3, v4, v5, v6}, Lcom/sun/tools/javac/parser/ParserFactory;->newParser(Ljava/lang/CharSequence;ZZZ)Lcom/sun/tools/javac/parser/Parser;

    move-result-object v0

    .line 524
    invoke-interface {v0}, Lcom/sun/tools/javac/parser/Parser;->parseType()Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    move-result-object v0

    .line 525
    check-cast p2, Lcom/sun/tools/javac/code/Symbol$TypeSymbol;

    invoke-virtual {v2, v0, p2}, Lcom/sun/tools/javac/comp/Attr;->attribType(Lcom/sun/tools/javac/tree/JCTree;Lcom/sun/tools/javac/code/Symbol$TypeSymbol;)Lcom/sun/tools/javac/code/Type;
    :try_end_53
    .catchall {:try_start_25 .. :try_end_53} :catchall_5c

    move-result-object v0

    .line 527
    iget-object v2, p0, Lcom/sun/tools/javac/api/JavacTaskImpl;->compiler:Lcom/sun/tools/javac/main/JavaCompiler;

    iget-object v2, v2, Lcom/sun/tools/javac/main/JavaCompiler;->log:Lcom/sun/tools/javac/util/Log;

    invoke-virtual {v2, v1}, Lcom/sun/tools/javac/util/Log;->useSource(Ljavax/tools/JavaFileObject;)Ljavax/tools/JavaFileObject;

    .line 525
    return-object v0

    .line 527
    :catchall_5c
    move-exception v0

    iget-object v2, p0, Lcom/sun/tools/javac/api/JavacTaskImpl;->compiler:Lcom/sun/tools/javac/main/JavaCompiler;

    iget-object v2, v2, Lcom/sun/tools/javac/main/JavaCompiler;->log:Lcom/sun/tools/javac/util/Log;

    invoke-virtual {v2, v1}, Lcom/sun/tools/javac/util/Log;->useSource(Ljavax/tools/JavaFileObject;)Ljavax/tools/JavaFileObject;

    .line 528
    throw v0

    .line 516
    :cond_65
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method public pathFor(Lcom/sun/source/tree/CompilationUnitTree;Lcom/sun/source/tree/Tree;)Ljava/lang/Iterable;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sun/source/tree/CompilationUnitTree;",
            "Lcom/sun/source/tree/Tree;",
            ")",
            "Ljava/lang/Iterable",
            "<+",
            "Lcom/sun/source/tree/Tree;",
            ">;"
        }
    .end annotation

    .line 469
    check-cast p2, Lcom/sun/tools/javac/tree/JCTree;

    check-cast p1, Lcom/sun/tools/javac/tree/JCTree$JCCompilationUnit;

    invoke-static {p2, p1}, Lcom/sun/tools/javac/tree/TreeInfo;->pathFor(Lcom/sun/tools/javac/tree/JCTree;Lcom/sun/tools/javac/tree/JCTree$JCCompilationUnit;)Lcom/sun/tools/javac/util/List;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sun/tools/javac/util/List;->reverse()Lcom/sun/tools/javac/util/List;

    move-result-object v0

    return-object v0
.end method

.method public setLocale(Ljava/util/Locale;)V
    .registers 3

    .line 149
    iget-object v0, p0, Lcom/sun/tools/javac/api/JavacTaskImpl;->used:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_b

    .line 151
    iput-object p1, p0, Lcom/sun/tools/javac/api/JavacTaskImpl;->locale:Ljava/util/Locale;

    .line 152
    return-void

    .line 150
    :cond_b
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public setProcessors(Ljava/lang/Iterable;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+",
            "Ljavax/annotation/processing/Processor;",
            ">;)V"
        }
    .end annotation

    .line 141
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 143
    iget-object v0, p0, Lcom/sun/tools/javac/api/JavacTaskImpl;->used:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_e

    .line 145
    iput-object p1, p0, Lcom/sun/tools/javac/api/JavacTaskImpl;->processors:Ljava/lang/Iterable;

    .line 146
    return-void

    .line 144
    :cond_e
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public setTaskListener(Lcom/sun/source/util/TaskListener;)V
    .registers 2

    .line 228
    iput-object p1, p0, Lcom/sun/tools/javac/api/JavacTaskImpl;->taskListener:Lcom/sun/source/util/TaskListener;

    .line 229
    return-void
.end method

.method toString(Ljava/lang/Iterable;Ljava/lang/String;)Ljava/lang/String;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable",
            "<TT;>;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 182
    const-string v0, ""

    .line 183
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 184
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_21

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 185
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 186
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object v0, p2

    .line 188
    goto :goto_b

    .line 189
    :cond_21
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public updateContext(Lcom/sun/tools/javac/util/Context;)V
    .registers 2

    .line 507
    iput-object p1, p0, Lcom/sun/tools/javac/api/JavacTaskImpl;->context:Lcom/sun/tools/javac/util/Context;

    .line 508
    return-void
.end method
