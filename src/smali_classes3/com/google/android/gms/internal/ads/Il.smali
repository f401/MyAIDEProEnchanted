.class public final Lcom/google/android/gms/internal/ads/Il;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/google/android/gms/internal/ads/zh;
.end annotation


# static fields
.field private static final j6:Lcom/google/android/gms/internal/ads/Kl;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/Kl<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "*>;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/google/android/gms/internal/ads/Jl;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/Jl;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/Il;->j6:Lcom/google/android/gms/internal/ads/Kl;

    return-void
.end method

.method public static j6(Lorg/json/JSONArray;Ljava/util/List;)Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONArray;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    if-nez p0, :cond_8

    return-object p1

    :cond_8
    const/4 v0, 0x0

    :goto_9
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-ge v0, v1, :cond_19

    invoke-virtual {p0, v0}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    :cond_19
    return-object p1
.end method

.method public static varargs j6(Lorg/json/JSONObject;[Ljava/lang/String;)Lorg/json/JSONObject;
    .registers 5

    const/4 v0, 0x0

    :goto_1
    array-length v1, p1

    add-int/lit8 v1, v1, -0x1

    const/4 v2, 0x0

    if-ge v0, v1, :cond_14

    if-nez p0, :cond_b

    move-object p0, v2

    goto :goto_14

    :cond_b
    aget-object v1, p1, v0

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_14
    :goto_14
    if-nez p0, :cond_17

    return-object v2

    :cond_17
    array-length v0, p1

    add-int/lit8 v0, v0, -0x1

    aget-object p1, p1, v0

    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    return-object p0
.end method
