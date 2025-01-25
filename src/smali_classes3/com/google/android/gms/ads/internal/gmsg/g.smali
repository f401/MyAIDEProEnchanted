.class public final Lcom/google/android/gms/ads/internal/gmsg/g;
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
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field private final j6:Lcom/google/android/gms/ads/internal/gmsg/h;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/ads/internal/gmsg/h;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/gmsg/g;->j6:Lcom/google/android/gms/ads/internal/gmsg/h;

    return-void
.end method


# virtual methods
.method public final zza(Ljava/lang/Object;Ljava/util/Map;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string p1, "action"

    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    const-string v0, "grant"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3d

    :try_start_10
    const-string p1, "amount"

    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    const-string v0, "type"

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_36

    new-instance v0, Lcom/google/android/gms/internal/ads/zzawd;

    invoke-direct {v0, p2, p1}, Lcom/google/android/gms/internal/ads/zzawd;-><init>(Ljava/lang/String;I)V
    :try_end_2f
    .catch Ljava/lang/NumberFormatException; {:try_start_10 .. :try_end_2f} :catch_30

    goto :goto_37

    :catch_30
    move-exception p1

    const-string p2, "Unable to parse reward amount."

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/ads/jm;->FH(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_36
    const/4 v0, 0x0

    :goto_37
    iget-object p1, p0, Lcom/google/android/gms/ads/internal/gmsg/g;->j6:Lcom/google/android/gms/ads/internal/gmsg/h;

    invoke-interface {p1, v0}, Lcom/google/android/gms/ads/internal/gmsg/h;->DW(Lcom/google/android/gms/internal/ads/zzawd;)V

    return-void

    :cond_3d
    const-string p2, "video_start"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_4b

    iget-object p1, p0, Lcom/google/android/gms/ads/internal/gmsg/g;->j6:Lcom/google/android/gms/ads/internal/gmsg/h;

    invoke-interface {p1}, Lcom/google/android/gms/ads/internal/gmsg/h;->gy()V

    return-void

    :cond_4b
    const-string p2, "video_complete"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_58

    iget-object p1, p0, Lcom/google/android/gms/ads/internal/gmsg/g;->j6:Lcom/google/android/gms/ads/internal/gmsg/h;

    invoke-interface {p1}, Lcom/google/android/gms/ads/internal/gmsg/h;->S4()V

    :cond_58
    return-void
.end method
