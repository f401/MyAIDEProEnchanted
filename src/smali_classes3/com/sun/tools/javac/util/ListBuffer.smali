.class public Lcom/sun/tools/javac/util/ListBuffer;
.super Ljava/util/AbstractQueue;
.source "ListBuffer.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<A:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/AbstractQueue",
        "<TA;>;"
    }
.end annotation


# instance fields
.field public count:I

.field public elems:Lcom/sun/tools/javac/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sun/tools/javac/util/List",
            "<TA;>;"
        }
    .end annotation
.end field

.field public last:Lcom/sun/tools/javac/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sun/tools/javac/util/List",
            "<TA;>;"
        }
    .end annotation
.end field

.field public shared:Z


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 71
    invoke-direct {p0}, Ljava/util/AbstractQueue;-><init>()V

    .line 72
    invoke-virtual {p0}, Lcom/sun/tools/javac/util/ListBuffer;->clear()V

    .line 73
    return-void
.end method

.method private copy()V
    .registers 5

    .line 106
    new-instance v0, Lcom/sun/tools/javac/util/List;

    iget-object v1, p0, Lcom/sun/tools/javac/util/ListBuffer;->elems:Lcom/sun/tools/javac/util/List;

    iget-object v1, v1, Lcom/sun/tools/javac/util/List;->head:Ljava/lang/Object;

    iget-object v2, p0, Lcom/sun/tools/javac/util/ListBuffer;->elems:Lcom/sun/tools/javac/util/List;

    iget-object v2, v2, Lcom/sun/tools/javac/util/List;->tail:Lcom/sun/tools/javac/util/List;

    invoke-direct {v0, v1, v2}, Lcom/sun/tools/javac/util/List;-><init>(Ljava/lang/Object;Lcom/sun/tools/javac/util/List;)V

    iput-object v0, p0, Lcom/sun/tools/javac/util/ListBuffer;->elems:Lcom/sun/tools/javac/util/List;

    .line 108
    :goto_0
    iget-object v2, v0, Lcom/sun/tools/javac/util/List;->tail:Lcom/sun/tools/javac/util/List;

    .line 109
    if-nez v2, :cond_0

    .line 114
    iput-object v0, p0, Lcom/sun/tools/javac/util/ListBuffer;->last:Lcom/sun/tools/javac/util/List;

    .line 115
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sun/tools/javac/util/ListBuffer;->shared:Z

    .line 116
    return-void

    .line 110
    :cond_0
    new-instance v1, Lcom/sun/tools/javac/util/List;

    iget-object v3, v2, Lcom/sun/tools/javac/util/List;->head:Ljava/lang/Object;

    iget-object v2, v2, Lcom/sun/tools/javac/util/List;->tail:Lcom/sun/tools/javac/util/List;

    invoke-direct {v1, v3, v2}, Lcom/sun/tools/javac/util/List;-><init>(Ljava/lang/Object;Lcom/sun/tools/javac/util/List;)V

    .line 111
    invoke-virtual {v0, v1}, Lcom/sun/tools/javac/util/List;->setTail(Lcom/sun/tools/javac/util/List;)Lcom/sun/tools/javac/util/List;

    move-object v0, v1

    .line 113
    goto :goto_0
.end method

.method public static lb()Lcom/sun/tools/javac/util/ListBuffer;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/sun/tools/javac/util/ListBuffer",
            "<TT;>;"
        }
    .end annotation

    .line 44
    new-instance v0, Lcom/sun/tools/javac/util/ListBuffer;

    invoke-direct {v0}, Lcom/sun/tools/javac/util/ListBuffer;-><init>()V

    return-object v0
.end method

.method public static of(Ljava/lang/Object;)Lcom/sun/tools/javac/util/ListBuffer;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)",
            "Lcom/sun/tools/javac/util/ListBuffer",
            "<TT;>;"
        }
    .end annotation

    .line 48
    new-instance v0, Lcom/sun/tools/javac/util/ListBuffer;

    invoke-direct {v0}, Lcom/sun/tools/javac/util/ListBuffer;-><init>()V

    .line 49
    invoke-virtual {v0, p0}, Lcom/sun/tools/javac/util/ListBuffer;->add(Ljava/lang/Object;)Z

    .line 50
    return-object v0
.end method


# virtual methods
.method public add(Ljava/lang/Object;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;)Z"
        }
    .end annotation

    .line 224
    invoke-virtual {p0, p1}, Lcom/sun/tools/javac/util/ListBuffer;->append(Ljava/lang/Object;)Lcom/sun/tools/javac/util/ListBuffer;

    .line 225
    const/4 v0, 0x1

    return v0
.end method

.method public addAll(Ljava/util/Collection;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<+TA;>;)Z"
        }
    .end annotation

    .line 241
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 242
    invoke-virtual {p0, v1}, Lcom/sun/tools/javac/util/ListBuffer;->append(Ljava/lang/Object;)Lcom/sun/tools/javac/util/ListBuffer;

    goto :goto_0

    .line 243
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public append(Ljava/lang/Object;)Lcom/sun/tools/javac/util/ListBuffer;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;)",
            "Lcom/sun/tools/javac/util/ListBuffer",
            "<TA;>;"
        }
    .end annotation

    const/4 v2, 0x0

    .line 129
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 130
    iget-boolean v0, p0, Lcom/sun/tools/javac/util/ListBuffer;->shared:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/sun/tools/javac/util/ListBuffer;->copy()V

    .line 131
    :cond_0
    iget-object v0, p0, Lcom/sun/tools/javac/util/ListBuffer;->last:Lcom/sun/tools/javac/util/List;

    iput-object p1, v0, Lcom/sun/tools/javac/util/List;->head:Ljava/lang/Object;

    .line 132
    iget-object v0, p0, Lcom/sun/tools/javac/util/ListBuffer;->last:Lcom/sun/tools/javac/util/List;

    new-instance v1, Lcom/sun/tools/javac/util/List;

    invoke-direct {v1, v2, v2}, Lcom/sun/tools/javac/util/List;-><init>(Ljava/lang/Object;Lcom/sun/tools/javac/util/List;)V

    invoke-virtual {v0, v1}, Lcom/sun/tools/javac/util/List;->setTail(Lcom/sun/tools/javac/util/List;)Lcom/sun/tools/javac/util/List;

    .line 133
    iget-object v0, p0, Lcom/sun/tools/javac/util/ListBuffer;->last:Lcom/sun/tools/javac/util/List;

    iget-object v0, v0, Lcom/sun/tools/javac/util/List;->tail:Lcom/sun/tools/javac/util/List;

    iput-object v0, p0, Lcom/sun/tools/javac/util/ListBuffer;->last:Lcom/sun/tools/javac/util/List;

    .line 134
    iget v0, p0, Lcom/sun/tools/javac/util/ListBuffer;->count:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/sun/tools/javac/util/ListBuffer;->count:I

    .line 135
    return-object p0
.end method

.method public appendArray([Ljava/lang/Object;)Lcom/sun/tools/javac/util/ListBuffer;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TA;)",
            "Lcom/sun/tools/javac/util/ListBuffer",
            "<TA;>;"
        }
    .end annotation

    .line 157
    const/4 v0, 0x0

    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 158
    aget-object v1, p1, v0

    invoke-virtual {p0, v1}, Lcom/sun/tools/javac/util/ListBuffer;->append(Ljava/lang/Object;)Lcom/sun/tools/javac/util/ListBuffer;

    .line 157
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 160
    :cond_0
    return-object p0
.end method

.method public appendList(Lcom/sun/tools/javac/util/List;)Lcom/sun/tools/javac/util/ListBuffer;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sun/tools/javac/util/List",
            "<TA;>;)",
            "Lcom/sun/tools/javac/util/ListBuffer",
            "<TA;>;"
        }
    .end annotation

    .line 141
    :goto_0
    invoke-virtual {p1}, Lcom/sun/tools/javac/util/List;->nonEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 142
    iget-object v0, p1, Lcom/sun/tools/javac/util/List;->head:Ljava/lang/Object;

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/util/ListBuffer;->append(Ljava/lang/Object;)Lcom/sun/tools/javac/util/ListBuffer;

    .line 143
    iget-object p1, p1, Lcom/sun/tools/javac/util/List;->tail:Lcom/sun/tools/javac/util/List;

    goto :goto_0

    .line 145
    :cond_0
    return-object p0
.end method

.method public appendList(Lcom/sun/tools/javac/util/ListBuffer;)Lcom/sun/tools/javac/util/ListBuffer;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sun/tools/javac/util/ListBuffer",
            "<TA;>;)",
            "Lcom/sun/tools/javac/util/ListBuffer",
            "<TA;>;"
        }
    .end annotation

    .line 151
    invoke-virtual {p1}, Lcom/sun/tools/javac/util/ListBuffer;->toList()Lcom/sun/tools/javac/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/util/ListBuffer;->appendList(Lcom/sun/tools/javac/util/List;)Lcom/sun/tools/javac/util/ListBuffer;

    move-result-object v0

    return-object v0
.end method

.method public final clear()V
    .registers 4

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 76
    new-instance v0, Lcom/sun/tools/javac/util/List;

    invoke-direct {v0, v2, v2}, Lcom/sun/tools/javac/util/List;-><init>(Ljava/lang/Object;Lcom/sun/tools/javac/util/List;)V

    iput-object v0, p0, Lcom/sun/tools/javac/util/ListBuffer;->elems:Lcom/sun/tools/javac/util/List;

    .line 77
    iput-object v0, p0, Lcom/sun/tools/javac/util/ListBuffer;->last:Lcom/sun/tools/javac/util/List;

    .line 78
    iput v1, p0, Lcom/sun/tools/javac/util/ListBuffer;->count:I

    .line 79
    iput-boolean v1, p0, Lcom/sun/tools/javac/util/ListBuffer;->shared:Z

    .line 80
    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .registers 3

    .line 173
    iget-object v0, p0, Lcom/sun/tools/javac/util/ListBuffer;->elems:Lcom/sun/tools/javac/util/List;

    invoke-virtual {v0, p1}, Lcom/sun/tools/javac/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public containsAll(Ljava/util/Collection;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    .line 233
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 234
    invoke-virtual {p0, v1}, Lcom/sun/tools/javac/util/ListBuffer;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 235
    const/4 v0, 0x0

    .line 237
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public first()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TA;"
        }
    .end annotation

    .line 188
    iget-object v0, p0, Lcom/sun/tools/javac/util/ListBuffer;->elems:Lcom/sun/tools/javac/util/List;

    iget-object v0, v0, Lcom/sun/tools/javac/util/List;->head:Ljava/lang/Object;

    return-object v0
.end method

.method public isEmpty()Z
    .registers 2

    .line 94
    iget v0, p0, Lcom/sun/tools/javac/util/ListBuffer;->count:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public iterator()Ljava/util/Iterator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<TA;>;"
        }
    .end annotation

    .line 205
    new-instance v0, Lcom/sun/tools/javac/util/ListBuffer$1;

    invoke-direct {v0, p0}, Lcom/sun/tools/javac/util/ListBuffer$1;-><init>(Lcom/sun/tools/javac/util/ListBuffer;)V

    return-object v0
.end method

.method public length()I
    .registers 2

    .line 85
    iget v0, p0, Lcom/sun/tools/javac/util/ListBuffer;->count:I

    return v0
.end method

.method public next()Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TA;"
        }
    .end annotation

    .line 194
    iget-object v0, p0, Lcom/sun/tools/javac/util/ListBuffer;->elems:Lcom/sun/tools/javac/util/List;

    iget-object v0, v0, Lcom/sun/tools/javac/util/List;->head:Ljava/lang/Object;

    .line 195
    iget-object v1, p0, Lcom/sun/tools/javac/util/ListBuffer;->elems:Lcom/sun/tools/javac/util/List;

    iget-object v2, p0, Lcom/sun/tools/javac/util/ListBuffer;->last:Lcom/sun/tools/javac/util/List;

    if-eq v1, v2, :cond_0

    .line 196
    iget-object v1, v1, Lcom/sun/tools/javac/util/List;->tail:Lcom/sun/tools/javac/util/List;

    iput-object v1, p0, Lcom/sun/tools/javac/util/ListBuffer;->elems:Lcom/sun/tools/javac/util/List;

    .line 197
    iget v1, p0, Lcom/sun/tools/javac/util/ListBuffer;->count:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/sun/tools/javac/util/ListBuffer;->count:I

    .line 199
    :cond_0
    return-object v0
.end method

.method public nonEmpty()Z
    .registers 2

    .line 100
    iget v0, p0, Lcom/sun/tools/javac/util/ListBuffer;->count:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public offer(Ljava/lang/Object;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;)Z"
        }
    .end annotation

    .line 255
    invoke-virtual {p0, p1}, Lcom/sun/tools/javac/util/ListBuffer;->append(Ljava/lang/Object;)Lcom/sun/tools/javac/util/ListBuffer;

    .line 256
    const/4 v0, 0x1

    return v0
.end method

.method public peek()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TA;"
        }
    .end annotation

    .line 264
    invoke-virtual {p0}, Lcom/sun/tools/javac/util/ListBuffer;->first()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public poll()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TA;"
        }
    .end annotation

    .line 260
    invoke-virtual {p0}, Lcom/sun/tools/javac/util/ListBuffer;->next()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public prepend(Ljava/lang/Object;)Lcom/sun/tools/javac/util/ListBuffer;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;)",
            "Lcom/sun/tools/javac/util/ListBuffer",
            "<TA;>;"
        }
    .end annotation

    .line 121
    iget-object v0, p0, Lcom/sun/tools/javac/util/ListBuffer;->elems:Lcom/sun/tools/javac/util/List;

    invoke-virtual {v0, p1}, Lcom/sun/tools/javac/util/List;->prepend(Ljava/lang/Object;)Lcom/sun/tools/javac/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/tools/javac/util/ListBuffer;->elems:Lcom/sun/tools/javac/util/List;

    .line 122
    iget v0, p0, Lcom/sun/tools/javac/util/ListBuffer;->count:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/sun/tools/javac/util/ListBuffer;->count:I

    .line 123
    return-object p0
.end method

.method public remove(Ljava/lang/Object;)Z
    .registers 3

    .line 229
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public removeAll(Ljava/util/Collection;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    .line 247
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public retainAll(Ljava/util/Collection;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    .line 251
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public size()I
    .registers 2

    .line 88
    iget v0, p0, Lcom/sun/tools/javac/util/ListBuffer;->count:I

    return v0
.end method

.method public toArray()[Ljava/lang/Object;
    .registers 2

    .line 182
    invoke-virtual {p0}, Lcom/sun/tools/javac/util/ListBuffer;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/util/ListBuffer;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)[TT;"
        }
    .end annotation

    .line 179
    iget-object v0, p0, Lcom/sun/tools/javac/util/ListBuffer;->elems:Lcom/sun/tools/javac/util/List;

    invoke-virtual {v0, p1}, Lcom/sun/tools/javac/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public toList()Lcom/sun/tools/javac/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/sun/tools/javac/util/List",
            "<TA;>;"
        }
    .end annotation

    .line 166
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sun/tools/javac/util/ListBuffer;->shared:Z

    .line 167
    iget-object v0, p0, Lcom/sun/tools/javac/util/ListBuffer;->elems:Lcom/sun/tools/javac/util/List;

    return-object v0
.end method
