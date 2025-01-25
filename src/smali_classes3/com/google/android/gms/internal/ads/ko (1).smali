.class public final Lcom/google/android/gms/internal/ads/ko;
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


# instance fields
.field private j6:Z


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static j6(Landroid/content/Context;Ljava/util/Map;Ljava/lang/String;I)I
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "I)I"
        }
    .end annotation

    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    if-eqz p1, :cond_44

    :try_start_8
    invoke-static {}, Lcom/google/android/gms/internal/ads/qH;->j6()Lcom/google/android/gms/internal/ads/Zl;

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {p0, v0}, Lcom/google/android/gms/internal/ads/Zl;->j6(Landroid/content/Context;I)I

    move-result p3
    :try_end_13
    .catch Ljava/lang/NumberFormatException; {:try_start_8 .. :try_end_13} :catch_14

    goto :goto_44

    :catch_14
    move-exception p0

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x22

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v0, v1

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "Could not parse "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " in a video GMSG: "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/jm;->Hw(Ljava/lang/String;)V

    :cond_44
    :goto_44
    return p3
.end method

.method private static j6(Lcom/google/android/gms/internal/ads/pn;Ljava/util/Map;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/pn;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "minBufferMs"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "maxBufferMs"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, "bufferForPlaybackMs"

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v3, "bufferForPlaybackAfterRebufferMs"

    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    if-eqz v0, :cond_2c

    :try_start_22
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/google/android/gms/internal/ads/pn;->DW(I)V

    goto :goto_2c

    :catch_2a
    move-exception p0

    goto :goto_48

    :cond_2c
    :goto_2c
    if-eqz v1, :cond_35

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/google/android/gms/internal/ads/pn;->FH(I)V

    :cond_35
    if-eqz v2, :cond_3e

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/google/android/gms/internal/ads/pn;->Hw(I)V

    :cond_3e
    if-eqz p1, :cond_5a

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/pn;->v5(I)V
    :try_end_47
    .catch Ljava/lang/NumberFormatException; {:try_start_22 .. :try_end_47} :catch_2a

    goto :goto_5a

    :goto_48
    const/4 p0, 0x2

    new-array p0, p0, [Ljava/lang/Object;

    const/4 p1, 0x0

    aput-object v0, p0, p1

    const/4 p1, 0x1

    aput-object v1, p0, p1

    const-string p1, "Could not parse buffer parameters in loadControl video GMSG: (%s, %s)"

    invoke-static {p1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/jm;->Hw(Ljava/lang/String;)V

    :cond_5a
    :goto_5a
    return-void
.end method


# virtual methods
.method public final synthetic zza(Ljava/lang/Object;Ljava/util/Map;)V
    .registers 14

    check-cast p1, Lcom/google/android/gms/internal/ads/Dn;

    const-string v0, "action"

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-nez v0, :cond_12

    const-string p1, "Action missing from video GMSG."

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/jm;->Hw(Ljava/lang/String;)V

    return-void

    :cond_12
    const/4 v1, 0x3

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/jm;->j6(I)Z

    move-result v1

    if-eqz v1, :cond_56

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p2}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    const-string v2, "google.afma.Notify_dt"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0xd

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v3, v4

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Video GMSG: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/jm;->DW(Ljava/lang/String;)V

    :cond_56
    const-string v1, "background"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_81

    const-string v0, "color"

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_72

    const-string p1, "Color parameter missing from color video GMSG."

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/jm;->Hw(Ljava/lang/String;)V

    return-void

    :cond_72
    :try_start_72
    invoke-static {p2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p2

    invoke-interface {p1, p2}, Lcom/google/android/gms/internal/ads/Dn;->setBackgroundColor(I)V
    :try_end_79
    .catch Ljava/lang/IllegalArgumentException; {:try_start_72 .. :try_end_79} :catch_7a

    return-void

    :catch_7a
    move-exception p1

    const-string p1, "Invalid color parameter in video GMSG."

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/jm;->Hw(Ljava/lang/String;)V

    return-void

    :cond_81
    const-string v1, "decoderProps"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_d2

    const-string v0, "mimeTypes"

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    if-nez p2, :cond_9f

    const-string p2, "No MIME types specified for decoder properties inspection."

    invoke-static {p2}, Lcom/google/android/gms/internal/ads/jm;->Hw(Ljava/lang/String;)V

    const-string p2, "missingMimeTypes"

    invoke-static {p1, p2}, Lcom/google/android/gms/internal/ads/pn;->j6(Lcom/google/android/gms/internal/ads/Dn;Ljava/lang/String;)V

    return-void

    :cond_9f
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-ge v0, v1, :cond_b0

    const-string p2, "Video decoder properties available on API versions >= 16."

    invoke-static {p2}, Lcom/google/android/gms/internal/ads/jm;->Hw(Ljava/lang/String;)V

    const-string p2, "deficientApiVersion"

    invoke-static {p1, p2}, Lcom/google/android/gms/internal/ads/pn;->j6(Lcom/google/android/gms/internal/ads/Dn;Ljava/lang/String;)V

    return-void

    :cond_b0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, ","

    invoke-virtual {p2, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p2

    array-length v1, p2

    :goto_bc
    if-ge v2, v1, :cond_ce

    aget-object v3, p2, v2

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/google/android/gms/internal/ads/Xl;->j6(Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_bc

    :cond_ce
    invoke-static {p1, v0}, Lcom/google/android/gms/internal/ads/pn;->j6(Lcom/google/android/gms/internal/ads/Dn;Ljava/util/Map;)V

    return-void

    :cond_d2
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/Dn;->g3()Lcom/google/android/gms/internal/ads/vn;

    move-result-object v1

    if-nez v1, :cond_de

    const-string p1, "Could not get underlay container for a video GMSG."

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/jm;->Hw(Ljava/lang/String;)V

    return-void

    :cond_de
    const-string v3, "new"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const-string v4, "position"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    const-string v5, "y"

    const-string v6, "x"

    if-nez v3, :cond_2ae

    if-eqz v4, :cond_f4

    goto/16 :goto_2ae

    :cond_f4
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/Dn;->yS()Lcom/google/android/gms/internal/ads/bp;

    move-result-object v3

    const-string v4, "currentTime"

    if-eqz v3, :cond_140

    const-string v7, "timeupdate"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_135

    invoke-interface {p2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    if-nez v7, :cond_112

    const-string p1, "currentTime parameter missing from timeupdate video GMSG."

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/jm;->Hw(Ljava/lang/String;)V

    return-void

    :cond_112
    :try_start_112
    invoke-static {v7}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v8

    invoke-virtual {v3, v8}, Lcom/google/android/gms/internal/ads/bp;->DW(F)V
    :try_end_119
    .catch Ljava/lang/NumberFormatException; {:try_start_112 .. :try_end_119} :catch_11a

    goto :goto_140

    :catch_11a
    move-exception v3

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v7

    const-string v8, "Could not parse currentTime parameter from timeupdate video GMSG: "

    if-eqz v7, :cond_12c

    invoke-virtual {v8, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_131

    :cond_12c
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v8}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_131
    invoke-static {v3}, Lcom/google/android/gms/internal/ads/jm;->Hw(Ljava/lang/String;)V

    goto :goto_140

    :cond_135
    const-string v7, "skip"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_140

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/bp;->K3()V

    :cond_140
    :goto_140
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/vn;->FH()Lcom/google/android/gms/internal/ads/pn;

    move-result-object v1

    if-nez v1, :cond_14a

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/pn;->j6(Lcom/google/android/gms/internal/ads/Dn;)V

    return-void

    :cond_14a
    const-string v3, "click"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_172

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/Dn;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, p2, v6, v2}, Lcom/google/android/gms/internal/ads/ko;->j6(Landroid/content/Context;Ljava/util/Map;Ljava/lang/String;I)I

    move-result v0

    invoke-static {p1, p2, v5, v2}, Lcom/google/android/gms/internal/ads/ko;->j6(Landroid/content/Context;Ljava/util/Map;Ljava/lang/String;I)I

    move-result p1

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    const/4 v6, 0x0

    int-to-float v7, v0

    int-to-float v8, p1

    const/4 v9, 0x0

    move-wide v2, v4

    invoke-static/range {v2 .. v9}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/ads/pn;->j6(Landroid/view/MotionEvent;)V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->recycle()V

    return-void

    :cond_172
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1b0

    const-string p1, "time"

    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    if-nez p1, :cond_188

    const-string p1, "Time parameter missing from currentTime video GMSG."

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/jm;->Hw(Ljava/lang/String;)V

    return-void

    :cond_188
    :try_start_188
    invoke-static {p1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p2

    const/high16 v0, 0x447a0000  # 1000.0f

    mul-float p2, p2, v0

    float-to-int p2, p2

    invoke-virtual {v1, p2}, Lcom/google/android/gms/internal/ads/pn;->j6(I)V
    :try_end_194
    .catch Ljava/lang/NumberFormatException; {:try_start_188 .. :try_end_194} :catch_195

    return-void

    :catch_195
    move-exception p2

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p2

    const-string v0, "Could not parse time parameter from currentTime video GMSG: "

    if-eqz p2, :cond_1a7

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_1ac

    :cond_1a7
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_1ac
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/jm;->Hw(Ljava/lang/String;)V

    return-void

    :cond_1b0
    const-string v3, "hide"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1bd

    const/4 p1, 0x4

    invoke-virtual {v1, p1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    return-void

    :cond_1bd
    const-string v3, "load"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1c9

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/pn;->Ws()V

    return-void

    :cond_1c9
    const-string v3, "loadControl"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1d5

    invoke-static {v1, p2}, Lcom/google/android/gms/internal/ads/ko;->j6(Lcom/google/android/gms/internal/ads/pn;Ljava/util/Map;)V

    return-void

    :cond_1d5
    const-string v3, "muted"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1f1

    invoke-interface {p2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1ed

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/pn;->EQ()V

    return-void

    :cond_1ed
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/pn;->we()V

    return-void

    :cond_1f1
    const-string v3, "pause"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1fd

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/pn;->u7()V

    return-void

    :cond_1fd
    const-string v3, "play"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_209

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/pn;->tp()V

    return-void

    :cond_209
    const-string v3, "show"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_215

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    return-void

    :cond_215
    const-string v3, "src"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_227

    invoke-interface {p2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/ads/pn;->j6(Ljava/lang/String;)V

    return-void

    :cond_227
    const-string v3, "touchMove"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_24f

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/Dn;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v3, "dx"

    invoke-static {v0, p2, v3, v2}, Lcom/google/android/gms/internal/ads/ko;->j6(Landroid/content/Context;Ljava/util/Map;Ljava/lang/String;I)I

    move-result v3

    const-string v4, "dy"

    invoke-static {v0, p2, v4, v2}, Lcom/google/android/gms/internal/ads/ko;->j6(Landroid/content/Context;Ljava/util/Map;Ljava/lang/String;I)I

    move-result p2

    int-to-float v0, v3

    int-to-float p2, p2

    invoke-virtual {v1, v0, p2}, Lcom/google/android/gms/internal/ads/pn;->j6(FF)V

    iget-boolean p2, p0, Lcom/google/android/gms/internal/ads/ko;->j6:Z

    if-nez p2, :cond_24e

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/Dn;->vJ()V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/ko;->j6:Z

    :cond_24e
    return-void

    :cond_24f
    const-string p1, "volume"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_288

    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    if-nez p1, :cond_265

    const-string p1, "Level parameter missing from volume video GMSG."

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/jm;->Hw(Ljava/lang/String;)V

    return-void

    :cond_265
    :try_start_265
    invoke-static {p1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p2

    invoke-virtual {v1, p2}, Lcom/google/android/gms/internal/ads/pn;->setVolume(F)V
    :try_end_26c
    .catch Ljava/lang/NumberFormatException; {:try_start_265 .. :try_end_26c} :catch_26d

    return-void

    :catch_26d
    move-exception p2

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p2

    const-string v0, "Could not parse volume parameter from volume video GMSG: "

    if-eqz p2, :cond_27f

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_284

    :cond_27f
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_284
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/jm;->Hw(Ljava/lang/String;)V

    return-void

    :cond_288
    const-string p1, "watermark"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_294

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/pn;->J0()V

    return-void

    :cond_294
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p2

    const-string v0, "Unknown video action: "

    if-eqz p2, :cond_2a5

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_2aa

    :cond_2a5
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_2aa
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/jm;->Hw(Ljava/lang/String;)V

    return-void

    :cond_2ae
    :goto_2ae
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/Dn;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p2, v6, v2}, Lcom/google/android/gms/internal/ads/ko;->j6(Landroid/content/Context;Ljava/util/Map;Ljava/lang/String;I)I

    move-result v4

    invoke-static {v0, p2, v5, v2}, Lcom/google/android/gms/internal/ads/ko;->j6(Landroid/content/Context;Ljava/util/Map;Ljava/lang/String;I)I

    move-result v5

    const-string v6, "w"

    const/4 v7, -0x1

    invoke-static {v0, p2, v6, v7}, Lcom/google/android/gms/internal/ads/ko;->j6(Landroid/content/Context;Ljava/util/Map;Ljava/lang/String;I)I

    move-result v6

    const-string v8, "h"

    invoke-static {v0, p2, v8, v7}, Lcom/google/android/gms/internal/ads/ko;->j6(Landroid/content/Context;Ljava/util/Map;Ljava/lang/String;I)I

    move-result v0

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/Dn;->I()I

    move-result v7

    sub-int/2addr v7, v4

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v6

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/Dn;->ro()I

    move-result p1

    sub-int/2addr p1, v5

    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result v7

    :try_start_2d9
    const-string p1, "player"

    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2
    :try_end_2e5
    .catch Ljava/lang/NumberFormatException; {:try_start_2d9 .. :try_end_2e5} :catch_2e7

    move v8, v2

    goto :goto_2e9

    :catch_2e7
    move-exception p1

    const/4 v8, 0x0

    :goto_2e9
    const-string p1, "spherical"

    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v9

    if-eqz v3, :cond_318

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/vn;->FH()Lcom/google/android/gms/internal/ads/pn;

    move-result-object p1

    if-nez p1, :cond_318

    new-instance v10, Lcom/google/android/gms/internal/ads/Cn;

    const-string p1, "flags"

    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-direct {v10, p1}, Lcom/google/android/gms/internal/ads/Cn;-><init>(Ljava/lang/String;)V

    move-object v3, v1

    invoke-virtual/range {v3 .. v10}, Lcom/google/android/gms/internal/ads/vn;->j6(IIIIIZLcom/google/android/gms/internal/ads/Cn;)V

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/vn;->FH()Lcom/google/android/gms/internal/ads/pn;

    move-result-object p1

    if-eqz p1, :cond_317

    invoke-static {p1, p2}, Lcom/google/android/gms/internal/ads/ko;->j6(Lcom/google/android/gms/internal/ads/pn;Ljava/util/Map;)V

    :cond_317
    return-void

    :cond_318
    invoke-virtual {v1, v4, v5, v6, v7}, Lcom/google/android/gms/internal/ads/vn;->j6(IIII)V

    return-void
.end method
