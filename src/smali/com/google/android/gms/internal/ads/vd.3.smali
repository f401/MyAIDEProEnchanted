.class final synthetic Lcom/google/android/gms/internal/ads/vd;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/ads/hd;


# instance fields
.field private final DW:Lcom/google/android/gms/internal/ads/Ld;

.field private final FH:Lcom/google/android/gms/internal/ads/gd;

.field private final j6:Lcom/google/android/gms/internal/ads/rd;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/rd;Lcom/google/android/gms/internal/ads/Ld;Lcom/google/android/gms/internal/ads/gd;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/vd;->j6:Lcom/google/android/gms/internal/ads/rd;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/vd;->DW:Lcom/google/android/gms/internal/ads/Ld;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/vd;->FH:Lcom/google/android/gms/internal/ads/gd;

    return-void
.end method


# virtual methods
.method public final j6()V
    .registers 6

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/vd;->j6:Lcom/google/android/gms/internal/ads/rd;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/vd;->DW:Lcom/google/android/gms/internal/ads/Ld;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/vd;->FH:Lcom/google/android/gms/internal/ads/gd;

    sget-object v3, Lcom/google/android/gms/internal/ads/Nk;->j6:Landroid/os/Handler;

    new-instance v4, Lcom/google/android/gms/internal/ads/wd;

    invoke-direct {v4, v0, v1, v2}, Lcom/google/android/gms/internal/ads/wd;-><init>(Lcom/google/android/gms/internal/ads/rd;Lcom/google/android/gms/internal/ads/Ld;Lcom/google/android/gms/internal/ads/gd;)V

    sget v0, Lcom/google/android/gms/internal/ads/Fd;->DW:I

    int-to-long v0, v0

    invoke-virtual {v3, v4, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
