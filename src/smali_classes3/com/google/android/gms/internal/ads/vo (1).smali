.class public final Lcom/google/android/gms/internal/ads/vo;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/ads/internal/gmsg/B;


# annotations
.annotation runtime Lcom/google/android/gms/internal/ads/zh;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/ads/internal/gmsg/B<",
        "Lcom/google/android/gms/internal/ads/Dn;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static j6(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Integer;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Integer;"
        }
    .end annotation

    invoke-interface {p0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return-object v1

    :cond_8
    :try_start_8
    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0
    :try_end_12
    .catch Ljava/lang/NumberFormatException; {:try_start_8 .. :try_end_12} :catch_17

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :catch_17
    move-exception v0

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x27

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v2, v3

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Precache invalid numeric parameter \'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\': "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/jm;->Hw(Ljava/lang/String;)V

    return-object v1
.end method


# virtual methods
.method public final synthetic zza(Ljava/lang/Object;Ljava/util/Map;)V
    .registers 8

    check-cast p1, Lcom/google/android/gms/internal/ads/Dn;

    const/4 v0, 0x3

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/jm;->j6(I)Z

    move-result v0

    if-eqz v0, :cond_35

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p2}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    const-string v1, "google.afma.Notify_dt"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0xf

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Precache GMSG: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/jm;->DW(Ljava/lang/String;)V

    :cond_35
    invoke-static {}, Lcom/google/android/gms/ads/internal/X;->vy()Lcom/google/android/gms/internal/ads/oo;

    const-string v0, "abort"

    invoke-interface {p2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4c

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/oo;->j6(Lcom/google/android/gms/internal/ads/Dn;)Z

    move-result p1

    if-nez p1, :cond_4b

    const-string p1, "Precache abort but no precache task running."

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/jm;->Hw(Ljava/lang/String;)V

    :cond_4b
    return-void

    :cond_4c
    const-string v0, "src"

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_9d

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/oo;->DW(Lcom/google/android/gms/internal/ads/Dn;)Lcom/google/android/gms/internal/ads/mo;

    move-result-object v1

    if-eqz v1, :cond_62

    const-string p1, "Precache task is already running."

    :goto_5e
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/jm;->Hw(Ljava/lang/String;)V

    return-void

    :cond_62
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/Dn;->vy()Lcom/google/android/gms/ads/internal/ta;

    move-result-object v1

    if-nez v1, :cond_6b

    const-string p1, "Precache requires a dependency provider."

    goto :goto_5e

    :cond_6b
    new-instance v1, Lcom/google/android/gms/internal/ads/Cn;

    const-string v2, "flags"

    invoke-interface {p2, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/ads/Cn;-><init>(Ljava/lang/String;)V

    const-string v2, "player"

    invoke-static {p2, v2}, Lcom/google/android/gms/internal/ads/vo;->j6(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    if-nez v2, :cond_85

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    :cond_85
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/Dn;->vy()Lcom/google/android/gms/ads/internal/ta;

    move-result-object v3

    iget-object v3, v3, Lcom/google/android/gms/ads/internal/ta;->j6:Lcom/google/android/gms/internal/ads/wo;

    const/4 v4, 0x0

    invoke-interface {v3, p1, v2, v4, v1}, Lcom/google/android/gms/internal/ads/wo;->j6(Lcom/google/android/gms/internal/ads/Dn;ILjava/lang/String;Lcom/google/android/gms/internal/ads/Cn;)Lcom/google/android/gms/internal/ads/po;

    move-result-object v1

    new-instance v2, Lcom/google/android/gms/internal/ads/mo;

    invoke-direct {v2, p1, v1, v0}, Lcom/google/android/gms/internal/ads/mo;-><init>(Lcom/google/android/gms/internal/ads/Dn;Lcom/google/android/gms/internal/ads/po;Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/Ak;->FH()Ljava/lang/Object;

    goto :goto_a5

    :cond_9d
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/oo;->DW(Lcom/google/android/gms/internal/ads/Dn;)Lcom/google/android/gms/internal/ads/mo;

    move-result-object p1

    if-eqz p1, :cond_e2

    iget-object v1, p1, Lcom/google/android/gms/internal/ads/mo;->v5:Lcom/google/android/gms/internal/ads/po;

    :goto_a5
    const-string p1, "minBufferMs"

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/ads/vo;->j6(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    if-eqz p1, :cond_b4

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/ads/po;->DW(I)V

    :cond_b4
    const-string p1, "maxBufferMs"

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/ads/vo;->j6(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    if-eqz p1, :cond_c3

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/ads/po;->FH(I)V

    :cond_c3
    const-string p1, "bufferForPlaybackMs"

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/ads/vo;->j6(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    if-eqz p1, :cond_d2

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/ads/po;->Hw(I)V

    :cond_d2
    const-string p1, "bufferForPlaybackAfterRebufferMs"

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/ads/vo;->j6(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    if-eqz p1, :cond_e1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/ads/po;->v5(I)V

    :cond_e1
    return-void

    :cond_e2
    const-string p1, "Precache must specify a source."

    goto/16 :goto_5e
.end method
