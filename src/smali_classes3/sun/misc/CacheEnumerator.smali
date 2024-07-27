.class Lsun/misc/CacheEnumerator;
.super Ljava/lang/Object;
.source "Cache.java"

# interfaces
.implements Ljava/util/Enumeration;


# instance fields
.field entry:Lsun/misc/CacheEntry;

.field index:I

.field keys:Z

.field table:[Lsun/misc/CacheEntry;


# direct methods
.method constructor <init>([Lsun/misc/CacheEntry;Z)V
    .registers 4

    .line 314
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 315
    iput-object p1, p0, Lsun/misc/CacheEnumerator;->table:[Lsun/misc/CacheEntry;

    .line 316
    iput-boolean p2, p0, Lsun/misc/CacheEnumerator;->keys:Z

    .line 317
    array-length v0, p1

    iput v0, p0, Lsun/misc/CacheEnumerator;->index:I

    .line 318
    return-void
.end method


# virtual methods
.method public hasMoreElements()Z
    .registers 3

    .line 321
    :cond_0
    iget v0, p0, Lsun/misc/CacheEnumerator;->index:I

    if-ltz v0, :cond_3

    .line 322
    :goto_0
    iget-object v0, p0, Lsun/misc/CacheEnumerator;->entry:Lsun/misc/CacheEntry;

    if-eqz v0, :cond_2

    .line 323
    invoke-virtual {v0}, Lsun/misc/CacheEntry;->check()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 324
    const/4 v0, 0x1

    .line 329
    :goto_1
    return v0

    .line 326
    :cond_1
    iget-object v0, p0, Lsun/misc/CacheEnumerator;->entry:Lsun/misc/CacheEntry;

    iget-object v0, v0, Lsun/misc/CacheEntry;->next:Lsun/misc/CacheEntry;

    iput-object v0, p0, Lsun/misc/CacheEnumerator;->entry:Lsun/misc/CacheEntry;

    goto :goto_0

    .line 327
    :cond_2
    :goto_2
    iget v0, p0, Lsun/misc/CacheEnumerator;->index:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lsun/misc/CacheEnumerator;->index:I

    if-ltz v0, :cond_0

    iget-object v1, p0, Lsun/misc/CacheEnumerator;->table:[Lsun/misc/CacheEntry;

    aget-object v0, v1, v0

    iput-object v0, p0, Lsun/misc/CacheEnumerator;->entry:Lsun/misc/CacheEntry;

    if-nez v0, :cond_0

    goto :goto_2

    .line 329
    :cond_3
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public nextElement()Ljava/lang/Object;
    .registers 3

    .line 333
    :cond_0
    iget v0, p0, Lsun/misc/CacheEnumerator;->index:I

    if-ltz v0, :cond_4

    .line 334
    iget-object v0, p0, Lsun/misc/CacheEnumerator;->entry:Lsun/misc/CacheEntry;

    if-nez v0, :cond_2

    .line 335
    :cond_1
    iget v0, p0, Lsun/misc/CacheEnumerator;->index:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lsun/misc/CacheEnumerator;->index:I

    if-ltz v0, :cond_2

    iget-object v1, p0, Lsun/misc/CacheEnumerator;->table:[Lsun/misc/CacheEntry;

    aget-object v0, v1, v0

    iput-object v0, p0, Lsun/misc/CacheEnumerator;->entry:Lsun/misc/CacheEntry;

    if-eqz v0, :cond_1

    .line 336
    :cond_2
    iget-object v0, p0, Lsun/misc/CacheEnumerator;->entry:Lsun/misc/CacheEntry;

    if-eqz v0, :cond_0

    .line 337
    iget-object v0, p0, Lsun/misc/CacheEnumerator;->entry:Lsun/misc/CacheEntry;

    .line 338
    iget-object v1, v0, Lsun/misc/CacheEntry;->next:Lsun/misc/CacheEntry;

    iput-object v1, p0, Lsun/misc/CacheEnumerator;->entry:Lsun/misc/CacheEntry;

    .line 339
    invoke-virtual {v0}, Lsun/misc/CacheEntry;->check()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 340
    iget-boolean v1, p0, Lsun/misc/CacheEnumerator;->keys:Z

    if-eqz v1, :cond_3

    iget-object v0, v0, Lsun/misc/CacheEntry;->key:Ljava/lang/Object;

    :goto_0
    return-object v0

    :cond_3
    invoke-virtual {v0}, Lsun/misc/CacheEntry;->check()Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 343
    :cond_4
    new-instance v0, Ljava/util/NoSuchElementException;

    const-string v1, "CacheEnumerator"

    invoke-direct {v0, v1}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
