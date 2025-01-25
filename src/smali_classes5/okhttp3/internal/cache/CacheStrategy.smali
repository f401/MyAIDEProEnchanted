.class public final Lokhttp3/internal/cache/CacheStrategy;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lokhttp3/internal/cache/CacheStrategy$Factory;
    }
.end annotation


# instance fields
.field public final cacheResponse:Lokhttp3/Response;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field public final networkRequest:Lokhttp3/Request;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method constructor <init>(Lokhttp3/Request;Lokhttp3/Response;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lokhttp3/internal/cache/CacheStrategy;->networkRequest:Lokhttp3/Request;

    iput-object p2, p0, Lokhttp3/internal/cache/CacheStrategy;->cacheResponse:Lokhttp3/Response;

    return-void
.end method

.method public static isCacheable(Lokhttp3/Response;Lokhttp3/Request;)Z
    .registers 5

    const/4 v0, 0x0

    invoke-virtual {p0}, Lokhttp3/Response;->code()I

    move-result v1

    const/16 v2, 0xc8

    if-eq v1, v2, :cond_58

    const/16 v2, 0x19a

    if-eq v1, v2, :cond_58

    const/16 v2, 0x19e

    if-eq v1, v2, :cond_58

    const/16 v2, 0x1f5

    if-eq v1, v2, :cond_58

    const/16 v2, 0xcb

    if-eq v1, v2, :cond_58

    const/16 v2, 0xcc

    if-eq v1, v2, :cond_58

    const/16 v2, 0x133

    if-eq v1, v2, :cond_31

    const/16 v2, 0x134

    if-eq v1, v2, :cond_58

    const/16 v2, 0x194

    if-eq v1, v2, :cond_58

    const/16 v2, 0x195

    if-eq v1, v2, :cond_58

    packed-switch v1, :pswitch_data_6e

    :cond_30
    :goto_30
    return v0

    :cond_31
    :pswitch_31  #0x12e
    const-string v1, "Expires"

    invoke-virtual {p0, v1}, Lokhttp3/Response;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_58

    invoke-virtual {p0}, Lokhttp3/Response;->cacheControl()Lokhttp3/CacheControl;

    move-result-object v1

    invoke-virtual {v1}, Lokhttp3/CacheControl;->maxAgeSeconds()I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_58

    invoke-virtual {p0}, Lokhttp3/Response;->cacheControl()Lokhttp3/CacheControl;

    move-result-object v1

    invoke-virtual {v1}, Lokhttp3/CacheControl;->isPublic()Z

    move-result v1

    if-nez v1, :cond_58

    invoke-virtual {p0}, Lokhttp3/Response;->cacheControl()Lokhttp3/CacheControl;

    move-result-object v1

    invoke-virtual {v1}, Lokhttp3/CacheControl;->isPrivate()Z

    move-result v1

    if-eqz v1, :cond_30

    :cond_58
    :pswitch_58  #0x12c, 0x12d
    invoke-virtual {p0}, Lokhttp3/Response;->cacheControl()Lokhttp3/CacheControl;

    move-result-object v1

    invoke-virtual {v1}, Lokhttp3/CacheControl;->noStore()Z

    move-result v1

    if-nez v1, :cond_30

    invoke-virtual {p1}, Lokhttp3/Request;->cacheControl()Lokhttp3/CacheControl;

    move-result-object v1

    invoke-virtual {v1}, Lokhttp3/CacheControl;->noStore()Z

    move-result v1

    if-nez v1, :cond_30

    const/4 v0, 0x1

    goto :goto_30

    :pswitch_data_6e
    .packed-switch 0x12c
        :pswitch_58  #0000012c
        :pswitch_58  #0000012d
        :pswitch_31  #0000012e
    .end packed-switch
.end method
