.class abstract Lcom/sun/tools/javac/api/JavacTaskImpl$Filter;
.super Ljava/lang/Object;
.source "JavacTaskImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/tools/javac/api/JavacTaskImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x400
    name = "Filter"
.end annotation


# instance fields
.field final this$0:Lcom/sun/tools/javac/api/JavacTaskImpl;


# direct methods
.method constructor <init>(Lcom/sun/tools/javac/api/JavacTaskImpl;)V
    .registers 2

    .line 472
    iput-object p1, p0, Lcom/sun/tools/javac/api/JavacTaskImpl$Filter;->this$0:Lcom/sun/tools/javac/api/JavacTaskImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method abstract process(Lcom/sun/tools/javac/comp/Env;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sun/tools/javac/comp/Env",
            "<",
            "Lcom/sun/tools/javac/comp/AttrContext;",
            ">;)V"
        }
    .end annotation
.end method

.method run(Ljava/util/Queue;Ljava/lang/Iterable;)V
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
            "Ljava/lang/Iterable",
            "<+",
            "Ljavax/lang/model/element/TypeElement;",
            ">;)V"
        }
    .end annotation

    .line 474
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 475
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/lang/model/element/TypeElement;

    .line 476
    invoke-interface {v2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 478
    :cond_0
    invoke-static {}, Lcom/sun/tools/javac/util/ListBuffer;->lb()Lcom/sun/tools/javac/util/ListBuffer;

    move-result-object v0

    move-object v1, v0

    .line 479
    :goto_1
    invoke-interface {p1}, Ljava/util/Queue;->peek()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 480
    invoke-interface {p1}, Ljava/util/Queue;->remove()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/tools/javac/comp/Env;

    .line 481
    iget-object v3, v0, Lcom/sun/tools/javac/comp/Env;->enclClass:Lcom/sun/tools/javac/tree/JCTree$JCClassDecl;

    iget-object v3, v3, Lcom/sun/tools/javac/tree/JCTree$JCClassDecl;->sym:Lcom/sun/tools/javac/code/Symbol$ClassSymbol;

    .line 482
    if-eqz v3, :cond_1

    invoke-virtual {v3}, Lcom/sun/tools/javac/code/Symbol$ClassSymbol;->outermostClass()Lcom/sun/tools/javac/code/Symbol$ClassSymbol;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 483
    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/api/JavacTaskImpl$Filter;->process(Lcom/sun/tools/javac/comp/Env;)V

    move-object v0, v1

    :goto_2
    move-object v1, v0

    .line 486
    goto :goto_1

    .line 485
    :cond_1
    invoke-virtual {v1, v0}, Lcom/sun/tools/javac/util/ListBuffer;->append(Ljava/lang/Object;)Lcom/sun/tools/javac/util/ListBuffer;

    move-result-object v0

    goto :goto_2

    .line 488
    :cond_2
    invoke-interface {p1, v1}, Ljava/util/Queue;->addAll(Ljava/util/Collection;)Z

    .line 489
    return-void
.end method
