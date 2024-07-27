.class final Lcom/google/android/gms/internal/ads/BA;
.super Ljava/lang/Object;


# instance fields
.field public final DW:Lcom/google/android/gms/internal/ads/Yz;

.field public FH:Lcom/google/android/gms/internal/ads/IA;

.field public Hw:Lcom/google/android/gms/internal/ads/vA;

.field public VH:I

.field public Zo:I

.field public gn:Lcom/google/android/gms/internal/ads/Zz;

.field public final j6:Lcom/google/android/gms/internal/ads/KA;

.field public u7:Lcom/google/android/gms/internal/ads/JA;

.field public v5:I


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/Yz;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/android/gms/internal/ads/KA;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/KA;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/BA;->j6:Lcom/google/android/gms/internal/ads/KA;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/BA;->DW:Lcom/google/android/gms/internal/ads/Yz;

    return-void
.end method


# virtual methods
.method public final j6()V
    .registers 6

    const/4 v4, 0x0

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/BA;->j6:Lcom/google/android/gms/internal/ads/KA;

    iput v1, v0, Lcom/google/android/gms/internal/ads/KA;->v5:I

    const-wide/16 v2, 0x0

    iput-wide v2, v0, Lcom/google/android/gms/internal/ads/KA;->j3:J

    iput-boolean v1, v0, Lcom/google/android/gms/internal/ads/KA;->J0:Z

    iput-boolean v1, v0, Lcom/google/android/gms/internal/ads/KA;->aM:Z

    iput-object v4, v0, Lcom/google/android/gms/internal/ads/KA;->Ws:Lcom/google/android/gms/internal/ads/JA;

    iput v1, p0, Lcom/google/android/gms/internal/ads/BA;->v5:I

    iput v1, p0, Lcom/google/android/gms/internal/ads/BA;->VH:I

    iput v1, p0, Lcom/google/android/gms/internal/ads/BA;->Zo:I

    iput-object v4, p0, Lcom/google/android/gms/internal/ads/BA;->gn:Lcom/google/android/gms/internal/ads/Zz;

    iput-object v4, p0, Lcom/google/android/gms/internal/ads/BA;->u7:Lcom/google/android/gms/internal/ads/JA;

    return-void
.end method

.method public final j6(Lcom/google/android/gms/internal/ads/IA;Lcom/google/android/gms/internal/ads/vA;)V
    .registers 5

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/CD;->j6(Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, p1

    check-cast v0, Lcom/google/android/gms/internal/ads/IA;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/BA;->FH:Lcom/google/android/gms/internal/ads/IA;

    invoke-static {p2}, Lcom/google/android/gms/internal/ads/CD;->j6(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p2, Lcom/google/android/gms/internal/ads/vA;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/BA;->Hw:Lcom/google/android/gms/internal/ads/vA;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/BA;->DW:Lcom/google/android/gms/internal/ads/Yz;

    iget-object v1, p1, Lcom/google/android/gms/internal/ads/IA;->Zo:Lcom/google/android/gms/internal/ads/zzfs;

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/Yz;->j6(Lcom/google/android/gms/internal/ads/zzfs;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/BA;->j6()V

    return-void
.end method
