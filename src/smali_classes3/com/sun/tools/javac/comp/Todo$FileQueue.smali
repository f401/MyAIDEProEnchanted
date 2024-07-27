.class Lcom/sun/tools/javac/comp/Todo$FileQueue;
.super Ljava/util/AbstractQueue;
.source "Todo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/tools/javac/comp/Todo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "FileQueue"
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


# instance fields
.field fileContents:Ljava/util/LinkedList;
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

.field final this$0:Lcom/sun/tools/javac/comp/Todo;


# direct methods
.method constructor <init>(Lcom/sun/tools/javac/comp/Todo;)V
    .registers 3

    .line 139
    iput-object p1, p0, Lcom/sun/tools/javac/comp/Todo$FileQueue;->this$0:Lcom/sun/tools/javac/comp/Todo;

    invoke-direct {p0}, Ljava/util/AbstractQueue;-><init>()V

    .line 170
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/sun/tools/javac/comp/Todo$FileQueue;->fileContents:Ljava/util/LinkedList;

    return-void
.end method


# virtual methods
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

    .line 142
    iget-object v0, p0, Lcom/sun/tools/javac/comp/Todo$FileQueue;->fileContents:Ljava/util/LinkedList;

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

    .line 151
    iget-object v0, p0, Lcom/sun/tools/javac/comp/Todo$FileQueue;->fileContents:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->offer(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 152
    iget-object v0, p0, Lcom/sun/tools/javac/comp/Todo$FileQueue;->this$0:Lcom/sun/tools/javac/comp/Todo;

    iget-object v0, v0, Lcom/sun/tools/javac/comp/Todo;->contents:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 153
    const/4 v0, 0x1

    .line 155
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic offer(Ljava/lang/Object;)Z
    .registers 3

    .line 139
    check-cast p1, Lcom/sun/tools/javac/comp/Env;

    invoke-virtual {p0, p1}, Lcom/sun/tools/javac/comp/Todo$FileQueue;->offer(Lcom/sun/tools/javac/comp/Env;)Z

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

    .line 167
    iget-object v0, p0, Lcom/sun/tools/javac/comp/Todo$FileQueue;->fileContents:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/sun/tools/javac/comp/Todo$FileQueue;->fileContents:Ljava/util/LinkedList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/tools/javac/comp/Env;

    goto :goto_0
.end method

.method public bridge synthetic peek()Ljava/lang/Object;
    .registers 2

    .line 139
    invoke-virtual {p0}, Lcom/sun/tools/javac/comp/Todo$FileQueue;->peek()Lcom/sun/tools/javac/comp/Env;

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

    .line 159
    iget-object v0, p0, Lcom/sun/tools/javac/comp/Todo$FileQueue;->fileContents:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 160
    const/4 v0, 0x0

    .line 163
    :goto_0
    return-object v0

    .line 161
    :cond_0
    iget-object v0, p0, Lcom/sun/tools/javac/comp/Todo$FileQueue;->fileContents:Ljava/util/LinkedList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/tools/javac/comp/Env;

    .line 162
    iget-object v1, p0, Lcom/sun/tools/javac/comp/Todo$FileQueue;->this$0:Lcom/sun/tools/javac/comp/Todo;

    iget-object v1, v1, Lcom/sun/tools/javac/comp/Todo;->contents:Ljava/util/LinkedList;

    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public bridge synthetic poll()Ljava/lang/Object;
    .registers 2

    .line 139
    invoke-virtual {p0}, Lcom/sun/tools/javac/comp/Todo$FileQueue;->poll()Lcom/sun/tools/javac/comp/Env;

    move-result-object v0

    return-object v0
.end method

.method public size()I
    .registers 2

    .line 147
    iget-object v0, p0, Lcom/sun/tools/javac/comp/Todo$FileQueue;->fileContents:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    return v0
.end method
