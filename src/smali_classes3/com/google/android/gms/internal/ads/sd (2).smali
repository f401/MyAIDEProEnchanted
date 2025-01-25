.class final synthetic Lcom/google/android/gms/internal/ads/sd;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final DW:Lcom/google/android/gms/internal/ads/ix;

.field private final FH:Lcom/google/android/gms/internal/ads/Ld;

.field private final j6:Lcom/google/android/gms/internal/ads/rd;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/rd;Lcom/google/android/gms/internal/ads/ix;Lcom/google/android/gms/internal/ads/Ld;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/sd;->j6:Lcom/google/android/gms/internal/ads/rd;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/sd;->DW:Lcom/google/android/gms/internal/ads/ix;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/sd;->FH:Lcom/google/android/gms/internal/ads/Ld;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/sd;->j6:Lcom/google/android/gms/internal/ads/rd;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/sd;->DW:Lcom/google/android/gms/internal/ads/ix;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/sd;->FH:Lcom/google/android/gms/internal/ads/Ld;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ads/rd;->j6(Lcom/google/android/gms/internal/ads/ix;Lcom/google/android/gms/internal/ads/Ld;)V

    return-void
.end method
