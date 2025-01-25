.class final Lcom/google/android/gms/internal/ads/Lf;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final DW:Lcom/google/android/gms/internal/ads/zzanu;

.field private final j6:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzanu;Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;)V
    .registers 3

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/Lf;->DW:Lcom/google/android/gms/internal/ads/zzanu;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/Lf;->j6:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    invoke-static {}, Lcom/google/android/gms/ads/internal/X;->FH()Lcom/google/android/gms/ads/internal/overlay/k;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Lf;->DW:Lcom/google/android/gms/internal/ads/zzanu;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzanu;->DW(Lcom/google/android/gms/internal/ads/zzanu;)Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/Lf;->j6:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/ads/internal/overlay/k;->j6(Landroid/content/Context;Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;Z)V

    return-void
.end method
