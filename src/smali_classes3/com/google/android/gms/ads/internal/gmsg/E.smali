.class public final Lcom/google/android/gms/ads/internal/gmsg/E;
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
.field private final j6:Lcom/google/android/gms/ads/internal/gmsg/F;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/ads/internal/gmsg/F;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/gmsg/E;->j6:Lcom/google/android/gms/ads/internal/gmsg/F;

    return-void
.end method


# virtual methods
.method public final zza(Ljava/lang/Object;Ljava/util/Map;)V
    .registers 6
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

    const-string p1, "blurRadius"

    const-string v0, "transparentBackground"

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v2, "blur"

    invoke-interface {p2, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    :try_start_18
    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_2f

    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p1
    :try_end_28
    .catch Ljava/lang/NumberFormatException; {:try_start_18 .. :try_end_28} :catch_29

    goto :goto_30

    :catch_29
    move-exception p1

    const-string p2, "Fail to parse float"

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/ads/jm;->DW(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_2f
    const/4 p1, 0x0

    :goto_30
    iget-object p2, p0, Lcom/google/android/gms/ads/internal/gmsg/E;->j6:Lcom/google/android/gms/ads/internal/gmsg/F;

    invoke-interface {p2, v0}, Lcom/google/android/gms/ads/internal/gmsg/F;->QX(Z)V

    iget-object p2, p0, Lcom/google/android/gms/ads/internal/gmsg/E;->j6:Lcom/google/android/gms/ads/internal/gmsg/F;

    invoke-interface {p2, v1, p1}, Lcom/google/android/gms/ads/internal/gmsg/F;->j6(ZF)V

    return-void
.end method
