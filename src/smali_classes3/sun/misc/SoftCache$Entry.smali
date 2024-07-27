.class Lsun/misc/SoftCache$Entry;
.super Ljava/lang/Object;
.source "SoftCache.java"

# interfaces
.implements Ljava/util/Map$Entry;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsun/misc/SoftCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Entry"
.end annotation


# instance fields
.field private ent:Ljava/util/Map$Entry;

.field final this$0:Lsun/misc/SoftCache;

.field private value:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lsun/misc/SoftCache;Ljava/util/Map$Entry;Ljava/lang/Object;)V
    .registers 4

    .line 357
    iput-object p1, p0, Lsun/misc/SoftCache$Entry;->this$0:Lsun/misc/SoftCache;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 358
    iput-object p2, p0, Lsun/misc/SoftCache$Entry;->ent:Ljava/util/Map$Entry;

    .line 359
    iput-object p3, p0, Lsun/misc/SoftCache$Entry;->value:Ljava/lang/Object;

    .line 360
    return-void
.end method

.method static synthetic access$900(Lsun/misc/SoftCache$Entry;)Ljava/util/Map$Entry;
    .registers 2

    .line 351
    iget-object v0, p0, Lsun/misc/SoftCache$Entry;->ent:Ljava/util/Map$Entry;

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 5

    const/4 v0, 0x0

    .line 375
    instance-of v1, p1, Ljava/util/Map$Entry;

    if-nez v1, :cond_1

    .line 377
    :cond_0
    :goto_0
    return v0

    .line 376
    :cond_1
    check-cast p1, Ljava/util/Map$Entry;

    .line 377
    iget-object v1, p0, Lsun/misc/SoftCache$Entry;->ent:Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v1, v2}, Lsun/misc/SoftCache;->access$600(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lsun/misc/SoftCache$Entry;->value:Ljava/lang/Object;

    .line 378
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v1, v2}, Lsun/misc/SoftCache;->access$600(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getKey()Ljava/lang/Object;
    .registers 2

    .line 363
    iget-object v0, p0, Lsun/misc/SoftCache$Entry;->ent:Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getValue()Ljava/lang/Object;
    .registers 2

    .line 367
    iget-object v0, p0, Lsun/misc/SoftCache$Entry;->value:Ljava/lang/Object;

    return-object v0
.end method

.method public hashCode()I
    .registers 4

    const/4 v1, 0x0

    .line 383
    invoke-virtual {p0}, Lsun/misc/SoftCache$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    move v0, v1

    .line 384
    :goto_0
    iget-object v2, p0, Lsun/misc/SoftCache$Entry;->value:Ljava/lang/Object;

    if-nez v2, :cond_1

    .line 383
    :goto_1
    xor-int/2addr v0, v1

    return v0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0

    .line 384
    :cond_1
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v1

    goto :goto_1
.end method

.method public setValue(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5

    .line 371
    iget-object v0, p0, Lsun/misc/SoftCache$Entry;->ent:Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    iget-object v2, p0, Lsun/misc/SoftCache$Entry;->this$0:Lsun/misc/SoftCache;

    invoke-static {v2}, Lsun/misc/SoftCache;->access$500(Lsun/misc/SoftCache;)Ljava/lang/ref/ReferenceQueue;

    move-result-object v2

    invoke-static {v1, p1, v2}, Lsun/misc/SoftCache$ValueCell;->access$400(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;)Lsun/misc/SoftCache$ValueCell;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map$Entry;->setValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
