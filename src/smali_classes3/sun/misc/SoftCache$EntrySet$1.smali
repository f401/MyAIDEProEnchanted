.class Lsun/misc/SoftCache$EntrySet$1;
.super Ljava/lang/Object;
.source "SoftCache.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lsun/misc/SoftCache$EntrySet;->iterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field hashIterator:Ljava/util/Iterator;

.field next:Lsun/misc/SoftCache$Entry;

.field final this$1:Lsun/misc/SoftCache$EntrySet;


# direct methods
.method constructor <init>(Lsun/misc/SoftCache$EntrySet;)V
    .registers 3

    .line 396
    iput-object p1, p0, Lsun/misc/SoftCache$EntrySet$1;->this$1:Lsun/misc/SoftCache$EntrySet;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 397
    iget-object v0, p0, Lsun/misc/SoftCache$EntrySet$1;->this$1:Lsun/misc/SoftCache$EntrySet;

    iget-object v0, v0, Lsun/misc/SoftCache$EntrySet;->hashEntries:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    iput-object v0, p0, Lsun/misc/SoftCache$EntrySet$1;->hashIterator:Ljava/util/Iterator;

    .line 398
    const/4 v0, 0x0

    iput-object v0, p0, Lsun/misc/SoftCache$EntrySet$1;->next:Lsun/misc/SoftCache$Entry;

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .registers 5

    .line 401
    :cond_0
    iget-object v0, p0, Lsun/misc/SoftCache$EntrySet$1;->hashIterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 402
    iget-object v0, p0, Lsun/misc/SoftCache$EntrySet$1;->hashIterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 403
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lsun/misc/SoftCache$ValueCell;

    .line 404
    const/4 v2, 0x0

    .line 405
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lsun/misc/SoftCache$ValueCell;->get()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 409
    :goto_0
    new-instance v2, Lsun/misc/SoftCache$Entry;

    iget-object v3, p0, Lsun/misc/SoftCache$EntrySet$1;->this$1:Lsun/misc/SoftCache$EntrySet;

    iget-object v3, v3, Lsun/misc/SoftCache$EntrySet;->this$0:Lsun/misc/SoftCache;

    invoke-direct {v2, v3, v0, v1}, Lsun/misc/SoftCache$Entry;-><init>(Lsun/misc/SoftCache;Ljava/util/Map$Entry;Ljava/lang/Object;)V

    iput-object v2, p0, Lsun/misc/SoftCache$EntrySet$1;->next:Lsun/misc/SoftCache$Entry;

    .line 410
    const/4 v0, 0x1

    .line 412
    :goto_1
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    move-object v1, v2

    goto :goto_0
.end method

.method public next()Ljava/lang/Object;
    .registers 3

    .line 416
    iget-object v0, p0, Lsun/misc/SoftCache$EntrySet$1;->next:Lsun/misc/SoftCache$Entry;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lsun/misc/SoftCache$EntrySet$1;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 418
    :cond_0
    iget-object v0, p0, Lsun/misc/SoftCache$EntrySet$1;->next:Lsun/misc/SoftCache$Entry;

    .line 419
    const/4 v1, 0x0

    iput-object v1, p0, Lsun/misc/SoftCache$EntrySet$1;->next:Lsun/misc/SoftCache$Entry;

    .line 420
    return-object v0

    .line 417
    :cond_1
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public remove()V
    .registers 2

    .line 424
    iget-object v0, p0, Lsun/misc/SoftCache$EntrySet$1;->hashIterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 425
    return-void
.end method
