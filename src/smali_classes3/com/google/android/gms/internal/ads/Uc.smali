.class final synthetic Lcom/google/android/gms/internal/ads/Uc;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final DW:Ljava/lang/String;

.field private final j6:Lcom/google/android/gms/internal/ads/Tc;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/Tc;Ljava/lang/String;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/Uc;->j6:Lcom/google/android/gms/internal/ads/Tc;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/Uc;->DW:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Uc;->j6:Lcom/google/android/gms/internal/ads/Tc;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/Uc;->DW:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/Tc;->VH(Ljava/lang/String;)V

    return-void
.end method
