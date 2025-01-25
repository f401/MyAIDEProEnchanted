.class final synthetic Lcom/google/android/gms/internal/ads/Lh;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final DW:Lcom/google/android/gms/internal/ads/Tm;

.field private final j6:Lcom/google/android/gms/internal/ads/Ch;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/Ch;Lcom/google/android/gms/internal/ads/Tm;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/Lh;->j6:Lcom/google/android/gms/internal/ads/Ch;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/Lh;->DW:Lcom/google/android/gms/internal/ads/Tm;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Lh;->j6:Lcom/google/android/gms/internal/ads/Ch;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/Lh;->DW:Lcom/google/android/gms/internal/ads/Tm;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/Ch;->j6(Lcom/google/android/gms/internal/ads/Tm;)V

    return-void
.end method
