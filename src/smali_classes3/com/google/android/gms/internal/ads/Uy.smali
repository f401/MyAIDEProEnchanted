.class public final Lcom/google/android/gms/internal/ads/Uy;
.super Ljava/lang/Object;


# instance fields
.field public DW:Ljava/lang/Object;

.field public FH:I

.field public Hw:J

.field private Zo:J

.field private j6:Ljava/lang/Object;

.field private v5:Z


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final j6()J
    .registers 3

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/Uy;->Zo:J

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/uy;->j6(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public final j6(Ljava/lang/Object;Ljava/lang/Object;IJJZ)Lcom/google/android/gms/internal/ads/Uy;
    .registers 9

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/Uy;->j6:Ljava/lang/Object;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/Uy;->DW:Ljava/lang/Object;

    const/4 p1, 0x0

    iput p1, p0, Lcom/google/android/gms/internal/ads/Uy;->FH:I

    iput-wide p4, p0, Lcom/google/android/gms/internal/ads/Uy;->Hw:J

    iput-wide p6, p0, Lcom/google/android/gms/internal/ads/Uy;->Zo:J

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/Uy;->v5:Z

    return-object p0
.end method
