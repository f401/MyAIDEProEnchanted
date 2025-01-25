.class public final Lcom/google/android/gms/ads/internal/s;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/google/android/gms/internal/ads/zh;
.end annotation


# direct methods
.method private static DW(Lcom/google/android/gms/internal/ads/Ga;)Ljava/lang/String;
    .registers 3

    const-string v0, ""

    :try_start_2
    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/Ga;->T6()Labcd/ox;

    move-result-object p0

    if-nez p0, :cond_e

    const-string p0, "Drawable is null. Returning empty string"

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/jm;->Hw(Ljava/lang/String;)V

    return-object v0

    :cond_e
    invoke-static {p0}, Labcd/px;->j6(Labcd/ox;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/graphics/drawable/Drawable;
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_14} :catch_29

    instance-of v1, p0, Landroid/graphics/drawable/BitmapDrawable;

    if-nez v1, :cond_1e

    const-string p0, "Drawable is not an instance of BitmapDrawable. Returning empty string"

    :goto_1a
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/jm;->Hw(Ljava/lang/String;)V

    return-object v0

    :cond_1e
    check-cast p0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p0

    invoke-static {p0}, Lcom/google/android/gms/ads/internal/s;->j6(Landroid/graphics/Bitmap;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :catch_29
    move-exception p0

    const-string p0, "Unable to get drawable. Returning empty string"

    goto :goto_1a
.end method

.method private static DW(Lcom/google/android/gms/internal/ads/Mo;)V
    .registers 2

    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/Mo;->getOnClickListener()Landroid/view/View$OnClickListener;

    move-result-object v0

    if-eqz v0, :cond_d

    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/Mo;->getView()Landroid/view/View;

    move-result-object p0

    invoke-interface {v0, p0}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    :cond_d
    return-void
.end method

.method public static DW(Lcom/google/android/gms/internal/ads/kk;)Z
    .registers 2

    if-eqz p0, :cond_10

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/kk;->Ws:Z

    if-eqz v0, :cond_10

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/kk;->QX:Lcom/google/android/gms/internal/ads/pe;

    if-eqz p0, :cond_10

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/pe;->Ws:Ljava/lang/String;

    if-eqz p0, :cond_10

    const/4 p0, 0x1

    return p0

    :cond_10
    const/4 p0, 0x0

    return p0
.end method

.method public static j6(Lcom/google/android/gms/internal/ads/kk;)Landroid/view/View;
    .registers 3

    const/4 v0, 0x0

    if-nez p0, :cond_9

    const-string p0, "AdState is null"

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/jm;->j6(Ljava/lang/String;)V

    return-object v0

    :cond_9
    invoke-static {p0}, Lcom/google/android/gms/ads/internal/s;->DW(Lcom/google/android/gms/internal/ads/kk;)Z

    move-result v1

    if-eqz v1, :cond_18

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/kk;->DW:Lcom/google/android/gms/internal/ads/Mo;

    if-eqz v1, :cond_18

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/Mo;->getView()Landroid/view/View;

    move-result-object p0

    return-object p0

    :cond_18
    :try_start_18
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/kk;->XL:Lcom/google/android/gms/internal/ads/Je;

    if-eqz v1, :cond_23

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/kk;->XL:Lcom/google/android/gms/internal/ads/Je;

    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/Je;->fY()Labcd/ox;

    move-result-object p0

    goto :goto_24

    :cond_23
    move-object p0, v0

    :goto_24
    if-nez p0, :cond_2c

    const-string p0, "View in mediation adapter is null."

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/jm;->Hw(Ljava/lang/String;)V

    return-object v0

    :cond_2c
    invoke-static {p0}, Labcd/px;->j6(Labcd/ox;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/View;
    :try_end_32
    .catch Landroid/os/RemoteException; {:try_start_18 .. :try_end_32} :catch_33

    return-object p0

    :catch_33
    move-exception p0

    const-string v1, "Could not get View from mediation adapter."

    invoke-static {v1, p0}, Lcom/google/android/gms/internal/ads/jm;->FH(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v0
.end method

.method static j6(Lcom/google/android/gms/internal/ads/Se;Lcom/google/android/gms/internal/ads/Ve;Lcom/google/android/gms/ads/internal/c;)Lcom/google/android/gms/ads/internal/gmsg/B;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/Se;",
            "Lcom/google/android/gms/internal/ads/Ve;",
            "Lcom/google/android/gms/ads/internal/c;",
            ")",
            "Lcom/google/android/gms/ads/internal/gmsg/B<",
            "Lcom/google/android/gms/internal/ads/Mo;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/ads/internal/x;

    invoke-direct {v0, p0, p2, p1}, Lcom/google/android/gms/ads/internal/x;-><init>(Lcom/google/android/gms/internal/ads/Se;Lcom/google/android/gms/ads/internal/c;Lcom/google/android/gms/internal/ads/Ve;)V

    return-object v0
.end method

.method private static j6(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/Ga;
    .registers 2

    instance-of v0, p0, Landroid/os/IBinder;

    if-eqz v0, :cond_b

    check-cast p0, Landroid/os/IBinder;

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/Ha;->j6(Landroid/os/IBinder;)Lcom/google/android/gms/internal/ads/Ga;

    move-result-object p0

    return-object p0

    :cond_b
    const/4 p0, 0x0

    return-object p0
.end method

.method private static j6(Landroid/graphics/Bitmap;)Ljava/lang/String;
    .registers 4

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    if-nez p0, :cond_f

    const-string p0, "Bitmap is null. Returning empty string"

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/jm;->Hw(Ljava/lang/String;)V

    const-string p0, ""

    return-object p0

    :cond_f
    sget-object v1, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v2, 0x64

    invoke-virtual {p0, v1, v2, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    const/4 v0, 0x0

    invoke-static {p0, v0}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const-string v1, "data:image/png;base64,"

    if-eqz v0, :cond_30

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_30
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    return-object p0
.end method

.method private static j6(Lcom/google/android/gms/internal/ads/Ga;)Ljava/lang/String;
    .registers 2

    if-nez p0, :cond_a

    const-string p0, "Image is null. Returning empty string"

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/jm;->Hw(Ljava/lang/String;)V

    const-string p0, ""

    return-object p0

    :cond_a
    :try_start_a
    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/Ga;->getUri()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_1b

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_14} :catch_15

    return-object p0

    :catch_15
    move-exception v0

    const-string v0, "Unable to get image uri. Trying data uri next"

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/jm;->Hw(Ljava/lang/String;)V

    :cond_1b
    invoke-static {p0}, Lcom/google/android/gms/ads/internal/s;->DW(Lcom/google/android/gms/internal/ads/Ga;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static j6(Landroid/os/Bundle;Ljava/lang/String;)Lorg/json/JSONObject;
    .registers 7

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    if-eqz p0, :cond_61

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_e

    goto :goto_61

    :cond_e
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object p1

    :cond_17
    :goto_17
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_61

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p0, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_17

    const-string v3, "image"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_47

    invoke-virtual {p0, v2}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    instance-of v4, v3, Landroid/graphics/Bitmap;

    if-eqz v4, :cond_44

    check-cast v3, Landroid/graphics/Bitmap;

    invoke-static {v3}, Lcom/google/android/gms/ads/internal/s;->j6(Landroid/graphics/Bitmap;)Ljava/lang/String;

    move-result-object v3

    goto :goto_5d

    :cond_44
    const-string v2, "Invalid type. An image type extra should return a bitmap"

    goto :goto_51

    :cond_47
    invoke-virtual {p0, v2}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    instance-of v3, v3, Landroid/graphics/Bitmap;

    if-eqz v3, :cond_55

    const-string v2, "Invalid asset type. Bitmap should be returned only for image type"

    :goto_51
    invoke-static {v2}, Lcom/google/android/gms/internal/ads/jm;->Hw(Ljava/lang/String;)V

    goto :goto_17

    :cond_55
    invoke-virtual {p0, v2}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    :goto_5d
    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_17

    :cond_61
    :goto_61
    return-object v0
.end method

.method static synthetic j6(Lcom/google/android/gms/internal/ads/Mo;)V
    .registers 1

    invoke-static {p0}, Lcom/google/android/gms/ads/internal/s;->DW(Lcom/google/android/gms/internal/ads/Mo;)V

    return-void
.end method

.method static final synthetic j6(Lcom/google/android/gms/internal/ads/W;Ljava/lang/String;Lcom/google/android/gms/internal/ads/Mo;Z)V
    .registers 7

    :try_start_0
    new-instance p3, Lorg/json/JSONObject;

    invoke-direct {p3}, Lorg/json/JSONObject;-><init>()V

    const-string v0, "headline"

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/W;->a8()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "body"

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/W;->ro()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "call_to_action"

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/W;->gn()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "price"

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/W;->kQ()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "star_rating"

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/W;->yO()D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "store"

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/W;->wc()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "icon"

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/W;->CU()Lcom/google/android/gms/internal/ads/Ga;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/ads/internal/s;->j6(Lcom/google/android/gms/internal/ads/Ga;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/W;->Hw()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_71

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_5b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_71

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gms/ads/internal/s;->j6(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/Ga;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gms/ads/internal/s;->j6(Lcom/google/android/gms/internal/ads/Ga;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_5b

    :cond_71
    const-string v1, "images"

    invoke-virtual {p3, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "extras"

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/W;->getExtras()Landroid/os/Bundle;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/google/android/gms/ads/internal/s;->j6(Landroid/os/Bundle;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    invoke-virtual {p3, v0, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    new-instance p0, Lorg/json/JSONObject;

    invoke-direct {p0}, Lorg/json/JSONObject;-><init>()V

    const-string p1, "assets"

    invoke-virtual {p0, p1, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "template_id"

    const-string p3, "2"

    invoke-virtual {p0, p1, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "google.afma.nativeExpressAds.loadAssets"

    invoke-interface {p2, p1, p0}, Lcom/google/android/gms/internal/ads/qd;->DW(Ljava/lang/String;Lorg/json/JSONObject;)V
    :try_end_99
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_99} :catch_9a

    return-void

    :catch_9a
    move-exception p0

    const-string p1, "Exception occurred when loading assets"

    invoke-static {p1, p0}, Lcom/google/android/gms/internal/ads/jm;->FH(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method static final synthetic j6(Lcom/google/android/gms/internal/ads/Y;Ljava/lang/String;Lcom/google/android/gms/internal/ads/Mo;Z)V
    .registers 7

    :try_start_0
    new-instance p3, Lorg/json/JSONObject;

    invoke-direct {p3}, Lorg/json/JSONObject;-><init>()V

    const-string v0, "headline"

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/Y;->a8()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "body"

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/Y;->ro()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "call_to_action"

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/Y;->gn()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "advertiser"

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/Y;->jJ()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "logo"

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/Y;->gG()Lcom/google/android/gms/internal/ads/Ga;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/ads/internal/s;->j6(Lcom/google/android/gms/internal/ads/Ga;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/Y;->Hw()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_5b

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_45
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gms/ads/internal/s;->j6(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/Ga;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gms/ads/internal/s;->j6(Lcom/google/android/gms/internal/ads/Ga;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_45

    :cond_5b
    const-string v1, "images"

    invoke-virtual {p3, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "extras"

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/Y;->getExtras()Landroid/os/Bundle;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/google/android/gms/ads/internal/s;->j6(Landroid/os/Bundle;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    invoke-virtual {p3, v0, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    new-instance p0, Lorg/json/JSONObject;

    invoke-direct {p0}, Lorg/json/JSONObject;-><init>()V

    const-string p1, "assets"

    invoke-virtual {p0, p1, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "template_id"

    const-string p3, "1"

    invoke-virtual {p0, p1, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "google.afma.nativeExpressAds.loadAssets"

    invoke-interface {p2, p1, p0}, Lcom/google/android/gms/internal/ads/qd;->DW(Ljava/lang/String;Lorg/json/JSONObject;)V
    :try_end_83
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_83} :catch_84

    return-void

    :catch_84
    move-exception p0

    const-string p1, "Exception occurred when loading assets"

    invoke-static {p1, p0}, Lcom/google/android/gms/internal/ads/jm;->FH(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static j6(Lcom/google/android/gms/internal/ads/Mo;Lcom/google/android/gms/internal/ads/we;Ljava/util/concurrent/CountDownLatch;)Z
    .registers 27

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v7, p2

    :try_start_6
    invoke-interface/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/Mo;->getView()Landroid/view/View;

    move-result-object v2

    if-nez v2, :cond_13

    const-string v0, "AdWebView is null"

    :goto_e
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/jm;->Hw(Ljava/lang/String;)V

    goto/16 :goto_12f

    :cond_13
    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v2, v1, Lcom/google/android/gms/internal/ads/we;->DW:Lcom/google/android/gms/internal/ads/pe;

    iget-object v2, v2, Lcom/google/android/gms/internal/ads/pe;->aM:Ljava/util/List;

    if-eqz v2, :cond_120

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_25

    goto/16 :goto_120

    :cond_25
    new-instance v3, Lcom/google/android/gms/ads/internal/v;

    invoke-direct {v3, v7}, Lcom/google/android/gms/ads/internal/v;-><init>(Ljava/util/concurrent/CountDownLatch;)V

    const-string v4, "/nativeExpressAssetsLoaded"

    invoke-interface {v0, v4, v3}, Lcom/google/android/gms/internal/ads/Mo;->j6(Ljava/lang/String;Lcom/google/android/gms/ads/internal/gmsg/B;)V

    new-instance v3, Lcom/google/android/gms/ads/internal/w;

    invoke-direct {v3, v7}, Lcom/google/android/gms/ads/internal/w;-><init>(Ljava/util/concurrent/CountDownLatch;)V

    const-string v4, "/nativeExpressAssetsLoadingFailed"

    invoke-interface {v0, v4, v3}, Lcom/google/android/gms/internal/ads/Mo;->j6(Ljava/lang/String;Lcom/google/android/gms/ads/internal/gmsg/B;)V

    iget-object v3, v1, Lcom/google/android/gms/internal/ads/we;->FH:Lcom/google/android/gms/internal/ads/Je;

    invoke-interface {v3}, Lcom/google/android/gms/internal/ads/Je;->WB()Lcom/google/android/gms/internal/ads/Se;

    move-result-object v3

    iget-object v4, v1, Lcom/google/android/gms/internal/ads/we;->FH:Lcom/google/android/gms/internal/ads/Je;

    invoke-interface {v4}, Lcom/google/android/gms/internal/ads/Je;->ko()Lcom/google/android/gms/internal/ads/Ve;

    move-result-object v4

    const-string v5, "2"

    invoke-interface {v2, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    const/4 v6, 0x0

    if-eqz v5, :cond_a8

    if-eqz v3, :cond_a8

    new-instance v2, Lcom/google/android/gms/internal/ads/W;

    invoke-interface {v3}, Lcom/google/android/gms/internal/ads/Se;->a8()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v3}, Lcom/google/android/gms/internal/ads/Se;->Hw()Ljava/util/List;

    move-result-object v10

    invoke-interface {v3}, Lcom/google/android/gms/internal/ads/Se;->ro()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v3}, Lcom/google/android/gms/internal/ads/Se;->CU()Lcom/google/android/gms/internal/ads/Ga;

    move-result-object v12

    invoke-interface {v3}, Lcom/google/android/gms/internal/ads/Se;->gn()Ljava/lang/String;

    move-result-object v13

    invoke-interface {v3}, Lcom/google/android/gms/internal/ads/Se;->yO()D

    move-result-wide v14

    invoke-interface {v3}, Lcom/google/android/gms/internal/ads/Se;->wc()Ljava/lang/String;

    move-result-object v16

    invoke-interface {v3}, Lcom/google/android/gms/internal/ads/Se;->kQ()Ljava/lang/String;

    move-result-object v17

    invoke-interface {v3}, Lcom/google/android/gms/internal/ads/Se;->getExtras()Landroid/os/Bundle;

    move-result-object v19

    invoke-interface {v3}, Lcom/google/android/gms/internal/ads/Se;->aq()Labcd/ox;

    move-result-object v4

    if-eqz v4, :cond_87

    invoke-interface {v3}, Lcom/google/android/gms/internal/ads/Se;->aq()Labcd/ox;

    move-result-object v4

    invoke-static {v4}, Labcd/px;->j6(Labcd/ox;)Ljava/lang/Object;

    move-result-object v4

    move-object v6, v4

    check-cast v6, Landroid/view/View;

    :cond_87
    move-object/from16 v21, v6

    const/16 v18, 0x0

    const/16 v20, 0x0

    invoke-interface {v3}, Lcom/google/android/gms/internal/ads/Se;->BT()Labcd/ox;

    move-result-object v22

    const/16 v23, 0x0

    move-object v8, v2

    invoke-direct/range {v8 .. v23}, Lcom/google/android/gms/internal/ads/W;-><init>(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Lcom/google/android/gms/internal/ads/Ga;Ljava/lang/String;DLjava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ads/P;Landroid/os/Bundle;Lcom/google/android/gms/internal/ads/kI;Landroid/view/View;Labcd/ox;Ljava/lang/String;)V

    iget-object v3, v1, Lcom/google/android/gms/internal/ads/we;->DW:Lcom/google/android/gms/internal/ads/pe;

    iget-object v3, v3, Lcom/google/android/gms/internal/ads/pe;->XL:Ljava/lang/String;

    invoke-interface/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/Mo;->ei()Lcom/google/android/gms/internal/ads/tp;

    move-result-object v4

    new-instance v5, Lcom/google/android/gms/ads/internal/t;

    invoke-direct {v5, v2, v3, v0}, Lcom/google/android/gms/ads/internal/t;-><init>(Lcom/google/android/gms/internal/ads/W;Ljava/lang/String;Lcom/google/android/gms/internal/ads/Mo;)V

    :goto_a4
    invoke-interface {v4, v5}, Lcom/google/android/gms/internal/ads/tp;->j6(Lcom/google/android/gms/internal/ads/up;)V

    goto :goto_fe

    :cond_a8
    const-string v3, "1"

    invoke-interface {v2, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_11c

    if-eqz v4, :cond_11c

    new-instance v2, Lcom/google/android/gms/internal/ads/Y;

    invoke-interface {v4}, Lcom/google/android/gms/internal/ads/Ve;->a8()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v4}, Lcom/google/android/gms/internal/ads/Ve;->Hw()Ljava/util/List;

    move-result-object v10

    invoke-interface {v4}, Lcom/google/android/gms/internal/ads/Ve;->ro()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v4}, Lcom/google/android/gms/internal/ads/Ve;->gG()Lcom/google/android/gms/internal/ads/Ga;

    move-result-object v12

    invoke-interface {v4}, Lcom/google/android/gms/internal/ads/Ve;->gn()Ljava/lang/String;

    move-result-object v13

    invoke-interface {v4}, Lcom/google/android/gms/internal/ads/Ve;->jJ()Ljava/lang/String;

    move-result-object v14

    invoke-interface {v4}, Lcom/google/android/gms/internal/ads/Ve;->getExtras()Landroid/os/Bundle;

    move-result-object v16

    invoke-interface {v4}, Lcom/google/android/gms/internal/ads/Ve;->aq()Labcd/ox;

    move-result-object v3

    if-eqz v3, :cond_e1

    invoke-interface {v4}, Lcom/google/android/gms/internal/ads/Ve;->aq()Labcd/ox;

    move-result-object v3

    invoke-static {v3}, Labcd/px;->j6(Labcd/ox;)Ljava/lang/Object;

    move-result-object v3

    move-object v6, v3

    check-cast v6, Landroid/view/View;

    :cond_e1
    move-object/from16 v18, v6

    const/4 v15, 0x0

    const/16 v17, 0x0

    invoke-interface {v4}, Lcom/google/android/gms/internal/ads/Ve;->BT()Labcd/ox;

    move-result-object v19

    const/16 v20, 0x0

    move-object v8, v2

    invoke-direct/range {v8 .. v20}, Lcom/google/android/gms/internal/ads/Y;-><init>(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Lcom/google/android/gms/internal/ads/Ga;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ads/P;Landroid/os/Bundle;Lcom/google/android/gms/internal/ads/kI;Landroid/view/View;Labcd/ox;Ljava/lang/String;)V

    iget-object v3, v1, Lcom/google/android/gms/internal/ads/we;->DW:Lcom/google/android/gms/internal/ads/pe;

    iget-object v3, v3, Lcom/google/android/gms/internal/ads/pe;->XL:Ljava/lang/String;

    invoke-interface/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/Mo;->ei()Lcom/google/android/gms/internal/ads/tp;

    move-result-object v4

    new-instance v5, Lcom/google/android/gms/ads/internal/u;

    invoke-direct {v5, v2, v3, v0}, Lcom/google/android/gms/ads/internal/u;-><init>(Lcom/google/android/gms/internal/ads/Y;Ljava/lang/String;Lcom/google/android/gms/internal/ads/Mo;)V

    goto :goto_a4

    :goto_fe
    iget-object v2, v1, Lcom/google/android/gms/internal/ads/we;->DW:Lcom/google/android/gms/internal/ads/pe;

    iget-object v3, v2, Lcom/google/android/gms/internal/ads/pe;->Ws:Ljava/lang/String;

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/we;->DW:Lcom/google/android/gms/internal/ads/pe;

    iget-object v2, v1, Lcom/google/android/gms/internal/ads/pe;->QX:Ljava/lang/String;

    if-eqz v2, :cond_113

    const-string v4, "text/html"

    const-string v5, "UTF-8"

    const/4 v6, 0x0

    move-object/from16 v1, p0

    invoke-interface/range {v1 .. v6}, Lcom/google/android/gms/internal/ads/Mo;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_11a

    :cond_113
    const-string v1, "text/html"

    const-string v2, "UTF-8"

    invoke-interface {v0, v3, v1, v2}, Lcom/google/android/gms/internal/ads/Mo;->loadData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_11a
    const/4 v0, 0x1

    goto :goto_130

    :cond_11c
    const-string v0, "No matching template id and mapper"

    goto/16 :goto_e

    :cond_120
    :goto_120
    const-string v0, "No template ids present in mediation response"
    :try_end_122
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_122} :catch_129
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_122} :catch_124

    goto/16 :goto_e

    :catch_124
    move-exception v0

    invoke-virtual/range {p2 .. p2}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    throw v0

    :catch_129
    move-exception v0

    const-string v1, "Unable to invoke load assets"

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/jm;->FH(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_12f
    const/4 v0, 0x0

    :goto_130
    if-nez v0, :cond_135

    invoke-virtual/range {p2 .. p2}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    :cond_135
    return v0
.end method
