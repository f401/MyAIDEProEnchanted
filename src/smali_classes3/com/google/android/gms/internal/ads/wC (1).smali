.class public final Lcom/google/android/gms/internal/ads/wC;
.super Ljava/lang/Object;


# instance fields
.field private final DW:J

.field private final FH:J

.field public final Hw:Z

.field public final VH:J

.field public final Zo:J

.field public final gn:Lcom/google/android/gms/internal/ads/PC;

.field public final j6:J

.field private final tp:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/ads/AC;",
            ">;"
        }
    .end annotation
.end field

.field public final u7:Landroid/net/Uri;

.field public final v5:J


# direct methods
.method public constructor <init>(JJJZJJJLcom/google/android/gms/internal/ads/PC;Landroid/net/Uri;Ljava/util/List;)V
    .registers 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJJZJJJ",
            "Lcom/google/android/gms/internal/ads/PC;",
            "Landroid/net/Uri;",
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/ads/AC;",
            ">;)V"
        }
    .end annotation

    move-object v0, p0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-wide v1, p1

    iput-wide v1, v0, Lcom/google/android/gms/internal/ads/wC;->j6:J

    move-wide v1, p3

    iput-wide v1, v0, Lcom/google/android/gms/internal/ads/wC;->DW:J

    move-wide v1, p5

    iput-wide v1, v0, Lcom/google/android/gms/internal/ads/wC;->FH:J

    move v1, p7

    iput-boolean v1, v0, Lcom/google/android/gms/internal/ads/wC;->Hw:Z

    move-wide v1, p8

    iput-wide v1, v0, Lcom/google/android/gms/internal/ads/wC;->v5:J

    move-wide v1, p10

    iput-wide v1, v0, Lcom/google/android/gms/internal/ads/wC;->Zo:J

    move-wide v1, p12

    iput-wide v1, v0, Lcom/google/android/gms/internal/ads/wC;->VH:J

    move-object/from16 v1, p14

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/wC;->gn:Lcom/google/android/gms/internal/ads/PC;

    move-object/from16 v1, p15

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/wC;->u7:Landroid/net/Uri;

    move-object/from16 v1, p16

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/wC;->tp:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final DW(I)J
    .registers 7

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/wC;->tp:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ne p1, v0, :cond_16

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/wC;->DW:J

    const-wide v2, -0x7fffffffffffffffL  # -4.9E-324

    cmp-long v4, v0, v2

    if-nez v4, :cond_22

    goto :goto_2e

    :cond_16
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/wC;->tp:Ljava/util/List;

    add-int/lit8 v1, p1, 0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/AC;

    iget-wide v0, v0, Lcom/google/android/gms/internal/ads/AC;->DW:J

    :cond_22
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/wC;->tp:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/AC;

    iget-wide v2, p1, Lcom/google/android/gms/internal/ads/AC;->DW:J

    sub-long v2, v0, v2

    :goto_2e
    invoke-static {v2, v3}, Lcom/google/android/gms/internal/ads/uy;->DW(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public final j6()I
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/wC;->tp:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final j6(I)Lcom/google/android/gms/internal/ads/AC;
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/wC;->tp:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/AC;

    return-object p1
.end method
