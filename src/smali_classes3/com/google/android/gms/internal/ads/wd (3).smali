.class final synthetic Lcom/google/android/gms/internal/ads/wd;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final DW:Lcom/google/android/gms/internal/ads/Ld;

.field private final FH:Lcom/google/android/gms/internal/ads/gd;

.field private final j6:Lcom/google/android/gms/internal/ads/rd;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/rd;Lcom/google/android/gms/internal/ads/Ld;Lcom/google/android/gms/internal/ads/gd;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/wd;->j6:Lcom/google/android/gms/internal/ads/rd;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/wd;->DW:Lcom/google/android/gms/internal/ads/Ld;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/wd;->FH:Lcom/google/android/gms/internal/ads/gd;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/wd;->j6:Lcom/google/android/gms/internal/ads/rd;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/wd;->DW:Lcom/google/android/gms/internal/ads/Ld;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/wd;->FH:Lcom/google/android/gms/internal/ads/gd;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ads/rd;->j6(Lcom/google/android/gms/internal/ads/Ld;Lcom/google/android/gms/internal/ads/gd;)V

    return-void
.end method
