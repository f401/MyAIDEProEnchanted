.class final Lcom/google/android/gms/internal/ads/KA;
.super Ljava/lang/Object;


# instance fields
.field public DW:J

.field public EQ:[J

.field public FH:J

.field public Hw:J

.field public J0:Z

.field public J8:[Z

.field public QX:I

.field public VH:[J

.field public Ws:Lcom/google/android/gms/internal/ads/JA;

.field public XL:Lcom/google/android/gms/internal/ads/LD;

.field public Zo:I

.field public aM:Z

.field public gn:[I

.field public j3:J

.field public j6:Lcom/google/android/gms/internal/ads/vA;

.field public tp:[I

.field public u7:[I

.field public v5:I

.field public we:[Z


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final DW(I)J
    .registers 6

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/KA;->EQ:[J

    aget-wide v0, v0, p1

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/KA;->tp:[I

    aget v2, v2, p1

    int-to-long v2, v2

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public final j6(I)V
    .registers 4

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/KA;->XL:Lcom/google/android/gms/internal/ads/LD;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/LD;->FH()I

    move-result v0

    if-ge v0, p1, :cond_1

    :cond_0
    new-instance v0, Lcom/google/android/gms/internal/ads/LD;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/ads/LD;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/KA;->XL:Lcom/google/android/gms/internal/ads/LD;

    :cond_1
    iput p1, p0, Lcom/google/android/gms/internal/ads/KA;->QX:I

    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/KA;->J0:Z

    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/KA;->aM:Z

    return-void
.end method
