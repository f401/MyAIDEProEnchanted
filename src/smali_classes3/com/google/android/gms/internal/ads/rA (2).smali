.class final Lcom/google/android/gms/internal/ads/rA;
.super Ljava/lang/Object;


# instance fields
.field public DW:Lcom/google/android/gms/internal/ads/zzfs;

.field public FH:I

.field public Hw:I

.field public final j6:[Lcom/google/android/gms/internal/ads/JA;


# direct methods
.method public constructor <init>(I)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-array p1, p1, [Lcom/google/android/gms/internal/ads/JA;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/rA;->j6:[Lcom/google/android/gms/internal/ads/JA;

    const/4 p1, 0x0

    iput p1, p0, Lcom/google/android/gms/internal/ads/rA;->Hw:I

    return-void
.end method
