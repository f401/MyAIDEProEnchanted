.class public final Lcom/google/android/gms/internal/ads/yA;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/ads/Oz;


# static fields
.field private static final DW:I

.field private static final FH:[B

.field private static final j6:Lcom/google/android/gms/internal/ads/Sz;


# instance fields
.field private BT:I

.field private final EQ:Lcom/google/android/gms/internal/ads/QD;

.field private final Hw:I

.field private final J0:[B

.field private final J8:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack",
            "<",
            "Lcom/google/android/gms/internal/ads/lA;",
            ">;"
        }
    .end annotation
.end field

.field private Mr:Lcom/google/android/gms/internal/ads/LD;

.field private P8:Lcom/google/android/gms/internal/ads/Rz;

.field private QX:I

.field private SI:Z

.field private U2:J

.field private final VH:Lcom/google/android/gms/internal/ads/LD;

.field private final Ws:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/google/android/gms/internal/ads/AA;",
            ">;"
        }
    .end annotation
.end field

.field private XL:I

.field private final Zo:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/google/android/gms/internal/ads/BA;",
            ">;"
        }
    .end annotation
.end field

.field private a8:I

.field private aM:J

.field private ei:Lcom/google/android/gms/internal/ads/Yz;

.field private er:Lcom/google/android/gms/internal/ads/BA;

.field private gW:I

.field private final gn:Lcom/google/android/gms/internal/ads/LD;

.field private j3:I

.field private lg:J

.field private nw:[Lcom/google/android/gms/internal/ads/Yz;

.field private rN:J

.field private final tp:Lcom/google/android/gms/internal/ads/LD;

.field private final u7:Lcom/google/android/gms/internal/ads/LD;

.field private final v5:Lcom/google/android/gms/internal/ads/IA;

.field private vy:Z

.field private final we:Lcom/google/android/gms/internal/ads/LD;

.field private yS:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/google/android/gms/internal/ads/zA;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zA;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/yA;->j6:Lcom/google/android/gms/internal/ads/Sz;

    const-string v0, "seig"

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/TD;->Zo(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/google/android/gms/internal/ads/yA;->DW:I

    const/16 v0, 0x10

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/google/android/gms/internal/ads/yA;->FH:[B

    return-void

    nop

    :array_0
    .array-data 1
        -0x5et
        0x39t
        0x4ft
        0x52t
        0x5at
        -0x65t
        0x4ft
        0x14t
        -0x5et
        0x44t
        0x6ct
        0x42t
        0x7ct
        0x64t
        -0x73t
        -0xct
    .end array-data
.end method

.method public constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/yA;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/ads/yA;-><init>(ILcom/google/android/gms/internal/ads/QD;)V

    return-void
.end method

.method private constructor <init>(ILcom/google/android/gms/internal/ads/QD;)V
    .registers 4

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, v0}, Lcom/google/android/gms/internal/ads/yA;-><init>(ILcom/google/android/gms/internal/ads/QD;Lcom/google/android/gms/internal/ads/IA;)V

    return-void
.end method

.method private constructor <init>(ILcom/google/android/gms/internal/ads/QD;Lcom/google/android/gms/internal/ads/IA;)V
    .registers 10

    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v0, 0x0

    const/16 v2, 0x10

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/internal/ads/yA;->Hw:I

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/yA;->EQ:Lcom/google/android/gms/internal/ads/QD;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/yA;->v5:Lcom/google/android/gms/internal/ads/IA;

    new-instance v0, Lcom/google/android/gms/internal/ads/LD;

    invoke-direct {v0, v2}, Lcom/google/android/gms/internal/ads/LD;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/yA;->we:Lcom/google/android/gms/internal/ads/LD;

    new-instance v0, Lcom/google/android/gms/internal/ads/LD;

    sget-object v1, Lcom/google/android/gms/internal/ads/ID;->j6:[B

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/LD;-><init>([B)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/yA;->VH:Lcom/google/android/gms/internal/ads/LD;

    new-instance v0, Lcom/google/android/gms/internal/ads/LD;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/LD;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/yA;->gn:Lcom/google/android/gms/internal/ads/LD;

    new-instance v0, Lcom/google/android/gms/internal/ads/LD;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/LD;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/yA;->u7:Lcom/google/android/gms/internal/ads/LD;

    new-instance v0, Lcom/google/android/gms/internal/ads/LD;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/LD;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/yA;->tp:Lcom/google/android/gms/internal/ads/LD;

    new-array v0, v2, [B

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/yA;->J0:[B

    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/yA;->J8:Ljava/util/Stack;

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/yA;->Ws:Ljava/util/LinkedList;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/yA;->Zo:Landroid/util/SparseArray;

    iput-wide v4, p0, Lcom/google/android/gms/internal/ads/yA;->lg:J

    iput-wide v4, p0, Lcom/google/android/gms/internal/ads/yA;->rN:J

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/yA;->DW()V

    return-void
.end method

.method private final DW()V
    .registers 2

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/internal/ads/yA;->QX:I

    iput v0, p0, Lcom/google/android/gms/internal/ads/yA;->j3:I

    return-void
.end method

.method private static j6(Ljava/util/List;)Lcom/google/android/gms/internal/ads/zzhp;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/internal/ads/mA;",
            ">;)",
            "Lcom/google/android/gms/internal/ads/zzhp;"
        }
    .end annotation

    const/4 v2, 0x0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v4

    const/4 v0, 0x0

    move-object v1, v2

    move v3, v0

    :goto_0
    if-ge v3, v4, :cond_3

    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/mA;

    iget v5, v0, Lcom/google/android/gms/internal/ads/kA;->sg:I

    sget v6, Lcom/google/android/gms/internal/ads/kA;->ca:I

    if-ne v5, v6, :cond_1

    if-nez v1, :cond_0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    :cond_0
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/mA;->pO:Lcom/google/android/gms/internal/ads/LD;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/LD;->j6:[B

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/GA;->j6([B)Ljava/util/UUID;

    move-result-object v5

    if-nez v5, :cond_2

    const-string v0, "FragmentedMp4Extractor"

    const-string v5, "Skipped pssh atom (failed to extract uuid)"

    invoke-static {v0, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_1
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_0

    :cond_2
    new-instance v6, Lcom/google/android/gms/internal/ads/zzhp$zza;

    const-string v7, "video/mp4"

    invoke-direct {v6, v5, v7, v0}, Lcom/google/android/gms/internal/ads/zzhp$zza;-><init>(Ljava/util/UUID;Ljava/lang/String;[B)V

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    if-nez v1, :cond_4

    move-object v0, v2

    :goto_2
    return-object v0

    :cond_4
    new-instance v0, Lcom/google/android/gms/internal/ads/zzhp;

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzhp;-><init>(Ljava/util/List;)V

    goto :goto_2
.end method

.method private final j6(J)V
    .registers 48

    move-object/from16 v9, p0

    :cond_0
    :goto_0
    iget-object v2, v9, Lcom/google/android/gms/internal/ads/yA;->J8:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_47

    iget-object v2, v9, Lcom/google/android/gms/internal/ads/yA;->J8:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/ads/lA;

    iget-wide v2, v2, Lcom/google/android/gms/internal/ads/lA;->pO:J

    cmp-long v2, v2, p1

    if-nez v2, :cond_47

    iget-object v2, v9, Lcom/google/android/gms/internal/ads/yA;->J8:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v2

    move-object v8, v2

    check-cast v8, Lcom/google/android/gms/internal/ads/lA;

    iget v2, v8, Lcom/google/android/gms/internal/ads/kA;->sg:I

    sget v3, Lcom/google/android/gms/internal/ads/kA;->BT:I

    if-ne v2, v3, :cond_c

    const/4 v2, 0x1

    const-string v3, "Unexpected moov box."

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/ads/CD;->DW(ZLjava/lang/Object;)V

    iget-object v2, v8, Lcom/google/android/gms/internal/ads/lA;->fN:Ljava/util/List;

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/yA;->j6(Ljava/util/List;)Lcom/google/android/gms/internal/ads/zzhp;

    move-result-object v6

    sget v2, Lcom/google/android/gms/internal/ads/kA;->dx:I

    invoke-virtual {v8, v2}, Lcom/google/android/gms/internal/ads/lA;->v5(I)Lcom/google/android/gms/internal/ads/lA;

    move-result-object v7

    new-instance v11, Landroid/util/SparseArray;

    invoke-direct {v11}, Landroid/util/SparseArray;-><init>()V

    iget-object v2, v7, Lcom/google/android/gms/internal/ads/lA;->fN:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v10

    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v2, 0x0

    move v3, v2

    :goto_1
    if-ge v3, v10, :cond_4

    iget-object v2, v7, Lcom/google/android/gms/internal/ads/lA;->fN:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/ads/mA;

    iget v12, v2, Lcom/google/android/gms/internal/ads/kA;->sg:I

    sget v13, Lcom/google/android/gms/internal/ads/kA;->er:I

    if-ne v12, v13, :cond_2

    iget-object v2, v2, Lcom/google/android/gms/internal/ads/mA;->pO:Lcom/google/android/gms/internal/ads/LD;

    const/16 v12, 0xc

    invoke-virtual {v2, v12}, Lcom/google/android/gms/internal/ads/LD;->DW(I)V

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/LD;->Hw()I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    new-instance v13, Lcom/google/android/gms/internal/ads/vA;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/LD;->Ws()I

    move-result v14

    add-int/lit8 v14, v14, -0x1

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/LD;->Ws()I

    move-result v15

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/LD;->Ws()I

    move-result v16

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/LD;->Hw()I

    move-result v2

    move/from16 v0, v16

    invoke-direct {v13, v14, v15, v0, v2}, Lcom/google/android/gms/internal/ads/vA;-><init>(IIII)V

    invoke-static {v12, v13}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v12

    iget-object v2, v12, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v13

    iget-object v2, v12, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Lcom/google/android/gms/internal/ads/vA;

    invoke-virtual {v11, v13, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_1
    :goto_2
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_1

    :cond_2
    sget v13, Lcom/google/android/gms/internal/ads/kA;->sG:I

    if-ne v12, v13, :cond_1

    iget-object v2, v2, Lcom/google/android/gms/internal/ads/mA;->pO:Lcom/google/android/gms/internal/ads/LD;

    const/16 v4, 0x8

    invoke-virtual {v2, v4}, Lcom/google/android/gms/internal/ads/LD;->DW(I)V

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/LD;->Hw()I

    move-result v4

    invoke-static {v4}, Lcom/google/android/gms/internal/ads/kA;->j6(I)I

    move-result v4

    if-nez v4, :cond_3

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/LD;->we()J

    move-result-wide v4

    goto :goto_2

    :cond_3
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/LD;->QX()J

    move-result-wide v4

    goto :goto_2

    :cond_4
    new-instance v12, Landroid/util/SparseArray;

    invoke-direct {v12}, Landroid/util/SparseArray;-><init>()V

    iget-object v2, v8, Lcom/google/android/gms/internal/ads/lA;->Gj:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v13

    const/4 v2, 0x0

    move v10, v2

    :goto_3
    if-ge v10, v13, :cond_6

    iget-object v2, v8, Lcom/google/android/gms/internal/ads/lA;->Gj:Ljava/util/List;

    invoke-interface {v2, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/ads/lA;

    iget v3, v2, Lcom/google/android/gms/internal/ads/kA;->sg:I

    sget v7, Lcom/google/android/gms/internal/ads/kA;->P8:I

    if-ne v3, v7, :cond_5

    sget v3, Lcom/google/android/gms/internal/ads/kA;->vy:I

    invoke-virtual {v8, v3}, Lcom/google/android/gms/internal/ads/lA;->Hw(I)Lcom/google/android/gms/internal/ads/mA;

    move-result-object v3

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Lcom/google/android/gms/internal/ads/nA;->j6(Lcom/google/android/gms/internal/ads/lA;Lcom/google/android/gms/internal/ads/mA;JLcom/google/android/gms/internal/ads/zzhp;Z)Lcom/google/android/gms/internal/ads/IA;

    move-result-object v2

    if-eqz v2, :cond_5

    iget v3, v2, Lcom/google/android/gms/internal/ads/IA;->j6:I

    invoke-virtual {v12, v3, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_5
    add-int/lit8 v2, v10, 0x1

    move v10, v2

    goto :goto_3

    :cond_6
    invoke-virtual {v12}, Landroid/util/SparseArray;->size()I

    move-result v6

    iget-object v2, v9, Lcom/google/android/gms/internal/ads/yA;->Zo:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-nez v2, :cond_a

    const/4 v2, 0x0

    move v4, v2

    :goto_4
    if-ge v4, v6, :cond_7

    invoke-virtual {v12, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lcom/google/android/gms/internal/ads/IA;

    new-instance v5, Lcom/google/android/gms/internal/ads/BA;

    iget-object v2, v9, Lcom/google/android/gms/internal/ads/yA;->P8:Lcom/google/android/gms/internal/ads/Rz;

    iget v7, v3, Lcom/google/android/gms/internal/ads/IA;->DW:I

    invoke-interface {v2, v4, v7}, Lcom/google/android/gms/internal/ads/Rz;->j6(II)Lcom/google/android/gms/internal/ads/Yz;

    move-result-object v2

    invoke-direct {v5, v2}, Lcom/google/android/gms/internal/ads/BA;-><init>(Lcom/google/android/gms/internal/ads/Yz;)V

    iget v2, v3, Lcom/google/android/gms/internal/ads/IA;->j6:I

    invoke-virtual {v11, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/ads/vA;

    invoke-virtual {v5, v3, v2}, Lcom/google/android/gms/internal/ads/BA;->j6(Lcom/google/android/gms/internal/ads/IA;Lcom/google/android/gms/internal/ads/vA;)V

    iget-object v2, v9, Lcom/google/android/gms/internal/ads/yA;->Zo:Landroid/util/SparseArray;

    iget v7, v3, Lcom/google/android/gms/internal/ads/IA;->j6:I

    invoke-virtual {v2, v7, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-wide v14, v9, Lcom/google/android/gms/internal/ads/yA;->lg:J

    iget-wide v2, v3, Lcom/google/android/gms/internal/ads/IA;->v5:J

    invoke-static {v14, v15, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    iput-wide v2, v9, Lcom/google/android/gms/internal/ads/yA;->lg:J

    add-int/lit8 v2, v4, 0x1

    move v4, v2

    goto :goto_4

    :cond_7
    iget v2, v9, Lcom/google/android/gms/internal/ads/yA;->Hw:I

    and-int/lit8 v2, v2, 0x4

    if-eqz v2, :cond_8

    iget-object v2, v9, Lcom/google/android/gms/internal/ads/yA;->ei:Lcom/google/android/gms/internal/ads/Yz;

    if-nez v2, :cond_8

    iget-object v2, v9, Lcom/google/android/gms/internal/ads/yA;->P8:Lcom/google/android/gms/internal/ads/Rz;

    iget-object v3, v9, Lcom/google/android/gms/internal/ads/yA;->Zo:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    const/4 v4, 0x4

    invoke-interface {v2, v3, v4}, Lcom/google/android/gms/internal/ads/Rz;->j6(II)Lcom/google/android/gms/internal/ads/Yz;

    move-result-object v2

    iput-object v2, v9, Lcom/google/android/gms/internal/ads/yA;->ei:Lcom/google/android/gms/internal/ads/Yz;

    iget-object v2, v9, Lcom/google/android/gms/internal/ads/yA;->ei:Lcom/google/android/gms/internal/ads/Yz;

    const/4 v3, 0x0

    const-string v4, "application/x-emsg"

    const-wide v6, 0x7fffffffffffffffL

    invoke-static {v3, v4, v6, v7}, Lcom/google/android/gms/internal/ads/zzfs;->j6(Ljava/lang/String;Ljava/lang/String;J)Lcom/google/android/gms/internal/ads/zzfs;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/google/android/gms/internal/ads/Yz;->j6(Lcom/google/android/gms/internal/ads/zzfs;)V

    :cond_8
    iget v2, v9, Lcom/google/android/gms/internal/ads/yA;->Hw:I

    and-int/lit8 v2, v2, 0x8

    if-eqz v2, :cond_9

    iget-object v2, v9, Lcom/google/android/gms/internal/ads/yA;->nw:[Lcom/google/android/gms/internal/ads/Yz;

    if-nez v2, :cond_9

    iget-object v2, v9, Lcom/google/android/gms/internal/ads/yA;->P8:Lcom/google/android/gms/internal/ads/Rz;

    iget-object v3, v9, Lcom/google/android/gms/internal/ads/yA;->Zo:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    const/4 v4, 0x3

    invoke-interface {v2, v3, v4}, Lcom/google/android/gms/internal/ads/Rz;->j6(II)Lcom/google/android/gms/internal/ads/Yz;

    move-result-object v10

    const/4 v2, 0x0

    const-string v3, "application/cea-608"

    const/4 v4, 0x0

    const/4 v5, -0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static/range {v2 .. v8}, Lcom/google/android/gms/internal/ads/zzfs;->j6(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Lcom/google/android/gms/internal/ads/zzhp;)Lcom/google/android/gms/internal/ads/zzfs;

    move-result-object v2

    invoke-interface {v10, v2}, Lcom/google/android/gms/internal/ads/Yz;->j6(Lcom/google/android/gms/internal/ads/zzfs;)V

    const/4 v2, 0x1

    new-array v2, v2, [Lcom/google/android/gms/internal/ads/Yz;

    const/4 v3, 0x0

    aput-object v10, v2, v3

    iput-object v2, v9, Lcom/google/android/gms/internal/ads/yA;->nw:[Lcom/google/android/gms/internal/ads/Yz;

    :cond_9
    iget-object v2, v9, Lcom/google/android/gms/internal/ads/yA;->P8:Lcom/google/android/gms/internal/ads/Rz;

    invoke-interface {v2}, Lcom/google/android/gms/internal/ads/Rz;->j6()V

    goto/16 :goto_0

    :cond_a
    iget-object v2, v9, Lcom/google/android/gms/internal/ads/yA;->Zo:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ne v2, v6, :cond_b

    const/4 v2, 0x1

    :goto_5
    invoke-static {v2}, Lcom/google/android/gms/internal/ads/CD;->DW(Z)V

    const/4 v2, 0x0

    move v5, v2

    :goto_6
    if-ge v5, v6, :cond_0

    invoke-virtual {v12, v5}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    move-object v4, v2

    check-cast v4, Lcom/google/android/gms/internal/ads/IA;

    iget-object v2, v9, Lcom/google/android/gms/internal/ads/yA;->Zo:Landroid/util/SparseArray;

    iget v3, v4, Lcom/google/android/gms/internal/ads/IA;->j6:I

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/ads/BA;

    iget v3, v4, Lcom/google/android/gms/internal/ads/IA;->j6:I

    invoke-virtual {v11, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/ads/vA;

    invoke-virtual {v2, v4, v3}, Lcom/google/android/gms/internal/ads/BA;->j6(Lcom/google/android/gms/internal/ads/IA;Lcom/google/android/gms/internal/ads/vA;)V

    add-int/lit8 v2, v5, 0x1

    move v5, v2

    goto :goto_6

    :cond_b
    const/4 v2, 0x0

    goto :goto_5

    :cond_c
    sget v3, Lcom/google/android/gms/internal/ads/kA;->sh:I

    if-ne v2, v3, :cond_46

    iget-object v0, v9, Lcom/google/android/gms/internal/ads/yA;->Zo:Landroid/util/SparseArray;

    move-object/from16 v33, v0

    iget v0, v9, Lcom/google/android/gms/internal/ads/yA;->Hw:I

    move/from16 v23, v0

    iget-object v0, v9, Lcom/google/android/gms/internal/ads/yA;->J0:[B

    move-object/from16 v19, v0

    iget-object v2, v8, Lcom/google/android/gms/internal/ads/lA;->Gj:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v22

    const/16 v21, 0x0

    move-object/from16 v20, v8

    :goto_7
    const/4 v3, 0x0

    move/from16 v0, v21

    move/from16 v1, v22

    if-ge v0, v1, :cond_44

    move-object/from16 v0, v20

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/lA;->Gj:Ljava/util/List;

    move/from16 v0, v21

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v8, v2

    check-cast v8, Lcom/google/android/gms/internal/ads/lA;

    iget v2, v8, Lcom/google/android/gms/internal/ads/kA;->sg:I

    sget v4, Lcom/google/android/gms/internal/ads/kA;->cb:I

    if-ne v2, v4, :cond_43

    sget v2, Lcom/google/android/gms/internal/ads/kA;->rN:I

    invoke-virtual {v8, v2}, Lcom/google/android/gms/internal/ads/lA;->Hw(I)Lcom/google/android/gms/internal/ads/mA;

    move-result-object v2

    iget-object v7, v2, Lcom/google/android/gms/internal/ads/mA;->pO:Lcom/google/android/gms/internal/ads/LD;

    const/16 v2, 0x8

    invoke-virtual {v7, v2}, Lcom/google/android/gms/internal/ads/LD;->DW(I)V

    invoke-virtual {v7}, Lcom/google/android/gms/internal/ads/LD;->Hw()I

    move-result v2

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/kA;->DW(I)I

    move-result v9

    invoke-virtual {v7}, Lcom/google/android/gms/internal/ads/LD;->Hw()I

    move-result v2

    and-int/lit8 v4, v23, 0x10

    if-nez v4, :cond_d

    :goto_8
    move-object/from16 v0, v33

    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/ads/BA;

    if-nez v2, :cond_e

    move-object/from16 v32, v3

    :goto_9
    if-eqz v32, :cond_43

    move-object/from16 v0, v32

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/BA;->j6:Lcom/google/android/gms/internal/ads/KA;

    move-object/from16 v34, v0

    move-object/from16 v0, v34

    iget-wide v2, v0, Lcom/google/android/gms/internal/ads/KA;->j3:J

    invoke-virtual/range {v32 .. v32}, Lcom/google/android/gms/internal/ads/BA;->j6()V

    sget v4, Lcom/google/android/gms/internal/ads/kA;->lg:I

    invoke-virtual {v8, v4}, Lcom/google/android/gms/internal/ads/lA;->Hw(I)Lcom/google/android/gms/internal/ads/mA;

    move-result-object v4

    if-eqz v4, :cond_4c

    and-int/lit8 v4, v23, 0x2

    if-nez v4, :cond_4c

    sget v2, Lcom/google/android/gms/internal/ads/kA;->lg:I

    invoke-virtual {v8, v2}, Lcom/google/android/gms/internal/ads/lA;->Hw(I)Lcom/google/android/gms/internal/ads/mA;

    move-result-object v2

    iget-object v2, v2, Lcom/google/android/gms/internal/ads/mA;->pO:Lcom/google/android/gms/internal/ads/LD;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/ads/LD;->DW(I)V

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/LD;->Hw()I

    move-result v3

    invoke-static {v3}, Lcom/google/android/gms/internal/ads/kA;->j6(I)I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_14

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/LD;->QX()J

    move-result-wide v2

    move-wide v10, v2

    :goto_a
    iget-object v0, v8, Lcom/google/android/gms/internal/ads/lA;->fN:Ljava/util/List;

    move-object/from16 v35, v0

    invoke-interface/range {v35 .. v35}, Ljava/util/List;->size()I

    move-result v36

    const/4 v4, 0x0

    const/4 v3, 0x0

    const/4 v2, 0x0

    move v5, v2

    :goto_b
    move/from16 v0, v36

    if-ge v5, v0, :cond_16

    move-object/from16 v0, v35

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/ads/mA;

    iget v6, v2, Lcom/google/android/gms/internal/ads/kA;->sg:I

    sget v7, Lcom/google/android/gms/internal/ads/kA;->yS:I

    if-ne v6, v7, :cond_15

    iget-object v2, v2, Lcom/google/android/gms/internal/ads/mA;->pO:Lcom/google/android/gms/internal/ads/LD;

    const/16 v6, 0xc

    invoke-virtual {v2, v6}, Lcom/google/android/gms/internal/ads/LD;->DW(I)V

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/LD;->Ws()I

    move-result v2

    if-lez v2, :cond_4b

    add-int/2addr v4, v2

    add-int/lit8 v2, v3, 0x1

    :goto_c
    add-int/lit8 v5, v5, 0x1

    move v3, v2

    goto :goto_b

    :cond_d
    const/4 v2, 0x0

    goto :goto_8

    :cond_e
    and-int/lit8 v3, v9, 0x1

    if-eqz v3, :cond_f

    invoke-virtual {v7}, Lcom/google/android/gms/internal/ads/LD;->QX()J

    move-result-wide v4

    iget-object v3, v2, Lcom/google/android/gms/internal/ads/BA;->j6:Lcom/google/android/gms/internal/ads/KA;

    iput-wide v4, v3, Lcom/google/android/gms/internal/ads/KA;->FH:J

    iput-wide v4, v3, Lcom/google/android/gms/internal/ads/KA;->Hw:J

    :cond_f
    iget-object v10, v2, Lcom/google/android/gms/internal/ads/BA;->Hw:Lcom/google/android/gms/internal/ads/vA;

    and-int/lit8 v3, v9, 0x2

    if-eqz v3, :cond_10

    invoke-virtual {v7}, Lcom/google/android/gms/internal/ads/LD;->Ws()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    move v6, v3

    :goto_d
    and-int/lit8 v3, v9, 0x8

    if-eqz v3, :cond_11

    invoke-virtual {v7}, Lcom/google/android/gms/internal/ads/LD;->Ws()I

    move-result v3

    move v5, v3

    :goto_e
    and-int/lit8 v3, v9, 0x10

    if-eqz v3, :cond_12

    invoke-virtual {v7}, Lcom/google/android/gms/internal/ads/LD;->Ws()I

    move-result v3

    move v4, v3

    :goto_f
    and-int/lit8 v3, v9, 0x20

    if-eqz v3, :cond_13

    invoke-virtual {v7}, Lcom/google/android/gms/internal/ads/LD;->Ws()I

    move-result v3

    :goto_10
    iget-object v7, v2, Lcom/google/android/gms/internal/ads/BA;->j6:Lcom/google/android/gms/internal/ads/KA;

    new-instance v9, Lcom/google/android/gms/internal/ads/vA;

    invoke-direct {v9, v6, v5, v4, v3}, Lcom/google/android/gms/internal/ads/vA;-><init>(IIII)V

    iput-object v9, v7, Lcom/google/android/gms/internal/ads/KA;->j6:Lcom/google/android/gms/internal/ads/vA;

    move-object/from16 v32, v2

    goto/16 :goto_9

    :cond_10
    iget v3, v10, Lcom/google/android/gms/internal/ads/vA;->j6:I

    move v6, v3

    goto :goto_d

    :cond_11
    iget v3, v10, Lcom/google/android/gms/internal/ads/vA;->DW:I

    move v5, v3

    goto :goto_e

    :cond_12
    iget v3, v10, Lcom/google/android/gms/internal/ads/vA;->FH:I

    move v4, v3

    goto :goto_f

    :cond_13
    iget v3, v10, Lcom/google/android/gms/internal/ads/vA;->Hw:I

    goto :goto_10

    :cond_14
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/LD;->we()J

    move-result-wide v2

    move-wide v10, v2

    goto/16 :goto_a

    :cond_15
    move v2, v3

    goto :goto_c

    :cond_16
    const/4 v2, 0x0

    move-object/from16 v0, v32

    iput v2, v0, Lcom/google/android/gms/internal/ads/BA;->VH:I

    const/4 v2, 0x0

    move-object/from16 v0, v32

    iput v2, v0, Lcom/google/android/gms/internal/ads/BA;->Zo:I

    const/4 v2, 0x0

    move-object/from16 v0, v32

    iput v2, v0, Lcom/google/android/gms/internal/ads/BA;->v5:I

    move-object/from16 v0, v32

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/BA;->j6:Lcom/google/android/gms/internal/ads/KA;

    iput v3, v2, Lcom/google/android/gms/internal/ads/KA;->v5:I

    iput v4, v2, Lcom/google/android/gms/internal/ads/KA;->Zo:I

    iget-object v5, v2, Lcom/google/android/gms/internal/ads/KA;->gn:[I

    if-eqz v5, :cond_17

    array-length v5, v5

    if-ge v5, v3, :cond_18

    :cond_17
    new-array v5, v3, [J

    iput-object v5, v2, Lcom/google/android/gms/internal/ads/KA;->VH:[J

    new-array v3, v3, [I

    iput-object v3, v2, Lcom/google/android/gms/internal/ads/KA;->gn:[I

    :cond_18
    iget-object v3, v2, Lcom/google/android/gms/internal/ads/KA;->u7:[I

    if-eqz v3, :cond_19

    array-length v3, v3

    if-ge v3, v4, :cond_1a

    :cond_19
    mul-int/lit8 v3, v4, 0x7d

    div-int/lit8 v3, v3, 0x64

    new-array v4, v3, [I

    iput-object v4, v2, Lcom/google/android/gms/internal/ads/KA;->u7:[I

    new-array v4, v3, [I

    iput-object v4, v2, Lcom/google/android/gms/internal/ads/KA;->tp:[I

    new-array v4, v3, [J

    iput-object v4, v2, Lcom/google/android/gms/internal/ads/KA;->EQ:[J

    new-array v4, v3, [Z

    iput-object v4, v2, Lcom/google/android/gms/internal/ads/KA;->we:[Z

    new-array v3, v3, [Z

    iput-object v3, v2, Lcom/google/android/gms/internal/ads/KA;->J8:[Z

    :cond_1a
    const/4 v2, 0x0

    const/16 v16, 0x0

    const/16 v18, 0x0

    move/from16 v24, v2

    :goto_11
    const-wide/16 v4, 0x0

    move/from16 v0, v24

    move/from16 v1, v36

    if-ge v0, v1, :cond_2d

    move-object/from16 v0, v35

    move/from16 v1, v24

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/ads/mA;

    iget v3, v2, Lcom/google/android/gms/internal/ads/kA;->sg:I

    sget v6, Lcom/google/android/gms/internal/ads/kA;->yS:I

    if-ne v3, v6, :cond_2c

    iget-object v0, v2, Lcom/google/android/gms/internal/ads/mA;->pO:Lcom/google/android/gms/internal/ads/LD;

    move-object/from16 v37, v0

    const/16 v2, 0x8

    move-object/from16 v0, v37

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ads/LD;->DW(I)V

    invoke-virtual/range {v37 .. v37}, Lcom/google/android/gms/internal/ads/LD;->Hw()I

    move-result v2

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/kA;->DW(I)I

    move-result v3

    move-object/from16 v0, v32

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/BA;->FH:Lcom/google/android/gms/internal/ads/IA;

    move-object/from16 v26, v0

    move-object/from16 v0, v32

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/BA;->j6:Lcom/google/android/gms/internal/ads/KA;

    move-object/from16 v38, v0

    move-object/from16 v0, v38

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/KA;->j6:Lcom/google/android/gms/internal/ads/vA;

    move-object/from16 v39, v0

    move-object/from16 v0, v38

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/KA;->gn:[I

    invoke-virtual/range {v37 .. v37}, Lcom/google/android/gms/internal/ads/LD;->Ws()I

    move-result v6

    aput v6, v2, v16

    move-object/from16 v0, v38

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/KA;->VH:[J

    move-object/from16 v0, v38

    iget-wide v6, v0, Lcom/google/android/gms/internal/ads/KA;->FH:J

    aput-wide v6, v2, v16

    and-int/lit8 v6, v3, 0x1

    if-eqz v6, :cond_1b

    aget-wide v6, v2, v16

    invoke-virtual/range {v37 .. v37}, Lcom/google/android/gms/internal/ads/LD;->Hw()I

    move-result v9

    int-to-long v12, v9

    add-long/2addr v6, v12

    aput-wide v6, v2, v16

    :cond_1b
    and-int/lit8 v2, v3, 0x4

    if-eqz v2, :cond_1e

    const/4 v2, 0x1

    move v9, v2

    :goto_12
    move-object/from16 v0, v39

    iget v0, v0, Lcom/google/android/gms/internal/ads/vA;->Hw:I

    move/from16 v25, v0

    if-eqz v9, :cond_1c

    invoke-virtual/range {v37 .. v37}, Lcom/google/android/gms/internal/ads/LD;->Ws()I

    move-result v25

    :cond_1c
    and-int/lit16 v2, v3, 0x100

    if-eqz v2, :cond_1f

    const/4 v2, 0x1

    move/from16 v31, v2

    :goto_13
    and-int/lit16 v2, v3, 0x200

    if-eqz v2, :cond_20

    const/4 v2, 0x1

    move/from16 v30, v2

    :goto_14
    and-int/lit16 v2, v3, 0x400

    if-eqz v2, :cond_21

    const/4 v2, 0x1

    move/from16 v29, v2

    :goto_15
    and-int/lit16 v2, v3, 0x800

    if-eqz v2, :cond_22

    const/4 v2, 0x1

    move v12, v2

    :goto_16
    move-object/from16 v0, v26

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/IA;->u7:[J

    if-eqz v2, :cond_4a

    array-length v3, v2

    const/4 v6, 0x1

    if-ne v3, v6, :cond_4a

    const/4 v3, 0x0

    aget-wide v2, v2, v3

    const-wide/16 v6, 0x0

    cmp-long v2, v2, v6

    if-nez v2, :cond_4a

    move-object/from16 v0, v26

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/IA;->tp:[J

    const/4 v3, 0x0

    aget-wide v2, v2, v3

    const-wide/16 v4, 0x3e8

    move-object/from16 v0, v26

    iget-wide v6, v0, Lcom/google/android/gms/internal/ads/IA;->FH:J

    invoke-static/range {v2 .. v7}, Lcom/google/android/gms/internal/ads/TD;->j6(JJJ)J

    move-result-wide v2

    move-wide v14, v2

    :goto_17
    move-object/from16 v0, v38

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/KA;->u7:[I

    move-object/from16 v40, v0

    move-object/from16 v0, v38

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/KA;->tp:[I

    move-object/from16 v41, v0

    move-object/from16 v0, v38

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/KA;->EQ:[J

    move-object/from16 v42, v0

    move-object/from16 v0, v38

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/KA;->we:[Z

    move-object/from16 v43, v0

    move-object/from16 v0, v26

    iget v2, v0, Lcom/google/android/gms/internal/ads/IA;->DW:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_23

    and-int/lit8 v2, v23, 0x1

    if-eqz v2, :cond_23

    const/4 v2, 0x1

    move v13, v2

    :goto_18
    move-object/from16 v0, v38

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/KA;->gn:[I

    aget v2, v2, v16

    add-int v17, v2, v18

    move-object/from16 v0, v26

    iget-wide v6, v0, Lcom/google/android/gms/internal/ads/IA;->FH:J

    if-lez v16, :cond_24

    move-object/from16 v0, v38

    iget-wide v2, v0, Lcom/google/android/gms/internal/ads/KA;->j3:J

    move/from16 v27, v9

    move/from16 v28, v18

    :goto_19
    move/from16 v0, v28

    move/from16 v1, v17

    if-ge v0, v1, :cond_2b

    if-eqz v31, :cond_25

    invoke-virtual/range {v37 .. v37}, Lcom/google/android/gms/internal/ads/LD;->Ws()I

    move-result v4

    move/from16 v26, v4

    :goto_1a
    if-eqz v30, :cond_26

    invoke-virtual/range {v37 .. v37}, Lcom/google/android/gms/internal/ads/LD;->Ws()I

    move-result v4

    move/from16 v18, v4

    :goto_1b
    if-nez v28, :cond_27

    if-eqz v27, :cond_27

    move/from16 v9, v25

    :goto_1c
    if-eqz v12, :cond_29

    invoke-virtual/range {v37 .. v37}, Lcom/google/android/gms/internal/ads/LD;->Hw()I

    move-result v4

    mul-int/lit16 v4, v4, 0x3e8

    int-to-long v4, v4

    div-long/2addr v4, v6

    long-to-int v4, v4

    aput v4, v41, v28

    :goto_1d
    const-wide/16 v4, 0x3e8

    invoke-static/range {v2 .. v7}, Lcom/google/android/gms/internal/ads/TD;->j6(JJJ)J

    move-result-wide v4

    sub-long/2addr v4, v14

    aput-wide v4, v42, v28

    aput v18, v40, v28

    shr-int/lit8 v4, v9, 0x10

    and-int/lit8 v4, v4, 0x1

    if-nez v4, :cond_2a

    if-eqz v13, :cond_1d

    if-nez v28, :cond_2a

    :cond_1d
    const/4 v4, 0x1

    :goto_1e
    aput-boolean v4, v43, v28

    move/from16 v0, v26

    int-to-long v4, v0

    add-long/2addr v2, v4

    add-int/lit8 v18, v28, 0x1

    move/from16 v28, v18

    goto :goto_19

    :cond_1e
    const/4 v2, 0x0

    move v9, v2

    goto/16 :goto_12

    :cond_1f
    const/4 v2, 0x0

    move/from16 v31, v2

    goto/16 :goto_13

    :cond_20
    const/4 v2, 0x0

    move/from16 v30, v2

    goto/16 :goto_14

    :cond_21
    const/4 v2, 0x0

    move/from16 v29, v2

    goto/16 :goto_15

    :cond_22
    const/4 v2, 0x0

    move v12, v2

    goto/16 :goto_16

    :cond_23
    const/4 v2, 0x0

    move v13, v2

    goto :goto_18

    :cond_24
    move-wide v2, v10

    move/from16 v27, v9

    move/from16 v28, v18

    goto :goto_19

    :cond_25
    move-object/from16 v0, v39

    iget v4, v0, Lcom/google/android/gms/internal/ads/vA;->DW:I

    move/from16 v26, v4

    goto :goto_1a

    :cond_26
    move-object/from16 v0, v39

    iget v4, v0, Lcom/google/android/gms/internal/ads/vA;->FH:I

    move/from16 v18, v4

    goto :goto_1b

    :cond_27
    if-eqz v29, :cond_28

    invoke-virtual/range {v37 .. v37}, Lcom/google/android/gms/internal/ads/LD;->Hw()I

    move-result v4

    move v9, v4

    goto :goto_1c

    :cond_28
    move-object/from16 v0, v39

    iget v4, v0, Lcom/google/android/gms/internal/ads/vA;->Hw:I

    move v9, v4

    goto :goto_1c

    :cond_29
    const/4 v4, 0x0

    aput v4, v41, v28

    goto :goto_1d

    :cond_2a
    const/4 v4, 0x0

    goto :goto_1e

    :cond_2b
    move-object/from16 v0, v38

    iput-wide v2, v0, Lcom/google/android/gms/internal/ads/KA;->j3:J

    add-int/lit8 v2, v16, 0x1

    move/from16 v3, v17

    :goto_1f
    add-int/lit8 v4, v24, 0x1

    move/from16 v16, v2

    move/from16 v18, v3

    move/from16 v24, v4

    goto/16 :goto_11

    :cond_2c
    move/from16 v2, v16

    move/from16 v3, v18

    goto :goto_1f

    :cond_2d
    sget v2, Lcom/google/android/gms/internal/ads/kA;->XX:I

    invoke-virtual {v8, v2}, Lcom/google/android/gms/internal/ads/lA;->Hw(I)Lcom/google/android/gms/internal/ads/mA;

    move-result-object v2

    if-eqz v2, :cond_32

    move-object/from16 v0, v32

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/BA;->FH:Lcom/google/android/gms/internal/ads/IA;

    iget-object v3, v3, Lcom/google/android/gms/internal/ads/IA;->gn:[Lcom/google/android/gms/internal/ads/JA;

    move-object/from16 v0, v34

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/KA;->j6:Lcom/google/android/gms/internal/ads/vA;

    iget v4, v4, Lcom/google/android/gms/internal/ads/vA;->j6:I

    aget-object v3, v3, v4

    iget-object v5, v2, Lcom/google/android/gms/internal/ads/mA;->pO:Lcom/google/android/gms/internal/ads/LD;

    iget v6, v3, Lcom/google/android/gms/internal/ads/JA;->DW:I

    const/16 v2, 0x8

    invoke-virtual {v5, v2}, Lcom/google/android/gms/internal/ads/LD;->DW(I)V

    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/LD;->Hw()I

    move-result v2

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/kA;->DW(I)I

    move-result v2

    and-int/lit8 v2, v2, 0x1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_2e

    const/16 v2, 0x8

    invoke-virtual {v5, v2}, Lcom/google/android/gms/internal/ads/LD;->Hw(I)V

    :cond_2e
    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/LD;->VH()I

    move-result v3

    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/LD;->Ws()I

    move-result v7

    move-object/from16 v0, v34

    iget v2, v0, Lcom/google/android/gms/internal/ads/KA;->Zo:I

    if-ne v7, v2, :cond_3b

    if-nez v3, :cond_30

    move-object/from16 v0, v34

    iget-object v9, v0, Lcom/google/android/gms/internal/ads/KA;->J8:[Z

    const/4 v3, 0x0

    const/4 v2, 0x0

    :goto_20
    if-ge v3, v7, :cond_31

    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/LD;->VH()I

    move-result v10

    add-int v4, v2, v10

    if-le v10, v6, :cond_2f

    const/4 v2, 0x1

    :goto_21
    aput-boolean v2, v9, v3

    add-int/lit8 v3, v3, 0x1

    move v2, v4

    goto :goto_20

    :cond_2f
    const/4 v2, 0x0

    goto :goto_21

    :cond_30
    if-le v3, v6, :cond_3a

    const/4 v2, 0x1

    :goto_22
    mul-int/2addr v3, v7

    add-int/lit8 v3, v3, 0x0

    move-object/from16 v0, v34

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/KA;->J8:[Z

    const/4 v5, 0x0

    invoke-static {v4, v5, v7, v2}, Ljava/util/Arrays;->fill([ZIIZ)V

    move v2, v3

    :cond_31
    move-object/from16 v0, v34

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ads/KA;->j6(I)V

    :cond_32
    sget v2, Lcom/google/android/gms/internal/ads/kA;->kQ:I

    invoke-virtual {v8, v2}, Lcom/google/android/gms/internal/ads/lA;->Hw(I)Lcom/google/android/gms/internal/ads/mA;

    move-result-object v2

    if-eqz v2, :cond_34

    iget-object v2, v2, Lcom/google/android/gms/internal/ads/mA;->pO:Lcom/google/android/gms/internal/ads/LD;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/ads/LD;->DW(I)V

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/LD;->Hw()I

    move-result v3

    invoke-static {v3}, Lcom/google/android/gms/internal/ads/kA;->DW(I)I

    move-result v4

    and-int/lit8 v4, v4, 0x1

    const/4 v5, 0x1

    if-ne v4, v5, :cond_33

    const/16 v4, 0x8

    invoke-virtual {v2, v4}, Lcom/google/android/gms/internal/ads/LD;->Hw(I)V

    :cond_33
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/LD;->Ws()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_3d

    invoke-static {v3}, Lcom/google/android/gms/internal/ads/kA;->j6(I)I

    move-result v3

    move-object/from16 v0, v34

    iget-wide v4, v0, Lcom/google/android/gms/internal/ads/KA;->Hw:J

    if-nez v3, :cond_3c

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/LD;->we()J

    move-result-wide v2

    :goto_23
    add-long/2addr v2, v4

    move-object/from16 v0, v34

    iput-wide v2, v0, Lcom/google/android/gms/internal/ads/KA;->Hw:J

    :cond_34
    sget v2, Lcom/google/android/gms/internal/ads/kA;->wc:I

    invoke-virtual {v8, v2}, Lcom/google/android/gms/internal/ads/lA;->Hw(I)Lcom/google/android/gms/internal/ads/mA;

    move-result-object v2

    if-eqz v2, :cond_35

    iget-object v2, v2, Lcom/google/android/gms/internal/ads/mA;->pO:Lcom/google/android/gms/internal/ads/LD;

    const/4 v3, 0x0

    move-object/from16 v0, v34

    invoke-static {v2, v3, v0}, Lcom/google/android/gms/internal/ads/yA;->j6(Lcom/google/android/gms/internal/ads/LD;ILcom/google/android/gms/internal/ads/KA;)V

    :cond_35
    sget v2, Lcom/google/android/gms/internal/ads/kA;->yO:I

    invoke-virtual {v8, v2}, Lcom/google/android/gms/internal/ads/lA;->Hw(I)Lcom/google/android/gms/internal/ads/mA;

    move-result-object v2

    sget v3, Lcom/google/android/gms/internal/ads/kA;->XG:I

    invoke-virtual {v8, v3}, Lcom/google/android/gms/internal/ads/lA;->Hw(I)Lcom/google/android/gms/internal/ads/mA;

    move-result-object v3

    if-eqz v2, :cond_38

    if-eqz v3, :cond_38

    iget-object v2, v2, Lcom/google/android/gms/internal/ads/mA;->pO:Lcom/google/android/gms/internal/ads/LD;

    iget-object v3, v3, Lcom/google/android/gms/internal/ads/mA;->pO:Lcom/google/android/gms/internal/ads/LD;

    const/16 v4, 0x8

    invoke-virtual {v2, v4}, Lcom/google/android/gms/internal/ads/LD;->DW(I)V

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/LD;->Hw()I

    move-result v4

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/LD;->Hw()I

    move-result v5

    sget v6, Lcom/google/android/gms/internal/ads/yA;->DW:I

    if-ne v5, v6, :cond_38

    invoke-static {v4}, Lcom/google/android/gms/internal/ads/kA;->j6(I)I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_36

    const/4 v4, 0x4

    invoke-virtual {v2, v4}, Lcom/google/android/gms/internal/ads/LD;->Hw(I)V

    :cond_36
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/LD;->Hw()I

    move-result v2

    const/4 v4, 0x1

    if-ne v2, v4, :cond_41

    const/16 v2, 0x8

    invoke-virtual {v3, v2}, Lcom/google/android/gms/internal/ads/LD;->DW(I)V

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/LD;->Hw()I

    move-result v2

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/LD;->Hw()I

    move-result v4

    sget v5, Lcom/google/android/gms/internal/ads/yA;->DW:I

    if-ne v4, v5, :cond_38

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/kA;->j6(I)I

    move-result v2

    const/4 v4, 0x1

    if-ne v2, v4, :cond_3f

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/LD;->we()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v2, v4, v6

    if-eqz v2, :cond_3e

    :cond_37
    :goto_24
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/LD;->we()J

    move-result-wide v4

    const-wide/16 v6, 0x1

    cmp-long v2, v4, v6

    if-nez v2, :cond_40

    const/4 v2, 0x2

    invoke-virtual {v3, v2}, Lcom/google/android/gms/internal/ads/LD;->Hw(I)V

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/LD;->VH()I

    move-result v2

    const/4 v4, 0x1

    if-ne v2, v4, :cond_38

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/LD;->VH()I

    move-result v2

    const/16 v4, 0x10

    new-array v4, v4, [B

    const/4 v5, 0x0

    const/16 v6, 0x10

    invoke-virtual {v3, v4, v5, v6}, Lcom/google/android/gms/internal/ads/LD;->j6([BII)V

    const/4 v3, 0x1

    move-object/from16 v0, v34

    iput-boolean v3, v0, Lcom/google/android/gms/internal/ads/KA;->J0:Z

    new-instance v3, Lcom/google/android/gms/internal/ads/JA;

    const/4 v5, 0x1

    invoke-direct {v3, v5, v2, v4}, Lcom/google/android/gms/internal/ads/JA;-><init>(ZI[B)V

    move-object/from16 v0, v34

    iput-object v3, v0, Lcom/google/android/gms/internal/ads/KA;->Ws:Lcom/google/android/gms/internal/ads/JA;

    :cond_38
    iget-object v2, v8, Lcom/google/android/gms/internal/ads/lA;->fN:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    const/4 v2, 0x0

    move v3, v2

    :goto_25
    if-ge v3, v4, :cond_42

    iget-object v2, v8, Lcom/google/android/gms/internal/ads/lA;->fN:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/ads/mA;

    iget v5, v2, Lcom/google/android/gms/internal/ads/kA;->sg:I

    sget v6, Lcom/google/android/gms/internal/ads/kA;->jJ:I

    if-ne v5, v6, :cond_39

    iget-object v2, v2, Lcom/google/android/gms/internal/ads/mA;->pO:Lcom/google/android/gms/internal/ads/LD;

    const/16 v5, 0x8

    invoke-virtual {v2, v5}, Lcom/google/android/gms/internal/ads/LD;->DW(I)V

    const/4 v5, 0x0

    const/16 v6, 0x10

    move-object/from16 v0, v19

    invoke-virtual {v2, v0, v5, v6}, Lcom/google/android/gms/internal/ads/LD;->j6([BII)V

    sget-object v5, Lcom/google/android/gms/internal/ads/yA;->FH:[B

    move-object/from16 v0, v19

    invoke-static {v0, v5}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v5

    if-eqz v5, :cond_39

    const/16 v5, 0x10

    move-object/from16 v0, v34

    invoke-static {v2, v5, v0}, Lcom/google/android/gms/internal/ads/yA;->j6(Lcom/google/android/gms/internal/ads/LD;ILcom/google/android/gms/internal/ads/KA;)V

    :cond_39
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_25

    :cond_3a
    const/4 v2, 0x0

    goto/16 :goto_22

    :cond_3b
    new-instance v3, Ljava/lang/StringBuilder;

    const/16 v4, 0x29

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "Length mismatch: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    new-instance v2, Lcom/google/android/gms/internal/ads/My;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/google/android/gms/internal/ads/My;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_3c
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/LD;->QX()J

    move-result-wide v2

    goto/16 :goto_23

    :cond_3d
    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v3, 0x28

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Unexpected saio entry count: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    new-instance v3, Lcom/google/android/gms/internal/ads/My;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Lcom/google/android/gms/internal/ads/My;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_3e
    new-instance v2, Lcom/google/android/gms/internal/ads/My;

    const-string v3, "Variable length decription in sgpd found (unsupported)"

    invoke-direct {v2, v3}, Lcom/google/android/gms/internal/ads/My;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_3f
    const/4 v4, 0x2

    if-lt v2, v4, :cond_37

    const/4 v2, 0x4

    invoke-virtual {v3, v2}, Lcom/google/android/gms/internal/ads/LD;->Hw(I)V

    goto/16 :goto_24

    :cond_40
    new-instance v2, Lcom/google/android/gms/internal/ads/My;

    const-string v3, "Entry count in sgpd != 1 (unsupported)."

    invoke-direct {v2, v3}, Lcom/google/android/gms/internal/ads/My;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_41
    new-instance v2, Lcom/google/android/gms/internal/ads/My;

    const-string v3, "Entry count in sbgp != 1 (unsupported)."

    invoke-direct {v2, v3}, Lcom/google/android/gms/internal/ads/My;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_42
    move-object/from16 v2, v19

    move-object/from16 v3, v20

    move/from16 v4, v21

    move/from16 v5, v22

    move/from16 v6, v23

    :goto_26
    add-int/lit8 v21, v4, 0x1

    move-object/from16 v19, v2

    move-object/from16 v20, v3

    move/from16 v22, v5

    move/from16 v23, v6

    goto/16 :goto_7

    :cond_43
    move-object/from16 v2, v19

    move-object/from16 v3, v20

    move/from16 v4, v21

    move/from16 v5, v22

    move/from16 v6, v23

    goto :goto_26

    :cond_44
    const/4 v2, 0x0

    move-object/from16 v0, v20

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/lA;->fN:Ljava/util/List;

    invoke-static {v3}, Lcom/google/android/gms/internal/ads/yA;->j6(Ljava/util/List;)Lcom/google/android/gms/internal/ads/zzhp;

    move-result-object v4

    if-eqz v4, :cond_45

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/yA;->Zo:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v5

    move v3, v2

    :goto_27
    if-ge v3, v5, :cond_49

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/yA;->Zo:Landroid/util/SparseArray;

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/ads/BA;

    iget-object v6, v2, Lcom/google/android/gms/internal/ads/BA;->DW:Lcom/google/android/gms/internal/ads/Yz;

    iget-object v2, v2, Lcom/google/android/gms/internal/ads/BA;->FH:Lcom/google/android/gms/internal/ads/IA;

    iget-object v2, v2, Lcom/google/android/gms/internal/ads/IA;->Zo:Lcom/google/android/gms/internal/ads/zzfs;

    invoke-virtual {v2, v4}, Lcom/google/android/gms/internal/ads/zzfs;->j6(Lcom/google/android/gms/internal/ads/zzhp;)Lcom/google/android/gms/internal/ads/zzfs;

    move-result-object v2

    invoke-interface {v6, v2}, Lcom/google/android/gms/internal/ads/Yz;->j6(Lcom/google/android/gms/internal/ads/zzfs;)V

    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_27

    :cond_45
    move-object/from16 v2, p0

    :goto_28
    move-object v9, v2

    goto/16 :goto_0

    :cond_46
    iget-object v2, v9, Lcom/google/android/gms/internal/ads/yA;->J8:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_48

    iget-object v2, v9, Lcom/google/android/gms/internal/ads/yA;->J8:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/ads/lA;

    invoke-virtual {v2, v8}, Lcom/google/android/gms/internal/ads/lA;->j6(Lcom/google/android/gms/internal/ads/lA;)V

    move-object v2, v9

    goto :goto_28

    :cond_47
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/yA;->DW()V

    return-void

    :cond_48
    move-object v2, v9

    goto :goto_28

    :cond_49
    move-object/from16 v2, p0

    goto :goto_28

    :cond_4a
    move-wide v14, v4

    goto/16 :goto_17

    :cond_4b
    move v2, v3

    goto/16 :goto_c

    :cond_4c
    move-wide v10, v2

    goto/16 :goto_a
.end method

.method private static j6(Lcom/google/android/gms/internal/ads/LD;ILcom/google/android/gms/internal/ads/KA;)V
    .registers 7

    const/4 v1, 0x0

    add-int/lit8 v0, p1, 0x8

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/LD;->DW(I)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/LD;->Hw()I

    move-result v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/kA;->DW(I)I

    move-result v0

    and-int/lit8 v2, v0, 0x1

    if-nez v2, :cond_2

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/LD;->Ws()I

    move-result v2

    iget v3, p2, Lcom/google/android/gms/internal/ads/KA;->Zo:I

    if-ne v2, v3, :cond_1

    iget-object v3, p2, Lcom/google/android/gms/internal/ads/KA;->J8:[Z

    invoke-static {v3, v1, v2, v0}, Ljava/util/Arrays;->fill([ZIIZ)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/LD;->tp()I

    move-result v0

    invoke-virtual {p2, v0}, Lcom/google/android/gms/internal/ads/KA;->j6(I)V

    iget-object v0, p2, Lcom/google/android/gms/internal/ads/KA;->XL:Lcom/google/android/gms/internal/ads/LD;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/LD;->j6:[B

    iget v2, p2, Lcom/google/android/gms/internal/ads/KA;->QX:I

    invoke-virtual {p0, v0, v1, v2}, Lcom/google/android/gms/internal/ads/LD;->j6([BII)V

    iget-object v0, p2, Lcom/google/android/gms/internal/ads/KA;->XL:Lcom/google/android/gms/internal/ads/LD;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/LD;->DW(I)V

    iput-boolean v1, p2, Lcom/google/android/gms/internal/ads/KA;->aM:Z

    return-void

    :cond_0
    move v0, v1

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Length mismatch: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    new-instance v1, Lcom/google/android/gms/internal/ads/My;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/ads/My;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_2
    new-instance v0, Lcom/google/android/gms/internal/ads/My;

    const-string v1, "Overriding TrackEncryptionBox parameters is unsupported."

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/My;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public final j6(Lcom/google/android/gms/internal/ads/Qz;Lcom/google/android/gms/internal/ads/Vz;)I
    .registers 28

    move-object/from16 v16, p1

    move-object/from16 v17, p0

    :cond_0
    :goto_0
    move-object/from16 v0, v17

    iget v4, v0, Lcom/google/android/gms/internal/ads/yA;->QX:I

    if-eqz v4, :cond_26

    const/4 v5, 0x1

    if-eq v4, v5, :cond_1c

    const-wide v8, 0x7fffffffffffffffL

    const/4 v5, 0x2

    if-eq v4, v5, :cond_18

    const/4 v5, 0x3

    if-ne v4, v5, :cond_7

    move-object/from16 v0, v17

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/yA;->er:Lcom/google/android/gms/internal/ads/BA;

    if-nez v4, :cond_5

    move-object/from16 v0, v17

    iget-object v11, v0, Lcom/google/android/gms/internal/ads/yA;->Zo:Landroid/util/SparseArray;

    invoke-virtual {v11}, Landroid/util/SparseArray;->size()I

    move-result v12

    const-wide v8, 0x7fffffffffffffffL

    const/4 v4, 0x0

    const/4 v5, 0x0

    move v10, v4

    :goto_1
    if-ge v10, v12, :cond_1

    invoke-virtual {v11, v10}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/internal/ads/BA;

    iget v6, v4, Lcom/google/android/gms/internal/ads/BA;->VH:I

    iget-object v7, v4, Lcom/google/android/gms/internal/ads/BA;->j6:Lcom/google/android/gms/internal/ads/KA;

    iget v13, v7, Lcom/google/android/gms/internal/ads/KA;->v5:I

    if-eq v6, v13, :cond_39

    iget-object v7, v7, Lcom/google/android/gms/internal/ads/KA;->VH:[J

    aget-wide v6, v7, v6

    cmp-long v13, v6, v8

    if-gez v13, :cond_39

    :goto_2
    add-int/lit8 v10, v10, 0x1

    move-object v5, v4

    move-wide v8, v6

    goto :goto_1

    :cond_1
    if-nez v5, :cond_3

    move-object/from16 v0, v17

    iget-wide v4, v0, Lcom/google/android/gms/internal/ads/yA;->U2:J

    invoke-interface/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/Qz;->getPosition()J

    move-result-wide v6

    sub-long/2addr v4, v6

    long-to-int v4, v4

    if-ltz v4, :cond_2

    move-object/from16 v0, v16

    invoke-interface {v0, v4}, Lcom/google/android/gms/internal/ads/Qz;->DW(I)V

    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/yA;->DW()V

    const/4 v4, 0x0

    :goto_3
    if-eqz v4, :cond_0

    const/4 v4, 0x0

    :goto_4
    return v4

    :cond_2
    new-instance v4, Lcom/google/android/gms/internal/ads/My;

    const-string v5, "Offset to end of mdat was negative."

    invoke-direct {v4, v5}, Lcom/google/android/gms/internal/ads/My;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_3
    iget-object v4, v5, Lcom/google/android/gms/internal/ads/BA;->j6:Lcom/google/android/gms/internal/ads/KA;

    iget-object v4, v4, Lcom/google/android/gms/internal/ads/KA;->VH:[J

    iget v6, v5, Lcom/google/android/gms/internal/ads/BA;->VH:I

    aget-wide v6, v4, v6

    invoke-interface/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/Qz;->getPosition()J

    move-result-wide v8

    sub-long/2addr v6, v8

    long-to-int v4, v6

    if-gez v4, :cond_4

    const-string v4, "FragmentedMp4Extractor"

    const-string v6, "Ignoring negative offset to sample data."

    invoke-static {v4, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, 0x0

    :cond_4
    move-object/from16 v0, v16

    invoke-interface {v0, v4}, Lcom/google/android/gms/internal/ads/Qz;->DW(I)V

    move-object/from16 v0, v17

    iput-object v5, v0, Lcom/google/android/gms/internal/ads/yA;->er:Lcom/google/android/gms/internal/ads/BA;

    :cond_5
    move-object/from16 v0, v17

    iget-object v5, v0, Lcom/google/android/gms/internal/ads/yA;->er:Lcom/google/android/gms/internal/ads/BA;

    iget-object v6, v5, Lcom/google/android/gms/internal/ads/BA;->j6:Lcom/google/android/gms/internal/ads/KA;

    iget-object v4, v6, Lcom/google/android/gms/internal/ads/KA;->u7:[I

    iget v7, v5, Lcom/google/android/gms/internal/ads/BA;->v5:I

    aget v4, v4, v7

    move-object/from16 v0, v17

    iput v4, v0, Lcom/google/android/gms/internal/ads/yA;->yS:I

    iget-boolean v4, v6, Lcom/google/android/gms/internal/ads/KA;->J0:Z

    if-eqz v4, :cond_b

    iget-object v7, v6, Lcom/google/android/gms/internal/ads/KA;->XL:Lcom/google/android/gms/internal/ads/LD;

    iget-object v4, v6, Lcom/google/android/gms/internal/ads/KA;->j6:Lcom/google/android/gms/internal/ads/vA;

    iget v8, v4, Lcom/google/android/gms/internal/ads/vA;->j6:I

    iget-object v4, v6, Lcom/google/android/gms/internal/ads/KA;->Ws:Lcom/google/android/gms/internal/ads/JA;

    if-eqz v4, :cond_8

    :goto_5
    iget v8, v4, Lcom/google/android/gms/internal/ads/JA;->DW:I

    iget-object v4, v6, Lcom/google/android/gms/internal/ads/KA;->J8:[Z

    iget v6, v5, Lcom/google/android/gms/internal/ads/BA;->v5:I

    aget-boolean v6, v4, v6

    move-object/from16 v0, v17

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/yA;->tp:Lcom/google/android/gms/internal/ads/LD;

    iget-object v9, v4, Lcom/google/android/gms/internal/ads/LD;->j6:[B

    if-eqz v6, :cond_9

    const/16 v4, 0x80

    :goto_6
    const/4 v10, 0x0

    or-int/2addr v4, v8

    int-to-byte v4, v4

    aput-byte v4, v9, v10

    move-object/from16 v0, v17

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/yA;->tp:Lcom/google/android/gms/internal/ads/LD;

    const/4 v9, 0x0

    invoke-virtual {v4, v9}, Lcom/google/android/gms/internal/ads/LD;->DW(I)V

    iget-object v4, v5, Lcom/google/android/gms/internal/ads/BA;->DW:Lcom/google/android/gms/internal/ads/Yz;

    move-object/from16 v0, v17

    iget-object v5, v0, Lcom/google/android/gms/internal/ads/yA;->tp:Lcom/google/android/gms/internal/ads/LD;

    const/4 v9, 0x1

    invoke-interface {v4, v5, v9}, Lcom/google/android/gms/internal/ads/Yz;->j6(Lcom/google/android/gms/internal/ads/LD;I)V

    invoke-interface {v4, v7, v8}, Lcom/google/android/gms/internal/ads/Yz;->j6(Lcom/google/android/gms/internal/ads/LD;I)V

    if-nez v6, :cond_a

    add-int/lit8 v4, v8, 0x1

    :goto_7
    move-object/from16 v0, v17

    iput v4, v0, Lcom/google/android/gms/internal/ads/yA;->gW:I

    move-object/from16 v0, v17

    iget v4, v0, Lcom/google/android/gms/internal/ads/yA;->yS:I

    move-object/from16 v0, v17

    iget v5, v0, Lcom/google/android/gms/internal/ads/yA;->gW:I

    add-int/2addr v4, v5

    move-object/from16 v0, v17

    iput v4, v0, Lcom/google/android/gms/internal/ads/yA;->yS:I

    :goto_8
    move-object/from16 v0, v17

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/yA;->er:Lcom/google/android/gms/internal/ads/BA;

    iget-object v4, v4, Lcom/google/android/gms/internal/ads/BA;->FH:Lcom/google/android/gms/internal/ads/IA;

    iget v4, v4, Lcom/google/android/gms/internal/ads/IA;->VH:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_6

    move-object/from16 v0, v17

    iget v4, v0, Lcom/google/android/gms/internal/ads/yA;->yS:I

    add-int/lit8 v4, v4, -0x8

    move-object/from16 v0, v17

    iput v4, v0, Lcom/google/android/gms/internal/ads/yA;->yS:I

    const/16 v4, 0x8

    move-object/from16 v0, v16

    invoke-interface {v0, v4}, Lcom/google/android/gms/internal/ads/Qz;->DW(I)V

    :cond_6
    const/4 v4, 0x4

    move-object/from16 v0, v17

    iput v4, v0, Lcom/google/android/gms/internal/ads/yA;->QX:I

    const/4 v4, 0x0

    move-object/from16 v0, v17

    iput v4, v0, Lcom/google/android/gms/internal/ads/yA;->BT:I

    :cond_7
    move-object/from16 v0, v17

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/yA;->er:Lcom/google/android/gms/internal/ads/BA;

    iget-object v0, v4, Lcom/google/android/gms/internal/ads/BA;->j6:Lcom/google/android/gms/internal/ads/KA;

    move-object/from16 v18, v0

    iget-object v9, v4, Lcom/google/android/gms/internal/ads/BA;->FH:Lcom/google/android/gms/internal/ads/IA;

    iget-object v5, v4, Lcom/google/android/gms/internal/ads/BA;->DW:Lcom/google/android/gms/internal/ads/Yz;

    iget v8, v4, Lcom/google/android/gms/internal/ads/BA;->v5:I

    iget v6, v9, Lcom/google/android/gms/internal/ads/IA;->EQ:I

    if-eqz v6, :cond_f

    move-object/from16 v0, v17

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/yA;->gn:Lcom/google/android/gms/internal/ads/LD;

    iget-object v7, v4, Lcom/google/android/gms/internal/ads/LD;->j6:[B

    const/4 v4, 0x0

    const/4 v10, 0x0

    aput-byte v10, v7, v4

    const/4 v4, 0x1

    const/4 v10, 0x0

    aput-byte v10, v7, v4

    const/4 v4, 0x2

    const/4 v10, 0x0

    aput-byte v10, v7, v4

    rsub-int/lit8 v10, v6, 0x4

    :goto_9
    move-object/from16 v0, v17

    iget v4, v0, Lcom/google/android/gms/internal/ads/yA;->gW:I

    move-object/from16 v0, v17

    iget v11, v0, Lcom/google/android/gms/internal/ads/yA;->yS:I

    if-ge v4, v11, :cond_10

    move-object/from16 v0, v17

    iget v4, v0, Lcom/google/android/gms/internal/ads/yA;->BT:I

    if-nez v4, :cond_d

    add-int/lit8 v4, v6, 0x1

    move-object/from16 v0, v16

    invoke-interface {v0, v7, v10, v4}, Lcom/google/android/gms/internal/ads/Qz;->readFully([BII)V

    move-object/from16 v0, v17

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/yA;->gn:Lcom/google/android/gms/internal/ads/LD;

    const/4 v11, 0x0

    invoke-virtual {v4, v11}, Lcom/google/android/gms/internal/ads/LD;->DW(I)V

    move-object/from16 v0, v17

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/yA;->gn:Lcom/google/android/gms/internal/ads/LD;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/LD;->Ws()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    move-object/from16 v0, v17

    iput v4, v0, Lcom/google/android/gms/internal/ads/yA;->BT:I

    move-object/from16 v0, v17

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/yA;->VH:Lcom/google/android/gms/internal/ads/LD;

    const/4 v11, 0x0

    invoke-virtual {v4, v11}, Lcom/google/android/gms/internal/ads/LD;->DW(I)V

    move-object/from16 v0, v17

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/yA;->VH:Lcom/google/android/gms/internal/ads/LD;

    const/4 v11, 0x4

    invoke-interface {v5, v4, v11}, Lcom/google/android/gms/internal/ads/Yz;->j6(Lcom/google/android/gms/internal/ads/LD;I)V

    move-object/from16 v0, v17

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/yA;->gn:Lcom/google/android/gms/internal/ads/LD;

    const/4 v11, 0x1

    invoke-interface {v5, v4, v11}, Lcom/google/android/gms/internal/ads/Yz;->j6(Lcom/google/android/gms/internal/ads/LD;I)V

    move-object/from16 v0, v17

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/yA;->nw:[Lcom/google/android/gms/internal/ads/Yz;

    if-eqz v4, :cond_c

    iget-object v4, v9, Lcom/google/android/gms/internal/ads/IA;->Zo:Lcom/google/android/gms/internal/ads/zzfs;

    iget-object v4, v4, Lcom/google/android/gms/internal/ads/zzfs;->Zo:Ljava/lang/String;

    const/4 v11, 0x4

    aget-byte v11, v7, v11

    invoke-static {v4, v11}, Lcom/google/android/gms/internal/ads/ID;->j6(Ljava/lang/String;B)Z

    move-result v4

    if-eqz v4, :cond_c

    const/4 v4, 0x1

    :goto_a
    move-object/from16 v0, v17

    iput-boolean v4, v0, Lcom/google/android/gms/internal/ads/yA;->vy:Z

    move-object/from16 v0, v17

    iget v4, v0, Lcom/google/android/gms/internal/ads/yA;->gW:I

    add-int/lit8 v4, v4, 0x5

    move-object/from16 v0, v17

    iput v4, v0, Lcom/google/android/gms/internal/ads/yA;->gW:I

    move-object/from16 v0, v17

    iget v4, v0, Lcom/google/android/gms/internal/ads/yA;->yS:I

    add-int/2addr v4, v10

    move-object/from16 v0, v17

    iput v4, v0, Lcom/google/android/gms/internal/ads/yA;->yS:I

    goto :goto_9

    :cond_8
    iget-object v4, v5, Lcom/google/android/gms/internal/ads/BA;->FH:Lcom/google/android/gms/internal/ads/IA;

    iget-object v4, v4, Lcom/google/android/gms/internal/ads/IA;->gn:[Lcom/google/android/gms/internal/ads/JA;

    aget-object v4, v4, v8

    goto/16 :goto_5

    :cond_9
    const/4 v4, 0x0

    goto/16 :goto_6

    :cond_a
    invoke-virtual {v7}, Lcom/google/android/gms/internal/ads/LD;->gn()I

    move-result v5

    const/4 v6, -0x2

    invoke-virtual {v7, v6}, Lcom/google/android/gms/internal/ads/LD;->Hw(I)V

    mul-int/lit8 v5, v5, 0x6

    add-int/lit8 v5, v5, 0x2

    invoke-interface {v4, v7, v5}, Lcom/google/android/gms/internal/ads/Yz;->j6(Lcom/google/android/gms/internal/ads/LD;I)V

    add-int/lit8 v4, v8, 0x1

    add-int/2addr v4, v5

    goto/16 :goto_7

    :cond_b
    const/4 v4, 0x0

    move-object/from16 v0, v17

    iput v4, v0, Lcom/google/android/gms/internal/ads/yA;->gW:I

    goto/16 :goto_8

    :cond_c
    const/4 v4, 0x0

    goto :goto_a

    :cond_d
    move-object/from16 v0, v17

    iget-boolean v11, v0, Lcom/google/android/gms/internal/ads/yA;->vy:Z

    if-eqz v11, :cond_e

    move-object/from16 v0, v17

    iget-object v11, v0, Lcom/google/android/gms/internal/ads/yA;->u7:Lcom/google/android/gms/internal/ads/LD;

    invoke-virtual {v11, v4}, Lcom/google/android/gms/internal/ads/LD;->j6(I)V

    move-object/from16 v0, v17

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/yA;->u7:Lcom/google/android/gms/internal/ads/LD;

    iget-object v4, v4, Lcom/google/android/gms/internal/ads/LD;->j6:[B

    const/4 v11, 0x0

    move-object/from16 v0, v17

    iget v12, v0, Lcom/google/android/gms/internal/ads/yA;->BT:I

    move-object/from16 v0, v16

    invoke-interface {v0, v4, v11, v12}, Lcom/google/android/gms/internal/ads/Qz;->readFully([BII)V

    move-object/from16 v0, v17

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/yA;->u7:Lcom/google/android/gms/internal/ads/LD;

    move-object/from16 v0, v17

    iget v11, v0, Lcom/google/android/gms/internal/ads/yA;->BT:I

    invoke-interface {v5, v4, v11}, Lcom/google/android/gms/internal/ads/Yz;->j6(Lcom/google/android/gms/internal/ads/LD;I)V

    move-object/from16 v0, v17

    iget v4, v0, Lcom/google/android/gms/internal/ads/yA;->BT:I

    move-object/from16 v0, v17

    iget-object v11, v0, Lcom/google/android/gms/internal/ads/yA;->u7:Lcom/google/android/gms/internal/ads/LD;

    iget-object v12, v11, Lcom/google/android/gms/internal/ads/LD;->j6:[B

    invoke-virtual {v11}, Lcom/google/android/gms/internal/ads/LD;->FH()I

    move-result v11

    invoke-static {v12, v11}, Lcom/google/android/gms/internal/ads/ID;->j6([BI)I

    move-result v11

    move-object/from16 v0, v17

    iget-object v12, v0, Lcom/google/android/gms/internal/ads/yA;->u7:Lcom/google/android/gms/internal/ads/LD;

    const-string v13, "video/hevc"

    iget-object v14, v9, Lcom/google/android/gms/internal/ads/IA;->Zo:Lcom/google/android/gms/internal/ads/zzfs;

    iget-object v14, v14, Lcom/google/android/gms/internal/ads/zzfs;->Zo:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    invoke-virtual {v12, v13}, Lcom/google/android/gms/internal/ads/LD;->DW(I)V

    move-object/from16 v0, v17

    iget-object v12, v0, Lcom/google/android/gms/internal/ads/yA;->u7:Lcom/google/android/gms/internal/ads/LD;

    invoke-virtual {v12, v11}, Lcom/google/android/gms/internal/ads/LD;->FH(I)V

    move-object/from16 v0, v18

    invoke-virtual {v0, v8}, Lcom/google/android/gms/internal/ads/KA;->DW(I)J

    move-result-wide v12

    const-wide/16 v14, 0x3e8

    mul-long/2addr v12, v14

    move-object/from16 v0, v17

    iget-object v11, v0, Lcom/google/android/gms/internal/ads/yA;->u7:Lcom/google/android/gms/internal/ads/LD;

    move-object/from16 v0, v17

    iget-object v14, v0, Lcom/google/android/gms/internal/ads/yA;->nw:[Lcom/google/android/gms/internal/ads/Yz;

    invoke-static {v12, v13, v11, v14}, Lcom/google/android/gms/internal/ads/QC;->j6(JLcom/google/android/gms/internal/ads/LD;[Lcom/google/android/gms/internal/ads/Yz;)V

    :goto_b
    move-object/from16 v0, v17

    iget v11, v0, Lcom/google/android/gms/internal/ads/yA;->gW:I

    add-int/2addr v11, v4

    move-object/from16 v0, v17

    iput v11, v0, Lcom/google/android/gms/internal/ads/yA;->gW:I

    move-object/from16 v0, v17

    iget v11, v0, Lcom/google/android/gms/internal/ads/yA;->BT:I

    sub-int v4, v11, v4

    move-object/from16 v0, v17

    iput v4, v0, Lcom/google/android/gms/internal/ads/yA;->BT:I

    goto/16 :goto_9

    :cond_e
    const/4 v11, 0x0

    move-object/from16 v0, v16

    invoke-interface {v5, v0, v4, v11}, Lcom/google/android/gms/internal/ads/Yz;->j6(Lcom/google/android/gms/internal/ads/Qz;IZ)I

    move-result v4

    goto :goto_b

    :cond_f
    :goto_c
    move-object/from16 v0, v17

    iget v4, v0, Lcom/google/android/gms/internal/ads/yA;->gW:I

    move-object/from16 v0, v17

    iget v6, v0, Lcom/google/android/gms/internal/ads/yA;->yS:I

    if-ge v4, v6, :cond_10

    sub-int v4, v6, v4

    const/4 v6, 0x0

    move-object/from16 v0, v16

    invoke-interface {v5, v0, v4, v6}, Lcom/google/android/gms/internal/ads/Yz;->j6(Lcom/google/android/gms/internal/ads/Qz;IZ)I

    move-result v4

    move-object/from16 v0, v17

    iget v6, v0, Lcom/google/android/gms/internal/ads/yA;->gW:I

    add-int/2addr v4, v6

    move-object/from16 v0, v17

    iput v4, v0, Lcom/google/android/gms/internal/ads/yA;->gW:I

    goto :goto_c

    :cond_10
    move-object/from16 v0, v18

    invoke-virtual {v0, v8}, Lcom/google/android/gms/internal/ads/KA;->DW(I)J

    move-result-wide v6

    const-wide/16 v10, 0x3e8

    mul-long/2addr v6, v10

    move-object/from16 v0, v17

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/yA;->EQ:Lcom/google/android/gms/internal/ads/QD;

    if-nez v4, :cond_17

    move-object/from16 v0, v18

    iget-boolean v4, v0, Lcom/google/android/gms/internal/ads/KA;->J0:Z

    if-eqz v4, :cond_11

    const/high16 v4, 0x40000000    # 2.0f

    :goto_d
    move-object/from16 v0, v18

    iget-object v10, v0, Lcom/google/android/gms/internal/ads/KA;->we:[Z

    aget-boolean v10, v10, v8

    move-object/from16 v0, v18

    iget-boolean v8, v0, Lcom/google/android/gms/internal/ads/KA;->J0:Z

    if-eqz v8, :cond_14

    move-object/from16 v0, v18

    iget-object v8, v0, Lcom/google/android/gms/internal/ads/KA;->Ws:Lcom/google/android/gms/internal/ads/JA;

    if-eqz v8, :cond_12

    :goto_e
    move-object/from16 v0, v17

    iget-object v9, v0, Lcom/google/android/gms/internal/ads/yA;->er:Lcom/google/android/gms/internal/ads/BA;

    iget-object v11, v9, Lcom/google/android/gms/internal/ads/BA;->u7:Lcom/google/android/gms/internal/ads/JA;

    if-eq v8, v11, :cond_13

    new-instance v9, Lcom/google/android/gms/internal/ads/Zz;

    const/4 v11, 0x1

    iget-object v12, v8, Lcom/google/android/gms/internal/ads/JA;->FH:[B

    invoke-direct {v9, v11, v12}, Lcom/google/android/gms/internal/ads/Zz;-><init>(I[B)V

    :goto_f
    move-object v11, v9

    :goto_10
    move-object/from16 v0, v17

    iget-object v9, v0, Lcom/google/android/gms/internal/ads/yA;->er:Lcom/google/android/gms/internal/ads/BA;

    iput-object v11, v9, Lcom/google/android/gms/internal/ads/BA;->gn:Lcom/google/android/gms/internal/ads/Zz;

    iput-object v8, v9, Lcom/google/android/gms/internal/ads/BA;->u7:Lcom/google/android/gms/internal/ads/JA;

    or-int v8, v4, v10

    move-object/from16 v0, v17

    iget v9, v0, Lcom/google/android/gms/internal/ads/yA;->yS:I

    const/4 v10, 0x0

    invoke-interface/range {v5 .. v11}, Lcom/google/android/gms/internal/ads/Yz;->j6(JIIILcom/google/android/gms/internal/ads/Zz;)V

    :goto_11
    move-object/from16 v0, v17

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/yA;->Ws:Ljava/util/LinkedList;

    invoke-virtual {v4}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_15

    move-object/from16 v0, v17

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/yA;->Ws:Ljava/util/LinkedList;

    invoke-virtual {v4}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/internal/ads/AA;

    move-object/from16 v0, v17

    iget v5, v0, Lcom/google/android/gms/internal/ads/yA;->a8:I

    iget v13, v4, Lcom/google/android/gms/internal/ads/AA;->DW:I

    sub-int/2addr v5, v13

    move-object/from16 v0, v17

    iput v5, v0, Lcom/google/android/gms/internal/ads/yA;->a8:I

    move-object/from16 v0, v17

    iget-object v9, v0, Lcom/google/android/gms/internal/ads/yA;->ei:Lcom/google/android/gms/internal/ads/Yz;

    iget-wide v4, v4, Lcom/google/android/gms/internal/ads/AA;->j6:J

    add-long v10, v6, v4

    const/4 v12, 0x1

    move-object/from16 v0, v17

    iget v14, v0, Lcom/google/android/gms/internal/ads/yA;->a8:I

    const/4 v15, 0x0

    invoke-interface/range {v9 .. v15}, Lcom/google/android/gms/internal/ads/Yz;->j6(JIIILcom/google/android/gms/internal/ads/Zz;)V

    goto :goto_11

    :cond_11
    const/4 v4, 0x0

    goto :goto_d

    :cond_12
    iget-object v8, v9, Lcom/google/android/gms/internal/ads/IA;->gn:[Lcom/google/android/gms/internal/ads/JA;

    move-object/from16 v0, v18

    iget-object v9, v0, Lcom/google/android/gms/internal/ads/KA;->j6:Lcom/google/android/gms/internal/ads/vA;

    iget v9, v9, Lcom/google/android/gms/internal/ads/vA;->j6:I

    aget-object v8, v8, v9

    goto :goto_e

    :cond_13
    iget-object v9, v9, Lcom/google/android/gms/internal/ads/BA;->gn:Lcom/google/android/gms/internal/ads/Zz;

    goto :goto_f

    :cond_14
    const/4 v8, 0x0

    const/4 v11, 0x0

    goto :goto_10

    :cond_15
    move-object/from16 v0, v17

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/yA;->er:Lcom/google/android/gms/internal/ads/BA;

    iget v5, v4, Lcom/google/android/gms/internal/ads/BA;->v5:I

    add-int/lit8 v5, v5, 0x1

    iput v5, v4, Lcom/google/android/gms/internal/ads/BA;->v5:I

    iget v5, v4, Lcom/google/android/gms/internal/ads/BA;->Zo:I

    add-int/lit8 v5, v5, 0x1

    iput v5, v4, Lcom/google/android/gms/internal/ads/BA;->Zo:I

    iget v5, v4, Lcom/google/android/gms/internal/ads/BA;->Zo:I

    move-object/from16 v0, v18

    iget-object v6, v0, Lcom/google/android/gms/internal/ads/KA;->gn:[I

    iget v7, v4, Lcom/google/android/gms/internal/ads/BA;->VH:I

    aget v6, v6, v7

    if-ne v5, v6, :cond_16

    add-int/lit8 v5, v7, 0x1

    iput v5, v4, Lcom/google/android/gms/internal/ads/BA;->VH:I

    const/4 v5, 0x0

    iput v5, v4, Lcom/google/android/gms/internal/ads/BA;->Zo:I

    const/4 v4, 0x0

    move-object/from16 v0, v17

    iput-object v4, v0, Lcom/google/android/gms/internal/ads/yA;->er:Lcom/google/android/gms/internal/ads/BA;

    :cond_16
    const/4 v4, 0x3

    move-object/from16 v0, v17

    iput v4, v0, Lcom/google/android/gms/internal/ads/yA;->QX:I

    const/4 v4, 0x1

    goto/16 :goto_3

    :cond_17
    new-instance v4, Ljava/lang/NoSuchMethodError;

    invoke-direct {v4}, Ljava/lang/NoSuchMethodError;-><init>()V

    throw v4

    :cond_18
    move-object/from16 v0, v17

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/yA;->Zo:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v11

    const/4 v4, 0x0

    const/4 v5, 0x0

    move v10, v4

    :goto_12
    if-ge v10, v11, :cond_19

    move-object/from16 v0, v17

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/yA;->Zo:Landroid/util/SparseArray;

    invoke-virtual {v4, v10}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/internal/ads/BA;

    iget-object v4, v4, Lcom/google/android/gms/internal/ads/BA;->j6:Lcom/google/android/gms/internal/ads/KA;

    iget-boolean v6, v4, Lcom/google/android/gms/internal/ads/KA;->aM:Z

    if-eqz v6, :cond_38

    iget-wide v6, v4, Lcom/google/android/gms/internal/ads/KA;->Hw:J

    cmp-long v4, v6, v8

    if-gez v4, :cond_38

    move-object/from16 v0, v17

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/yA;->Zo:Landroid/util/SparseArray;

    invoke-virtual {v4, v10}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/internal/ads/BA;

    :goto_13
    add-int/lit8 v10, v10, 0x1

    move-object v5, v4

    move-wide v8, v6

    goto :goto_12

    :cond_19
    if-nez v5, :cond_1a

    const/4 v4, 0x3

    move-object/from16 v0, v17

    iput v4, v0, Lcom/google/android/gms/internal/ads/yA;->QX:I

    goto/16 :goto_0

    :cond_1a
    invoke-interface/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/Qz;->getPosition()J

    move-result-wide v6

    sub-long v6, v8, v6

    long-to-int v4, v6

    if-ltz v4, :cond_1b

    move-object/from16 v0, v16

    invoke-interface {v0, v4}, Lcom/google/android/gms/internal/ads/Qz;->DW(I)V

    iget-object v4, v5, Lcom/google/android/gms/internal/ads/BA;->j6:Lcom/google/android/gms/internal/ads/KA;

    iget-object v5, v4, Lcom/google/android/gms/internal/ads/KA;->XL:Lcom/google/android/gms/internal/ads/LD;

    iget-object v5, v5, Lcom/google/android/gms/internal/ads/LD;->j6:[B

    const/4 v6, 0x0

    iget v7, v4, Lcom/google/android/gms/internal/ads/KA;->QX:I

    move-object/from16 v0, v16

    invoke-interface {v0, v5, v6, v7}, Lcom/google/android/gms/internal/ads/Qz;->readFully([BII)V

    iget-object v5, v4, Lcom/google/android/gms/internal/ads/KA;->XL:Lcom/google/android/gms/internal/ads/LD;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/google/android/gms/internal/ads/LD;->DW(I)V

    const/4 v5, 0x0

    iput-boolean v5, v4, Lcom/google/android/gms/internal/ads/KA;->aM:Z

    goto/16 :goto_0

    :cond_1b
    new-instance v4, Lcom/google/android/gms/internal/ads/My;

    const-string v5, "Offset to encryption data was negative."

    invoke-direct {v4, v5}, Lcom/google/android/gms/internal/ads/My;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_1c
    move-object/from16 v0, v17

    iget-wide v4, v0, Lcom/google/android/gms/internal/ads/yA;->aM:J

    long-to-int v4, v4

    move-object/from16 v0, v17

    iget v5, v0, Lcom/google/android/gms/internal/ads/yA;->j3:I

    sub-int/2addr v4, v5

    move-object/from16 v0, v17

    iget-object v5, v0, Lcom/google/android/gms/internal/ads/yA;->Mr:Lcom/google/android/gms/internal/ads/LD;

    if-eqz v5, :cond_25

    iget-object v5, v5, Lcom/google/android/gms/internal/ads/LD;->j6:[B

    const/16 v6, 0x8

    move-object/from16 v0, v16

    invoke-interface {v0, v5, v6, v4}, Lcom/google/android/gms/internal/ads/Qz;->readFully([BII)V

    new-instance v5, Lcom/google/android/gms/internal/ads/mA;

    move-object/from16 v0, v17

    iget v4, v0, Lcom/google/android/gms/internal/ads/yA;->XL:I

    move-object/from16 v0, v17

    iget-object v6, v0, Lcom/google/android/gms/internal/ads/yA;->Mr:Lcom/google/android/gms/internal/ads/LD;

    invoke-direct {v5, v4, v6}, Lcom/google/android/gms/internal/ads/mA;-><init>(ILcom/google/android/gms/internal/ads/LD;)V

    invoke-interface/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/Qz;->getPosition()J

    move-result-wide v10

    move-object/from16 v0, v17

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/yA;->J8:Ljava/util/Stack;

    invoke-virtual {v4}, Ljava/util/Stack;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_1e

    move-object/from16 v0, v17

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/yA;->J8:Ljava/util/Stack;

    invoke-virtual {v4}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/internal/ads/lA;

    invoke-virtual {v4, v5}, Lcom/google/android/gms/internal/ads/lA;->j6(Lcom/google/android/gms/internal/ads/mA;)V

    :goto_14
    invoke-interface/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/Qz;->getPosition()J

    move-result-wide v4

    move-object/from16 v0, v17

    invoke-direct {v0, v4, v5}, Lcom/google/android/gms/internal/ads/yA;->j6(J)V

    :cond_1d
    move-object/from16 v5, v17

    move-object/from16 v4, v16

    move-object/from16 v16, v4

    move-object/from16 v17, v5

    goto/16 :goto_0

    :cond_1e
    iget v4, v5, Lcom/google/android/gms/internal/ads/kA;->sg:I

    sget v6, Lcom/google/android/gms/internal/ads/kA;->gW:I

    if-ne v4, v6, :cond_23

    iget-object v15, v5, Lcom/google/android/gms/internal/ads/mA;->pO:Lcom/google/android/gms/internal/ads/LD;

    const/16 v4, 0x8

    invoke-virtual {v15, v4}, Lcom/google/android/gms/internal/ads/LD;->DW(I)V

    invoke-virtual {v15}, Lcom/google/android/gms/internal/ads/LD;->Hw()I

    move-result v4

    invoke-static {v4}, Lcom/google/android/gms/internal/ads/kA;->j6(I)I

    move-result v4

    const/4 v5, 0x4

    invoke-virtual {v15, v5}, Lcom/google/android/gms/internal/ads/LD;->Hw(I)V

    invoke-virtual {v15}, Lcom/google/android/gms/internal/ads/LD;->we()J

    move-result-wide v8

    if-nez v4, :cond_1f

    invoke-virtual {v15}, Lcom/google/android/gms/internal/ads/LD;->we()J

    move-result-wide v4

    invoke-virtual {v15}, Lcom/google/android/gms/internal/ads/LD;->we()J

    move-result-wide v6

    :goto_15
    add-long v12, v10, v6

    const-wide/32 v6, 0xf4240

    invoke-static/range {v4 .. v9}, Lcom/google/android/gms/internal/ads/TD;->j6(JJJ)J

    move-result-wide v10

    const/4 v6, 0x2

    invoke-virtual {v15, v6}, Lcom/google/android/gms/internal/ads/LD;->Hw(I)V

    invoke-virtual {v15}, Lcom/google/android/gms/internal/ads/LD;->gn()I

    move-result v16

    move/from16 v0, v16

    new-array v0, v0, [I

    move-object/from16 v17, v0

    move/from16 v0, v16

    new-array v0, v0, [J

    move-object/from16 v18, v0

    move/from16 v0, v16

    new-array v0, v0, [J

    move-object/from16 v19, v0

    move/from16 v0, v16

    new-array v0, v0, [J

    move-object/from16 v20, v0

    const/4 v14, 0x0

    move-wide v6, v10

    :goto_16
    move/from16 v0, v16

    if-ge v14, v0, :cond_21

    invoke-virtual {v15}, Lcom/google/android/gms/internal/ads/LD;->Hw()I

    move-result v21

    const/high16 v22, -0x80000000

    and-int v22, v22, v21

    if-nez v22, :cond_20

    invoke-virtual {v15}, Lcom/google/android/gms/internal/ads/LD;->we()J

    move-result-wide v22

    const v24, 0x7fffffff

    and-int v21, v21, v24

    aput v21, v17, v14

    aput-wide v12, v18, v14

    aput-wide v6, v20, v14

    add-long v4, v4, v22

    const-wide/32 v6, 0xf4240

    invoke-static/range {v4 .. v9}, Lcom/google/android/gms/internal/ads/TD;->j6(JJJ)J

    move-result-wide v6

    aget-wide v22, v20, v14

    sub-long v22, v6, v22

    aput-wide v22, v19, v14

    const/16 v21, 0x4

    move/from16 v0, v21

    invoke-virtual {v15, v0}, Lcom/google/android/gms/internal/ads/LD;->Hw(I)V

    aget v21, v17, v14

    move/from16 v0, v21

    int-to-long v0, v0

    move-wide/from16 v22, v0

    add-long v12, v12, v22

    add-int/lit8 v14, v14, 0x1

    goto :goto_16

    :cond_1f
    invoke-virtual {v15}, Lcom/google/android/gms/internal/ads/LD;->QX()J

    move-result-wide v4

    invoke-virtual {v15}, Lcom/google/android/gms/internal/ads/LD;->QX()J

    move-result-wide v6

    goto :goto_15

    :cond_20
    new-instance v4, Lcom/google/android/gms/internal/ads/My;

    const-string v5, "Unhandled indirect reference"

    invoke-direct {v4, v5}, Lcom/google/android/gms/internal/ads/My;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_21
    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    new-instance v5, Lcom/google/android/gms/internal/ads/Lz;

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    move-object/from16 v3, v20

    invoke-direct {v5, v0, v1, v2, v3}, Lcom/google/android/gms/internal/ads/Lz;-><init>([I[J[J[J)V

    invoke-static {v4, v5}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v5

    iget-object v4, v5, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    move-object/from16 v0, p0

    iput-wide v6, v0, Lcom/google/android/gms/internal/ads/yA;->rN:J

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/gms/internal/ads/yA;->P8:Lcom/google/android/gms/internal/ads/Rz;

    iget-object v4, v5, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v4, Lcom/google/android/gms/internal/ads/Wz;

    invoke-interface {v6, v4}, Lcom/google/android/gms/internal/ads/Rz;->j6(Lcom/google/android/gms/internal/ads/Wz;)V

    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/google/android/gms/internal/ads/yA;->SI:Z

    move-object/from16 v17, p0

    :cond_22
    :goto_17
    move-object/from16 v16, p1

    goto/16 :goto_14

    :cond_23
    sget v6, Lcom/google/android/gms/internal/ads/kA;->Z1:I

    if-ne v4, v6, :cond_22

    iget-object v10, v5, Lcom/google/android/gms/internal/ads/mA;->pO:Lcom/google/android/gms/internal/ads/LD;

    move-object/from16 v0, v17

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/yA;->ei:Lcom/google/android/gms/internal/ads/Yz;

    if-eqz v4, :cond_22

    const/16 v4, 0xc

    invoke-virtual {v10, v4}, Lcom/google/android/gms/internal/ads/LD;->DW(I)V

    invoke-virtual {v10}, Lcom/google/android/gms/internal/ads/LD;->XL()Ljava/lang/String;

    invoke-virtual {v10}, Lcom/google/android/gms/internal/ads/LD;->XL()Ljava/lang/String;

    invoke-virtual {v10}, Lcom/google/android/gms/internal/ads/LD;->we()J

    move-result-wide v8

    invoke-virtual {v10}, Lcom/google/android/gms/internal/ads/LD;->we()J

    move-result-wide v4

    const-wide/32 v6, 0xf4240

    invoke-static/range {v4 .. v9}, Lcom/google/android/gms/internal/ads/TD;->j6(JJJ)J

    move-result-wide v6

    const/16 v4, 0xc

    invoke-virtual {v10, v4}, Lcom/google/android/gms/internal/ads/LD;->DW(I)V

    invoke-virtual {v10}, Lcom/google/android/gms/internal/ads/LD;->tp()I

    move-result v9

    move-object/from16 v0, v17

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/yA;->ei:Lcom/google/android/gms/internal/ads/Yz;

    invoke-interface {v4, v10, v9}, Lcom/google/android/gms/internal/ads/Yz;->j6(Lcom/google/android/gms/internal/ads/LD;I)V

    move-object/from16 v0, v17

    iget-wide v10, v0, Lcom/google/android/gms/internal/ads/yA;->rN:J

    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v4, v10, v4

    if-eqz v4, :cond_24

    move-object/from16 v0, v17

    iget-object v5, v0, Lcom/google/android/gms/internal/ads/yA;->ei:Lcom/google/android/gms/internal/ads/Yz;

    add-long/2addr v6, v10

    const/4 v8, 0x1

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-interface/range {v5 .. v11}, Lcom/google/android/gms/internal/ads/Yz;->j6(JIIILcom/google/android/gms/internal/ads/Zz;)V

    goto :goto_17

    :cond_24
    move-object/from16 v0, v17

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/yA;->Ws:Ljava/util/LinkedList;

    new-instance v5, Lcom/google/android/gms/internal/ads/AA;

    invoke-direct {v5, v6, v7, v9}, Lcom/google/android/gms/internal/ads/AA;-><init>(JI)V

    invoke-virtual {v4, v5}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    move-object/from16 v0, v17

    iget v4, v0, Lcom/google/android/gms/internal/ads/yA;->a8:I

    add-int/2addr v4, v9

    move-object/from16 v0, v17

    iput v4, v0, Lcom/google/android/gms/internal/ads/yA;->a8:I

    goto :goto_17

    :cond_25
    move-object/from16 v0, v16

    invoke-interface {v0, v4}, Lcom/google/android/gms/internal/ads/Qz;->DW(I)V

    goto/16 :goto_14

    :cond_26
    move-object/from16 v0, v17

    iget v4, v0, Lcom/google/android/gms/internal/ads/yA;->j3:I

    if-nez v4, :cond_28

    move-object/from16 v0, v17

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/yA;->we:Lcom/google/android/gms/internal/ads/LD;

    iget-object v4, v4, Lcom/google/android/gms/internal/ads/LD;->j6:[B

    const/4 v5, 0x0

    const/16 v6, 0x8

    const/4 v7, 0x1

    move-object/from16 v0, v16

    invoke-interface {v0, v4, v5, v6, v7}, Lcom/google/android/gms/internal/ads/Qz;->j6([BIIZ)Z

    move-result v4

    if-nez v4, :cond_27

    const/4 v4, 0x0

    :goto_18
    if-nez v4, :cond_1d

    const/4 v4, -0x1

    goto/16 :goto_4

    :cond_27
    const/16 v4, 0x8

    move-object/from16 v0, v17

    iput v4, v0, Lcom/google/android/gms/internal/ads/yA;->j3:I

    move-object/from16 v0, v17

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/yA;->we:Lcom/google/android/gms/internal/ads/LD;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/google/android/gms/internal/ads/LD;->DW(I)V

    move-object/from16 v0, v17

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/yA;->we:Lcom/google/android/gms/internal/ads/LD;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/LD;->we()J

    move-result-wide v4

    move-object/from16 v0, v17

    iput-wide v4, v0, Lcom/google/android/gms/internal/ads/yA;->aM:J

    move-object/from16 v0, v17

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/yA;->we:Lcom/google/android/gms/internal/ads/LD;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/LD;->Hw()I

    move-result v4

    move-object/from16 v0, v17

    iput v4, v0, Lcom/google/android/gms/internal/ads/yA;->XL:I

    :cond_28
    move-object/from16 v0, v17

    iget-wide v4, v0, Lcom/google/android/gms/internal/ads/yA;->aM:J

    const-wide/16 v6, 0x1

    cmp-long v4, v4, v6

    if-nez v4, :cond_29

    move-object/from16 v0, v17

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/yA;->we:Lcom/google/android/gms/internal/ads/LD;

    iget-object v4, v4, Lcom/google/android/gms/internal/ads/LD;->j6:[B

    const/16 v5, 0x8

    const/16 v6, 0x8

    move-object/from16 v0, v16

    invoke-interface {v0, v4, v5, v6}, Lcom/google/android/gms/internal/ads/Qz;->readFully([BII)V

    move-object/from16 v0, v17

    iget v4, v0, Lcom/google/android/gms/internal/ads/yA;->j3:I

    add-int/lit8 v4, v4, 0x8

    move-object/from16 v0, v17

    iput v4, v0, Lcom/google/android/gms/internal/ads/yA;->j3:I

    move-object/from16 v0, v17

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/yA;->we:Lcom/google/android/gms/internal/ads/LD;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/LD;->QX()J

    move-result-wide v4

    move-object/from16 v0, v17

    iput-wide v4, v0, Lcom/google/android/gms/internal/ads/yA;->aM:J

    :cond_29
    move-object/from16 v0, v17

    iget-wide v4, v0, Lcom/google/android/gms/internal/ads/yA;->aM:J

    move-object/from16 v0, v17

    iget v6, v0, Lcom/google/android/gms/internal/ads/yA;->j3:I

    int-to-long v6, v6

    cmp-long v4, v4, v6

    if-ltz v4, :cond_37

    invoke-interface/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/Qz;->getPosition()J

    move-result-wide v4

    move-object/from16 v0, v17

    iget v6, v0, Lcom/google/android/gms/internal/ads/yA;->j3:I

    int-to-long v6, v6

    sub-long v6, v4, v6

    move-object/from16 v0, v17

    iget v4, v0, Lcom/google/android/gms/internal/ads/yA;->XL:I

    sget v5, Lcom/google/android/gms/internal/ads/kA;->sh:I

    if-ne v4, v5, :cond_2a

    move-object/from16 v0, v17

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/yA;->Zo:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v8

    const/4 v4, 0x0

    move v5, v4

    :goto_19
    if-ge v5, v8, :cond_2a

    move-object/from16 v0, v17

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/yA;->Zo:Landroid/util/SparseArray;

    invoke-virtual {v4, v5}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/internal/ads/BA;

    iget-object v4, v4, Lcom/google/android/gms/internal/ads/BA;->j6:Lcom/google/android/gms/internal/ads/KA;

    iput-wide v6, v4, Lcom/google/android/gms/internal/ads/KA;->DW:J

    iput-wide v6, v4, Lcom/google/android/gms/internal/ads/KA;->Hw:J

    iput-wide v6, v4, Lcom/google/android/gms/internal/ads/KA;->FH:J

    add-int/lit8 v4, v5, 0x1

    move v5, v4

    goto :goto_19

    :cond_2a
    move-object/from16 v0, v17

    iget v4, v0, Lcom/google/android/gms/internal/ads/yA;->XL:I

    sget v5, Lcom/google/android/gms/internal/ads/kA;->gn:I

    if-ne v4, v5, :cond_2c

    const/4 v4, 0x0

    move-object/from16 v0, v17

    iput-object v4, v0, Lcom/google/android/gms/internal/ads/yA;->er:Lcom/google/android/gms/internal/ads/BA;

    move-object/from16 v0, v17

    iget-wide v4, v0, Lcom/google/android/gms/internal/ads/yA;->aM:J

    add-long/2addr v4, v6

    move-object/from16 v0, v17

    iput-wide v4, v0, Lcom/google/android/gms/internal/ads/yA;->U2:J

    move-object/from16 v0, v17

    iget-boolean v4, v0, Lcom/google/android/gms/internal/ads/yA;->SI:Z

    if-nez v4, :cond_2b

    move-object/from16 v0, v17

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/yA;->P8:Lcom/google/android/gms/internal/ads/Rz;

    new-instance v5, Lcom/google/android/gms/internal/ads/Xz;

    move-object/from16 v0, v17

    iget-wide v6, v0, Lcom/google/android/gms/internal/ads/yA;->lg:J

    invoke-direct {v5, v6, v7}, Lcom/google/android/gms/internal/ads/Xz;-><init>(J)V

    invoke-interface {v4, v5}, Lcom/google/android/gms/internal/ads/Rz;->j6(Lcom/google/android/gms/internal/ads/Wz;)V

    const/4 v4, 0x1

    move-object/from16 v0, v17

    iput-boolean v4, v0, Lcom/google/android/gms/internal/ads/yA;->SI:Z

    :cond_2b
    const/4 v4, 0x2

    move-object/from16 v0, v17

    iput v4, v0, Lcom/google/android/gms/internal/ads/yA;->QX:I

    :goto_1a
    const/4 v4, 0x1

    goto/16 :goto_18

    :cond_2c
    sget v5, Lcom/google/android/gms/internal/ads/kA;->BT:I

    if-eq v4, v5, :cond_2d

    sget v5, Lcom/google/android/gms/internal/ads/kA;->P8:I

    if-eq v4, v5, :cond_2d

    sget v5, Lcom/google/android/gms/internal/ads/kA;->ei:I

    if-eq v4, v5, :cond_2d

    sget v5, Lcom/google/android/gms/internal/ads/kA;->nw:I

    if-eq v4, v5, :cond_2d

    sget v5, Lcom/google/android/gms/internal/ads/kA;->SI:I

    if-eq v4, v5, :cond_2d

    sget v5, Lcom/google/android/gms/internal/ads/kA;->sh:I

    if-eq v4, v5, :cond_2d

    sget v5, Lcom/google/android/gms/internal/ads/kA;->cb:I

    if-eq v4, v5, :cond_2d

    sget v5, Lcom/google/android/gms/internal/ads/kA;->dx:I

    if-eq v4, v5, :cond_2d

    sget v5, Lcom/google/android/gms/internal/ads/kA;->Sf:I

    if-ne v4, v5, :cond_2e

    :cond_2d
    const/4 v4, 0x1

    :goto_1b
    if-eqz v4, :cond_30

    invoke-interface/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/Qz;->getPosition()J

    move-result-wide v4

    move-object/from16 v0, v17

    iget-wide v6, v0, Lcom/google/android/gms/internal/ads/yA;->aM:J

    add-long/2addr v4, v6

    const-wide/16 v6, 0x8

    sub-long/2addr v4, v6

    move-object/from16 v0, v17

    iget-object v6, v0, Lcom/google/android/gms/internal/ads/yA;->J8:Ljava/util/Stack;

    new-instance v7, Lcom/google/android/gms/internal/ads/lA;

    move-object/from16 v0, v17

    iget v8, v0, Lcom/google/android/gms/internal/ads/yA;->XL:I

    invoke-direct {v7, v8, v4, v5}, Lcom/google/android/gms/internal/ads/lA;-><init>(IJ)V

    invoke-virtual {v6, v7}, Ljava/util/Stack;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, v17

    iget-wide v6, v0, Lcom/google/android/gms/internal/ads/yA;->aM:J

    move-object/from16 v0, v17

    iget v8, v0, Lcom/google/android/gms/internal/ads/yA;->j3:I

    int-to-long v8, v8

    cmp-long v6, v6, v8

    if-nez v6, :cond_2f

    move-object/from16 v0, v17

    invoke-direct {v0, v4, v5}, Lcom/google/android/gms/internal/ads/yA;->j6(J)V

    goto :goto_1a

    :cond_2e
    const/4 v4, 0x0

    goto :goto_1b

    :cond_2f
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/yA;->DW()V

    goto :goto_1a

    :cond_30
    move-object/from16 v0, v17

    iget v4, v0, Lcom/google/android/gms/internal/ads/yA;->XL:I

    sget v5, Lcom/google/android/gms/internal/ads/kA;->Mz:I

    if-eq v4, v5, :cond_31

    sget v5, Lcom/google/android/gms/internal/ads/kA;->g3:I

    if-eq v4, v5, :cond_31

    sget v5, Lcom/google/android/gms/internal/ads/kA;->vy:I

    if-eq v4, v5, :cond_31

    sget v5, Lcom/google/android/gms/internal/ads/kA;->gW:I

    if-eq v4, v5, :cond_31

    sget v5, Lcom/google/android/gms/internal/ads/kA;->I:I

    if-eq v4, v5, :cond_31

    sget v5, Lcom/google/android/gms/internal/ads/kA;->lg:I

    if-eq v4, v5, :cond_31

    sget v5, Lcom/google/android/gms/internal/ads/kA;->rN:I

    if-eq v4, v5, :cond_31

    sget v5, Lcom/google/android/gms/internal/ads/kA;->ef:I

    if-eq v4, v5, :cond_31

    sget v5, Lcom/google/android/gms/internal/ads/kA;->er:I

    if-eq v4, v5, :cond_31

    sget v5, Lcom/google/android/gms/internal/ads/kA;->yS:I

    if-eq v4, v5, :cond_31

    sget v5, Lcom/google/android/gms/internal/ads/kA;->ca:I

    if-eq v4, v5, :cond_31

    sget v5, Lcom/google/android/gms/internal/ads/kA;->XX:I

    if-eq v4, v5, :cond_31

    sget v5, Lcom/google/android/gms/internal/ads/kA;->kQ:I

    if-eq v4, v5, :cond_31

    sget v5, Lcom/google/android/gms/internal/ads/kA;->wc:I

    if-eq v4, v5, :cond_31

    sget v5, Lcom/google/android/gms/internal/ads/kA;->jJ:I

    if-eq v4, v5, :cond_31

    sget v5, Lcom/google/android/gms/internal/ads/kA;->yO:I

    if-eq v4, v5, :cond_31

    sget v5, Lcom/google/android/gms/internal/ads/kA;->XG:I

    if-eq v4, v5, :cond_31

    sget v5, Lcom/google/android/gms/internal/ads/kA;->vJ:I

    if-eq v4, v5, :cond_31

    sget v5, Lcom/google/android/gms/internal/ads/kA;->sG:I

    if-eq v4, v5, :cond_31

    sget v5, Lcom/google/android/gms/internal/ads/kA;->Z1:I

    if-ne v4, v5, :cond_32

    :cond_31
    const/4 v4, 0x1

    :goto_1c
    if-eqz v4, :cond_35

    move-object/from16 v0, v17

    iget v4, v0, Lcom/google/android/gms/internal/ads/yA;->j3:I

    const/16 v5, 0x8

    if-ne v4, v5, :cond_34

    move-object/from16 v0, v17

    iget-wide v4, v0, Lcom/google/android/gms/internal/ads/yA;->aM:J

    const-wide/32 v6, 0x7fffffff

    cmp-long v6, v4, v6

    if-gtz v6, :cond_33

    new-instance v6, Lcom/google/android/gms/internal/ads/LD;

    long-to-int v4, v4

    invoke-direct {v6, v4}, Lcom/google/android/gms/internal/ads/LD;-><init>(I)V

    move-object/from16 v0, v17

    iput-object v6, v0, Lcom/google/android/gms/internal/ads/yA;->Mr:Lcom/google/android/gms/internal/ads/LD;

    move-object/from16 v0, v17

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/yA;->we:Lcom/google/android/gms/internal/ads/LD;

    iget-object v4, v4, Lcom/google/android/gms/internal/ads/LD;->j6:[B

    const/4 v5, 0x0

    move-object/from16 v0, v17

    iget-object v6, v0, Lcom/google/android/gms/internal/ads/yA;->Mr:Lcom/google/android/gms/internal/ads/LD;

    iget-object v6, v6, Lcom/google/android/gms/internal/ads/LD;->j6:[B

    const/4 v7, 0x0

    const/16 v8, 0x8

    invoke-static {v4, v5, v6, v7, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 v4, 0x1

    const/4 v5, 0x1

    move-object/from16 v0, v17

    iput v5, v0, Lcom/google/android/gms/internal/ads/yA;->QX:I

    goto/16 :goto_18

    :cond_32
    const/4 v4, 0x0

    goto :goto_1c

    :cond_33
    new-instance v4, Lcom/google/android/gms/internal/ads/My;

    const-string v5, "Leaf atom with length > 2147483647 (unsupported)."

    invoke-direct {v4, v5}, Lcom/google/android/gms/internal/ads/My;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_34
    new-instance v4, Lcom/google/android/gms/internal/ads/My;

    const-string v5, "Leaf atom defines extended atom size (unsupported)."

    invoke-direct {v4, v5}, Lcom/google/android/gms/internal/ads/My;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_35
    move-object/from16 v0, v17

    iget-wide v4, v0, Lcom/google/android/gms/internal/ads/yA;->aM:J

    const-wide/32 v6, 0x7fffffff

    cmp-long v4, v4, v6

    if-gtz v4, :cond_36

    const/4 v4, 0x0

    move-object/from16 v0, v17

    iput-object v4, v0, Lcom/google/android/gms/internal/ads/yA;->Mr:Lcom/google/android/gms/internal/ads/LD;

    const/4 v4, 0x1

    const/4 v5, 0x1

    move-object/from16 v0, v17

    iput v5, v0, Lcom/google/android/gms/internal/ads/yA;->QX:I

    goto/16 :goto_18

    :cond_36
    new-instance v4, Lcom/google/android/gms/internal/ads/My;

    const-string v5, "Skipping atom with length > 2147483647 (unsupported)."

    invoke-direct {v4, v5}, Lcom/google/android/gms/internal/ads/My;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_37
    new-instance v4, Lcom/google/android/gms/internal/ads/My;

    const-string v5, "Atom size less than header length (unsupported)."

    invoke-direct {v4, v5}, Lcom/google/android/gms/internal/ads/My;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_38
    move-object v4, v5

    move-wide v6, v8

    goto/16 :goto_13

    :cond_39
    move-object v4, v5

    move-wide v6, v8

    goto/16 :goto_2
.end method

.method public final j6()V
    .registers 1

    return-void
.end method

.method public final j6(JJ)V
    .registers 9

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/yA;->Zo:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v3

    move v1, v2

    :goto_0
    if-ge v1, v3, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/yA;->Zo:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/BA;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/BA;->j6()V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/yA;->Ws:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    iput v2, p0, Lcom/google/android/gms/internal/ads/yA;->a8:I

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/yA;->J8:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->clear()V

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/yA;->DW()V

    return-void
.end method

.method public final j6(Lcom/google/android/gms/internal/ads/Rz;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/yA;->P8:Lcom/google/android/gms/internal/ads/Rz;

    return-void
.end method

.method public final j6(Lcom/google/android/gms/internal/ads/Qz;)Z
    .registers 3

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/HA;->j6(Lcom/google/android/gms/internal/ads/Qz;)Z

    move-result v0

    return v0
.end method
