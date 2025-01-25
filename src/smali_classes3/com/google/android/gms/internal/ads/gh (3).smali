.class public final Lcom/google/android/gms/internal/ads/gh;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/ads/Tg;


# annotations
.annotation runtime Lcom/google/android/gms/internal/ads/zh;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/Tg<",
        "Lcom/google/android/gms/internal/ads/aa;",
        ">;"
    }
.end annotation


# instance fields
.field private final j6:Z


# direct methods
.method public constructor <init>(Z)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/gh;->j6:Z

    return-void
.end method


# virtual methods
.method public final synthetic j6(Lcom/google/android/gms/internal/ads/Kg;Lorg/json/JSONObject;)Lcom/google/android/gms/internal/ads/ka;
    .registers 14

    new-instance v0, Labcd/x;

    invoke-direct {v0}, Labcd/x;-><init>()V

    new-instance v4, Labcd/x;

    invoke-direct {v4}, Labcd/x;-><init>()V

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/ads/Kg;->j6(Lorg/json/JSONObject;)Lcom/google/android/gms/internal/ads/Hm;

    move-result-object v1

    const-string v2, "video"

    invoke-virtual {p1, p2, v2}, Lcom/google/android/gms/internal/ads/Kg;->j6(Lorg/json/JSONObject;Ljava/lang/String;)Lcom/google/android/gms/internal/ads/Hm;

    move-result-object v2

    const-string v3, "custom_assets"

    invoke-virtual {p2, v3}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_1c
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v7

    if-ge v6, v7, :cond_78

    invoke-virtual {v3, v6}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v7

    const-string v8, "type"

    invoke-virtual {v7, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v9, "string"

    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    const-string v10, "name"

    if-eqz v9, :cond_44

    invoke-virtual {v7, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v9, "string_value"

    invoke-virtual {v7, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v8, v7}, Labcd/x;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_75

    :cond_44
    const-string v9, "image"

    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5c

    invoke-virtual {v7, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v9, "image_value"

    iget-boolean v10, p0, Lcom/google/android/gms/internal/ads/gh;->j6:Z

    invoke-virtual {p1, v7, v9, v10}, Lcom/google/android/gms/internal/ads/Kg;->j6(Lorg/json/JSONObject;Ljava/lang/String;Z)Ljava/util/concurrent/Future;

    move-result-object v7

    invoke-virtual {v0, v8, v7}, Labcd/x;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_75

    :cond_5c
    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v8

    const-string v9, "Unknown custom asset type: "

    if-eqz v8, :cond_6d

    invoke-virtual {v9, v7}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    goto :goto_72

    :cond_6d
    new-instance v7, Ljava/lang/String;

    invoke-direct {v7, v9}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_72
    invoke-static {v7}, Lcom/google/android/gms/internal/ads/jm;->Hw(Ljava/lang/String;)V

    :goto_75
    add-int/lit8 v6, v6, 0x1

    goto :goto_1c

    :cond_78
    invoke-static {v2}, Lcom/google/android/gms/internal/ads/Kg;->j6(Lcom/google/android/gms/internal/ads/Hm;)Lcom/google/android/gms/internal/ads/Mo;

    move-result-object p1

    const-string v2, "custom_template_id"

    invoke-virtual {p2, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Labcd/x;

    invoke-direct {v3}, Labcd/x;-><init>()V

    :goto_87
    invoke-virtual {v0}, Labcd/x;->size()I

    move-result p2

    if-ge v5, p2, :cond_a1

    invoke-virtual {v0, v5}, Labcd/x;->DW(I)Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {v0, v5}, Labcd/x;->Hw(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/concurrent/Future;

    invoke-interface {v6}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v3, p2, v6}, Labcd/x;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v5, v5, 0x1

    goto :goto_87

    :cond_a1
    invoke-interface {v1}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object p2

    move-object v5, p2

    check-cast v5, Lcom/google/android/gms/internal/ads/P;

    const/4 p2, 0x0

    if-eqz p1, :cond_b1

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/Mo;->yS()Lcom/google/android/gms/internal/ads/bp;

    move-result-object v0

    move-object v6, v0

    goto :goto_b2

    :cond_b1
    move-object v6, p2

    :goto_b2
    if-eqz p1, :cond_ba

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/Mo;->getView()Landroid/view/View;

    move-result-object p1

    move-object v7, p1

    goto :goto_bb

    :cond_ba
    move-object v7, p2

    :goto_bb
    new-instance p1, Lcom/google/android/gms/internal/ads/aa;

    move-object v1, p1

    invoke-direct/range {v1 .. v7}, Lcom/google/android/gms/internal/ads/aa;-><init>(Ljava/lang/String;Labcd/x;Labcd/x;Lcom/google/android/gms/internal/ads/P;Lcom/google/android/gms/internal/ads/kI;Landroid/view/View;)V

    return-object p1
.end method
