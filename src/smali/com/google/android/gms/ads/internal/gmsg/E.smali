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
        "Lcom/google/android/gms/ads/internal/gmsg/B",
        "<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field private final j6:Lcom/google/android/gms/ads/internal/gmsg/F;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/ads/internal/gmsg/F;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/gmsg/E;->j6:Lcom/google/android/gms/ads/internal/gmsg/F;

    return-void
.end method


# virtual methods
.method public final zza(Ljava/lang/Object;Ljava/util/Map;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "1"

    const-string v1, "transparentBackground"

    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v0, "1"

    const-string v2, "blur"

    invoke-interface {p2, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    :try_start_0
    const-string v0, "blurRadius"

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v0, "blurRadius"

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    iget-object v3, p0, Lcom/google/android/gms/ads/internal/gmsg/E;->j6:Lcom/google/android/gms/ads/internal/gmsg/F;

    invoke-interface {v3, v1}, Lcom/google/android/gms/ads/internal/gmsg/F;->QX(Z)V

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/gmsg/E;->j6:Lcom/google/android/gms/ads/internal/gmsg/F;

    invoke-interface {v1, v2, v0}, Lcom/google/android/gms/ads/internal/gmsg/F;->j6(ZF)V

    return-void

    :catch_0
    move-exception v0

    const-string v3, "Fail to parse float"

    invoke-static {v3, v0}, Lcom/google/android/gms/internal/ads/jm;->DW(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
