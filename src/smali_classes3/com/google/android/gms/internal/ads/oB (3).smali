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
        "Lcom/google/android/gms/internal/ads/uD<",
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
            "Landroid/util/SparseArray<",
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
    .registers 11

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/oB;->j6:Landroid/net/Uri;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/oB;->DW:Lcom/google/android/gms/internal/ads/iD;

    iput p4, p0, Lcom/google/android/gms/internal/ads/oB;->FH:I

    iput-object p5, p0, Lcom/google/android/gms/internal/ads/oB;->Hw:Landroid/os/Handler;

    iput-object p6, p0, Lcom/google/android/gms/internal/ads/oB;->v5:Lcom/google/android/gms/internal/ads/xB;

    iput-object p7, p0, Lcom/google/android/gms/internal/ads/oB;->Zo:Lcom/google/android/gms/internal/ads/BB;

    iput-object p8, p0, Lcom/google/android/gms/internal/ads/oB;->VH:Lcom/google/android/gms/internal/ads/gD;

    iput-object p9, p0, Lcom/google/android/gms/internal/ads/oB;->gn:Ljava/lang/String;

    int-to-long p1, p10

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/oB;->u7:J

    new-instance p1, Lcom/google/android/gms/internal/ads/tD;

    const-string p2, "Loader:ExtractorMediaPeriod"

    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/ads/tD;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/oB;->tp:Lcom/google/android/gms/internal/ads/tD;

    new-instance p1, Lcom/google/android/gms/internal/ads/uB;

    invoke-direct {p1, p3, p0}, Lcom/google/android/gms/internal/ads/uB;-><init>([Lcom/google/android/gms/internal/ads/Oz;Lcom/google/android/gms/internal/ads/Rz;)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/oB;->EQ:Lcom/google/android/gms/internal/ads/uB;

    new-instance p1, Lcom/google/android/gms/internal/ads/ED;

    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/ED;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/oB;->we:Lcom/google/android/gms/internal/ads/ED;

    new-instance p1, Lcom/google/android/gms/internal/ads/pB;

    invoke-direct {p1, p0}, Lcom/google/android/gms/internal/ads/pB;-><init>(Lcom/google/android/gms/internal/ads/oB;)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/oB;->J0:Ljava/lang/Runnable;

    new-instance p1, Lcom/google/android/gms/internal/ads/qB;

    invoke-direct {p1, p0}, Lcom/google/android/gms/internal/ads/qB;-><init>(Lcom/google/android/gms/internal/ads/oB;)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/oB;->J8:Ljava/lang/Runnable;

    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/oB;->Ws:Landroid/os/Handler;

    const-wide p1, -0x7fffffffffffffffL  # -4.9E-324

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/oB;->ei:J

    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/oB;->QX:Landroid/util/SparseArray;

    const-wide/16 p1, -0x1

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/oB;->vy:J

    return-void
.end method

.method static synthetic DW(Lcom/google/android/gms/internal/ads/oB;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/google/android/gms/internal/ads/oB;->KD:Z

    return p0
.end method

.method private final EQ()I
    .registers 5

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/oB;->QX:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_8
    if-ge v1, v0, :cond_1a

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/oB;->QX:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/ads/EB;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/EB;->FH()I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    :cond_1a
    return v2
.end method

.method static synthetic FH(Lcom/google/android/gms/internal/ads/oB;)Lcom/google/android/gms/internal/ads/zB;
    .registers 1

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/oB;->XL:Lcom/google/android/gms/internal/ads/zB;

    return-object p0
.end method

.method static synthetic Hw(Lcom/google/android/gms/internal/ads/oB;)Landroid/util/SparseArray;
    .registers 1

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/oB;->QX:Landroid/util/SparseArray;

    return-object p0
.end method

.method private final J0()Z
    .registers 6

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/oB;->ei:J

    const-wide v2, -0x7fffffffffffffffL  # -4.9E-324

    cmp-long v4, v0, v2

    if-eqz v4, :cond_d

    const/4 v0, 0x1

    return v0

    :cond_d
    const/4 v0, 0x0

    return v0
.end method

.method static synthetic VH(Lcom/google/android/gms/internal/ads/oB;)J
    .registers 3

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/oB;->u7:J

    return-wide v0
.end method

.method static synthetic Zo(Lcom/google/android/gms/internal/ads/oB;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/oB;->gn:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic gn(Lcom/google/android/gms/internal/ads/oB;)Ljava/lang/Runnable;
    .registers 1

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/oB;->J8:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic j6(Lcom/google/android/gms/internal/ads/oB;)V
    .registers 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/oB;->tp()V

    return-void
.end method

.method private final j6(Lcom/google/android/gms/internal/ads/tB;)V
    .registers 7

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/oB;->vy:J

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-nez v4, :cond_e

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/tB;->j6(Lcom/google/android/gms/internal/ads/tB;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/oB;->vy:J

    :cond_e
    return-void
.end method

.method private final tp()V
    .registers 9

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/oB;->KD:Z

    if-nez v0, :cond_9d

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/oB;->Mr:Z

    if-nez v0, :cond_9d

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/oB;->aM:Lcom/google/android/gms/internal/ads/Wz;

    if-eqz v0, :cond_9d

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/oB;->j3:Z

    if-nez v0, :cond_12

    goto/16 :goto_9d

    :cond_12
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/oB;->QX:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_1a
    if-ge v2, v0, :cond_2e

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/oB;->QX:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/ads/EB;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/EB;->Zo()Lcom/google/android/gms/internal/ads/zzfs;

    move-result-object v3

    if-nez v3, :cond_2b

    return-void

    :cond_2b
    add-int/lit8 v2, v2, 0x1

    goto :goto_1a

    :cond_2e
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/oB;->we:Lcom/google/android/gms/internal/ads/ED;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/ED;->FH()Z

    new-array v2, v0, [Lcom/google/android/gms/internal/ads/LB;

    new-array v3, v0, [Z

    iput-object v3, p0, Lcom/google/android/gms/internal/ads/oB;->gW:[Z

    new-array v3, v0, [Z

    iput-object v3, p0, Lcom/google/android/gms/internal/ads/oB;->yS:[Z

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/oB;->aM:Lcom/google/android/gms/internal/ads/Wz;

    invoke-interface {v3}, Lcom/google/android/gms/internal/ads/Wz;->FH()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/google/android/gms/internal/ads/oB;->er:J

    const/4 v3, 0x0

    :goto_46
    const/4 v4, 0x1

    if-ge v3, v0, :cond_7c

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/oB;->QX:Landroid/util/SparseArray;

    invoke-virtual {v5, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/gms/internal/ads/EB;

    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/EB;->Zo()Lcom/google/android/gms/internal/ads/zzfs;

    move-result-object v5

    new-instance v6, Lcom/google/android/gms/internal/ads/LB;

    new-array v7, v4, [Lcom/google/android/gms/internal/ads/zzfs;

    aput-object v5, v7, v1

    invoke-direct {v6, v7}, Lcom/google/android/gms/internal/ads/LB;-><init>([Lcom/google/android/gms/internal/ads/zzfs;)V

    aput-object v6, v2, v3

    iget-object v5, v5, Lcom/google/android/gms/internal/ads/zzfs;->Zo:Ljava/lang/String;

    invoke-static {v5}, Lcom/google/android/gms/internal/ads/HD;->DW(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_70

    invoke-static {v5}, Lcom/google/android/gms/internal/ads/HD;->j6(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_6f

    goto :goto_70

    :cond_6f
    const/4 v4, 0x0

    :cond_70
    :goto_70
    iget-object v5, p0, Lcom/google/android/gms/internal/ads/oB;->gW:[Z

    aput-boolean v4, v5, v3

    iget-boolean v5, p0, Lcom/google/android/gms/internal/ads/oB;->BT:Z

    or-int/2addr v4, v5

    iput-boolean v4, p0, Lcom/google/android/gms/internal/ads/oB;->BT:Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_46

    :cond_7c
    new-instance v0, Lcom/google/android/gms/internal/ads/NB;

    invoke-direct {v0, v2}, Lcom/google/android/gms/internal/ads/NB;-><init>([Lcom/google/android/gms/internal/ads/LB;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/oB;->rN:Lcom/google/android/gms/internal/ads/NB;

    iput-boolean v4, p0, Lcom/google/android/gms/internal/ads/oB;->Mr:Z

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

    :cond_9d
    :goto_9d
    return-void
.end method

.method static synthetic u7(Lcom/google/android/gms/internal/ads/oB;)Landroid/os/Handler;
    .registers 1

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/oB;->Ws:Landroid/os/Handler;

    return-object p0
.end method

.method private final u7()V
    .registers 10

    new-instance v6, Lcom/google/android/gms/internal/ads/tB;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/oB;->j6:Landroid/net/Uri;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/oB;->DW:Lcom/google/android/gms/internal/ads/iD;

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/oB;->EQ:Lcom/google/android/gms/internal/ads/uB;

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/oB;->we:Lcom/google/android/gms/internal/ads/ED;

    move-object v0, v6

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/tB;-><init>(Lcom/google/android/gms/internal/ads/oB;Landroid/net/Uri;Lcom/google/android/gms/internal/ads/iD;Lcom/google/android/gms/internal/ads/uB;Lcom/google/android/gms/internal/ads/ED;)V

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/oB;->Mr:Z

    const-wide v1, -0x7fffffffffffffffL  # -4.9E-324

    if-eqz v0, :cond_40

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/oB;->J0()Z

    move-result v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/CD;->DW(Z)V

    iget-wide v3, p0, Lcom/google/android/gms/internal/ads/oB;->er:J

    cmp-long v0, v3, v1

    if-eqz v0, :cond_31

    iget-wide v7, p0, Lcom/google/android/gms/internal/ads/oB;->ei:J

    cmp-long v0, v7, v3

    if-ltz v0, :cond_31

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/oB;->SI:Z

    iput-wide v1, p0, Lcom/google/android/gms/internal/ads/oB;->ei:J

    return-void

    :cond_31
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/oB;->aM:Lcom/google/android/gms/internal/ads/Wz;

    iget-wide v3, p0, Lcom/google/android/gms/internal/ads/oB;->ei:J

    invoke-interface {v0, v3, v4}, Lcom/google/android/gms/internal/ads/Wz;->j6(J)J

    move-result-wide v3

    iget-wide v7, p0, Lcom/google/android/gms/internal/ads/oB;->ei:J

    invoke-virtual {v6, v3, v4, v7, v8}, Lcom/google/android/gms/internal/ads/tB;->j6(JJ)V

    iput-wide v1, p0, Lcom/google/android/gms/internal/ads/oB;->ei:J

    :cond_40
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/oB;->EQ()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/ads/oB;->nw:I

    iget v0, p0, Lcom/google/android/gms/internal/ads/oB;->FH:I

    const/4 v3, -0x1

    if-ne v0, v3, :cond_67

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/oB;->Mr:Z

    if-eqz v0, :cond_66

    iget-wide v3, p0, Lcom/google/android/gms/internal/ads/oB;->vy:J

    const-wide/16 v7, -0x1

    cmp-long v0, v3, v7

    if-nez v0, :cond_66

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/oB;->aM:Lcom/google/android/gms/internal/ads/Wz;

    if-eqz v0, :cond_64

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/Wz;->FH()J

    move-result-wide v3

    cmp-long v0, v3, v1

    if-eqz v0, :cond_64

    goto :goto_66

    :cond_64
    const/4 v0, 0x6

    goto :goto_67

    :cond_66
    :goto_66
    const/4 v0, 0x3

    :cond_67
    :goto_67
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/oB;->tp:Lcom/google/android/gms/internal/ads/tD;

    invoke-virtual {v1, v6, p0, v0}, Lcom/google/android/gms/internal/ads/tD;->j6(Lcom/google/android/gms/internal/ads/wD;Lcom/google/android/gms/internal/ads/uD;I)J

    return-void
.end method

.method static synthetic v5(Lcom/google/android/gms/internal/ads/oB;)Lcom/google/android/gms/internal/ads/xB;
    .registers 1

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/oB;->v5:Lcom/google/android/gms/internal/ads/xB;

    return-object p0
.end method

.method private final we()J
    .registers 7

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/oB;->QX:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    const-wide/high16 v1, -0x8000000000000000L

    const/4 v3, 0x0

    :goto_9
    if-ge v3, v0, :cond_1e

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/oB;->QX:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/internal/ads/EB;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/EB;->DW()J

    move-result-wide v4

    invoke-static {v1, v2, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v1

    add-int/lit8 v3, v3, 0x1

    goto :goto_9

    :cond_1e
    return-wide v1
.end method


# virtual methods
.method public final DW()J
    .registers 3

    iget v0, p0, Lcom/google/android/gms/internal/ads/oB;->lg:I

    if-nez v0, :cond_7

    const-wide/high16 v0, -0x8000000000000000L

    return-wide v0

    :cond_7
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/oB;->VH()J

    move-result-wide v0

    return-wide v0
.end method

.method public final DW(J)Z
    .registers 3

    iget-boolean p1, p0, Lcom/google/android/gms/internal/ads/oB;->SI:Z

    if-nez p1, :cond_20

    iget-boolean p1, p0, Lcom/google/android/gms/internal/ads/oB;->Mr:Z

    if-eqz p1, :cond_d

    iget p1, p0, Lcom/google/android/gms/internal/ads/oB;->lg:I

    if-nez p1, :cond_d

    goto :goto_20

    :cond_d
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/oB;->we:Lcom/google/android/gms/internal/ads/ED;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/ED;->DW()Z

    move-result p1

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/oB;->tp:Lcom/google/android/gms/internal/ads/tD;

    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/tD;->DW()Z

    move-result p2

    if-nez p2, :cond_1f

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/oB;->u7()V

    const/4 p1, 0x1

    :cond_1f
    return p1

    :cond_20
    :goto_20
    const/4 p1, 0x0

    return p1
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

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/oB;->SI:Z

    const-wide/high16 v1, -0x8000000000000000L

    if-eqz v0, :cond_7

    return-wide v1

    :cond_7
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/oB;->J0()Z

    move-result v0

    if-eqz v0, :cond_10

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/oB;->ei:J

    return-wide v0

    :cond_10
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/oB;->BT:Z

    if-eqz v0, :cond_3b

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/oB;->QX:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    const-wide v3, 0x7fffffffffffffffL

    const/4 v5, 0x0

    :goto_20
    if-ge v5, v0, :cond_3f

    iget-object v6, p0, Lcom/google/android/gms/internal/ads/oB;->gW:[Z

    aget-boolean v6, v6, v5

    if-eqz v6, :cond_38

    iget-object v6, p0, Lcom/google/android/gms/internal/ads/oB;->QX:Landroid/util/SparseArray;

    invoke-virtual {v6, v5}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/android/gms/internal/ads/EB;

    invoke-virtual {v6}, Lcom/google/android/gms/internal/ads/EB;->DW()J

    move-result-wide v6

    invoke-static {v3, v4, v6, v7}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v3

    :cond_38
    add-int/lit8 v5, v5, 0x1

    goto :goto_20

    :cond_3b
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/oB;->we()J

    move-result-wide v3

    :cond_3f
    cmp-long v0, v3, v1

    if-nez v0, :cond_46

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/oB;->P8:J

    return-wide v0

    :cond_46
    return-wide v3
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
    .registers 12

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/oB;->a8:Z

    if-nez v0, :cond_20

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/oB;->J0()Z

    move-result v0

    if-eqz v0, :cond_b

    goto :goto_20

    :cond_b
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/oB;->QX:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Lcom/google/android/gms/internal/ads/EB;

    iget-boolean v4, p0, Lcom/google/android/gms/internal/ads/oB;->SI:Z

    iget-wide v5, p0, Lcom/google/android/gms/internal/ads/oB;->P8:J

    move-object v1, p2

    move-object v2, p3

    move v3, p4

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/gms/internal/ads/EB;->j6(Lcom/google/android/gms/internal/ads/Jy;Lcom/google/android/gms/internal/ads/Ez;ZZJ)I

    move-result p1

    return p1

    :cond_20
    :goto_20
    const/4 p1, -0x3

    return p1
.end method

.method public final synthetic j6(Lcom/google/android/gms/internal/ads/wD;JJLjava/io/IOException;)I
    .registers 11

    check-cast p1, Lcom/google/android/gms/internal/ads/tB;

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/oB;->j6(Lcom/google/android/gms/internal/ads/tB;)V

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/oB;->Hw:Landroid/os/Handler;

    if-eqz p2, :cond_15

    iget-object p3, p0, Lcom/google/android/gms/internal/ads/oB;->v5:Lcom/google/android/gms/internal/ads/xB;

    if-eqz p3, :cond_15

    new-instance p3, Lcom/google/android/gms/internal/ads/sB;

    invoke-direct {p3, p0, p6}, Lcom/google/android/gms/internal/ads/sB;-><init>(Lcom/google/android/gms/internal/ads/oB;Ljava/io/IOException;)V

    invoke-virtual {p2, p3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_15
    instance-of p2, p6, Lcom/google/android/gms/internal/ads/OB;

    if-eqz p2, :cond_1b

    const/4 p1, 0x3

    return p1

    :cond_1b
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/oB;->EQ()I

    move-result p2

    iget p3, p0, Lcom/google/android/gms/internal/ads/oB;->nw:I

    const/4 p4, 0x1

    const/4 p5, 0x0

    if-le p2, p3, :cond_27

    const/4 p2, 0x1

    goto :goto_28

    :cond_27
    const/4 p2, 0x0

    :goto_28
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/oB;->vy:J

    const-wide/16 v2, -0x1

    cmp-long p3, v0, v2

    if-nez p3, :cond_71

    iget-object p3, p0, Lcom/google/android/gms/internal/ads/oB;->aM:Lcom/google/android/gms/internal/ads/Wz;

    if-eqz p3, :cond_41

    invoke-interface {p3}, Lcom/google/android/gms/internal/ads/Wz;->FH()J

    move-result-wide v0

    const-wide v2, -0x7fffffffffffffffL  # -4.9E-324

    cmp-long p3, v0, v2

    if-nez p3, :cond_71

    :cond_41
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/oB;->P8:J

    iget-boolean p3, p0, Lcom/google/android/gms/internal/ads/oB;->Mr:Z

    iput-boolean p3, p0, Lcom/google/android/gms/internal/ads/oB;->a8:Z

    iget-object p3, p0, Lcom/google/android/gms/internal/ads/oB;->QX:Landroid/util/SparseArray;

    invoke-virtual {p3}, Landroid/util/SparseArray;->size()I

    move-result p3

    const/4 p6, 0x0

    :goto_50
    if-ge p6, p3, :cond_6e

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/oB;->QX:Landroid/util/SparseArray;

    invoke-virtual {v2, p6}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/ads/EB;

    iget-boolean v3, p0, Lcom/google/android/gms/internal/ads/oB;->Mr:Z

    if-eqz v3, :cond_67

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/oB;->yS:[Z

    aget-boolean v3, v3, p6

    if-eqz v3, :cond_65

    goto :goto_67

    :cond_65
    const/4 v3, 0x0

    goto :goto_68

    :cond_67
    :goto_67
    const/4 v3, 0x1

    :goto_68
    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/ads/EB;->j6(Z)V

    add-int/lit8 p6, p6, 0x1

    goto :goto_50

    :cond_6e
    invoke-virtual {p1, v0, v1, v0, v1}, Lcom/google/android/gms/internal/ads/tB;->j6(JJ)V

    :cond_71
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/oB;->EQ()I

    move-result p1

    iput p1, p0, Lcom/google/android/gms/internal/ads/oB;->nw:I

    if-eqz p2, :cond_7a

    return p4

    :cond_7a
    return p5
.end method

.method public final j6(J)J
    .registers 8

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/oB;->aM:Lcom/google/android/gms/internal/ads/Wz;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/Wz;->DW()Z

    move-result v0

    if-eqz v0, :cond_9

    goto :goto_b

    :cond_9
    const-wide/16 p1, 0x0

    :goto_b
    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/oB;->P8:J

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/oB;->QX:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/oB;->J0()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_1b
    if-eqz v1, :cond_34

    if-ge v3, v0, :cond_34

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/oB;->yS:[Z

    aget-boolean v4, v4, v3

    if-eqz v4, :cond_31

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/oB;->QX:Landroid/util/SparseArray;

    invoke-virtual {v1, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/EB;

    invoke-virtual {v1, p1, p2, v2}, Lcom/google/android/gms/internal/ads/EB;->j6(JZ)Z

    move-result v1

    :cond_31
    add-int/lit8 v3, v3, 0x1

    goto :goto_1b

    :cond_34
    if-nez v1, :cond_5d

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/oB;->ei:J

    iput-boolean v2, p0, Lcom/google/android/gms/internal/ads/oB;->SI:Z

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/oB;->tp:Lcom/google/android/gms/internal/ads/tD;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/tD;->DW()Z

    move-result v1

    if-eqz v1, :cond_48

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/oB;->tp:Lcom/google/android/gms/internal/ads/tD;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/tD;->FH()V

    goto :goto_5d

    :cond_48
    const/4 v1, 0x0

    :goto_49
    if-ge v1, v0, :cond_5d

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/oB;->QX:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/ads/EB;

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/oB;->yS:[Z

    aget-boolean v4, v4, v1

    invoke-virtual {v3, v4}, Lcom/google/android/gms/internal/ads/EB;->j6(Z)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_49

    :cond_5d
    :goto_5d
    iput-boolean v2, p0, Lcom/google/android/gms/internal/ads/oB;->a8:Z

    return-wide p1
.end method

.method public final j6([Lcom/google/android/gms/internal/ads/_C;[Z[Lcom/google/android/gms/internal/ads/HB;[ZJ)J
    .registers 12

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/oB;->Mr:Z

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/CD;->DW(Z)V

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_7
    array-length v2, p1

    const/4 v3, 0x1

    if-ge v1, v2, :cond_3e

    aget-object v2, p3, v1

    if-eqz v2, :cond_3b

    aget-object v4, p1, v1

    if-eqz v4, :cond_17

    aget-boolean v4, p2, v1

    if-nez v4, :cond_3b

    :cond_17
    check-cast v2, Lcom/google/android/gms/internal/ads/vB;

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/vB;->j6(Lcom/google/android/gms/internal/ads/vB;)I

    move-result v2

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/oB;->yS:[Z

    aget-boolean v4, v4, v2

    invoke-static {v4}, Lcom/google/android/gms/internal/ads/CD;->DW(Z)V

    iget v4, p0, Lcom/google/android/gms/internal/ads/oB;->lg:I

    sub-int/2addr v4, v3

    iput v4, p0, Lcom/google/android/gms/internal/ads/oB;->lg:I

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/oB;->yS:[Z

    aput-boolean v0, v3, v2

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/oB;->QX:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/ads/EB;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/EB;->j6()V

    const/4 v2, 0x0

    aput-object v2, p3, v1

    :cond_3b
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_3e
    const/4 p2, 0x0

    const/4 v1, 0x0

    :goto_40
    array-length v2, p1

    if-ge p2, v2, :cond_8b

    aget-object v2, p3, p2

    if-nez v2, :cond_88

    aget-object v2, p1, p2

    if-eqz v2, :cond_88

    invoke-interface {v2}, Lcom/google/android/gms/internal/ads/_C;->length()I

    move-result v1

    if-ne v1, v3, :cond_53

    const/4 v1, 0x1

    goto :goto_54

    :cond_53
    const/4 v1, 0x0

    :goto_54
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/CD;->DW(Z)V

    invoke-interface {v2, v0}, Lcom/google/android/gms/internal/ads/_C;->DW(I)I

    move-result v1

    if-nez v1, :cond_5f

    const/4 v1, 0x1

    goto :goto_60

    :cond_5f
    const/4 v1, 0x0

    :goto_60
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/CD;->DW(Z)V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/oB;->rN:Lcom/google/android/gms/internal/ads/NB;

    invoke-interface {v2}, Lcom/google/android/gms/internal/ads/_C;->FH()Lcom/google/android/gms/internal/ads/LB;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/NB;->j6(Lcom/google/android/gms/internal/ads/LB;)I

    move-result v1

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/oB;->yS:[Z

    aget-boolean v2, v2, v1

    xor-int/2addr v2, v3

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/CD;->DW(Z)V

    iget v2, p0, Lcom/google/android/gms/internal/ads/oB;->lg:I

    add-int/2addr v2, v3

    iput v2, p0, Lcom/google/android/gms/internal/ads/oB;->lg:I

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/oB;->yS:[Z

    aput-boolean v3, v2, v1

    new-instance v2, Lcom/google/android/gms/internal/ads/vB;

    invoke-direct {v2, p0, v1}, Lcom/google/android/gms/internal/ads/vB;-><init>(Lcom/google/android/gms/internal/ads/oB;I)V

    aput-object v2, p3, p2

    aput-boolean v3, p4, p2

    const/4 v1, 0x1

    :cond_88
    add-int/lit8 p2, p2, 0x1

    goto :goto_40

    :cond_8b
    iget-boolean p1, p0, Lcom/google/android/gms/internal/ads/oB;->U2:Z

    if-nez p1, :cond_ac

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/oB;->QX:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result p1

    const/4 p2, 0x0

    :goto_96
    if-ge p2, p1, :cond_ac

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/oB;->yS:[Z

    aget-boolean v2, v2, p2

    if-nez v2, :cond_a9

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/oB;->QX:Landroid/util/SparseArray;

    invoke-virtual {v2, p2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/ads/EB;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/EB;->j6()V

    :cond_a9
    add-int/lit8 p2, p2, 0x1

    goto :goto_96

    :cond_ac
    iget p1, p0, Lcom/google/android/gms/internal/ads/oB;->lg:I

    if-nez p1, :cond_c0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/oB;->a8:Z

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/oB;->tp:Lcom/google/android/gms/internal/ads/tD;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/tD;->DW()Z

    move-result p1

    if-eqz p1, :cond_dd

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/oB;->tp:Lcom/google/android/gms/internal/ads/tD;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/tD;->FH()V

    goto :goto_dd

    :cond_c0
    iget-boolean p1, p0, Lcom/google/android/gms/internal/ads/oB;->U2:Z

    if-eqz p1, :cond_c7

    if-eqz v1, :cond_dd

    goto :goto_cd

    :cond_c7
    const-wide/16 p1, 0x0

    cmp-long v1, p5, p1

    if-eqz v1, :cond_dd

    :goto_cd
    invoke-virtual {p0, p5, p6}, Lcom/google/android/gms/internal/ads/oB;->j6(J)J

    move-result-wide p5

    :goto_d1
    array-length p1, p3

    if-ge v0, p1, :cond_dd

    aget-object p1, p3, v0

    if-eqz p1, :cond_da

    aput-boolean v3, p4, v0

    :cond_da
    add-int/lit8 v0, v0, 0x1

    goto :goto_d1

    :cond_dd
    :goto_dd
    iput-boolean v3, p0, Lcom/google/android/gms/internal/ads/oB;->U2:Z

    return-wide p5
.end method

.method public final j6(II)Lcom/google/android/gms/internal/ads/Yz;
    .registers 4

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/oB;->QX:Landroid/util/SparseArray;

    invoke-virtual {p2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/google/android/gms/internal/ads/EB;

    if-nez p2, :cond_19

    new-instance p2, Lcom/google/android/gms/internal/ads/EB;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/oB;->VH:Lcom/google/android/gms/internal/ads/gD;

    invoke-direct {p2, v0}, Lcom/google/android/gms/internal/ads/EB;-><init>(Lcom/google/android/gms/internal/ads/gD;)V

    invoke-virtual {p2, p0}, Lcom/google/android/gms/internal/ads/EB;->j6(Lcom/google/android/gms/internal/ads/GB;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/oB;->QX:Landroid/util/SparseArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_19
    return-object p2
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
    .registers 7

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/oB;->QX:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/EB;

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/oB;->SI:Z

    if-eqz v0, :cond_18

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/EB;->DW()J

    move-result-wide v0

    cmp-long v2, p2, v0

    if-lez v2, :cond_18

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/EB;->VH()V

    return-void

    :cond_18
    const/4 v0, 0x1

    invoke-virtual {p1, p2, p3, v0}, Lcom/google/android/gms/internal/ads/EB;->j6(JZ)Z

    return-void
.end method

.method public final j6(Lcom/google/android/gms/internal/ads/Wz;)V
    .registers 3

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/oB;->aM:Lcom/google/android/gms/internal/ads/Wz;

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/oB;->Ws:Landroid/os/Handler;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/oB;->J0:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final synthetic j6(Lcom/google/android/gms/internal/ads/wD;JJ)V
    .registers 6

    check-cast p1, Lcom/google/android/gms/internal/ads/tB;

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/oB;->j6(Lcom/google/android/gms/internal/ads/tB;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/oB;->SI:Z

    iget-wide p1, p0, Lcom/google/android/gms/internal/ads/oB;->er:J

    const-wide p3, -0x7fffffffffffffffL  # -4.9E-324

    cmp-long p5, p1, p3

    if-nez p5, :cond_38

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/oB;->we()J

    move-result-wide p1

    const-wide/high16 p3, -0x8000000000000000L

    cmp-long p5, p1, p3

    if-nez p5, :cond_20

    const-wide/16 p1, 0x0

    goto :goto_23

    :cond_20
    const-wide/16 p3, 0x2710

    add-long/2addr p1, p3

    :goto_23
    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/oB;->er:J

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/oB;->Zo:Lcom/google/android/gms/internal/ads/BB;

    new-instance p2, Lcom/google/android/gms/internal/ads/KB;

    iget-wide p3, p0, Lcom/google/android/gms/internal/ads/oB;->er:J

    iget-object p5, p0, Lcom/google/android/gms/internal/ads/oB;->aM:Lcom/google/android/gms/internal/ads/Wz;

    invoke-interface {p5}, Lcom/google/android/gms/internal/ads/Wz;->DW()Z

    move-result p5

    invoke-direct {p2, p3, p4, p5}, Lcom/google/android/gms/internal/ads/KB;-><init>(JZ)V

    const/4 p3, 0x0

    invoke-interface {p1, p2, p3}, Lcom/google/android/gms/internal/ads/BB;->j6(Lcom/google/android/gms/internal/ads/Sy;Ljava/lang/Object;)V

    :cond_38
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/oB;->XL:Lcom/google/android/gms/internal/ads/zB;

    invoke-interface {p1, p0}, Lcom/google/android/gms/internal/ads/JB;->j6(Lcom/google/android/gms/internal/ads/IB;)V

    return-void
.end method

.method public final synthetic j6(Lcom/google/android/gms/internal/ads/wD;JJZ)V
    .registers 7

    check-cast p1, Lcom/google/android/gms/internal/ads/tB;

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/oB;->j6(Lcom/google/android/gms/internal/ads/tB;)V

    if-nez p6, :cond_2b

    iget p1, p0, Lcom/google/android/gms/internal/ads/oB;->lg:I

    if-lez p1, :cond_2b

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/oB;->QX:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result p1

    const/4 p2, 0x0

    :goto_12
    if-ge p2, p1, :cond_26

    iget-object p3, p0, Lcom/google/android/gms/internal/ads/oB;->QX:Landroid/util/SparseArray;

    invoke-virtual {p3, p2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/google/android/gms/internal/ads/EB;

    iget-object p4, p0, Lcom/google/android/gms/internal/ads/oB;->yS:[Z

    aget-boolean p4, p4, p2

    invoke-virtual {p3, p4}, Lcom/google/android/gms/internal/ads/EB;->j6(Z)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_12

    :cond_26
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/oB;->XL:Lcom/google/android/gms/internal/ads/zB;

    invoke-interface {p1, p0}, Lcom/google/android/gms/internal/ads/JB;->j6(Lcom/google/android/gms/internal/ads/IB;)V

    :cond_2b
    return-void
.end method

.method public final j6(Lcom/google/android/gms/internal/ads/zB;J)V
    .registers 4

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/oB;->XL:Lcom/google/android/gms/internal/ads/zB;

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/oB;->we:Lcom/google/android/gms/internal/ads/ED;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/ED;->DW()Z

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/oB;->u7()V

    return-void
.end method

.method public final j6(Lcom/google/android/gms/internal/ads/zzfs;)V
    .registers 3

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/oB;->Ws:Landroid/os/Handler;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/oB;->J0:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method final j6(I)Z
    .registers 3

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/oB;->SI:Z

    if-nez v0, :cond_1b

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/oB;->J0()Z

    move-result v0

    if-nez v0, :cond_19

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/oB;->QX:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/EB;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/EB;->v5()Z

    move-result p1

    if-eqz p1, :cond_19

    goto :goto_1b

    :cond_19
    const/4 p1, 0x0

    return p1

    :cond_1b
    :goto_1b
    const/4 p1, 0x1

    return p1
.end method

.method public final v5()J
    .registers 3

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/oB;->a8:Z

    if-eqz v0, :cond_a

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/oB;->a8:Z

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/oB;->P8:J

    return-wide v0

    :cond_a
    const-wide v0, -0x7fffffffffffffffL  # -4.9E-324

    return-wide v0
.end method
