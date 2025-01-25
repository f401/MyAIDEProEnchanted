.class final synthetic Lcom/google/android/gms/internal/ads/Sn;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final DW:I

.field private final j6:Lcom/google/android/gms/internal/ads/Jn;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/Jn;I)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/Sn;->j6:Lcom/google/android/gms/internal/ads/Jn;

    iput p2, p0, Lcom/google/android/gms/internal/ads/Sn;->DW:I

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Sn;->j6:Lcom/google/android/gms/internal/ads/Jn;

    iget v1, p0, Lcom/google/android/gms/internal/ads/Sn;->DW:I

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/Jn;->VH(I)V

    return-void
.end method
