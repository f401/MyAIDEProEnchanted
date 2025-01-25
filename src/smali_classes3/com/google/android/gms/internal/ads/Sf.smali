.class public final Lcom/google/android/gms/internal/ads/Sf;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/google/android/gms/internal/ads/zh;
.end annotation


# instance fields
.field private final DW:Z

.field private final FH:Ljava/lang/String;

.field private final j6:Lcom/google/android/gms/internal/ads/Mo;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/Mo;Ljava/util/Map;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/Mo;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/Sf;->j6:Lcom/google/android/gms/internal/ads/Mo;

    const-string p1, "forceOrientation"

    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/Sf;->FH:Ljava/lang/String;

    const-string p1, "allowOrientationChange"

    invoke-interface {p2, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_24

    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p1

    :goto_21
    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/Sf;->DW:Z

    return-void

    :cond_24
    const/4 p1, 0x1

    goto :goto_21
.end method


# virtual methods
.method public final j6()V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Sf;->j6:Lcom/google/android/gms/internal/ads/Mo;

    if-nez v0, :cond_a

    const-string v0, "AdWebView is null"

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/jm;->Hw(Ljava/lang/String;)V

    return-void

    :cond_a
    const-string v0, "portrait"

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/Sf;->FH:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1d

    invoke-static {}, Lcom/google/android/gms/ads/internal/X;->VH()Lcom/google/android/gms/internal/ads/Vk;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/Vk;->Hw()I

    move-result v0

    goto :goto_3e

    :cond_1d
    const-string v0, "landscape"

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/Sf;->FH:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_30

    invoke-static {}, Lcom/google/android/gms/ads/internal/X;->VH()Lcom/google/android/gms/internal/ads/Vk;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/Vk;->FH()I

    move-result v0

    goto :goto_3e

    :cond_30
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/Sf;->DW:Z

    if-eqz v0, :cond_36

    const/4 v0, -0x1

    goto :goto_3e

    :cond_36
    invoke-static {}, Lcom/google/android/gms/ads/internal/X;->VH()Lcom/google/android/gms/internal/ads/Vk;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/Vk;->v5()I

    move-result v0

    :goto_3e
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/Sf;->j6:Lcom/google/android/gms/internal/ads/Mo;

    invoke-interface {v1, v0}, Lcom/google/android/gms/internal/ads/Mo;->setRequestedOrientation(I)V

    return-void
.end method
