.class final synthetic Lcom/google/android/gms/internal/ads/Kk;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final j6:Lcom/google/android/gms/internal/ads/Ik;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/Ik;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/Kk;->j6:Lcom/google/android/gms/internal/ads/Ik;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Kk;->j6:Lcom/google/android/gms/internal/ads/Ik;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/Ik;->DW()Lcom/google/android/gms/internal/ads/jF;

    return-void
.end method
