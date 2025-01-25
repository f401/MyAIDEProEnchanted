.class Lorg/apache/tools/ant/types/resources/LazyResourceCollectionWrapper$FilteringIterator;
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
    name = "FilteringIterator"
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
.field ended:Z

.field protected final it:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator",
            "<",
            "Lorg/apache/tools/ant/types/Resource;",
            ">;"
        }
    .end annotation
.end field

.field next:Lorg/apache/tools/ant/types/Resource;

.field final this$0:Lorg/apache/tools/ant/types/resources/LazyResourceCollectionWrapper;


# direct methods
.method constructor <init>(Lorg/apache/tools/ant/types/resources/LazyResourceCollectionWrapper;Ljava/util/Iterator;)V
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

    .line 87
    iput-object p1, p0, Lorg/apache/tools/ant/types/resources/LazyResourceCollectionWrapper$FilteringIterator;->this$0:Lorg/apache/tools/ant/types/resources/LazyResourceCollectionWrapper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/tools/ant/types/resources/LazyResourceCollectionWrapper$FilteringIterator;->next:Lorg/apache/tools/ant/types/Resource;

    .line 83
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/tools/ant/types/resources/LazyResourceCollectionWrapper$FilteringIterator;->ended:Z

    .line 88
    iput-object p2, p0, Lorg/apache/tools/ant/types/resources/LazyResourceCollectionWrapper$FilteringIterator;->it:Ljava/util/Iterator;

    .line 89
    return-void
.end method


# virtual methods
.method public hasNext()Z
    .registers 5

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 93
    iget-boolean v0, p0, Lorg/apache/tools/ant/types/resources/LazyResourceCollectionWrapper$FilteringIterator;->ended:Z

    if-eqz v0, :cond_1d

    move v0, v1

    .line 106
    :goto_7
    return v0

    .line 101
    :cond_8
    iget-object v0, p0, Lorg/apache/tools/ant/types/resources/LazyResourceCollectionWrapper$FilteringIterator;->it:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/tools/ant/types/Resource;

    iput-object v0, p0, Lorg/apache/tools/ant/types/resources/LazyResourceCollectionWrapper$FilteringIterator;->next:Lorg/apache/tools/ant/types/Resource;

    .line 102
    iget-object v3, p0, Lorg/apache/tools/ant/types/resources/LazyResourceCollectionWrapper$FilteringIterator;->this$0:Lorg/apache/tools/ant/types/resources/LazyResourceCollectionWrapper;

    invoke-virtual {v3, v0}, Lorg/apache/tools/ant/types/resources/LazyResourceCollectionWrapper;->filterResource(Lorg/apache/tools/ant/types/Resource;)Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 103
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/tools/ant/types/resources/LazyResourceCollectionWrapper$FilteringIterator;->next:Lorg/apache/tools/ant/types/Resource;

    .line 96
    :cond_1d
    iget-object v0, p0, Lorg/apache/tools/ant/types/resources/LazyResourceCollectionWrapper$FilteringIterator;->next:Lorg/apache/tools/ant/types/Resource;

    if-nez v0, :cond_2d

    .line 97
    iget-object v0, p0, Lorg/apache/tools/ant/types/resources/LazyResourceCollectionWrapper$FilteringIterator;->it:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_8

    .line 98
    iput-boolean v2, p0, Lorg/apache/tools/ant/types/resources/LazyResourceCollectionWrapper$FilteringIterator;->ended:Z

    move v0, v1

    .line 99
    goto :goto_7

    :cond_2d
    move v0, v2

    .line 106
    goto :goto_7
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .registers 2

    .line 79
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/LazyResourceCollectionWrapper$FilteringIterator;->next()Lorg/apache/tools/ant/types/Resource;

    move-result-object v0

    return-object v0
.end method

.method public next()Lorg/apache/tools/ant/types/Resource;
    .registers 3

    .line 111
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/LazyResourceCollectionWrapper$FilteringIterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 114
    iget-object v0, p0, Lorg/apache/tools/ant/types/resources/LazyResourceCollectionWrapper$FilteringIterator;->next:Lorg/apache/tools/ant/types/Resource;

    .line 115
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/apache/tools/ant/types/resources/LazyResourceCollectionWrapper$FilteringIterator;->next:Lorg/apache/tools/ant/types/Resource;

    .line 116
    return-object v0

    .line 112
    :cond_c
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
