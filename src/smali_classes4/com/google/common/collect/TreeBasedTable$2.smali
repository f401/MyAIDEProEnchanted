.class Lcom/google/common/collect/TreeBasedTable$2;
.super Lcom/google/common/collect/AbstractIterator;
.source "TreeBasedTable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/collect/TreeBasedTable;->createColumnKeyIterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/AbstractIterator",
        "<TC;>;"
    }
.end annotation


# instance fields
.field lastValue:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TC;"
        }
    .end annotation

    .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
    .end annotation
.end field

.field final this$0:Lcom/google/common/collect/TreeBasedTable;

.field final val$comparator:Ljava/util/Comparator;

.field final val$merged:Ljava/util/Iterator;


# direct methods
.method constructor <init>(Lcom/google/common/collect/TreeBasedTable;Ljava/util/Iterator;Ljava/util/Comparator;)V
    .registers 4

    .line 329
    iput-object p1, p0, Lcom/google/common/collect/TreeBasedTable$2;->this$0:Lcom/google/common/collect/TreeBasedTable;

    iput-object p2, p0, Lcom/google/common/collect/TreeBasedTable$2;->val$merged:Ljava/util/Iterator;

    iput-object p3, p0, Lcom/google/common/collect/TreeBasedTable$2;->val$comparator:Ljava/util/Comparator;

    invoke-direct {p0}, Lcom/google/common/collect/AbstractIterator;-><init>()V

    return-void
.end method


# virtual methods
.method protected computeNext()Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TC;"
        }
    .end annotation

    .line 334
    :cond_0
    iget-object v0, p0, Lcom/google/common/collect/TreeBasedTable$2;->val$merged:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_22

    .line 335
    iget-object v0, p0, Lcom/google/common/collect/TreeBasedTable$2;->val$merged:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 336
    iget-object v1, p0, Lcom/google/common/collect/TreeBasedTable$2;->lastValue:Ljava/lang/Object;

    if-eqz v1, :cond_20

    iget-object v2, p0, Lcom/google/common/collect/TreeBasedTable$2;->val$comparator:Ljava/util/Comparator;

    invoke-interface {v2, v0, v1}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v1

    if-nez v1, :cond_20

    const/4 v1, 0x1

    .line 339
    :goto_1b
    if-nez v1, :cond_0

    .line 340
    iput-object v0, p0, Lcom/google/common/collect/TreeBasedTable$2;->lastValue:Ljava/lang/Object;

    .line 346
    :goto_1f
    return-object v0

    .line 336
    :cond_20
    const/4 v1, 0x0

    goto :goto_1b

    .line 345
    :cond_22
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/common/collect/TreeBasedTable$2;->lastValue:Ljava/lang/Object;

    .line 346
    invoke-virtual {p0}, Lcom/google/common/collect/TreeBasedTable$2;->endOfData()Ljava/lang/Object;

    move-result-object v0

    goto :goto_1f
.end method
