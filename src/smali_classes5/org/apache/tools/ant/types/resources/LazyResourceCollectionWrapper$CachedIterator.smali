.class Lorg/apache/tools/ant/types/resources/LazyResourceCollectionWrapper$CachedIterator;
.super Ljava/lang/Object;
.source "LazyResourceCollectionWrapper.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/tools/ant/types/resources/LazyResourceCollectionWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CachedIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator",
        "<",
        "Lorg/apache/tools/ant/types/Resource;",
        ">;"
    }
.end annotation


# instance fields
.field cursor:I

.field private final it:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator",
            "<",
            "Lorg/apache/tools/ant/types/Resource;",
            ">;"
        }
    .end annotation
.end field

.field final this$0:Lorg/apache/tools/ant/types/resources/LazyResourceCollectionWrapper;


# direct methods
.method public constructor <init>(Lorg/apache/tools/ant/types/resources/LazyResourceCollectionWrapper;Ljava/util/Iterator;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Iterator",
            "<",
            "Lorg/apache/tools/ant/types/Resource;",
            ">;)V"
        }
    .end annotation

    .line 138
    iput-object p1, p0, Lorg/apache/tools/ant/types/resources/LazyResourceCollectionWrapper$CachedIterator;->this$0:Lorg/apache/tools/ant/types/resources/LazyResourceCollectionWrapper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 127
    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/tools/ant/types/resources/LazyResourceCollectionWrapper$CachedIterator;->cursor:I

    .line 139
    iput-object p2, p0, Lorg/apache/tools/ant/types/resources/LazyResourceCollectionWrapper$CachedIterator;->it:Ljava/util/Iterator;

    .line 140
    return-void
.end method


# virtual methods
.method public hasNext()Z
    .registers 5

    const/4 v1, 0x1

    .line 144
    iget-object v0, p0, Lorg/apache/tools/ant/types/resources/LazyResourceCollectionWrapper$CachedIterator;->this$0:Lorg/apache/tools/ant/types/resources/LazyResourceCollectionWrapper;

    invoke-static {v0}, Lorg/apache/tools/ant/types/resources/LazyResourceCollectionWrapper;->access$000(Lorg/apache/tools/ant/types/resources/LazyResourceCollectionWrapper;)Ljava/util/List;

    move-result-object v2

    monitor-enter v2

    .line 146
    :try_start_8
    iget-object v0, p0, Lorg/apache/tools/ant/types/resources/LazyResourceCollectionWrapper$CachedIterator;->this$0:Lorg/apache/tools/ant/types/resources/LazyResourceCollectionWrapper;

    invoke-static {v0}, Lorg/apache/tools/ant/types/resources/LazyResourceCollectionWrapper;->access$000(Lorg/apache/tools/ant/types/resources/LazyResourceCollectionWrapper;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget v3, p0, Lorg/apache/tools/ant/types/resources/LazyResourceCollectionWrapper$CachedIterator;->cursor:I

    if-le v0, v3, :cond_19

    .line 147
    monitor-exit v2

    move v0, v1

    .line 157
    :goto_18
    return v0

    .line 150
    :cond_19
    iget-object v0, p0, Lorg/apache/tools/ant/types/resources/LazyResourceCollectionWrapper$CachedIterator;->it:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_24

    .line 151
    monitor-exit v2

    const/4 v0, 0x0

    goto :goto_18

    .line 154
    :cond_24
    iget-object v0, p0, Lorg/apache/tools/ant/types/resources/LazyResourceCollectionWrapper$CachedIterator;->it:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/tools/ant/types/Resource;

    .line 155
    iget-object v3, p0, Lorg/apache/tools/ant/types/resources/LazyResourceCollectionWrapper$CachedIterator;->this$0:Lorg/apache/tools/ant/types/resources/LazyResourceCollectionWrapper;

    invoke-static {v3}, Lorg/apache/tools/ant/types/resources/LazyResourceCollectionWrapper;->access$000(Lorg/apache/tools/ant/types/resources/LazyResourceCollectionWrapper;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 156
    monitor-exit v2

    move v0, v1

    .line 157
    goto :goto_18

    .line 156
    :catchall_38
    move-exception v0

    monitor-exit v2
    :try_end_3a
    .catchall {:try_start_8 .. :try_end_3a} :catchall_38

    throw v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .registers 2

    .line 125
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/LazyResourceCollectionWrapper$CachedIterator;->next()Lorg/apache/tools/ant/types/Resource;

    move-result-object v0

    return-object v0
.end method

.method public next()Lorg/apache/tools/ant/types/Resource;
    .registers 5

    .line 163
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/LazyResourceCollectionWrapper$CachedIterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_24

    .line 166
    iget-object v0, p0, Lorg/apache/tools/ant/types/resources/LazyResourceCollectionWrapper$CachedIterator;->this$0:Lorg/apache/tools/ant/types/resources/LazyResourceCollectionWrapper;

    invoke-static {v0}, Lorg/apache/tools/ant/types/resources/LazyResourceCollectionWrapper;->access$000(Lorg/apache/tools/ant/types/resources/LazyResourceCollectionWrapper;)Ljava/util/List;

    move-result-object v1

    monitor-enter v1

    .line 169
    :try_start_d
    iget-object v0, p0, Lorg/apache/tools/ant/types/resources/LazyResourceCollectionWrapper$CachedIterator;->this$0:Lorg/apache/tools/ant/types/resources/LazyResourceCollectionWrapper;

    invoke-static {v0}, Lorg/apache/tools/ant/types/resources/LazyResourceCollectionWrapper;->access$000(Lorg/apache/tools/ant/types/resources/LazyResourceCollectionWrapper;)Ljava/util/List;

    move-result-object v0

    iget v2, p0, Lorg/apache/tools/ant/types/resources/LazyResourceCollectionWrapper$CachedIterator;->cursor:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lorg/apache/tools/ant/types/resources/LazyResourceCollectionWrapper$CachedIterator;->cursor:I

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/tools/ant/types/Resource;

    monitor-exit v1

    return-object v0

    .line 170
    :catchall_21
    move-exception v0

    monitor-exit v1
    :try_end_23
    .catchall {:try_start_d .. :try_end_23} :catchall_21

    throw v0

    .line 164
    :cond_24
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public remove()V
    .registers 2

    .line 175
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
