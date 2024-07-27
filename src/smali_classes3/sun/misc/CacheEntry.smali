.class Lsun/misc/CacheEntry;
.super Lsun/misc/Ref;
.source "Cache.java"


# instance fields
.field hash:I

.field key:Ljava/lang/Object;

.field next:Lsun/misc/CacheEntry;


# direct methods
.method constructor <init>()V
    .registers 1

    .line 35
    invoke-direct {p0}, Lsun/misc/Ref;-><init>()V

    return-void
.end method


# virtual methods
.method public reconstitute()Ljava/lang/Object;
    .registers 2

    .line 40
    const/4 v0, 0x0

    return-object v0
.end method
