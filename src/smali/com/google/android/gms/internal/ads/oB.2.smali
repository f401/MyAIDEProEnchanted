.class final Lcom/google/android/gms/internal/ads/oB;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/ads/Rz;
.implements Lcom/google/android/gms/internal/ads/yB;
.implements Lcom/google/android/gms/internal/ads/GB;
.implements Lcom/google/android/gms/internal/ads/uD;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/Rz;",
        "Lcom/google/android/gms/internal/ads/yB;",
        "Lcom/google/android/gms/internal/ads/GB;",
        "Lcom/google/android/gms/internal/ads/uD",
        "<",
        "Lcom/google/android/gms/internal/ads/tB;",
        ">;"
    }
.end annotation


# instance fields
.field private BT:Z

.field private final DW:Lcom/google/android/gms/internal/ads/iD;

.field private final EQ:Lcom/google/android/gms/internal/ads/uB;

.field private final FH:I

.field private final Hw:Landroid/os/Handler;

.field private final J0:Ljava/lang/Runnable;

.field private final J8:Ljava/lang/Runnable;

.field private KD:Z

.field private Mr:Z

.field private P8:J

.field private final QX:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/google/android/gms/internal/ads/EB;",
            ">;"
        }
    .end annotation
.end field

.field private SI:Z

.field private U2:Z

.field private final VH:Lcom/google/android/gms/internal/ads/gD;

.field private final Ws:Landroid/os/Handler;

.field private XL:Lcom/google/android/gms/internal/ads/zB;

.field private final Zo:Lcom/google/android/gms/internal/ads/BB;

.field private a8:Z

.field private aM:Lcom/google/android/gms/internal/ads/Wz;

.field private ei:J

.field private er:J

.field private gW:[Z

.field private final gn:Ljava/lang/String;

.field private j3:Z

.field private final j6:Landroid/net/Uri;

.field private lg:I

.field private nw:I

.field private rN:Lcom/google/android/gms/internal/ads/NB;

.field private final tp:Lcom/google/android/gms/internal/ads/tD;

.field private final u7:J

.field private final v5:Lcom/google/android/gms/internal/ads/xB;

.field private vy:J

.field private final we:Lcom/google/android/gms/internal/ads/ED;

.field private yS:[Z


# direct methods
.method public constructor <init>(Landroid/net/Uri;Lcom/google/android/gms/internal/ads/iD;[Lcom/google/android/gms/internal/ads/Oz;ILandroid/os/Handler;Lcom/google/android/gms/internal/ads/xB;Lcom/google/android/gms/internal/ads/BB;Lcom/google/android/gms/internal/ads/gD;Ljava/lang/String;I)V
    .registers 13

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/oB;->j6:Landroid/net/Uri;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/oB;->DW:Lcom/google/android/gms/internal/ads/iD;

    iput p4, p0, Lcom/google/android/gms/internal/ads/oB;->FH:I

    iput-object p5, p0, Lcom/google/android/gms/internal/ads/oB;->Hw:Landroid/os/Handler;

    iput-object p6, p0, Lcom/google/android/gms/internal/ads/oB;->v5:Lcom/google/android/gms/internal/ads/xB;

    iput-object p7, p0, Lcom/google/android/gms/internal/ads/oB;->Zo:Lcom/google/android/gms/internal/ads/BB;

    iput-object p8, p0, Lcom/google/android/gms/internal/ads/oB;->VH:Lcom/google/android/gms/internal/ads/gD;

    iput-object p9, p0, Lcom/google/android/gms/internal/ads/oB;->gn:Ljava/lang/String;

    int-to-long v0, p10

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/oB;->u7:J

    new-instance v0, Lcom/google/android/gms/internal/ads/tD;

    const-string v1, "Loader:ExtractorMediaPeriod"

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/tD;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/oB;->tp:Lcom/google/android/gms/internal/ads/tD;

    new-instance v0, Lcom/google/android/gms/internal/ads/uB;

    invoke-direct {v0, p3, p0}, Lcom/google/android/gms/internal/ads/uB;-><init>([Lcom/google/android/gms/internal/ads/Oz;Lcom/google/android/gms/internal/ads/Rz;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/oB;->EQ:Lcom/google/android/gms/internal/ads/uB;

    new-instance v0, Lcom/google/android/gms/internal/ads/ED;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/ED;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/oB;->we:Lcom/google/android/gms/internal/ads/ED;

    new-instance v0, Lcom/google/android/gms/internal/ads/pB;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/pB;-><init>(Lcom/google/android/gms/internal/ads/oB;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/oB;->J0:Ljava/lang/Runnable;

    new-instance v0, Lcom/google/android/gms/internal/ads/qB;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/qB;-><init>(Lcom/google/android/gms/internal/ads/oB;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/oB;->J8:Ljava/lang/Runnable;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/oB;->Ws:Landroid/os/Handler;

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/oB;->ei:J

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/oB;->QX:Landroid/util/SparseArray;

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/oB;->vy:J

    return-void
.end method

.method static synthetic DW(Lcom/google/android/gms/internal/ads/oB;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/oB;->KD:Z

    return v0
.end method

.method private final EQ()I
    .registers 5

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/oB;->QX:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v3

    move v1, v0

    move v2, v0

    :goto_0
    if-ge v1, v3, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/oB;->QX:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/EB;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/EB;->FH()I

    move-result v0

    add-int/2addr v2, v0

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    return v2
.end method

.method static synthetic FH(Lcom/google/android/gms/internal/ads/oB;)Lcom/google/android/gms/internal/ads/zB;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/oB;->XL:Lcom/google/android/gms/internal/ads/zB;

    return-object v0
.end method

.method static synthetic Hw(Lcom/google/android/gms/internal/ads/oB;)Landroid/util/SparseArray;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/oB;->QX:Landroid/util/SparseArray;

    return-object v0
.end method

.method private final J0()Z
    .registers 5

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/oB;->ei:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic VH(Lcom/google/android/gms/internal/ads/oB;)J
    .registers 3

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/oB;->u7:J

    return-wide v0
.end method

.method static synthetic Zo(Lcom/google/android/gms/internal/ads/oB;)Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/oB;->gn:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic gn(Lcom/google/android/gms/internal/ads/oB;)Ljava/lang/Runnable;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/oB;->J8:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic j6(Lcom/google/android/gms/internal/ads/oB;)V
    .registers 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/oB;->tp()V

    return-void
.end method

.method private final j6(Lcom/google/android/gms/internal/ads/tB;)V
    .registers 6

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/oB;->vy:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/tB;->j6(Lcom/google/android/gms/internal/ads/tB;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/oB;->vy:J

    :cond_0
    return-void
.end method

.method private final tp()V
    .registers 9

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/oB;->KD:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/oB;->Mr:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/oB;->aM:Lcom/google/android/gms/internal/ads/Wz;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/oB;->j3:Z

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/oB;->QX:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v4

    move v3, v2

    :goto_1
    if-ge v3, v4, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/oB;->QX:Landroid/util/SparseArray;

    invoke-virtual {v0, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/EB;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/EB;->Zo()Lcom/google/android/gms/internal/ads/zzfs;

    move-result-object v0

    if-eqz v0, :cond_0

    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/oB;->we:Lcom/google/android/gms/internal/ads/ED;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/ED;->FH()Z

    new-array v5, v4, [Lcom/google/android/gms/internal/ads/LB;

    new-array v0, v4, [Z

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/oB;->gW:[Z

    new-array v0, v4, [Z

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/oB;->yS:[Z

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/oB;->aM:Lcom/google/android/gms/internal/ads/Wz;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/Wz;->FH()J

    move-result-wide v6

    iput-wide v6, p0, Lcom/google/android/gms/internal/ads/oB;->er:J

    move v3, v2

    :goto_2
    if-ge v3, v4, :cond_4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/oB;->QX:Landroid/util/SparseArray;

    invoke-virtual {v0, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/EB;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/EB;->Zo()Lcom/google/android/gms/internal/ads/zzfs;

    move-result-object v0

    new-instance v6, Lcom/google/android/gms/internal/ads/LB;

    new-array v7, v1, [Lcom/google/android/gms/internal/ads/zzfs;

    aput-object v0, v7, v2

    invoke-direct {v6, v7}, Lcom/google/android/gms/internal/ads/LB;-><init>([Lcom/google/android/gms/internal/ads/zzfs;)V

    aput-object v6, v5, v3

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzfs;->Zo:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/HD;->DW(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_5

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/HD;->j6(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    move v0, v1

    :goto_3
    iget-object v6, p0, Lcom/google/android/gms/internal/ads/oB;->gW:[Z

    aput-boolean v0, v6, v3

    iget-boolean v6, p0, Lcom/google/android/gms/internal/ads/oB;->BT:Z

    or-int/2addr v0, v6

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/oB;->BT:Z

    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_2

    :cond_3
    move v0, v2

    goto :goto_3

    :cond_4
    new-instance v0, Lcom/google/android/gms/internal/ads/NB;

    invoke-direct {v0, v5}, Lcom/google/android/gms/internal/ads/NB;-><init>([Lcom/google/android/gms/internal/ads/LB;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/oB;->rN:Lcom/google/android/gms/internal/ads/NB;

    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/oB;->Mr:Z

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/oB;->Zo:Lcom/google/android/gms/internal/ads/BB;

    new-instance v1, Lcom/google/android/gms/internal/ads/KB;

    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/oB;->er:J

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/oB;->aM:Lcom/google/android/gms/internal/ads/Wz;

    invoke-interface {v4}, Lcom/google/android/gms/internal/ads/Wz;->DW()Z

    move-result v4

    invoke-direct {v1, v2, v3, v4}, Lcom/google/android/gms/internal/ads/KB;-><init>(JZ)V

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/internal/ads/BB;->j6(Lcom/google/android/gms/internal/ads/Sy;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/oB;->XL:Lcom/google/android/gms/internal/ads/zB;

    invoke-interface {v0, p0}, Lcom/google/android/gms/internal/ads/zB;->j6(Lcom/google/android/gms/internal/ads/yB;)V

    goto/16 :goto_0

    :cond_5
    move v0, v1

    goto :goto_3
.end method

.method static synthetic u7(Lcom/google/android/gms/internal/ads/oB;)Landroid/os/Handler;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/oB;->Ws:Landroid/os/Handler;

    return-object v0
.end method

.method private final u7()V
    .registers 9

    const-wide v6, -0x7fffffffffffffffL    # -4.9E-324

    new-instance v0, Lcom/google/android/gms/internal/ads/tB;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/oB;->j6:Landroid/net/Uri;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/oB;->DW:Lcom/google/android/gms/internal/ads/iD;

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/oB;->EQ:Lcom/google/android/gms/internal/ads/uB;

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/oB;->we:Lcom/google/android/gms/internal/ads/ED;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/tB;-><init>(Lcom/google/android/gms/internal/ads/oB;Landroid/net/Uri;Lcom/google/android/gms/internal/ads/iD;Lcom/google/android/gms/internal/ads/uB;Lcom/google/android/gms/internal/ads/ED;)V

    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/oB;->Mr:Z

    if-eqz v1, :cond_1

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/oB;->J0()Z

    move-result v1

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/CD;->DW(Z)V

    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/oB;->er:J

    cmp-long v1, v2, v6

    if-eqz v1, :cond_0

    iget-wide v4, p0, Lcom/google/android/gms/internal/ads/oB;->ei:J

    cmp-long v1, v4, v2

    if-ltz v1, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/oB;->SI:Z

    iput-wide v6, p0, Lcom/google/android/gms/internal/ads/oB;->ei:J

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/oB;->aM:Lcom/google/android/gms/internal/ads/Wz;

    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/oB;->ei:J

    invoke-interface {v1, v2, v3}, Lcom/google/android/gms/internal/ads/Wz;->j6(J)J

    move-result-wide v2

    iget-wide v4, p0, Lcom/google/android/gms/internal/ads/oB;->ei:J

    invoke-virtual {v0, v2, v3, v4, v5}, Lcom/google/android/gms/internal/ads/tB;->j6(JJ)V

    iput-wide v6, p0, Lcom/google/android/gms/internal/ads/oB;->ei:J

    :cond_1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/oB;->EQ()I

    move-result v1

    iput v1, p0, Lcom/google/android/gms/internal/ads/oB;->nw:I

    iget v1, p0, Lcom/google/android/gms/internal/ads/oB;->FH:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_3

    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/oB;->Mr:Z

    if-eqz v1, :cond_2

    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/oB;->vy:J

    const-wide/16 v4, -0x1

    cmp-long v1, v2, v4

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/oB;->aM:Lcom/google/android/gms/internal/ads/Wz;

    if-eqz v1, :cond_4

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/Wz;->FH()J

    move-result-wide v2

    cmp-long v1, v2, v6

    if-eqz v1, :cond_4

    :cond_2
    const/4 v1, 0x3

    :cond_3
    :goto_1
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/oB;->tp:Lcom/google/android/gms/internal/ads/tD;

    invoke-virtual {v2, v0, p0, v1}, Lcom/google/android/gms/internal/ads/tD;->j6(Lcom/google/android/gms/internal/ads/wD;Lcom/google/android/gms/internal/ads/uD;I)J

    goto :goto_0

    :cond_4
    const/4 v1, 0x6

    goto :goto_1
.end method

.method static synthetic v5(Lcom/google/android/gms/internal/ads/oB;)Lcom/google/android/gms/internal/ads/xB;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/oB;->v5:Lcom/google/android/gms/internal/ads/xB;

    return-object v0
.end method

.method private final we()J
    .registers 7

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/oB;->QX:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v5

    const-wide/high16 v0, -0x8000000000000000L

    const/4 v4, 0x0

    move-wide v2, v0

    :goto_0
    if-ge v4, v5, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/oB;->QX:Landroid/util/SparseArray;

    invoke-virtual {v0, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/EB;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/EB;->DW()J

    move-result-wide v0

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    add-int/lit8 v4, v4, 0x1

    move-wide v2, v0

    goto :goto_0

    :cond_0
    return-wide v2
.end method


# virtual methods
.method public final DW()J
    .registers 3

    iget v0, p0, Lcom/google/android/gms/internal/ads/oB;->lg:I

    if-nez v0, :cond_0

    const-wide/high16 v0, -0x8000000000000000L

    :goto_0
    return-wide v0

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/oB;->VH()J

    move-result-wide v0

    goto :goto_0
.end method

.method public final DW(J)Z
    .registers 5

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/oB;->SI:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/oB;->Mr:Z

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/google/android/gms/internal/ads/oB;->lg:I

    if-nez v0, :cond_2

    :cond_0
    const/4 v0, 0x0

    :cond_1
    :goto_0
    return v0

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/oB;->we:Lcom/google/android/gms/internal/ads/ED;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/ED;->DW()Z

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/oB;->tp:Lcom/google/android/gms/internal/ads/tD;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/tD;->DW()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/oB;->u7()V

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final FH()V
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/oB;->EQ:Lcom/google/android/gms/internal/ads/uB;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/oB;->tp:Lcom/google/android/gms/internal/ads/tD;

    new-instance v2, Lcom/google/android/gms/internal/ads/rB;

    invoke-direct {v2, p0, v0}, Lcom/google/android/gms/internal/ads/rB;-><init>(Lcom/google/android/gms/internal/ads/oB;Lcom/google/android/gms/internal/ads/uB;)V

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/tD;->j6(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/oB;->Ws:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/oB;->KD:Z

    return-void
.end method

.method public final FH(J)V
    .registers 3

    return-void
.end method

.method public final Hw()Lcom/google/android/gms/internal/ads/NB;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/oB;->rN:Lcom/google/android/gms/internal/ads/NB;

    return-object v0
.end method

.method public final VH()J
    .registers 9

    const-wide/high16 v4, -0x8000000000000000L

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/oB;->SI:Z

    if-eqz v0, :cond_1

    move-wide v0, v4

    :cond_0
    :goto_0
    return-wide v0

    :cond_1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/oB;->J0()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/oB;->ei:J

    goto :goto_0

    :cond_2
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/oB;->BT:Z

    if-eqz v0, :cond_3

    const-wide v2, 0x7fffffffffffffffL

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/oB;->QX:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v7

    const/4 v0, 0x0

    move v6, v0

    :goto_1
    if-ge v6, v7, :cond_5

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/oB;->gW:[Z

    aget-boolean v0, v0, v6

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/oB;->QX:Landroid/util/SparseArray;

    invoke-virtual {v0, v6}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/EB;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/EB;->DW()J

    move-result-wide v0

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    :goto_2
    add-int/lit8 v6, v6, 0x1

    move-wide v2, v0

    goto :goto_1

    :cond_3
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/oB;->we()J

    move-result-wide v0

    :goto_3
    cmp-long v2, v0, v4

    if-nez v2, :cond_0

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/oB;->P8:J

    goto :goto_0

    :cond_4
    move-wide v0, v2

    goto :goto_2

    :cond_5
    move-wide v0, v2

    goto :goto_3
.end method

.method public final Zo()V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/oB;->tp:Lcom/google/android/gms/internal/ads/tD;

    const/high16 v1, -0x80000000

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/tD;->j6(I)V

    return-void
.end method

.method final gn()V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/oB;->tp:Lcom/google/android/gms/internal/ads/tD;

    const/high16 v1, -0x80000000

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/tD;->j6(I)V

    return-void
.end method

.method final j6(ILcom/google/android/gms/internal/ads/Jy;Lcom/google/android/gms/internal/ads/Ez;Z)I
    .registers 13

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/oB;->a8:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/oB;->J0()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, -0x3

    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/oB;->QX:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/EB;

    iget-boolean v5, p0, Lcom/google/android/gms/internal/ads/oB;->SI:Z

    iget-wide v6, p0, Lcom/google/android/gms/internal/ads/oB;->P8:J

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    invoke-virtual/range {v1 .. v7}, Lcom/google/android/gms/internal/ads/EB;->j6(Lcom/google/android/gms/internal/ads/Jy;Lcom/google/android/gms/internal/ads/Ez;ZZJ)I

    move-result v0

    goto :goto_0
.end method

.method public final synthetic j6(Lcom/google/android/gms/internal/ads/wD;JJLjava/io/IOException;)I
    .registers 13

    check-cast p1, Lcom/google/android/gms/internal/ads/tB;

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/oB;->j6(Lcom/google/android/gms/internal/ads/tB;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/oB;->Hw:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/oB;->v5:Lcom/google/android/gms/internal/ads/xB;

    if-eqz v1, :cond_0

    new-instance v1, Lcom/google/android/gms/internal/ads/sB;

    invoke-direct {v1, p0, p6}, Lcom/google/android/gms/internal/ads/sB;-><init>(Lcom/google/android/gms/internal/ads/oB;Ljava/io/IOException;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    instance-of v0, p6, Lcom/google/android/gms/internal/ads/OB;

    if-eqz v0, :cond_1

    const/4 v0, 0x3

    :goto_0
    return v0

    :cond_1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/oB;->EQ()I

    move-result v0

    iget v1, p0, Lcom/google/android/gms/internal/ads/oB;->nw:I

    if-le v0, v1, :cond_4

    const/4 v0, 0x1

    move v1, v0

    :goto_1
    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/oB;->vy:J

    const-wide/16 v4, -0x1

    cmp-long v0, v2, v4

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/oB;->aM:Lcom/google/android/gms/internal/ads/Wz;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/Wz;->FH()J

    move-result-wide v2

    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v2, v4

    if-nez v0, :cond_7

    :cond_2
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/google/android/gms/internal/ads/oB;->P8:J

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/oB;->Mr:Z

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/oB;->a8:Z

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/oB;->QX:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v4

    const/4 v0, 0x0

    move v3, v0

    :goto_2
    if-ge v3, v4, :cond_6

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/oB;->QX:Landroid/util/SparseArray;

    invoke-virtual {v0, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/EB;

    iget-boolean v2, p0, Lcom/google/android/gms/internal/ads/oB;->Mr:Z

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/oB;->yS:[Z

    aget-boolean v2, v2, v3

    if-eqz v2, :cond_5

    :cond_3
    const/4 v2, 0x1

    :goto_3
    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ads/EB;->j6(Z)V

    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_2

    :cond_4
    const/4 v0, 0x0

    move v1, v0

    goto :goto_1

    :cond_5
    const/4 v2, 0x0

    goto :goto_3

    :cond_6
    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x0

    invoke-virtual {p1, v2, v3, v4, v5}, Lcom/google/android/gms/internal/ads/tB;->j6(JJ)V

    :cond_7
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/oB;->EQ()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/ads/oB;->nw:I

    if-eqz v1, :cond_8

    const/4 v0, 0x1

    goto :goto_0

    :cond_8
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final j6(J)J
    .registers 8

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/oB;->aM:Lcom/google/android/gms/internal/ads/Wz;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/Wz;->DW()Z

    move-result v0

    if-eqz v0, :cond_1

    :goto_0
    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/oB;->P8:J

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/oB;->QX:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v3

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/oB;->J0()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    move v1, v2

    :goto_1
    if-eqz v0, :cond_2

    if-ge v1, v3, :cond_2

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/oB;->yS:[Z

    aget-boolean v4, v4, v1

    if-eqz v4, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/oB;->QX:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/EB;

    invoke-virtual {v0, p1, p2, v2}, Lcom/google/android/gms/internal/ads/EB;->j6(JZ)Z

    move-result v0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    const-wide/16 p1, 0x0

    goto :goto_0

    :cond_2
    if-nez v0, :cond_3

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/oB;->ei:J

    iput-boolean v2, p0, Lcom/google/android/gms/internal/ads/oB;->SI:Z

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/oB;->tp:Lcom/google/android/gms/internal/ads/tD;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/tD;->DW()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/oB;->tp:Lcom/google/android/gms/internal/ads/tD;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/tD;->FH()V

    :cond_3
    iput-boolean v2, p0, Lcom/google/android/gms/internal/ads/oB;->a8:Z

    return-wide p1

    :cond_4
    move v1, v2

    :goto_2
    if-ge v1, v3, :cond_3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/oB;->QX:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/EB;

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/oB;->yS:[Z

    aget-boolean v4, v4, v1

    invoke-virtual {v0, v4}, Lcom/google/android/gms/internal/ads/EB;->j6(Z)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2
.end method

.method public final j6([Lcom/google/android/gms/internal/ads/_C;[Z[Lcom/google/android/gms/internal/ads/HB;[ZJ)J
    .registers 14

    const/4 v3, 0x1

    const/4 v2, 0x0

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/oB;->Mr:Z

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/CD;->DW(Z)V

    move v1, v2

    :goto_0
    array-length v0, p1

    if-ge v1, v0, :cond_2

    aget-object v0, p3, v1

    if-eqz v0, :cond_1

    aget-object v0, p1, v1

    if-eqz v0, :cond_0

    aget-boolean v0, p2, v1

    if-nez v0, :cond_1

    :cond_0
    aget-object v0, p3, v1

    check-cast v0, Lcom/google/android/gms/internal/ads/vB;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/vB;->j6(Lcom/google/android/gms/internal/ads/vB;)I

    move-result v0

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/oB;->yS:[Z

    aget-boolean v4, v4, v0

    invoke-static {v4}, Lcom/google/android/gms/internal/ads/CD;->DW(Z)V

    iget v4, p0, Lcom/google/android/gms/internal/ads/oB;->lg:I

    add-int/lit8 v4, v4, -0x1

    iput v4, p0, Lcom/google/android/gms/internal/ads/oB;->lg:I

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/oB;->yS:[Z

    aput-boolean v2, v4, v0

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/oB;->QX:Landroid/util/SparseArray;

    invoke-virtual {v4, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/EB;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/EB;->j6()V

    const/4 v0, 0x0

    aput-object v0, p3, v1

    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_2
    move v4, v2

    move v1, v2

    :goto_1
    array-length v0, p1

    if-ge v4, v0, :cond_5

    aget-object v0, p3, v4

    if-nez v0, :cond_c

    aget-object v0, p1, v4

    if-eqz v0, :cond_c

    aget-object v1, p1, v4

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/_C;->length()I

    move-result v0

    if-ne v0, v3, :cond_3

    move v0, v3

    :goto_2
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/CD;->DW(Z)V

    invoke-interface {v1, v2}, Lcom/google/android/gms/internal/ads/_C;->DW(I)I

    move-result v0

    if-nez v0, :cond_4

    move v0, v3

    :goto_3
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/CD;->DW(Z)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/oB;->rN:Lcom/google/android/gms/internal/ads/NB;

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/_C;->FH()Lcom/google/android/gms/internal/ads/LB;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/NB;->j6(Lcom/google/android/gms/internal/ads/LB;)I

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/oB;->yS:[Z

    aget-boolean v1, v1, v0

    xor-int/lit8 v1, v1, 0x1

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/CD;->DW(Z)V

    iget v1, p0, Lcom/google/android/gms/internal/ads/oB;->lg:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/android/gms/internal/ads/oB;->lg:I

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/oB;->yS:[Z

    aput-boolean v3, v1, v0

    new-instance v1, Lcom/google/android/gms/internal/ads/vB;

    invoke-direct {v1, p0, v0}, Lcom/google/android/gms/internal/ads/vB;-><init>(Lcom/google/android/gms/internal/ads/oB;I)V

    aput-object v1, p3, v4

    aput-boolean v3, p4, v4

    move v0, v3

    :goto_4
    add-int/lit8 v4, v4, 0x1

    move v1, v0

    goto :goto_1

    :cond_3
    move v0, v2

    goto :goto_2

    :cond_4
    move v0, v2

    goto :goto_3

    :cond_5
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/oB;->U2:Z

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/oB;->QX:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v5

    move v4, v2

    :goto_5
    if-ge v4, v5, :cond_7

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/oB;->yS:[Z

    aget-boolean v0, v0, v4

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/oB;->QX:Landroid/util/SparseArray;

    invoke-virtual {v0, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/EB;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/EB;->j6()V

    :cond_6
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_5

    :cond_7
    iget v0, p0, Lcom/google/android/gms/internal/ads/oB;->lg:I

    if-nez v0, :cond_9

    iput-boolean v2, p0, Lcom/google/android/gms/internal/ads/oB;->a8:Z

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/oB;->tp:Lcom/google/android/gms/internal/ads/tD;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/tD;->DW()Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/oB;->tp:Lcom/google/android/gms/internal/ads/tD;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/tD;->FH()V

    :cond_8
    iput-boolean v3, p0, Lcom/google/android/gms/internal/ads/oB;->U2:Z

    return-wide p5

    :cond_9
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/oB;->U2:Z

    if-eqz v0, :cond_b

    if-eqz v1, :cond_8

    :goto_6
    invoke-virtual {p0, p5, p6}, Lcom/google/android/gms/internal/ads/oB;->j6(J)J

    move-result-wide p5

    :goto_7
    array-length v0, p3

    if-ge v2, v0, :cond_8

    aget-object v0, p3, v2

    if-eqz v0, :cond_a

    aput-boolean v3, p4, v2

    :cond_a
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    :cond_b
    const-wide/16 v0, 0x0

    cmp-long v0, p5, v0

    if-eqz v0, :cond_8

    goto :goto_6

    :cond_c
    move v0, v1

    goto :goto_4
.end method

.method public final j6(II)Lcom/google/android/gms/internal/ads/Yz;
    .registers 5

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/oB;->QX:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/EB;

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/android/gms/internal/ads/EB;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/oB;->VH:Lcom/google/android/gms/internal/ads/gD;

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/EB;-><init>(Lcom/google/android/gms/internal/ads/gD;)V

    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/ads/EB;->j6(Lcom/google/android/gms/internal/ads/GB;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/oB;->QX:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_0
    return-object v0
.end method

.method public final j6()V
    .registers 3

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/oB;->j3:Z

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/oB;->Ws:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/oB;->J0:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method final j6(IJ)V
    .registers 8

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/oB;->QX:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/EB;

    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/oB;->SI:Z

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/EB;->DW()J

    move-result-wide v2

    cmp-long v1, p2, v2

    if-lez v1, :cond_0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/EB;->VH()V

    :goto_0
    return-void

    :cond_0
    const/4 v1, 0x1

    invoke-virtual {v0, p2, p3, v1}, Lcom/google/android/gms/internal/ads/EB;->j6(JZ)Z

    goto :goto_0
.end method

.method public final j6(Lcom/google/android/gms/internal/ads/Wz;)V
    .registers 4

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/oB;->aM:Lcom/google/android/gms/internal/ads/Wz;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/oB;->Ws:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/oB;->J0:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final synthetic j6(Lcom/google/android/gms/internal/ads/wD;JJ)V
    .registers 11

    check-cast p1, Lcom/google/android/gms/internal/ads/tB;

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/oB;->j6(Lcom/google/android/gms/internal/ads/tB;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/oB;->SI:Z

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/oB;->er:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/oB;->we()J

    move-result-wide v0

    const-wide/high16 v2, -0x8000000000000000L

    cmp-long v2, v0, v2

    if-nez v2, :cond_1

    const-wide/16 v0, 0x0

    :goto_0
    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/oB;->er:J

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/oB;->Zo:Lcom/google/android/gms/internal/ads/BB;

    new-instance v1, Lcom/google/android/gms/internal/ads/KB;

    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/oB;->er:J

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/oB;->aM:Lcom/google/android/gms/internal/ads/Wz;

    invoke-interface {v4}, Lcom/google/android/gms/internal/ads/Wz;->DW()Z

    move-result v4

    invoke-direct {v1, v2, v3, v4}, Lcom/google/android/gms/internal/ads/KB;-><init>(JZ)V

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/internal/ads/BB;->j6(Lcom/google/android/gms/internal/ads/Sy;Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/oB;->XL:Lcom/google/android/gms/internal/ads/zB;

    invoke-interface {v0, p0}, Lcom/google/android/gms/internal/ads/JB;->j6(Lcom/google/android/gms/internal/ads/IB;)V

    return-void

    :cond_1
    const-wide/16 v2, 0x2710

    add-long/2addr v0, v2

    goto :goto_0
.end method

.method public final synthetic j6(Lcom/google/android/gms/internal/ads/wD;JJZ)V
    .registers 11

    check-cast p1, Lcom/google/android/gms/internal/ads/tB;

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/oB;->j6(Lcom/google/android/gms/internal/ads/tB;)V

    if-nez p6, :cond_1

    iget v0, p0, Lcom/google/android/gms/internal/ads/oB;->lg:I

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/oB;->QX:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/oB;->QX:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/EB;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/oB;->yS:[Z

    aget-boolean v3, v3, v1

    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/ads/EB;->j6(Z)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/oB;->XL:Lcom/google/android/gms/internal/ads/zB;

    invoke-interface {v0, p0}, Lcom/google/android/gms/internal/ads/JB;->j6(Lcom/google/android/gms/internal/ads/IB;)V

    :cond_1
    return-void
.end method

.method public final j6(Lcom/google/android/gms/internal/ads/zB;J)V
    .registers 5

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/oB;->XL:Lcom/google/android/gms/internal/ads/zB;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/oB;->we:Lcom/google/android/gms/internal/ads/ED;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/ED;->DW()Z

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/oB;->u7()V

    return-void
.end method

.method public final j6(Lcom/google/android/gms/internal/ads/zzfs;)V
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/oB;->Ws:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/oB;->J0:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method final j6(I)Z
    .registers 3

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/oB;->SI:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/oB;->J0()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/oB;->QX:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/EB;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/EB;->v5()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final v5()J
    .registers 3

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/oB;->a8:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/oB;->a8:Z

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/oB;->P8:J

    :goto_0
    return-wide v0

    :cond_0
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    goto :goto_0
.end method
