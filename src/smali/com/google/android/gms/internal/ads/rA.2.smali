.class final Lcom/google/android/gms/internal/ads/rA;
.super Ljava/lang/Object;


# instance fields
.field public DW:Lcom/google/android/gms/internal/ads/zzfs;

.field public FH:I

.field public Hw:I

.field public final j6:[Lcom/google/android/gms/internal/ads/JA;


# direct methods
.method public constructor <init>(I)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-array v0, p1, [Lcom/google/android/gms/internal/ads/JA;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/rA;->j6:[Lcom/google/android/gms/internal/ads/JA;

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/internal/ads/rA;->Hw:I

    return-void
.end method
