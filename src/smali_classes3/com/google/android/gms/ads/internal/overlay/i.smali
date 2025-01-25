.class final Lcom/google/android/gms/ads/internal/overlay/i;
.super Lcom/google/android/gms/internal/ads/Ak;


# annotations
.annotation runtime Lcom/google/android/gms/internal/ads/zh;
.end annotation


# instance fields
.field final Hw:Lcom/google/android/gms/ads/internal/overlay/c;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/ads/internal/overlay/c;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/overlay/i;->Hw:Lcom/google/android/gms/ads/internal/overlay/c;

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/Ak;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/ads/internal/overlay/c;Lcom/google/android/gms/ads/internal/overlay/e;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/google/android/gms/ads/internal/overlay/i;-><init>(Lcom/google/android/gms/ads/internal/overlay/c;)V

    return-void
.end method


# virtual methods
.method public final DW()V
    .registers 1

    return-void
.end method

.method public final Hw()V
    .registers 6

    invoke-static {}, Lcom/google/android/gms/ads/internal/X;->yS()Lcom/google/android/gms/internal/ads/Ml;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/overlay/i;->Hw:Lcom/google/android/gms/ads/internal/overlay/c;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/overlay/c;->FH:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->Ws:Lcom/google/android/gms/ads/internal/zzaq;

    iget v1, v1, Lcom/google/android/gms/ads/internal/zzaq;->Zo:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/Ml;->j6(Ljava/lang/Integer;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_34

    invoke-static {}, Lcom/google/android/gms/ads/internal/X;->VH()Lcom/google/android/gms/internal/ads/Vk;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/overlay/i;->Hw:Lcom/google/android/gms/ads/internal/overlay/c;

    iget-object v3, v2, Lcom/google/android/gms/ads/internal/overlay/c;->DW:Landroid/app/Activity;

    iget-object v2, v2, Lcom/google/android/gms/ads/internal/overlay/c;->FH:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object v2, v2, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->Ws:Lcom/google/android/gms/ads/internal/zzaq;

    iget-boolean v4, v2, Lcom/google/android/gms/ads/internal/zzaq;->Hw:Z

    iget v2, v2, Lcom/google/android/gms/ads/internal/zzaq;->v5:F

    invoke-virtual {v1, v3, v0, v4, v2}, Lcom/google/android/gms/internal/ads/Vk;->j6(Landroid/content/Context;Landroid/graphics/Bitmap;ZF)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/internal/ads/Nk;->j6:Landroid/os/Handler;

    new-instance v2, Lcom/google/android/gms/ads/internal/overlay/j;

    invoke-direct {v2, p0, v0}, Lcom/google/android/gms/ads/internal/overlay/j;-><init>(Lcom/google/android/gms/ads/internal/overlay/i;Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_34
    return-void
.end method
