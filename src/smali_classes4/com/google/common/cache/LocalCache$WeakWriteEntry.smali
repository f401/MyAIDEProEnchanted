.class final Lcom/google/common/cache/LocalCache$WeakWriteEntry;
.super Lcom/google/common/cache/LocalCache$WeakEntry;
.source "LocalCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/cache/LocalCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "WeakWriteEntry"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/cache/LocalCache$WeakEntry",
        "<TK;TV;>;"
    }
.end annotation


# instance fields
.field nextWrite:Lcom/google/common/cache/ReferenceEntry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/cache/ReferenceEntry",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field previousWrite:Lcom/google/common/cache/ReferenceEntry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/cache/ReferenceEntry",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field volatile writeTime:J


# direct methods
.method constructor <init>(Ljava/lang/ref/ReferenceQueue;Ljava/lang/Object;ILcom/google/common/cache/ReferenceEntry;)V
    .registers 7
    .param p4  # Lcom/google/common/cache/ReferenceEntry;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/ReferenceQueue",
            "<TK;>;TK;I",
            "Lcom/google/common/cache/ReferenceEntry",
            "<TK;TV;>;)V"
        }
    .end annotation

    .line 1313
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/common/cache/LocalCache$WeakEntry;-><init>(Ljava/lang/ref/ReferenceQueue;Ljava/lang/Object;ILcom/google/common/cache/ReferenceEntry;)V

    .line 1318
    const-wide v0, 0x7fffffffffffffffL

    iput-wide v0, p0, Lcom/google/common/cache/LocalCache$WeakWriteEntry;->writeTime:J

    .line 1331
    invoke-static {}, Lcom/google/common/cache/LocalCache;->nullEntry()Lcom/google/common/cache/ReferenceEntry;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/cache/LocalCache$WeakWriteEntry;->nextWrite:Lcom/google/common/cache/ReferenceEntry;

    .line 1344
    invoke-static {}, Lcom/google/common/cache/LocalCache;->nullEntry()Lcom/google/common/cache/ReferenceEntry;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/cache/LocalCache$WeakWriteEntry;->previousWrite:Lcom/google/common/cache/ReferenceEntry;

    .line 1314
    return-void
.end method


# virtual methods
.method public getNextInWriteQueue()Lcom/google/common/cache/ReferenceEntry;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/cache/ReferenceEntry",
            "<TK;TV;>;"
        }
    .end annotation

    .line 1335
    iget-object v0, p0, Lcom/google/common/cache/LocalCache$WeakWriteEntry;->nextWrite:Lcom/google/common/cache/ReferenceEntry;

    return-object v0
.end method

.method public getPreviousInWriteQueue()Lcom/google/common/cache/ReferenceEntry;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/cache/ReferenceEntry",
            "<TK;TV;>;"
        }
    .end annotation

    .line 1348
    iget-object v0, p0, Lcom/google/common/cache/LocalCache$WeakWriteEntry;->previousWrite:Lcom/google/common/cache/ReferenceEntry;

    return-object v0
.end method

.method public getWriteTime()J
    .registers 3

    .line 1322
    iget-wide v0, p0, Lcom/google/common/cache/LocalCache$WeakWriteEntry;->writeTime:J

    return-wide v0
.end method

.method public setNextInWriteQueue(Lcom/google/common/cache/ReferenceEntry;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/cache/ReferenceEntry",
            "<TK;TV;>;)V"
        }
    .end annotation

    .line 1340
    iput-object p1, p0, Lcom/google/common/cache/LocalCache$WeakWriteEntry;->nextWrite:Lcom/google/common/cache/ReferenceEntry;

    .line 1341
    return-void
.end method

.method public setPreviousInWriteQueue(Lcom/google/common/cache/ReferenceEntry;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/cache/ReferenceEntry",
            "<TK;TV;>;)V"
        }
    .end annotation

    .line 1353
    iput-object p1, p0, Lcom/google/common/cache/LocalCache$WeakWriteEntry;->previousWrite:Lcom/google/common/cache/ReferenceEntry;

    .line 1354
    return-void
.end method

.method public setWriteTime(J)V
    .registers 4

    .line 1327
    iput-wide p1, p0, Lcom/google/common/cache/LocalCache$WeakWriteEntry;->writeTime:J

    .line 1328
    return-void
.end method
