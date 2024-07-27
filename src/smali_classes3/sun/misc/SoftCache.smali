.class public Lsun/misc/SoftCache;
.super Ljava/util/AbstractMap;
.source "SoftCache.java"

# interfaces
.implements Ljava/util/Map;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lsun/misc/SoftCache$Entry;,
        Lsun/misc/SoftCache$EntrySet;,
        Lsun/misc/SoftCache$ValueCell;
    }
.end annotation


# instance fields
.field private entrySet:Ljava/util/Set;

.field private hash:Ljava/util/Map;

.field private queue:Ljava/lang/ref/ReferenceQueue;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 212
    invoke-direct {p0}, Ljava/util/AbstractMap;-><init>()V

    .line 160
    new-instance v0, Ljava/lang/ref/ReferenceQueue;

    invoke-direct {v0}, Ljava/lang/ref/ReferenceQueue;-><init>()V

    iput-object v0, p0, Lsun/misc/SoftCache;->queue:Ljava/lang/ref/ReferenceQueue;

    .line 449
    const/4 v0, 0x0

    iput-object v0, p0, Lsun/misc/SoftCache;->entrySet:Ljava/util/Set;

    .line 213
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lsun/misc/SoftCache;->hash:Ljava/util/Map;

    .line 214
    return-void
.end method

.method public constructor <init>(I)V
    .registers 3

    .line 204
    invoke-direct {p0}, Ljava/util/AbstractMap;-><init>()V

    .line 160
    new-instance v0, Ljava/lang/ref/ReferenceQueue;

    invoke-direct {v0}, Ljava/lang/ref/ReferenceQueue;-><init>()V

    iput-object v0, p0, Lsun/misc/SoftCache;->queue:Ljava/lang/ref/ReferenceQueue;

    .line 449
    const/4 v0, 0x0

    iput-object v0, p0, Lsun/misc/SoftCache;->entrySet:Ljava/util/Set;

    .line 205
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, p1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lsun/misc/SoftCache;->hash:Ljava/util/Map;

    .line 206
    return-void
.end method

.method public constructor <init>(IF)V
    .registers 4

    .line 191
    invoke-direct {p0}, Ljava/util/AbstractMap;-><init>()V

    .line 160
    new-instance v0, Ljava/lang/ref/ReferenceQueue;

    invoke-direct {v0}, Ljava/lang/ref/ReferenceQueue;-><init>()V

    iput-object v0, p0, Lsun/misc/SoftCache;->queue:Ljava/lang/ref/ReferenceQueue;

    .line 449
    const/4 v0, 0x0

    iput-object v0, p0, Lsun/misc/SoftCache;->entrySet:Ljava/util/Set;

    .line 192
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, p1, p2}, Ljava/util/HashMap;-><init>(IF)V

    iput-object v0, p0, Lsun/misc/SoftCache;->hash:Ljava/util/Map;

    .line 193
    return-void
.end method

.method static synthetic access$500(Lsun/misc/SoftCache;)Ljava/lang/ref/ReferenceQueue;
    .registers 2

    .line 105
    iget-object v0, p0, Lsun/misc/SoftCache;->queue:Ljava/lang/ref/ReferenceQueue;

    return-object v0
.end method

.method static synthetic access$600(Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 3

    .line 105
    invoke-static {p0, p1}, Lsun/misc/SoftCache;->valEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$700(Lsun/misc/SoftCache;)Ljava/util/Map;
    .registers 2

    .line 105
    iget-object v0, p0, Lsun/misc/SoftCache;->hash:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$800(Lsun/misc/SoftCache;)V
    .registers 1

    .line 105
    invoke-direct {p0}, Lsun/misc/SoftCache;->processQueue()V

    return-void
.end method

.method private processQueue()V
    .registers 3

    .line 170
    :goto_0
    iget-object v0, p0, Lsun/misc/SoftCache;->queue:Ljava/lang/ref/ReferenceQueue;

    invoke-virtual {v0}, Ljava/lang/ref/ReferenceQueue;->poll()Ljava/lang/ref/Reference;

    move-result-object v0

    check-cast v0, Lsun/misc/SoftCache$ValueCell;

    if-eqz v0, :cond_1

    .line 171
    invoke-static {v0}, Lsun/misc/SoftCache$ValueCell;->access$000(Lsun/misc/SoftCache$ValueCell;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lsun/misc/SoftCache;->hash:Ljava/util/Map;

    invoke-static {v0}, Lsun/misc/SoftCache$ValueCell;->access$100(Lsun/misc/SoftCache$ValueCell;)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 172
    :cond_0
    invoke-static {}, Lsun/misc/SoftCache$ValueCell;->access$210()I

    goto :goto_0

    .line 174
    :cond_1
    return-void
.end method

.method private static valEquals(Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 3

    .line 344
    if-nez p0, :cond_1

    if-nez p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method


# virtual methods
.method public clear()V
    .registers 2

    .line 336
    invoke-direct {p0}, Lsun/misc/SoftCache;->processQueue()V

    .line 337
    iget-object v0, p0, Lsun/misc/SoftCache;->hash:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 338
    return-void
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .registers 4

    const/4 v0, 0x0

    .line 242
    iget-object v1, p0, Lsun/misc/SoftCache;->hash:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1, v0}, Lsun/misc/SoftCache$ValueCell;->access$300(Ljava/lang/Object;Z)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public entrySet()Ljava/util/Set;
    .registers 3

    .line 455
    iget-object v0, p0, Lsun/misc/SoftCache;->entrySet:Ljava/util/Set;

    if-nez v0, :cond_0

    new-instance v0, Lsun/misc/SoftCache$EntrySet;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lsun/misc/SoftCache$EntrySet;-><init>(Lsun/misc/SoftCache;Lsun/misc/SoftCache$1;)V

    iput-object v0, p0, Lsun/misc/SoftCache;->entrySet:Ljava/util/Set;

    .line 456
    :cond_0
    iget-object v0, p0, Lsun/misc/SoftCache;->entrySet:Ljava/util/Set;

    return-object v0
.end method

.method protected fill(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .line 266
    const/4 v0, 0x0

    return-object v0
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5

    .line 286
    invoke-direct {p0}, Lsun/misc/SoftCache;->processQueue()V

    .line 287
    iget-object v0, p0, Lsun/misc/SoftCache;->hash:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 288
    if-nez v0, :cond_0

    .line 289
    invoke-virtual {p0, p1}, Lsun/misc/SoftCache;->fill(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 290
    if-eqz v0, :cond_0

    .line 291
    iget-object v1, p0, Lsun/misc/SoftCache;->hash:Ljava/util/Map;

    iget-object v2, p0, Lsun/misc/SoftCache;->queue:Ljava/lang/ref/ReferenceQueue;

    invoke-static {p1, v0, v2}, Lsun/misc/SoftCache$ValueCell;->access$400(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;)Lsun/misc/SoftCache$ValueCell;

    move-result-object v2

    invoke-interface {v1, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 295
    :goto_0
    return-object v0

    :cond_0
    const/4 v1, 0x0

    invoke-static {v0, v1}, Lsun/misc/SoftCache$ValueCell;->access$300(Ljava/lang/Object;Z)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public isEmpty()Z
    .registers 2

    .line 231
    invoke-virtual {p0}, Lsun/misc/SoftCache;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5

    .line 313
    invoke-direct {p0}, Lsun/misc/SoftCache;->processQueue()V

    .line 314
    iget-object v0, p0, Lsun/misc/SoftCache;->queue:Ljava/lang/ref/ReferenceQueue;

    invoke-static {p1, p2, v0}, Lsun/misc/SoftCache$ValueCell;->access$400(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;)Lsun/misc/SoftCache$ValueCell;

    move-result-object v0

    .line 315
    iget-object v1, p0, Lsun/misc/SoftCache;->hash:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lsun/misc/SoftCache$ValueCell;->access$300(Ljava/lang/Object;Z)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    .line 328
    invoke-direct {p0}, Lsun/misc/SoftCache;->processQueue()V

    .line 329
    iget-object v0, p0, Lsun/misc/SoftCache;->hash:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lsun/misc/SoftCache$ValueCell;->access$300(Ljava/lang/Object;Z)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public size()I
    .registers 2

    .line 224
    invoke-virtual {p0}, Lsun/misc/SoftCache;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    return v0
.end method
