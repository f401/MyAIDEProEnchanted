.class public Lcom/sun/tools/javac/comp/Todo;
.super Ljava/util/AbstractQueue;
.source "Todo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sun/tools/javac/comp/Todo$FileQueue;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractQueue",
        "<",
        "Lcom/sun/tools/javac/comp/Env",
        "<",
        "Lcom/sun/tools/javac/comp/AttrContext;",
        ">;>;"
    }
.end annotation


# static fields
.field protected static final todoKey:Lcom/sun/tools/javac/util/Context$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sun/tools/javac/util/Context$Key",
            "<",
            "Lcom/sun/tools/javac/comp/Todo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field contents:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/sun/tools/javac/comp/Env",
            "<",
            "Lcom/sun/tools/javac/comp/AttrContext;",
            ">;>;"
        }
    .end annotation
.end field

.field contentsByFile:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Ljava/util/Queue",
            "<",
            "Lcom/sun/tools/javac/comp/Env",
            "<",
            "Lcom/sun/tools/javac/comp/AttrContext;",
            ">;>;>;"
        }
    .end annotation
.end field

.field fileMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljavax/tools/JavaFileObject;",
            "Lcom/sun/tools/javac/comp/Todo$FileQueue;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 46
    new-instance v0, Lcom/sun/tools/javac/util/Context$Key;

    invoke-direct {v0}, Lcom/sun/tools/javac/util/Context$Key;-><init>()V

    sput-object v0, Lcom/sun/tools/javac/comp/Todo;->todoKey:Lcom/sun/tools/javac/util/Context$Key;

    return-void
.end method

.method protected constructor <init>(Lcom/sun/tools/javac/util/Context;)V
    .registers 3

    .line 58
    invoke-direct {p0}, Ljava/util/AbstractQueue;-><init>()V

    .line 135
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/sun/tools/javac/comp/Todo;->contents:Ljava/util/LinkedList;

    .line 59
    sget-object v0, Lcom/sun/tools/javac/comp/Todo;->todoKey:Lcom/sun/tools/javac/util/Context$Key;

    invoke-virtual {p1, v0, p0}, Lcom/sun/tools/javac/util/Context;->put(Lcom/sun/tools/javac/util/Context$Key;Ljava/lang/Object;)V

    .line 60
    return-void
.end method

.method private addByFile(Lcom/sun/tools/javac/comp/Env;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sun/tools/javac/comp/Env",
            "<",
            "Lcom/sun/tools/javac/comp/AttrContext;",
            ">;)V"
        }
    .end annotation

    .line 110
    iget-object v0, p1, Lcom/sun/tools/javac/comp/Env;->toplevel:Lcom/sun/tools/javac/tree/JCTree$JCCompilationUnit;

    iget-object v1, v0, Lcom/sun/tools/javac/tree/JCTree$JCCompilationUnit;->sourcefile:Ljavax/tools/JavaFileObject;

    .line 111
    iget-object v0, p0, Lcom/sun/tools/javac/comp/Todo;->fileMap:Ljava/util/Map;

    if-nez v0, :cond_f

    .line 112
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sun/tools/javac/comp/Todo;->fileMap:Ljava/util/Map;

    .line 113
    :cond_f
    iget-object v0, p0, Lcom/sun/tools/javac/comp/Todo;->fileMap:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/tools/javac/comp/Todo$FileQueue;

    .line 114
    if-nez v0, :cond_28

    .line 115
    new-instance v0, Lcom/sun/tools/javac/comp/Todo$FileQueue;

    invoke-direct {v0, p0}, Lcom/sun/tools/javac/comp/Todo$FileQueue;-><init>(Lcom/sun/tools/javac/comp/Todo;)V

    .line 116
    iget-object v2, p0, Lcom/sun/tools/javac/comp/Todo;->fileMap:Ljava/util/Map;

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 117
    iget-object v1, p0, Lcom/sun/tools/javac/comp/Todo;->contentsByFile:Ljava/util/LinkedList;

    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 119
    :cond_28
    iget-object v0, v0, Lcom/sun/tools/javac/comp/Todo$FileQueue;->fileContents:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 120
    return-void
.end method

.method public static instance(Lcom/sun/tools/javac/util/Context;)Lcom/sun/tools/javac/comp/Todo;
    .registers 2

    .line 51
    sget-object v0, Lcom/sun/tools/javac/comp/Todo;->todoKey:Lcom/sun/tools/javac/util/Context$Key;

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/util/Context;->get(Lcom/sun/tools/javac/util/Context$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/tools/javac/comp/Todo;

    .line 52
    if-nez v0, :cond_f

    .line 53
    new-instance v0, Lcom/sun/tools/javac/comp/Todo;

    invoke-direct {v0, p0}, Lcom/sun/tools/javac/comp/Todo;-><init>(Lcom/sun/tools/javac/util/Context;)V

    .line 54
    :cond_f
    return-object v0
.end method

.method private removeByFile(Lcom/sun/tools/javac/comp/Env;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sun/tools/javac/comp/Env",
            "<",
            "Lcom/sun/tools/javac/comp/AttrContext;",
            ">;)V"
        }
    .end annotation

    .line 123
    iget-object v0, p1, Lcom/sun/tools/javac/comp/Env;->toplevel:Lcom/sun/tools/javac/tree/JCTree$JCCompilationUnit;

    iget-object v1, v0, Lcom/sun/tools/javac/tree/JCTree$JCCompilationUnit;->sourcefile:Ljavax/tools/JavaFileObject;

    .line 124
    iget-object v0, p0, Lcom/sun/tools/javac/comp/Todo;->fileMap:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/tools/javac/comp/Todo$FileQueue;

    .line 125
    if-nez v0, :cond_f

    .line 133
    :cond_e
    :goto_e
    return-void

    .line 127
    :cond_f
    iget-object v2, v0, Lcom/sun/tools/javac/comp/Todo$FileQueue;->fileContents:Ljava/util/LinkedList;

    invoke-virtual {v2, p1}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 128
    invoke-virtual {v0}, Lcom/sun/tools/javac/comp/Todo$FileQueue;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_e

    .line 129
    iget-object v2, p0, Lcom/sun/tools/javac/comp/Todo;->fileMap:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 130
    iget-object v1, p0, Lcom/sun/tools/javac/comp/Todo;->contentsByFile:Ljava/util/LinkedList;

    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    goto :goto_e
.end method


# virtual methods
.method public append(Lcom/sun/tools/javac/comp/Env;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sun/tools/javac/comp/Env",
            "<",
            "Lcom/sun/tools/javac/comp/AttrContext;",
            ">;)V"
        }
    .end annotation

    .line 63
    invoke-virtual {p0, p1}, Lcom/sun/tools/javac/comp/Todo;->add(Ljava/lang/Object;)Z

    .line 64
    return-void
.end method

.method public groupByFile()Ljava/util/Queue;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Queue",
            "<",
            "Ljava/util/Queue",
            "<",
            "Lcom/sun/tools/javac/comp/Env",
            "<",
            "Lcom/sun/tools/javac/comp/AttrContext;",
            ">;>;>;"
        }
    .end annotation

    .line 100
    iget-object v0, p0, Lcom/sun/tools/javac/comp/Todo;->contentsByFile:Ljava/util/LinkedList;

    if-nez v0, :cond_21

    .line 101
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/sun/tools/javac/comp/Todo;->contentsByFile:Ljava/util/LinkedList;

    .line 102
    iget-object v0, p0, Lcom/sun/tools/javac/comp/Todo;->contents:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_11
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_21

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/tools/javac/comp/Env;

    .line 103
    invoke-direct {p0, v0}, Lcom/sun/tools/javac/comp/Todo;->addByFile(Lcom/sun/tools/javac/comp/Env;)V

    goto :goto_11

    .line 106
    :cond_21
    iget-object v0, p0, Lcom/sun/tools/javac/comp/Todo;->contentsByFile:Ljava/util/LinkedList;

    return-object v0
.end method

.method public iterator()Ljava/util/Iterator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Lcom/sun/tools/javac/comp/Env",
            "<",
            "Lcom/sun/tools/javac/comp/AttrContext;",
            ">;>;"
        }
    .end annotation

    .line 68
    iget-object v0, p0, Lcom/sun/tools/javac/comp/Todo;->contents:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public offer(Lcom/sun/tools/javac/comp/Env;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sun/tools/javac/comp/Env",
            "<",
            "Lcom/sun/tools/javac/comp/AttrContext;",
            ">;)Z"
        }
    .end annotation

    .line 77
    iget-object v0, p0, Lcom/sun/tools/javac/comp/Todo;->contents:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 78
    iget-object v0, p0, Lcom/sun/tools/javac/comp/Todo;->contentsByFile:Ljava/util/LinkedList;

    if-eqz v0, :cond_f

    .line 79
    invoke-direct {p0, p1}, Lcom/sun/tools/javac/comp/Todo;->addByFile(Lcom/sun/tools/javac/comp/Env;)V

    .line 80
    :cond_f
    const/4 v0, 0x1

    .line 82
    :goto_10
    return v0

    :cond_11
    const/4 v0, 0x0

    goto :goto_10
.end method

.method public bridge synthetic offer(Ljava/lang/Object;)Z
    .registers 3

    .line 44
    check-cast p1, Lcom/sun/tools/javac/comp/Env;

    invoke-virtual {p0, p1}, Lcom/sun/tools/javac/comp/Todo;->offer(Lcom/sun/tools/javac/comp/Env;)Z

    move-result v0

    return v0
.end method

.method public peek()Lcom/sun/tools/javac/comp/Env;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/sun/tools/javac/comp/Env",
            "<",
            "Lcom/sun/tools/javac/comp/AttrContext;",
            ">;"
        }
    .end annotation

    .line 96
    invoke-virtual {p0}, Lcom/sun/tools/javac/comp/Todo;->size()I

    move-result v0

    if-nez v0, :cond_8

    const/4 v0, 0x0

    :goto_7
    return-object v0

    :cond_8
    iget-object v0, p0, Lcom/sun/tools/javac/comp/Todo;->contents:Ljava/util/LinkedList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/tools/javac/comp/Env;

    goto :goto_7
.end method

.method public bridge synthetic peek()Ljava/lang/Object;
    .registers 2

    .line 44
    invoke-virtual {p0}, Lcom/sun/tools/javac/comp/Todo;->peek()Lcom/sun/tools/javac/comp/Env;

    move-result-object v0

    return-object v0
.end method

.method public poll()Lcom/sun/tools/javac/comp/Env;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/sun/tools/javac/comp/Env",
            "<",
            "Lcom/sun/tools/javac/comp/AttrContext;",
            ">;"
        }
    .end annotation

    .line 87
    invoke-virtual {p0}, Lcom/sun/tools/javac/comp/Todo;->size()I

    move-result v0

    if-nez v0, :cond_8

    .line 88
    const/4 v0, 0x0

    .line 92
    :cond_7
    :goto_7
    return-object v0

    .line 89
    :cond_8
    iget-object v0, p0, Lcom/sun/tools/javac/comp/Todo;->contents:Ljava/util/LinkedList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/tools/javac/comp/Env;

    .line 90
    iget-object v1, p0, Lcom/sun/tools/javac/comp/Todo;->contentsByFile:Ljava/util/LinkedList;

    if-eqz v1, :cond_7

    .line 91
    invoke-direct {p0, v0}, Lcom/sun/tools/javac/comp/Todo;->removeByFile(Lcom/sun/tools/javac/comp/Env;)V

    goto :goto_7
.end method

.method public bridge synthetic poll()Ljava/lang/Object;
    .registers 2

    .line 44
    invoke-virtual {p0}, Lcom/sun/tools/javac/comp/Todo;->poll()Lcom/sun/tools/javac/comp/Env;

    move-result-object v0

    return-object v0
.end method

.method public size()I
    .registers 2

    .line 73
    iget-object v0, p0, Lcom/sun/tools/javac/comp/Todo;->contents:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    return v0
.end method
