.class Lcom/google/common/collect/StandardTable$Column$EntrySetIterator;
.super Lcom/google/common/collect/AbstractIterator;
.source "StandardTable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/StandardTable$Column;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EntrySetIterator"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/collect/StandardTable$Column$EntrySetIterator$1EntryImpl;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/AbstractIterator",
        "<",
        "Ljava/util/Map$Entry",
        "<TR;TV;>;>;"
    }
.end annotation


# instance fields
.field final iterator:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator",
            "<",
            "Ljava/util/Map$Entry",
            "<TR;",
            "Ljava/util/Map",
            "<TC;TV;>;>;>;"
        }
    .end annotation
.end field

.field final this$1:Lcom/google/common/collect/StandardTable$Column;


# direct methods
.method private constructor <init>(Lcom/google/common/collect/StandardTable$Column;)V
    .registers 3

    .line 505
    iput-object p1, p0, Lcom/google/common/collect/StandardTable$Column$EntrySetIterator;->this$1:Lcom/google/common/collect/StandardTable$Column;

    invoke-direct {p0}, Lcom/google/common/collect/AbstractIterator;-><init>()V

    .line 506
    iget-object v0, p0, Lcom/google/common/collect/StandardTable$Column$EntrySetIterator;->this$1:Lcom/google/common/collect/StandardTable$Column;

    iget-object v0, v0, Lcom/google/common/collect/StandardTable$Column;->this$0:Lcom/google/common/collect/StandardTable;

    iget-object v0, v0, Lcom/google/common/collect/StandardTable;->backingMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/StandardTable$Column$EntrySetIterator;->iterator:Ljava/util/Iterator;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/common/collect/StandardTable$Column;Lcom/google/common/collect/StandardTable$1;)V
    .registers 3

    .line 505
    invoke-direct {p0, p1}, Lcom/google/common/collect/StandardTable$Column$EntrySetIterator;-><init>(Lcom/google/common/collect/StandardTable$Column;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic computeNext()Ljava/lang/Object;
    .registers 2

    .line 505
    invoke-virtual {p0}, Lcom/google/common/collect/StandardTable$Column$EntrySetIterator;->computeNext()Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0
.end method

.method protected computeNext()Ljava/util/Map$Entry;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map$Entry",
            "<TR;TV;>;"
        }
    .end annotation

    .line 510
    :cond_0
    iget-object v0, p0, Lcom/google/common/collect/StandardTable$Column$EntrySetIterator;->iterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_27

    .line 511
    iget-object v0, p0, Lcom/google/common/collect/StandardTable$Column$EntrySetIterator;->iterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 512
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    iget-object v2, p0, Lcom/google/common/collect/StandardTable$Column$EntrySetIterator;->this$1:Lcom/google/common/collect/StandardTable$Column;

    iget-object v2, v2, Lcom/google/common/collect/StandardTable$Column;->columnKey:Ljava/lang/Object;

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 530
    new-instance v1, Lcom/google/common/collect/StandardTable$Column$EntrySetIterator$1EntryImpl;

    invoke-direct {v1, p0, v0}, Lcom/google/common/collect/StandardTable$Column$EntrySetIterator$1EntryImpl;-><init>(Lcom/google/common/collect/StandardTable$Column$EntrySetIterator;Ljava/util/Map$Entry;)V

    move-object v0, v1

    .line 533
    :goto_26
    return-object v0

    :cond_27
    invoke-virtual {p0}, Lcom/google/common/collect/StandardTable$Column$EntrySetIterator;->endOfData()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    goto :goto_26
.end method
