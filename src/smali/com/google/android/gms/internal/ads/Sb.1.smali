.class final Lcom/google/android/gms/internal/ads/Sb;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/ads/qm;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/qm",
        "<",
        "Lcom/google/android/gms/internal/ads/Qb;",
        "Landroid/os/ParcelFileDescriptor;",
        ">;"
    }
.end annotation


# instance fields
.field private final j6:Lcom/google/android/gms/internal/ads/zzafl;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzaft;Lcom/google/android/gms/internal/ads/zzafl;)V
    .registers 3

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/Sb;->j6:Lcom/google/android/gms/internal/ads/zzafl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic j6(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/Hm;
    .registers 5

    check-cast p1, Lcom/google/android/gms/internal/ads/Qb;

    new-instance v0, Lcom/google/android/gms/internal/ads/Rm;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/Rm;-><init>()V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/Sb;->j6:Lcom/google/android/gms/internal/ads/zzafl;

    new-instance v2, Lcom/google/android/gms/internal/ads/Tb;

    invoke-direct {v2, p0, v0}, Lcom/google/android/gms/internal/ads/Tb;-><init>(Lcom/google/android/gms/internal/ads/Sb;Lcom/google/android/gms/internal/ads/Rm;)V

    invoke-interface {p1, v1, v2}, Lcom/google/android/gms/internal/ads/Qb;->j6(Lcom/google/android/gms/internal/ads/zzafl;Lcom/google/android/gms/internal/ads/Ob;)V

    return-object v0
.end method
