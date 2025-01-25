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
            "Ljava/util/Stack<",
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
            "Ljava/util/LinkedList<",
            "Lcom/google/android/gms/internal/ads/AA;",
            ">;"
        }
    .end annotation
.end field

.field private XL:I

.field private final Zo:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
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

    fill-array-data v0, :array_1a

    sput-object v0, Lcom/google/android/gms/internal/ads/yA;->FH:[B

    return-void

    nop

    :array_1a
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
    .registers 3

    const/4 p2, 0x0

    invoke-direct {p0, p1, p2, p2}, Lcom/google/android/gms/internal/ads/yA;-><init>(ILcom/google/android/gms/internal/ads/QD;Lcom/google/android/gms/internal/ads/IA;)V

    return-void
.end method

.method private constructor <init>(ILcom/google/android/gms/internal/ads/QD;Lcom/google/android/gms/internal/ads/IA;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/internal/ads/yA;->Hw:I

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/yA;->EQ:Lcom/google/android/gms/internal/ads/QD;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/yA;->v5:Lcom/google/android/gms/internal/ads/IA;

    new-instance p1, Lcom/google/android/gms/internal/ads/LD;

    const/16 p2, 0x10

    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/ads/LD;-><init>(I)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/yA;->we:Lcom/google/android/gms/internal/ads/LD;

    new-instance p1, Lcom/google/android/gms/internal/ads/LD;

    sget-object p3, Lcom/google/android/gms/internal/ads/ID;->j6:[B

    invoke-direct {p1, p3}, Lcom/google/android/gms/internal/ads/LD;-><init>([B)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/yA;->VH:Lcom/google/android/gms/internal/ads/LD;

    new-instance p1, Lcom/google/android/gms/internal/ads/LD;

    const/4 p3, 0x5

    invoke-direct {p1, p3}, Lcom/google/android/gms/internal/ads/LD;-><init>(I)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/yA;->gn:Lcom/google/android/gms/internal/ads/LD;

    new-instance p1, Lcom/google/android/gms/internal/ads/LD;

    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/LD;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/yA;->u7:Lcom/google/android/gms/internal/ads/LD;

    new-instance p1, Lcom/google/android/gms/internal/ads/LD;

    const/4 p3, 0x1

    invoke-direct {p1, p3}, Lcom/google/android/gms/internal/ads/LD;-><init>(I)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/yA;->tp:Lcom/google/android/gms/internal/ads/LD;

    new-array p1, p2, [B

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/yA;->J0:[B

    new-instance p1, Ljava/util/Stack;

    invoke-direct {p1}, Ljava/util/Stack;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/yA;->J8:Ljava/util/Stack;

    new-instance p1, Ljava/util/LinkedList;

    invoke-direct {p1}, Ljava/util/LinkedList;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/yA;->Ws:Ljava/util/LinkedList;

    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/yA;->Zo:Landroid/util/SparseArray;

    const-wide p1, -0x7fffffffffffffffL  # -4.9E-324

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/yA;->lg:J

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/yA;->rN:J

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
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/ads/mA;",
            ">;)",
            "Lcom/google/android/gms/internal/ads/zzhp;"
        }
    .end annotation

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object v3, v2

    :goto_7
    if-ge v1, v0, :cond_3b

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/internal/ads/mA;

    iget v5, v4, Lcom/google/android/gms/internal/ads/kA;->sg:I

    sget v6, Lcom/google/android/gms/internal/ads/kA;->ca:I

    if-ne v5, v6, :cond_38

    if-nez v3, :cond_1c

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    :cond_1c
    iget-object v4, v4, Lcom/google/android/gms/internal/ads/mA;->pO:Lcom/google/android/gms/internal/ads/LD;

    iget-object v4, v4, Lcom/google/android/gms/internal/ads/LD;->j6:[B

    invoke-static {v4}, Lcom/google/android/gms/internal/ads/GA;->j6([B)Ljava/util/UUID;

    move-result-object v5

    if-nez v5, :cond_2e

    const-string v4, "FragmentedMp4Extractor"

    const-string v5, "Skipped pssh atom (failed to extract uuid)"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_38

    :cond_2e
    new-instance v6, Lcom/google/android/gms/internal/ads/zzhp$zza;

    const-string v7, "video/mp4"

    invoke-direct {v6, v5, v7, v4}, Lcom/google/android/gms/internal/ads/zzhp$zza;-><init>(Ljava/util/UUID;Ljava/lang/String;[B)V

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_38
    :goto_38
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_3b
    if-nez v3, :cond_3e

    return-object v2

    :cond_3e
    new-instance p0, Lcom/google/android/gms/internal/ads/zzhp;

    invoke-direct {p0, v3}, Lcom/google/android/gms/internal/ads/zzhp;-><init>(Ljava/util/List;)V

    return-object p0
.end method

.method private final j6(J)V
    .registers 56

    move-object/from16 v0, p0

    move-object v1, v0

    :cond_3
    :goto_3
    iget-object v2, v1, Lcom/google/android/gms/internal/ads/yA;->J8:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_6dd

    iget-object v2, v1, Lcom/google/android/gms/internal/ads/yA;->J8:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/ads/lA;

    iget-wide v2, v2, Lcom/google/android/gms/internal/ads/lA;->pO:J

    cmp-long v4, v2, p1

    if-nez v4, :cond_6dd

    iget-object v2, v1, Lcom/google/android/gms/internal/ads/yA;->J8:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/ads/lA;

    iget v3, v2, Lcom/google/android/gms/internal/ads/kA;->sg:I

    sget v4, Lcom/google/android/gms/internal/ads/kA;->BT:I

    const/16 v5, 0xc

    const/4 v7, 0x4

    const/16 v8, 0x8

    const/4 v10, 0x1

    if-ne v3, v4, :cond_1c4

    const-string v3, "Unexpected moov box."

    invoke-static {v10, v3}, Lcom/google/android/gms/internal/ads/CD;->DW(ZLjava/lang/Object;)V

    iget-object v3, v2, Lcom/google/android/gms/internal/ads/lA;->fN:Ljava/util/List;

    invoke-static {v3}, Lcom/google/android/gms/internal/ads/yA;->j6(Ljava/util/List;)Lcom/google/android/gms/internal/ads/zzhp;

    move-result-object v3

    sget v4, Lcom/google/android/gms/internal/ads/kA;->dx:I

    invoke-virtual {v2, v4}, Lcom/google/android/gms/internal/ads/lA;->v5(I)Lcom/google/android/gms/internal/ads/lA;

    move-result-object v4

    new-instance v15, Landroid/util/SparseArray;

    invoke-direct {v15}, Landroid/util/SparseArray;-><init>()V

    iget-object v11, v4, Lcom/google/android/gms/internal/ads/lA;->fN:Ljava/util/List;

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v11

    const-wide v12, -0x7fffffffffffffffL  # -4.9E-324

    move-wide/from16 v17, v12

    const/4 v12, 0x0

    :goto_51
    if-ge v12, v11, :cond_bd

    iget-object v13, v4, Lcom/google/android/gms/internal/ads/lA;->fN:Ljava/util/List;

    invoke-interface {v13, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/google/android/gms/internal/ads/mA;

    iget v14, v13, Lcom/google/android/gms/internal/ads/kA;->sg:I

    sget v9, Lcom/google/android/gms/internal/ads/kA;->er:I

    if-ne v14, v9, :cond_99

    iget-object v9, v13, Lcom/google/android/gms/internal/ads/mA;->pO:Lcom/google/android/gms/internal/ads/LD;

    invoke-virtual {v9, v5}, Lcom/google/android/gms/internal/ads/LD;->DW(I)V

    invoke-virtual {v9}, Lcom/google/android/gms/internal/ads/LD;->Hw()I

    move-result v13

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    new-instance v14, Lcom/google/android/gms/internal/ads/vA;

    invoke-virtual {v9}, Lcom/google/android/gms/internal/ads/LD;->Ws()I

    move-result v16

    add-int/lit8 v5, v16, -0x1

    invoke-virtual {v9}, Lcom/google/android/gms/internal/ads/LD;->Ws()I

    move-result v10

    invoke-virtual {v9}, Lcom/google/android/gms/internal/ads/LD;->Ws()I

    move-result v6

    invoke-virtual {v9}, Lcom/google/android/gms/internal/ads/LD;->Hw()I

    move-result v9

    invoke-direct {v14, v5, v10, v6, v9}, Lcom/google/android/gms/internal/ads/vA;-><init>(IIII)V

    invoke-static {v13, v14}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v5

    iget-object v6, v5, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    iget-object v5, v5, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v5, Lcom/google/android/gms/internal/ads/vA;

    invoke-virtual {v15, v6, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_b7

    :cond_99
    sget v5, Lcom/google/android/gms/internal/ads/kA;->sG:I

    if-ne v14, v5, :cond_b7

    iget-object v5, v13, Lcom/google/android/gms/internal/ads/mA;->pO:Lcom/google/android/gms/internal/ads/LD;

    invoke-virtual {v5, v8}, Lcom/google/android/gms/internal/ads/LD;->DW(I)V

    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/LD;->Hw()I

    move-result v6

    invoke-static {v6}, Lcom/google/android/gms/internal/ads/kA;->j6(I)I

    move-result v6

    if-nez v6, :cond_b1

    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/LD;->we()J

    move-result-wide v5

    goto :goto_b5

    :cond_b1
    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/LD;->QX()J

    move-result-wide v5

    :goto_b5
    move-wide/from16 v17, v5

    :cond_b7
    :goto_b7
    add-int/lit8 v12, v12, 0x1

    const/16 v5, 0xc

    const/4 v10, 0x1

    goto :goto_51

    :cond_bd
    new-instance v4, Landroid/util/SparseArray;

    invoke-direct {v4}, Landroid/util/SparseArray;-><init>()V

    iget-object v5, v2, Lcom/google/android/gms/internal/ads/lA;->Gj:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    const/4 v6, 0x0

    :goto_c9
    if-ge v6, v5, :cond_f7

    iget-object v9, v2, Lcom/google/android/gms/internal/ads/lA;->Gj:Ljava/util/List;

    invoke-interface {v9, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    move-object v11, v9

    check-cast v11, Lcom/google/android/gms/internal/ads/lA;

    iget v9, v11, Lcom/google/android/gms/internal/ads/kA;->sg:I

    sget v10, Lcom/google/android/gms/internal/ads/kA;->P8:I

    if-ne v9, v10, :cond_f2

    sget v9, Lcom/google/android/gms/internal/ads/kA;->vy:I

    invoke-virtual {v2, v9}, Lcom/google/android/gms/internal/ads/lA;->Hw(I)Lcom/google/android/gms/internal/ads/mA;

    move-result-object v12

    const/16 v16, 0x0

    move-wide/from16 v13, v17

    move-object v9, v15

    move-object v15, v3

    invoke-static/range {v11 .. v16}, Lcom/google/android/gms/internal/ads/nA;->j6(Lcom/google/android/gms/internal/ads/lA;Lcom/google/android/gms/internal/ads/mA;JLcom/google/android/gms/internal/ads/zzhp;Z)Lcom/google/android/gms/internal/ads/IA;

    move-result-object v10

    if-eqz v10, :cond_f3

    iget v11, v10, Lcom/google/android/gms/internal/ads/IA;->j6:I

    invoke-virtual {v4, v11, v10}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_f3

    :cond_f2
    move-object v9, v15

    :cond_f3
    :goto_f3
    add-int/lit8 v6, v6, 0x1

    move-object v15, v9

    goto :goto_c9

    :cond_f7
    move-object v9, v15

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v2

    iget-object v3, v1, Lcom/google/android/gms/internal/ads/yA;->Zo:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-nez v3, :cond_195

    const/4 v3, 0x0

    :goto_105
    if-ge v3, v2, :cond_139

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/gms/internal/ads/IA;

    new-instance v6, Lcom/google/android/gms/internal/ads/BA;

    iget-object v10, v1, Lcom/google/android/gms/internal/ads/yA;->P8:Lcom/google/android/gms/internal/ads/Rz;

    iget v11, v5, Lcom/google/android/gms/internal/ads/IA;->DW:I

    invoke-interface {v10, v3, v11}, Lcom/google/android/gms/internal/ads/Rz;->j6(II)Lcom/google/android/gms/internal/ads/Yz;

    move-result-object v10

    invoke-direct {v6, v10}, Lcom/google/android/gms/internal/ads/BA;-><init>(Lcom/google/android/gms/internal/ads/Yz;)V

    iget v10, v5, Lcom/google/android/gms/internal/ads/IA;->j6:I

    invoke-virtual {v9, v10}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/google/android/gms/internal/ads/vA;

    invoke-virtual {v6, v5, v10}, Lcom/google/android/gms/internal/ads/BA;->j6(Lcom/google/android/gms/internal/ads/IA;Lcom/google/android/gms/internal/ads/vA;)V

    iget-object v10, v1, Lcom/google/android/gms/internal/ads/yA;->Zo:Landroid/util/SparseArray;

    iget v11, v5, Lcom/google/android/gms/internal/ads/IA;->j6:I

    invoke-virtual {v10, v11, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-wide v10, v1, Lcom/google/android/gms/internal/ads/yA;->lg:J

    iget-wide v5, v5, Lcom/google/android/gms/internal/ads/IA;->v5:J

    invoke-static {v10, v11, v5, v6}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v5

    iput-wide v5, v1, Lcom/google/android/gms/internal/ads/yA;->lg:J

    add-int/lit8 v3, v3, 0x1

    goto :goto_105

    :cond_139
    iget v2, v1, Lcom/google/android/gms/internal/ads/yA;->Hw:I

    and-int/2addr v2, v7

    if-eqz v2, :cond_15f

    iget-object v2, v1, Lcom/google/android/gms/internal/ads/yA;->ei:Lcom/google/android/gms/internal/ads/Yz;

    if-nez v2, :cond_15f

    iget-object v2, v1, Lcom/google/android/gms/internal/ads/yA;->P8:Lcom/google/android/gms/internal/ads/Rz;

    iget-object v3, v1, Lcom/google/android/gms/internal/ads/yA;->Zo:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    invoke-interface {v2, v3, v7}, Lcom/google/android/gms/internal/ads/Rz;->j6(II)Lcom/google/android/gms/internal/ads/Yz;

    move-result-object v2

    iput-object v2, v1, Lcom/google/android/gms/internal/ads/yA;->ei:Lcom/google/android/gms/internal/ads/Yz;

    const-string v3, "application/x-emsg"

    const-wide v4, 0x7fffffffffffffffL

    const/4 v6, 0x0

    invoke-static {v6, v3, v4, v5}, Lcom/google/android/gms/internal/ads/zzfs;->j6(Ljava/lang/String;Ljava/lang/String;J)Lcom/google/android/gms/internal/ads/zzfs;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/google/android/gms/internal/ads/Yz;->j6(Lcom/google/android/gms/internal/ads/zzfs;)V

    :cond_15f
    iget v2, v1, Lcom/google/android/gms/internal/ads/yA;->Hw:I

    and-int/2addr v2, v8

    if-eqz v2, :cond_18e

    iget-object v2, v1, Lcom/google/android/gms/internal/ads/yA;->nw:[Lcom/google/android/gms/internal/ads/Yz;

    if-nez v2, :cond_18e

    iget-object v2, v1, Lcom/google/android/gms/internal/ads/yA;->P8:Lcom/google/android/gms/internal/ads/Rz;

    iget-object v3, v1, Lcom/google/android/gms/internal/ads/yA;->Zo:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    const/4 v4, 0x1

    add-int/2addr v3, v4

    const/4 v4, 0x3

    invoke-interface {v2, v3, v4}, Lcom/google/android/gms/internal/ads/Rz;->j6(II)Lcom/google/android/gms/internal/ads/Yz;

    move-result-object v2

    const/4 v3, 0x0

    const-string v4, "application/cea-608"

    const/4 v5, 0x0

    const/4 v6, -0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-static/range {v3 .. v9}, Lcom/google/android/gms/internal/ads/zzfs;->j6(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Lcom/google/android/gms/internal/ads/zzhp;)Lcom/google/android/gms/internal/ads/zzfs;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/google/android/gms/internal/ads/Yz;->j6(Lcom/google/android/gms/internal/ads/zzfs;)V

    const/4 v3, 0x1

    new-array v3, v3, [Lcom/google/android/gms/internal/ads/Yz;

    const/4 v4, 0x0

    aput-object v2, v3, v4

    iput-object v3, v1, Lcom/google/android/gms/internal/ads/yA;->nw:[Lcom/google/android/gms/internal/ads/Yz;

    :cond_18e
    iget-object v2, v1, Lcom/google/android/gms/internal/ads/yA;->P8:Lcom/google/android/gms/internal/ads/Rz;

    invoke-interface {v2}, Lcom/google/android/gms/internal/ads/Rz;->j6()V

    goto/16 :goto_3

    :cond_195
    iget-object v3, v1, Lcom/google/android/gms/internal/ads/yA;->Zo:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ne v3, v2, :cond_19f

    const/4 v10, 0x1

    goto :goto_1a0

    :cond_19f
    const/4 v10, 0x0

    :goto_1a0
    invoke-static {v10}, Lcom/google/android/gms/internal/ads/CD;->DW(Z)V

    const/4 v3, 0x0

    :goto_1a4
    if-ge v3, v2, :cond_3

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/gms/internal/ads/IA;

    iget-object v6, v1, Lcom/google/android/gms/internal/ads/yA;->Zo:Landroid/util/SparseArray;

    iget v7, v5, Lcom/google/android/gms/internal/ads/IA;->j6:I

    invoke-virtual {v6, v7}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/android/gms/internal/ads/BA;

    iget v7, v5, Lcom/google/android/gms/internal/ads/IA;->j6:I

    invoke-virtual {v9, v7}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/google/android/gms/internal/ads/vA;

    invoke-virtual {v6, v5, v7}, Lcom/google/android/gms/internal/ads/BA;->j6(Lcom/google/android/gms/internal/ads/IA;Lcom/google/android/gms/internal/ads/vA;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1a4

    :cond_1c4
    const/4 v6, 0x0

    sget v4, Lcom/google/android/gms/internal/ads/kA;->sh:I

    if-ne v3, v4, :cond_6c6

    iget-object v3, v1, Lcom/google/android/gms/internal/ads/yA;->Zo:Landroid/util/SparseArray;

    iget v4, v1, Lcom/google/android/gms/internal/ads/yA;->Hw:I

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/yA;->J0:[B

    iget-object v5, v2, Lcom/google/android/gms/internal/ads/lA;->Gj:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    const/4 v9, 0x0

    :goto_1d6
    if-ge v9, v5, :cond_699

    iget-object v10, v2, Lcom/google/android/gms/internal/ads/lA;->Gj:Ljava/util/List;

    invoke-interface {v10, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/google/android/gms/internal/ads/lA;

    iget v11, v10, Lcom/google/android/gms/internal/ads/kA;->sg:I

    sget v12, Lcom/google/android/gms/internal/ads/kA;->cb:I

    if-ne v11, v12, :cond_677

    sget v11, Lcom/google/android/gms/internal/ads/kA;->rN:I

    invoke-virtual {v10, v11}, Lcom/google/android/gms/internal/ads/lA;->Hw(I)Lcom/google/android/gms/internal/ads/mA;

    move-result-object v11

    iget-object v11, v11, Lcom/google/android/gms/internal/ads/mA;->pO:Lcom/google/android/gms/internal/ads/LD;

    invoke-virtual {v11, v8}, Lcom/google/android/gms/internal/ads/LD;->DW(I)V

    invoke-virtual {v11}, Lcom/google/android/gms/internal/ads/LD;->Hw()I

    move-result v12

    invoke-static {v12}, Lcom/google/android/gms/internal/ads/kA;->DW(I)I

    move-result v12

    invoke-virtual {v11}, Lcom/google/android/gms/internal/ads/LD;->Hw()I

    move-result v13

    and-int/lit8 v14, v4, 0x10

    if-nez v14, :cond_202

    goto :goto_203

    :cond_202
    const/4 v13, 0x0

    :goto_203
    invoke-virtual {v3, v13}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/google/android/gms/internal/ads/BA;

    if-nez v13, :cond_20d

    move-object v13, v6

    goto :goto_256

    :cond_20d
    and-int/lit8 v14, v12, 0x1

    if-eqz v14, :cond_21b

    invoke-virtual {v11}, Lcom/google/android/gms/internal/ads/LD;->QX()J

    move-result-wide v14

    iget-object v6, v13, Lcom/google/android/gms/internal/ads/BA;->j6:Lcom/google/android/gms/internal/ads/KA;

    iput-wide v14, v6, Lcom/google/android/gms/internal/ads/KA;->FH:J

    iput-wide v14, v6, Lcom/google/android/gms/internal/ads/KA;->Hw:J

    :cond_21b
    iget-object v6, v13, Lcom/google/android/gms/internal/ads/BA;->Hw:Lcom/google/android/gms/internal/ads/vA;

    and-int/lit8 v14, v12, 0x2

    if-eqz v14, :cond_228

    invoke-virtual {v11}, Lcom/google/android/gms/internal/ads/LD;->Ws()I

    move-result v14

    const/4 v15, 0x1

    sub-int/2addr v14, v15

    goto :goto_22a

    :cond_228
    iget v14, v6, Lcom/google/android/gms/internal/ads/vA;->j6:I

    :goto_22a
    and-int/lit8 v15, v12, 0x8

    if-eqz v15, :cond_233

    invoke-virtual {v11}, Lcom/google/android/gms/internal/ads/LD;->Ws()I

    move-result v15

    goto :goto_235

    :cond_233
    iget v15, v6, Lcom/google/android/gms/internal/ads/vA;->DW:I

    :goto_235
    and-int/lit8 v16, v12, 0x10

    if-eqz v16, :cond_240

    invoke-virtual {v11}, Lcom/google/android/gms/internal/ads/LD;->Ws()I

    move-result v16

    move/from16 v7, v16

    goto :goto_242

    :cond_240
    iget v7, v6, Lcom/google/android/gms/internal/ads/vA;->FH:I

    :goto_242
    and-int/lit8 v12, v12, 0x20

    if-eqz v12, :cond_24b

    invoke-virtual {v11}, Lcom/google/android/gms/internal/ads/LD;->Ws()I

    move-result v6

    goto :goto_24d

    :cond_24b
    iget v6, v6, Lcom/google/android/gms/internal/ads/vA;->Hw:I

    :goto_24d
    iget-object v11, v13, Lcom/google/android/gms/internal/ads/BA;->j6:Lcom/google/android/gms/internal/ads/KA;

    new-instance v12, Lcom/google/android/gms/internal/ads/vA;

    invoke-direct {v12, v14, v15, v7, v6}, Lcom/google/android/gms/internal/ads/vA;-><init>(IIII)V

    iput-object v12, v11, Lcom/google/android/gms/internal/ads/KA;->j6:Lcom/google/android/gms/internal/ads/vA;

    :goto_256
    if-eqz v13, :cond_677

    iget-object v6, v13, Lcom/google/android/gms/internal/ads/BA;->j6:Lcom/google/android/gms/internal/ads/KA;

    iget-wide v11, v6, Lcom/google/android/gms/internal/ads/KA;->j3:J

    invoke-virtual {v13}, Lcom/google/android/gms/internal/ads/BA;->j6()V

    sget v7, Lcom/google/android/gms/internal/ads/kA;->lg:I

    invoke-virtual {v10, v7}, Lcom/google/android/gms/internal/ads/lA;->Hw(I)Lcom/google/android/gms/internal/ads/mA;

    move-result-object v7

    if-eqz v7, :cond_28a

    and-int/lit8 v7, v4, 0x2

    if-nez v7, :cond_28a

    sget v7, Lcom/google/android/gms/internal/ads/kA;->lg:I

    invoke-virtual {v10, v7}, Lcom/google/android/gms/internal/ads/lA;->Hw(I)Lcom/google/android/gms/internal/ads/mA;

    move-result-object v7

    iget-object v7, v7, Lcom/google/android/gms/internal/ads/mA;->pO:Lcom/google/android/gms/internal/ads/LD;

    invoke-virtual {v7, v8}, Lcom/google/android/gms/internal/ads/LD;->DW(I)V

    invoke-virtual {v7}, Lcom/google/android/gms/internal/ads/LD;->Hw()I

    move-result v11

    invoke-static {v11}, Lcom/google/android/gms/internal/ads/kA;->j6(I)I

    move-result v11

    const/4 v12, 0x1

    if-ne v11, v12, :cond_286

    invoke-virtual {v7}, Lcom/google/android/gms/internal/ads/LD;->QX()J

    move-result-wide v11

    goto :goto_28a

    :cond_286
    invoke-virtual {v7}, Lcom/google/android/gms/internal/ads/LD;->we()J

    move-result-wide v11

    :cond_28a
    :goto_28a
    iget-object v7, v10, Lcom/google/android/gms/internal/ads/lA;->fN:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v14

    move-object/from16 v18, v3

    const/4 v3, 0x0

    const/4 v8, 0x0

    const/4 v15, 0x0

    :goto_295
    if-ge v15, v14, :cond_2c3

    invoke-interface {v7, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v20

    move/from16 v21, v5

    move-object/from16 v5, v20

    check-cast v5, Lcom/google/android/gms/internal/ads/mA;

    move-wide/from16 v22, v11

    iget v11, v5, Lcom/google/android/gms/internal/ads/kA;->sg:I

    sget v12, Lcom/google/android/gms/internal/ads/kA;->yS:I

    if-ne v11, v12, :cond_2ba

    iget-object v5, v5, Lcom/google/android/gms/internal/ads/mA;->pO:Lcom/google/android/gms/internal/ads/LD;

    const/16 v11, 0xc

    invoke-virtual {v5, v11}, Lcom/google/android/gms/internal/ads/LD;->DW(I)V

    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/LD;->Ws()I

    move-result v5

    if-lez v5, :cond_2bc

    add-int/2addr v3, v5

    add-int/lit8 v8, v8, 0x1

    goto :goto_2bc

    :cond_2ba
    const/16 v11, 0xc

    :cond_2bc
    :goto_2bc
    add-int/lit8 v15, v15, 0x1

    move/from16 v5, v21

    move-wide/from16 v11, v22

    goto :goto_295

    :cond_2c3
    move/from16 v21, v5

    move-wide/from16 v22, v11

    const/4 v5, 0x0

    const/16 v11, 0xc

    iput v5, v13, Lcom/google/android/gms/internal/ads/BA;->VH:I

    iput v5, v13, Lcom/google/android/gms/internal/ads/BA;->Zo:I

    iput v5, v13, Lcom/google/android/gms/internal/ads/BA;->v5:I

    iget-object v5, v13, Lcom/google/android/gms/internal/ads/BA;->j6:Lcom/google/android/gms/internal/ads/KA;

    iput v8, v5, Lcom/google/android/gms/internal/ads/KA;->v5:I

    iput v3, v5, Lcom/google/android/gms/internal/ads/KA;->Zo:I

    iget-object v12, v5, Lcom/google/android/gms/internal/ads/KA;->gn:[I

    if-eqz v12, :cond_2dd

    array-length v12, v12

    if-ge v12, v8, :cond_2e5

    :cond_2dd
    new-array v12, v8, [J

    iput-object v12, v5, Lcom/google/android/gms/internal/ads/KA;->VH:[J

    new-array v8, v8, [I

    iput-object v8, v5, Lcom/google/android/gms/internal/ads/KA;->gn:[I

    :cond_2e5
    iget-object v8, v5, Lcom/google/android/gms/internal/ads/KA;->u7:[I

    if-eqz v8, :cond_2ec

    array-length v8, v8

    if-ge v8, v3, :cond_304

    :cond_2ec
    mul-int/lit8 v3, v3, 0x7d

    div-int/lit8 v3, v3, 0x64

    new-array v8, v3, [I

    iput-object v8, v5, Lcom/google/android/gms/internal/ads/KA;->u7:[I

    new-array v8, v3, [I

    iput-object v8, v5, Lcom/google/android/gms/internal/ads/KA;->tp:[I

    new-array v8, v3, [J

    iput-object v8, v5, Lcom/google/android/gms/internal/ads/KA;->EQ:[J

    new-array v8, v3, [Z

    iput-object v8, v5, Lcom/google/android/gms/internal/ads/KA;->we:[Z

    new-array v3, v3, [Z

    iput-object v3, v5, Lcom/google/android/gms/internal/ads/KA;->J8:[Z

    :cond_304
    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v8, 0x0

    :goto_307
    const-wide/16 v24, 0x0

    if-ge v3, v14, :cond_499

    invoke-interface {v7, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v19

    move-object/from16 v11, v19

    check-cast v11, Lcom/google/android/gms/internal/ads/mA;

    iget v15, v11, Lcom/google/android/gms/internal/ads/kA;->sg:I

    sget v12, Lcom/google/android/gms/internal/ads/kA;->yS:I

    if-ne v15, v12, :cond_46b

    iget-object v11, v11, Lcom/google/android/gms/internal/ads/mA;->pO:Lcom/google/android/gms/internal/ads/LD;

    const/16 v12, 0x8

    invoke-virtual {v11, v12}, Lcom/google/android/gms/internal/ads/LD;->DW(I)V

    invoke-virtual {v11}, Lcom/google/android/gms/internal/ads/LD;->Hw()I

    move-result v12

    invoke-static {v12}, Lcom/google/android/gms/internal/ads/kA;->DW(I)I

    move-result v12

    iget-object v15, v13, Lcom/google/android/gms/internal/ads/BA;->FH:Lcom/google/android/gms/internal/ads/IA;

    move-object/from16 v27, v7

    iget-object v7, v13, Lcom/google/android/gms/internal/ads/BA;->j6:Lcom/google/android/gms/internal/ads/KA;

    move/from16 v28, v14

    iget-object v14, v7, Lcom/google/android/gms/internal/ads/KA;->j6:Lcom/google/android/gms/internal/ads/vA;

    iget-object v0, v7, Lcom/google/android/gms/internal/ads/KA;->gn:[I

    invoke-virtual {v11}, Lcom/google/android/gms/internal/ads/LD;->Ws()I

    move-result v29

    aput v29, v0, v5

    iget-object v0, v7, Lcom/google/android/gms/internal/ads/KA;->VH:[J

    move-object/from16 v30, v1

    move-object/from16 v29, v2

    iget-wide v1, v7, Lcom/google/android/gms/internal/ads/KA;->FH:J

    aput-wide v1, v0, v5

    and-int/lit8 v31, v12, 0x1

    if-eqz v31, :cond_355

    move/from16 v31, v9

    invoke-virtual {v11}, Lcom/google/android/gms/internal/ads/LD;->Hw()I

    move-result v9

    move-object/from16 v32, v10

    int-to-long v9, v9

    add-long/2addr v1, v9

    aput-wide v1, v0, v5

    goto :goto_359

    :cond_355
    move/from16 v31, v9

    move-object/from16 v32, v10

    :goto_359
    and-int/lit8 v0, v12, 0x4

    if-eqz v0, :cond_35f

    const/4 v0, 0x1

    goto :goto_360

    :cond_35f
    const/4 v0, 0x0

    :goto_360
    iget v1, v14, Lcom/google/android/gms/internal/ads/vA;->Hw:I

    if-eqz v0, :cond_368

    invoke-virtual {v11}, Lcom/google/android/gms/internal/ads/LD;->Ws()I

    move-result v1

    :cond_368
    and-int/lit16 v2, v12, 0x100

    if-eqz v2, :cond_36e

    const/4 v2, 0x1

    goto :goto_36f

    :cond_36e
    const/4 v2, 0x0

    :goto_36f
    and-int/lit16 v9, v12, 0x200

    if-eqz v9, :cond_375

    const/4 v9, 0x1

    goto :goto_376

    :cond_375
    const/4 v9, 0x0

    :goto_376
    and-int/lit16 v10, v12, 0x400

    if-eqz v10, :cond_37c

    const/4 v10, 0x1

    goto :goto_37d

    :cond_37c
    const/4 v10, 0x0

    :goto_37d
    and-int/lit16 v12, v12, 0x800

    move/from16 v33, v1

    if-eqz v12, :cond_385

    const/4 v12, 0x1

    goto :goto_386

    :cond_385
    const/4 v12, 0x0

    :goto_386
    iget-object v1, v15, Lcom/google/android/gms/internal/ads/IA;->u7:[J

    move-object/from16 v34, v6

    if-eqz v1, :cond_3ab

    array-length v6, v1

    move-object/from16 v35, v13

    const/4 v13, 0x1

    if-ne v6, v13, :cond_3a9

    const/4 v6, 0x0

    aget-wide v36, v1, v6

    cmp-long v1, v36, v24

    if-nez v1, :cond_3a9

    iget-object v1, v15, Lcom/google/android/gms/internal/ads/IA;->tp:[J

    aget-wide v36, v1, v6

    const-wide/16 v38, 0x3e8

    move v1, v12

    iget-wide v12, v15, Lcom/google/android/gms/internal/ads/IA;->FH:J

    move-wide/from16 v40, v12

    invoke-static/range {v36 .. v41}, Lcom/google/android/gms/internal/ads/TD;->j6(JJJ)J

    move-result-wide v24

    goto :goto_3ae

    :cond_3a9
    move v1, v12

    goto :goto_3ae

    :cond_3ab
    move v1, v12

    move-object/from16 v35, v13

    :goto_3ae
    iget-object v6, v7, Lcom/google/android/gms/internal/ads/KA;->u7:[I

    iget-object v12, v7, Lcom/google/android/gms/internal/ads/KA;->tp:[I

    iget-object v13, v7, Lcom/google/android/gms/internal/ads/KA;->EQ:[J

    move/from16 v36, v3

    iget-object v3, v7, Lcom/google/android/gms/internal/ads/KA;->we:[Z

    move-object/from16 v37, v3

    iget v3, v15, Lcom/google/android/gms/internal/ads/IA;->DW:I

    move-object/from16 v38, v6

    const/4 v6, 0x2

    if-ne v3, v6, :cond_3c7

    and-int/lit8 v3, v4, 0x1

    if-eqz v3, :cond_3c7

    const/4 v3, 0x1

    goto :goto_3c8

    :cond_3c7
    const/4 v3, 0x0

    :goto_3c8
    iget-object v6, v7, Lcom/google/android/gms/internal/ads/KA;->gn:[I

    aget v6, v6, v5

    add-int/2addr v6, v8

    move/from16 v26, v3

    move/from16 v45, v4

    iget-wide v3, v15, Lcom/google/android/gms/internal/ads/IA;->FH:J

    move-object v15, v12

    move-object/from16 v46, v13

    if-lez v5, :cond_3db

    iget-wide v12, v7, Lcom/google/android/gms/internal/ads/KA;->j3:J

    goto :goto_3dd

    :cond_3db
    move-wide/from16 v12, v22

    :goto_3dd
    if-ge v8, v6, :cond_462

    if-eqz v2, :cond_3ea

    invoke-virtual {v11}, Lcom/google/android/gms/internal/ads/LD;->Ws()I

    move-result v39

    move/from16 v47, v2

    move/from16 v2, v39

    goto :goto_3ee

    :cond_3ea
    move/from16 v47, v2

    iget v2, v14, Lcom/google/android/gms/internal/ads/vA;->DW:I

    :goto_3ee
    if-eqz v9, :cond_3f9

    invoke-virtual {v11}, Lcom/google/android/gms/internal/ads/LD;->Ws()I

    move-result v39

    move/from16 v48, v6

    move/from16 v6, v39

    goto :goto_3fd

    :cond_3f9
    move/from16 v48, v6

    iget v6, v14, Lcom/google/android/gms/internal/ads/vA;->FH:I

    :goto_3fd
    if-nez v8, :cond_406

    if-eqz v0, :cond_406

    move/from16 v49, v0

    move/from16 v0, v33

    goto :goto_415

    :cond_406
    if-eqz v10, :cond_411

    invoke-virtual {v11}, Lcom/google/android/gms/internal/ads/LD;->Hw()I

    move-result v39

    move/from16 v49, v0

    move/from16 v0, v39

    goto :goto_415

    :cond_411
    move/from16 v49, v0

    iget v0, v14, Lcom/google/android/gms/internal/ads/vA;->Hw:I

    :goto_415
    move/from16 v50, v1

    if-eqz v1, :cond_429

    invoke-virtual {v11}, Lcom/google/android/gms/internal/ads/LD;->Hw()I

    move-result v1

    mul-int/lit16 v1, v1, 0x3e8

    move/from16 v51, v9

    move/from16 v52, v10

    int-to-long v9, v1

    div-long/2addr v9, v3

    long-to-int v1, v9

    aput v1, v15, v8

    goto :goto_430

    :cond_429
    move/from16 v51, v9

    move/from16 v52, v10

    const/4 v1, 0x0

    aput v1, v15, v8

    :goto_430
    const-wide/16 v41, 0x3e8

    move-wide/from16 v39, v12

    move-wide/from16 v43, v3

    invoke-static/range {v39 .. v44}, Lcom/google/android/gms/internal/ads/TD;->j6(JJJ)J

    move-result-wide v9

    sub-long v9, v9, v24

    aput-wide v9, v46, v8

    aput v6, v38, v8

    const/16 v1, 0x10

    shr-int/2addr v0, v1

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-nez v0, :cond_44d

    if-eqz v26, :cond_44b

    if-nez v8, :cond_44d

    :cond_44b
    const/4 v0, 0x1

    goto :goto_44e

    :cond_44d
    const/4 v0, 0x0

    :goto_44e
    aput-boolean v0, v37, v8

    int-to-long v0, v2

    add-long/2addr v12, v0

    add-int/lit8 v8, v8, 0x1

    move/from16 v2, v47

    move/from16 v6, v48

    move/from16 v0, v49

    move/from16 v1, v50

    move/from16 v9, v51

    move/from16 v10, v52

    goto/16 :goto_3dd

    :cond_462
    move/from16 v48, v6

    iput-wide v12, v7, Lcom/google/android/gms/internal/ads/KA;->j3:J

    add-int/lit8 v5, v5, 0x1

    move/from16 v8, v48

    goto :goto_47f

    :cond_46b
    move-object/from16 v30, v1

    move-object/from16 v29, v2

    move/from16 v36, v3

    move/from16 v45, v4

    move-object/from16 v34, v6

    move-object/from16 v27, v7

    move/from16 v31, v9

    move-object/from16 v32, v10

    move-object/from16 v35, v13

    move/from16 v28, v14

    :goto_47f
    add-int/lit8 v3, v36, 0x1

    move-object/from16 v0, p0

    move-object/from16 v7, v27

    move/from16 v14, v28

    move-object/from16 v2, v29

    move-object/from16 v1, v30

    move/from16 v9, v31

    move-object/from16 v10, v32

    move-object/from16 v6, v34

    move-object/from16 v13, v35

    move/from16 v4, v45

    const/16 v11, 0xc

    goto/16 :goto_307

    :cond_499
    move-object/from16 v30, v1

    move-object/from16 v29, v2

    move/from16 v45, v4

    move-object/from16 v34, v6

    move/from16 v31, v9

    move-object/from16 v32, v10

    move-object/from16 v35, v13

    sget v0, Lcom/google/android/gms/internal/ads/kA;->XX:I

    invoke-virtual {v10, v0}, Lcom/google/android/gms/internal/ads/lA;->Hw(I)Lcom/google/android/gms/internal/ads/mA;

    move-result-object v0

    if-eqz v0, :cond_52c

    move-object/from16 v13, v35

    iget-object v1, v13, Lcom/google/android/gms/internal/ads/BA;->FH:Lcom/google/android/gms/internal/ads/IA;

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/IA;->gn:[Lcom/google/android/gms/internal/ads/JA;

    move-object/from16 v2, v34

    iget-object v3, v2, Lcom/google/android/gms/internal/ads/KA;->j6:Lcom/google/android/gms/internal/ads/vA;

    iget v3, v3, Lcom/google/android/gms/internal/ads/vA;->j6:I

    aget-object v1, v1, v3

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/mA;->pO:Lcom/google/android/gms/internal/ads/LD;

    iget v1, v1, Lcom/google/android/gms/internal/ads/JA;->DW:I

    const/16 v3, 0x8

    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/ads/LD;->DW(I)V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/LD;->Hw()I

    move-result v4

    invoke-static {v4}, Lcom/google/android/gms/internal/ads/kA;->DW(I)I

    move-result v4

    const/4 v5, 0x1

    and-int/2addr v4, v5

    if-ne v4, v5, :cond_4d5

    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/ads/LD;->Hw(I)V

    :cond_4d5
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/LD;->VH()I

    move-result v3

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/LD;->Ws()I

    move-result v4

    iget v5, v2, Lcom/google/android/gms/internal/ads/KA;->Zo:I

    if-ne v4, v5, :cond_50b

    if-nez v3, :cond_4f8

    iget-object v3, v2, Lcom/google/android/gms/internal/ads/KA;->J8:[Z

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_4e7
    if-ge v6, v4, :cond_507

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/LD;->VH()I

    move-result v7

    add-int/2addr v5, v7

    if-le v7, v1, :cond_4f2

    const/4 v7, 0x1

    goto :goto_4f3

    :cond_4f2
    const/4 v7, 0x0

    :goto_4f3
    aput-boolean v7, v3, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_4e7

    :cond_4f8
    if-le v3, v1, :cond_4fc

    const/4 v0, 0x1

    goto :goto_4fd

    :cond_4fc
    const/4 v0, 0x0

    :goto_4fd
    mul-int v3, v3, v4

    const/4 v1, 0x0

    add-int/lit8 v5, v3, 0x0

    iget-object v3, v2, Lcom/google/android/gms/internal/ads/KA;->J8:[Z

    invoke-static {v3, v1, v4, v0}, Ljava/util/Arrays;->fill([ZIIZ)V

    :cond_507
    invoke-virtual {v2, v5}, Lcom/google/android/gms/internal/ads/KA;->j6(I)V

    goto :goto_52e

    :cond_50b
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Length mismatch: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    new-instance v1, Lcom/google/android/gms/internal/ads/My;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/ads/My;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_52c
    move-object/from16 v2, v34

    :goto_52e
    sget v0, Lcom/google/android/gms/internal/ads/kA;->kQ:I

    invoke-virtual {v10, v0}, Lcom/google/android/gms/internal/ads/lA;->Hw(I)Lcom/google/android/gms/internal/ads/mA;

    move-result-object v0

    if-eqz v0, :cond_580

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/mA;->pO:Lcom/google/android/gms/internal/ads/LD;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/LD;->DW(I)V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/LD;->Hw()I

    move-result v3

    invoke-static {v3}, Lcom/google/android/gms/internal/ads/kA;->DW(I)I

    move-result v4

    const/4 v5, 0x1

    and-int/2addr v4, v5

    if-ne v4, v5, :cond_54c

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/LD;->Hw(I)V

    :cond_54c
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/LD;->Ws()I

    move-result v1

    if-ne v1, v5, :cond_567

    invoke-static {v3}, Lcom/google/android/gms/internal/ads/kA;->j6(I)I

    move-result v1

    iget-wide v3, v2, Lcom/google/android/gms/internal/ads/KA;->Hw:J

    if-nez v1, :cond_55f

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/LD;->we()J

    move-result-wide v0

    goto :goto_563

    :cond_55f
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/LD;->QX()J

    move-result-wide v0

    :goto_563
    add-long/2addr v3, v0

    iput-wide v3, v2, Lcom/google/android/gms/internal/ads/KA;->Hw:J

    goto :goto_580

    :cond_567
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v2, 0x28

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Unexpected saio entry count: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    new-instance v1, Lcom/google/android/gms/internal/ads/My;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/ads/My;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_580
    :goto_580
    sget v0, Lcom/google/android/gms/internal/ads/kA;->wc:I

    invoke-virtual {v10, v0}, Lcom/google/android/gms/internal/ads/lA;->Hw(I)Lcom/google/android/gms/internal/ads/mA;

    move-result-object v0

    if-eqz v0, :cond_58e

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/mA;->pO:Lcom/google/android/gms/internal/ads/LD;

    const/4 v1, 0x0

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/ads/yA;->j6(Lcom/google/android/gms/internal/ads/LD;ILcom/google/android/gms/internal/ads/KA;)V

    :cond_58e
    sget v0, Lcom/google/android/gms/internal/ads/kA;->yO:I

    invoke-virtual {v10, v0}, Lcom/google/android/gms/internal/ads/lA;->Hw(I)Lcom/google/android/gms/internal/ads/mA;

    move-result-object v0

    sget v1, Lcom/google/android/gms/internal/ads/kA;->XG:I

    invoke-virtual {v10, v1}, Lcom/google/android/gms/internal/ads/lA;->Hw(I)Lcom/google/android/gms/internal/ads/mA;

    move-result-object v1

    if-eqz v0, :cond_631

    if-eqz v1, :cond_631

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/mA;->pO:Lcom/google/android/gms/internal/ads/LD;

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/mA;->pO:Lcom/google/android/gms/internal/ads/LD;

    const/16 v3, 0x8

    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/ads/LD;->DW(I)V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/LD;->Hw()I

    move-result v3

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/LD;->Hw()I

    move-result v4

    sget v5, Lcom/google/android/gms/internal/ads/yA;->DW:I

    if-ne v4, v5, :cond_631

    invoke-static {v3}, Lcom/google/android/gms/internal/ads/kA;->j6(I)I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_5be

    const/4 v3, 0x4

    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/ads/LD;->Hw(I)V

    :cond_5be
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/LD;->Hw()I

    move-result v0

    if-ne v0, v4, :cond_629

    const/16 v0, 0x8

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/LD;->DW(I)V

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/LD;->Hw()I

    move-result v0

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/LD;->Hw()I

    move-result v3

    if-ne v3, v5, :cond_627

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/kA;->j6(I)I

    move-result v0

    if-ne v0, v4, :cond_5ec

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/LD;->we()J

    move-result-wide v3

    cmp-long v0, v3, v24

    if-eqz v0, :cond_5e4

    const/4 v0, 0x4

    const/4 v3, 0x2

    goto :goto_5f5

    :cond_5e4
    new-instance v0, Lcom/google/android/gms/internal/ads/My;

    const-string v1, "Variable length decription in sgpd found (unsupported)"

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/My;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5ec
    const/4 v3, 0x2

    if-lt v0, v3, :cond_5f4

    const/4 v0, 0x4

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/LD;->Hw(I)V

    goto :goto_5f5

    :cond_5f4
    const/4 v0, 0x4

    :goto_5f5
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/LD;->we()J

    move-result-wide v4

    const-wide/16 v6, 0x1

    cmp-long v8, v4, v6

    if-nez v8, :cond_61f

    invoke-virtual {v1, v3}, Lcom/google/android/gms/internal/ads/LD;->Hw(I)V

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/LD;->VH()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_633

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/LD;->VH()I

    move-result v3

    const/16 v5, 0x10

    new-array v6, v5, [B

    const/4 v7, 0x0

    invoke-virtual {v1, v6, v7, v5}, Lcom/google/android/gms/internal/ads/LD;->j6([BII)V

    iput-boolean v4, v2, Lcom/google/android/gms/internal/ads/KA;->J0:Z

    new-instance v1, Lcom/google/android/gms/internal/ads/JA;

    invoke-direct {v1, v4, v3, v6}, Lcom/google/android/gms/internal/ads/JA;-><init>(ZI[B)V

    iput-object v1, v2, Lcom/google/android/gms/internal/ads/KA;->Ws:Lcom/google/android/gms/internal/ads/JA;

    goto :goto_633

    :cond_61f
    new-instance v0, Lcom/google/android/gms/internal/ads/My;

    const-string v1, "Entry count in sgpd != 1 (unsupported)."

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/My;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_627
    const/4 v0, 0x4

    goto :goto_633

    :cond_629
    new-instance v0, Lcom/google/android/gms/internal/ads/My;

    const-string v1, "Entry count in sbgp != 1 (unsupported)."

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/My;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_631
    const/4 v0, 0x4

    const/4 v4, 0x1

    :cond_633
    :goto_633
    iget-object v1, v10, Lcom/google/android/gms/internal/ads/lA;->fN:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v3, 0x0

    :goto_63a
    if-ge v3, v1, :cond_671

    iget-object v5, v10, Lcom/google/android/gms/internal/ads/lA;->fN:Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/gms/internal/ads/mA;

    iget v6, v5, Lcom/google/android/gms/internal/ads/kA;->sg:I

    sget v7, Lcom/google/android/gms/internal/ads/kA;->jJ:I

    if-ne v6, v7, :cond_665

    iget-object v5, v5, Lcom/google/android/gms/internal/ads/mA;->pO:Lcom/google/android/gms/internal/ads/LD;

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Lcom/google/android/gms/internal/ads/LD;->DW(I)V

    move-object/from16 v7, v30

    const/16 v8, 0x10

    const/4 v9, 0x0

    invoke-virtual {v5, v7, v9, v8}, Lcom/google/android/gms/internal/ads/LD;->j6([BII)V

    sget-object v11, Lcom/google/android/gms/internal/ads/yA;->FH:[B

    invoke-static {v7, v11}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v11

    if-eqz v11, :cond_66c

    invoke-static {v5, v8, v2}, Lcom/google/android/gms/internal/ads/yA;->j6(Lcom/google/android/gms/internal/ads/LD;ILcom/google/android/gms/internal/ads/KA;)V

    goto :goto_66c

    :cond_665
    move-object/from16 v7, v30

    const/16 v6, 0x8

    const/16 v8, 0x10

    const/4 v9, 0x0

    :cond_66c
    :goto_66c
    add-int/lit8 v3, v3, 0x1

    move-object/from16 v30, v7

    goto :goto_63a

    :cond_671
    move-object/from16 v7, v30

    :goto_673
    const/16 v6, 0x8

    const/4 v9, 0x0

    goto :goto_685

    :cond_677
    move-object v7, v1

    move-object/from16 v29, v2

    move-object/from16 v18, v3

    move/from16 v45, v4

    move/from16 v21, v5

    move/from16 v31, v9

    const/4 v0, 0x4

    const/4 v4, 0x1

    goto :goto_673

    :goto_685
    add-int/lit8 v1, v31, 0x1

    move-object/from16 v0, p0

    move v9, v1

    move-object v1, v7

    move-object/from16 v3, v18

    move/from16 v5, v21

    move-object/from16 v2, v29

    move/from16 v4, v45

    const/4 v6, 0x0

    const/4 v7, 0x4

    const/16 v8, 0x8

    goto/16 :goto_1d6

    :cond_699
    const/4 v9, 0x0

    iget-object v0, v2, Lcom/google/android/gms/internal/ads/lA;->fN:Ljava/util/List;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/yA;->j6(Ljava/util/List;)Lcom/google/android/gms/internal/ads/zzhp;

    move-result-object v0

    move-object/from16 v3, p0

    if-eqz v0, :cond_6c4

    iget-object v1, v3, Lcom/google/android/gms/internal/ads/yA;->Zo:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    :goto_6aa
    if-ge v9, v1, :cond_6c4

    iget-object v2, v3, Lcom/google/android/gms/internal/ads/yA;->Zo:Landroid/util/SparseArray;

    invoke-virtual {v2, v9}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/ads/BA;

    iget-object v4, v2, Lcom/google/android/gms/internal/ads/BA;->DW:Lcom/google/android/gms/internal/ads/Yz;

    iget-object v2, v2, Lcom/google/android/gms/internal/ads/BA;->FH:Lcom/google/android/gms/internal/ads/IA;

    iget-object v2, v2, Lcom/google/android/gms/internal/ads/IA;->Zo:Lcom/google/android/gms/internal/ads/zzfs;

    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/ads/zzfs;->j6(Lcom/google/android/gms/internal/ads/zzhp;)Lcom/google/android/gms/internal/ads/zzfs;

    move-result-object v2

    invoke-interface {v4, v2}, Lcom/google/android/gms/internal/ads/Yz;->j6(Lcom/google/android/gms/internal/ads/zzfs;)V

    add-int/lit8 v9, v9, 0x1

    goto :goto_6aa

    :cond_6c4
    move-object v1, v3

    goto :goto_6da

    :cond_6c6
    move-object v3, v0

    iget-object v0, v1, Lcom/google/android/gms/internal/ads/yA;->J8:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6da

    iget-object v0, v1, Lcom/google/android/gms/internal/ads/yA;->J8:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/lA;

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ads/lA;->j6(Lcom/google/android/gms/internal/ads/lA;)V

    :cond_6da
    :goto_6da
    move-object v0, v3

    goto/16 :goto_3

    :cond_6dd
    move-object v3, v0

    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/yA;->DW()V

    return-void
.end method

.method private static j6(Lcom/google/android/gms/internal/ads/LD;ILcom/google/android/gms/internal/ads/KA;)V
    .registers 6

    add-int/lit8 p1, p1, 0x8

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/LD;->DW(I)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/LD;->Hw()I

    move-result p1

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/kA;->DW(I)I

    move-result p1

    and-int/lit8 v0, p1, 0x1

    if-nez v0, :cond_5f

    and-int/lit8 p1, p1, 0x2

    const/4 v0, 0x0

    if-eqz p1, :cond_18

    const/4 p1, 0x1

    goto :goto_19

    :cond_18
    const/4 p1, 0x0

    :goto_19
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/LD;->Ws()I

    move-result v1

    iget v2, p2, Lcom/google/android/gms/internal/ads/KA;->Zo:I

    if-ne v1, v2, :cond_3e

    iget-object v2, p2, Lcom/google/android/gms/internal/ads/KA;->J8:[Z

    invoke-static {v2, v0, v1, p1}, Ljava/util/Arrays;->fill([ZIIZ)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/LD;->tp()I

    move-result p1

    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/ads/KA;->j6(I)V

    iget-object p1, p2, Lcom/google/android/gms/internal/ads/KA;->XL:Lcom/google/android/gms/internal/ads/LD;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/LD;->j6:[B

    iget v1, p2, Lcom/google/android/gms/internal/ads/KA;->QX:I

    invoke-virtual {p0, p1, v0, v1}, Lcom/google/android/gms/internal/ads/LD;->j6([BII)V

    iget-object p0, p2, Lcom/google/android/gms/internal/ads/KA;->XL:Lcom/google/android/gms/internal/ads/LD;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/LD;->DW(I)V

    iput-boolean v0, p2, Lcom/google/android/gms/internal/ads/KA;->aM:Z

    return-void

    :cond_3e
    new-instance p0, Ljava/lang/StringBuilder;

    const/16 p1, 0x29

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string p1, "Length mismatch: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    new-instance p1, Lcom/google/android/gms/internal/ads/My;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lcom/google/android/gms/internal/ads/My;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_5f
    new-instance p0, Lcom/google/android/gms/internal/ads/My;

    const-string p1, "Overriding TrackEncryptionBox parameters is unsupported."

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/My;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public final j6(Lcom/google/android/gms/internal/ads/Qz;Lcom/google/android/gms/internal/ads/Vz;)I
    .registers 25

    move-object/from16 v0, p0

    move-object/from16 v2, p1

    move-object v1, v0

    :cond_5
    :goto_5
    iget v3, v1, Lcom/google/android/gms/internal/ads/yA;->QX:I

    const/4 v4, 0x2

    const/4 v7, 0x1

    const/4 v8, 0x0

    if-eqz v3, :cond_437

    if-eq v3, v7, :cond_2cf

    const-wide v10, 0x7fffffffffffffffL

    const/4 v12, 0x3

    if-eq v3, v4, :cond_276

    if-ne v3, v12, :cond_fc

    iget-object v3, v1, Lcom/google/android/gms/internal/ads/yA;->er:Lcom/google/android/gms/internal/ads/BA;

    if-nez v3, :cond_7f

    iget-object v3, v1, Lcom/google/android/gms/internal/ads/yA;->Zo:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v13

    const/4 v14, 0x0

    const/4 v15, 0x0

    :goto_24
    if-ge v14, v13, :cond_44

    invoke-virtual {v3, v14}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v12, v16

    check-cast v12, Lcom/google/android/gms/internal/ads/BA;

    iget v5, v12, Lcom/google/android/gms/internal/ads/BA;->VH:I

    iget-object v9, v12, Lcom/google/android/gms/internal/ads/BA;->j6:Lcom/google/android/gms/internal/ads/KA;

    iget v6, v9, Lcom/google/android/gms/internal/ads/KA;->v5:I

    if-eq v5, v6, :cond_40

    iget-object v6, v9, Lcom/google/android/gms/internal/ads/KA;->VH:[J

    aget-wide v5, v6, v5

    cmp-long v9, v5, v10

    if-gez v9, :cond_40

    move-wide v10, v5

    move-object v15, v12

    :cond_40
    add-int/lit8 v14, v14, 0x1

    const/4 v12, 0x3

    goto :goto_24

    :cond_44
    if-nez v15, :cond_62

    iget-wide v3, v1, Lcom/google/android/gms/internal/ads/yA;->U2:J

    invoke-interface/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/Qz;->getPosition()J

    move-result-wide v5

    sub-long/2addr v3, v5

    long-to-int v4, v3

    if-ltz v4, :cond_5a

    invoke-interface {v2, v4}, Lcom/google/android/gms/internal/ads/Qz;->DW(I)V

    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/yA;->DW()V

    const/4 v4, 0x0

    const/4 v7, 0x0

    goto/16 :goto_26d

    :cond_5a
    new-instance v1, Lcom/google/android/gms/internal/ads/My;

    const-string v2, "Offset to end of mdat was negative."

    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/ads/My;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_62
    iget-object v3, v15, Lcom/google/android/gms/internal/ads/BA;->j6:Lcom/google/android/gms/internal/ads/KA;

    iget-object v3, v3, Lcom/google/android/gms/internal/ads/KA;->VH:[J

    iget v5, v15, Lcom/google/android/gms/internal/ads/BA;->VH:I

    aget-wide v5, v3, v5

    invoke-interface/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/Qz;->getPosition()J

    move-result-wide v9

    sub-long/2addr v5, v9

    long-to-int v3, v5

    if-gez v3, :cond_7a

    const-string v3, "FragmentedMp4Extractor"

    const-string v5, "Ignoring negative offset to sample data."

    invoke-static {v3, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x0

    :cond_7a
    invoke-interface {v2, v3}, Lcom/google/android/gms/internal/ads/Qz;->DW(I)V

    iput-object v15, v1, Lcom/google/android/gms/internal/ads/yA;->er:Lcom/google/android/gms/internal/ads/BA;

    :cond_7f
    iget-object v3, v1, Lcom/google/android/gms/internal/ads/yA;->er:Lcom/google/android/gms/internal/ads/BA;

    iget-object v5, v3, Lcom/google/android/gms/internal/ads/BA;->j6:Lcom/google/android/gms/internal/ads/KA;

    iget-object v6, v5, Lcom/google/android/gms/internal/ads/KA;->u7:[I

    iget v9, v3, Lcom/google/android/gms/internal/ads/BA;->v5:I

    aget v6, v6, v9

    iput v6, v1, Lcom/google/android/gms/internal/ads/yA;->yS:I

    iget-boolean v6, v5, Lcom/google/android/gms/internal/ads/KA;->J0:Z

    if-eqz v6, :cond_e3

    iget-object v6, v5, Lcom/google/android/gms/internal/ads/KA;->XL:Lcom/google/android/gms/internal/ads/LD;

    iget-object v9, v5, Lcom/google/android/gms/internal/ads/KA;->j6:Lcom/google/android/gms/internal/ads/vA;

    iget v9, v9, Lcom/google/android/gms/internal/ads/vA;->j6:I

    iget-object v10, v5, Lcom/google/android/gms/internal/ads/KA;->Ws:Lcom/google/android/gms/internal/ads/JA;

    if-eqz v10, :cond_9a

    goto :goto_a0

    :cond_9a
    iget-object v10, v3, Lcom/google/android/gms/internal/ads/BA;->FH:Lcom/google/android/gms/internal/ads/IA;

    iget-object v10, v10, Lcom/google/android/gms/internal/ads/IA;->gn:[Lcom/google/android/gms/internal/ads/JA;

    aget-object v10, v10, v9

    :goto_a0
    iget v9, v10, Lcom/google/android/gms/internal/ads/JA;->DW:I

    iget-object v5, v5, Lcom/google/android/gms/internal/ads/KA;->J8:[Z

    iget v10, v3, Lcom/google/android/gms/internal/ads/BA;->v5:I

    aget-boolean v5, v5, v10

    iget-object v10, v1, Lcom/google/android/gms/internal/ads/yA;->tp:Lcom/google/android/gms/internal/ads/LD;

    iget-object v10, v10, Lcom/google/android/gms/internal/ads/LD;->j6:[B

    if-eqz v5, :cond_b1

    const/16 v11, 0x80

    goto :goto_b2

    :cond_b1
    const/4 v11, 0x0

    :goto_b2
    or-int/2addr v11, v9

    int-to-byte v11, v11

    aput-byte v11, v10, v8

    iget-object v10, v1, Lcom/google/android/gms/internal/ads/yA;->tp:Lcom/google/android/gms/internal/ads/LD;

    invoke-virtual {v10, v8}, Lcom/google/android/gms/internal/ads/LD;->DW(I)V

    iget-object v3, v3, Lcom/google/android/gms/internal/ads/BA;->DW:Lcom/google/android/gms/internal/ads/Yz;

    iget-object v10, v1, Lcom/google/android/gms/internal/ads/yA;->tp:Lcom/google/android/gms/internal/ads/LD;

    invoke-interface {v3, v10, v7}, Lcom/google/android/gms/internal/ads/Yz;->j6(Lcom/google/android/gms/internal/ads/LD;I)V

    invoke-interface {v3, v6, v9}, Lcom/google/android/gms/internal/ads/Yz;->j6(Lcom/google/android/gms/internal/ads/LD;I)V

    if-nez v5, :cond_ca

    add-int/lit8 v9, v9, 0x1

    goto :goto_db

    :cond_ca
    invoke-virtual {v6}, Lcom/google/android/gms/internal/ads/LD;->gn()I

    move-result v5

    const/4 v10, -0x2

    invoke-virtual {v6, v10}, Lcom/google/android/gms/internal/ads/LD;->Hw(I)V

    mul-int/lit8 v5, v5, 0x6

    add-int/2addr v5, v4

    invoke-interface {v3, v6, v5}, Lcom/google/android/gms/internal/ads/Yz;->j6(Lcom/google/android/gms/internal/ads/LD;I)V

    add-int/lit8 v9, v9, 0x1

    add-int/2addr v9, v5

    :goto_db
    iput v9, v1, Lcom/google/android/gms/internal/ads/yA;->gW:I

    iget v3, v1, Lcom/google/android/gms/internal/ads/yA;->yS:I

    add-int/2addr v3, v9

    iput v3, v1, Lcom/google/android/gms/internal/ads/yA;->yS:I

    goto :goto_e5

    :cond_e3
    iput v8, v1, Lcom/google/android/gms/internal/ads/yA;->gW:I

    :goto_e5
    iget-object v3, v1, Lcom/google/android/gms/internal/ads/yA;->er:Lcom/google/android/gms/internal/ads/BA;

    iget-object v3, v3, Lcom/google/android/gms/internal/ads/BA;->FH:Lcom/google/android/gms/internal/ads/IA;

    iget v3, v3, Lcom/google/android/gms/internal/ads/IA;->VH:I

    if-ne v3, v7, :cond_f7

    iget v3, v1, Lcom/google/android/gms/internal/ads/yA;->yS:I

    const/16 v5, 0x8

    sub-int/2addr v3, v5

    iput v3, v1, Lcom/google/android/gms/internal/ads/yA;->yS:I

    invoke-interface {v2, v5}, Lcom/google/android/gms/internal/ads/Qz;->DW(I)V

    :cond_f7
    const/4 v3, 0x4

    iput v3, v1, Lcom/google/android/gms/internal/ads/yA;->QX:I

    iput v8, v1, Lcom/google/android/gms/internal/ads/yA;->BT:I

    :cond_fc
    iget-object v3, v1, Lcom/google/android/gms/internal/ads/yA;->er:Lcom/google/android/gms/internal/ads/BA;

    iget-object v5, v3, Lcom/google/android/gms/internal/ads/BA;->j6:Lcom/google/android/gms/internal/ads/KA;

    iget-object v6, v3, Lcom/google/android/gms/internal/ads/BA;->FH:Lcom/google/android/gms/internal/ads/IA;

    iget-object v9, v3, Lcom/google/android/gms/internal/ads/BA;->DW:Lcom/google/android/gms/internal/ads/Yz;

    iget v3, v3, Lcom/google/android/gms/internal/ads/BA;->v5:I

    iget v10, v6, Lcom/google/android/gms/internal/ads/IA;->EQ:I

    if-eqz v10, :cond_1c4

    iget-object v13, v1, Lcom/google/android/gms/internal/ads/yA;->gn:Lcom/google/android/gms/internal/ads/LD;

    iget-object v13, v13, Lcom/google/android/gms/internal/ads/LD;->j6:[B

    aput-byte v8, v13, v8

    aput-byte v8, v13, v7

    aput-byte v8, v13, v4

    rsub-int/lit8 v4, v10, 0x4

    :goto_116
    iget v14, v1, Lcom/google/android/gms/internal/ads/yA;->gW:I

    iget v15, v1, Lcom/google/android/gms/internal/ads/yA;->yS:I

    if-ge v14, v15, :cond_1d6

    iget v14, v1, Lcom/google/android/gms/internal/ads/yA;->BT:I

    if-nez v14, :cond_165

    add-int/lit8 v14, v10, 0x1

    invoke-interface {v2, v13, v4, v14}, Lcom/google/android/gms/internal/ads/Qz;->readFully([BII)V

    iget-object v14, v1, Lcom/google/android/gms/internal/ads/yA;->gn:Lcom/google/android/gms/internal/ads/LD;

    invoke-virtual {v14, v8}, Lcom/google/android/gms/internal/ads/LD;->DW(I)V

    iget-object v14, v1, Lcom/google/android/gms/internal/ads/yA;->gn:Lcom/google/android/gms/internal/ads/LD;

    invoke-virtual {v14}, Lcom/google/android/gms/internal/ads/LD;->Ws()I

    move-result v14

    sub-int/2addr v14, v7

    iput v14, v1, Lcom/google/android/gms/internal/ads/yA;->BT:I

    iget-object v14, v1, Lcom/google/android/gms/internal/ads/yA;->VH:Lcom/google/android/gms/internal/ads/LD;

    invoke-virtual {v14, v8}, Lcom/google/android/gms/internal/ads/LD;->DW(I)V

    iget-object v14, v1, Lcom/google/android/gms/internal/ads/yA;->VH:Lcom/google/android/gms/internal/ads/LD;

    const/4 v15, 0x4

    invoke-interface {v9, v14, v15}, Lcom/google/android/gms/internal/ads/Yz;->j6(Lcom/google/android/gms/internal/ads/LD;I)V

    iget-object v14, v1, Lcom/google/android/gms/internal/ads/yA;->gn:Lcom/google/android/gms/internal/ads/LD;

    invoke-interface {v9, v14, v7}, Lcom/google/android/gms/internal/ads/Yz;->j6(Lcom/google/android/gms/internal/ads/LD;I)V

    iget-object v14, v1, Lcom/google/android/gms/internal/ads/yA;->nw:[Lcom/google/android/gms/internal/ads/Yz;

    if-eqz v14, :cond_155

    iget-object v14, v6, Lcom/google/android/gms/internal/ads/IA;->Zo:Lcom/google/android/gms/internal/ads/zzfs;

    iget-object v14, v14, Lcom/google/android/gms/internal/ads/zzfs;->Zo:Ljava/lang/String;

    aget-byte v7, v13, v15

    invoke-static {v14, v7}, Lcom/google/android/gms/internal/ads/ID;->j6(Ljava/lang/String;B)Z

    move-result v7

    if-eqz v7, :cond_155

    const/4 v7, 0x1

    goto :goto_156

    :cond_155
    const/4 v7, 0x0

    :goto_156
    iput-boolean v7, v1, Lcom/google/android/gms/internal/ads/yA;->vy:Z

    iget v7, v1, Lcom/google/android/gms/internal/ads/yA;->gW:I

    add-int/lit8 v7, v7, 0x5

    iput v7, v1, Lcom/google/android/gms/internal/ads/yA;->gW:I

    iget v7, v1, Lcom/google/android/gms/internal/ads/yA;->yS:I

    add-int/2addr v7, v4

    iput v7, v1, Lcom/google/android/gms/internal/ads/yA;->yS:I

    const/4 v7, 0x1

    goto :goto_116

    :cond_165
    iget-boolean v7, v1, Lcom/google/android/gms/internal/ads/yA;->vy:Z

    if-eqz v7, :cond_1b0

    iget-object v7, v1, Lcom/google/android/gms/internal/ads/yA;->u7:Lcom/google/android/gms/internal/ads/LD;

    invoke-virtual {v7, v14}, Lcom/google/android/gms/internal/ads/LD;->j6(I)V

    iget-object v7, v1, Lcom/google/android/gms/internal/ads/yA;->u7:Lcom/google/android/gms/internal/ads/LD;

    iget-object v7, v7, Lcom/google/android/gms/internal/ads/LD;->j6:[B

    iget v14, v1, Lcom/google/android/gms/internal/ads/yA;->BT:I

    invoke-interface {v2, v7, v8, v14}, Lcom/google/android/gms/internal/ads/Qz;->readFully([BII)V

    iget-object v7, v1, Lcom/google/android/gms/internal/ads/yA;->u7:Lcom/google/android/gms/internal/ads/LD;

    iget v14, v1, Lcom/google/android/gms/internal/ads/yA;->BT:I

    invoke-interface {v9, v7, v14}, Lcom/google/android/gms/internal/ads/Yz;->j6(Lcom/google/android/gms/internal/ads/LD;I)V

    iget v7, v1, Lcom/google/android/gms/internal/ads/yA;->BT:I

    iget-object v14, v1, Lcom/google/android/gms/internal/ads/yA;->u7:Lcom/google/android/gms/internal/ads/LD;

    iget-object v15, v14, Lcom/google/android/gms/internal/ads/LD;->j6:[B

    invoke-virtual {v14}, Lcom/google/android/gms/internal/ads/LD;->FH()I

    move-result v14

    invoke-static {v15, v14}, Lcom/google/android/gms/internal/ads/ID;->j6([BI)I

    move-result v14

    iget-object v15, v1, Lcom/google/android/gms/internal/ads/yA;->u7:Lcom/google/android/gms/internal/ads/LD;

    iget-object v8, v6, Lcom/google/android/gms/internal/ads/IA;->Zo:Lcom/google/android/gms/internal/ads/zzfs;

    iget-object v8, v8, Lcom/google/android/gms/internal/ads/zzfs;->Zo:Ljava/lang/String;

    const-string v11, "video/hevc"

    invoke-virtual {v11, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    invoke-virtual {v15, v8}, Lcom/google/android/gms/internal/ads/LD;->DW(I)V

    iget-object v8, v1, Lcom/google/android/gms/internal/ads/yA;->u7:Lcom/google/android/gms/internal/ads/LD;

    invoke-virtual {v8, v14}, Lcom/google/android/gms/internal/ads/LD;->FH(I)V

    invoke-virtual {v5, v3}, Lcom/google/android/gms/internal/ads/KA;->DW(I)J

    move-result-wide v11

    const-wide/16 v14, 0x3e8

    mul-long v11, v11, v14

    iget-object v8, v1, Lcom/google/android/gms/internal/ads/yA;->u7:Lcom/google/android/gms/internal/ads/LD;

    iget-object v14, v1, Lcom/google/android/gms/internal/ads/yA;->nw:[Lcom/google/android/gms/internal/ads/Yz;

    invoke-static {v11, v12, v8, v14}, Lcom/google/android/gms/internal/ads/QC;->j6(JLcom/google/android/gms/internal/ads/LD;[Lcom/google/android/gms/internal/ads/Yz;)V

    goto :goto_1b6

    :cond_1b0
    const/4 v7, 0x0

    invoke-interface {v9, v2, v14, v7}, Lcom/google/android/gms/internal/ads/Yz;->j6(Lcom/google/android/gms/internal/ads/Qz;IZ)I

    move-result v8

    move v7, v8

    :goto_1b6
    iget v8, v1, Lcom/google/android/gms/internal/ads/yA;->gW:I

    add-int/2addr v8, v7

    iput v8, v1, Lcom/google/android/gms/internal/ads/yA;->gW:I

    iget v8, v1, Lcom/google/android/gms/internal/ads/yA;->BT:I

    sub-int/2addr v8, v7

    iput v8, v1, Lcom/google/android/gms/internal/ads/yA;->BT:I

    const/4 v7, 0x1

    const/4 v8, 0x0

    goto/16 :goto_116

    :cond_1c4
    :goto_1c4
    iget v4, v1, Lcom/google/android/gms/internal/ads/yA;->gW:I

    iget v7, v1, Lcom/google/android/gms/internal/ads/yA;->yS:I

    if-ge v4, v7, :cond_1d6

    sub-int/2addr v7, v4

    const/4 v4, 0x0

    invoke-interface {v9, v2, v7, v4}, Lcom/google/android/gms/internal/ads/Yz;->j6(Lcom/google/android/gms/internal/ads/Qz;IZ)I

    move-result v7

    iget v4, v1, Lcom/google/android/gms/internal/ads/yA;->gW:I

    add-int/2addr v4, v7

    iput v4, v1, Lcom/google/android/gms/internal/ads/yA;->gW:I

    goto :goto_1c4

    :cond_1d6
    invoke-virtual {v5, v3}, Lcom/google/android/gms/internal/ads/KA;->DW(I)J

    move-result-wide v7

    const-wide/16 v10, 0x3e8

    mul-long v7, v7, v10

    iget-object v4, v1, Lcom/google/android/gms/internal/ads/yA;->EQ:Lcom/google/android/gms/internal/ads/QD;

    if-nez v4, :cond_270

    iget-boolean v4, v5, Lcom/google/android/gms/internal/ads/KA;->J0:Z

    if-eqz v4, :cond_1e9

    const/high16 v4, 0x40000000  # 2.0f

    goto :goto_1ea

    :cond_1e9
    const/4 v4, 0x0

    :goto_1ea
    iget-object v10, v5, Lcom/google/android/gms/internal/ads/KA;->we:[Z

    aget-boolean v3, v10, v3

    iget-boolean v10, v5, Lcom/google/android/gms/internal/ads/KA;->J0:Z

    if-eqz v10, :cond_213

    iget-object v10, v5, Lcom/google/android/gms/internal/ads/KA;->Ws:Lcom/google/android/gms/internal/ads/JA;

    if-eqz v10, :cond_1f8

    move-object v6, v10

    goto :goto_200

    :cond_1f8
    iget-object v6, v6, Lcom/google/android/gms/internal/ads/IA;->gn:[Lcom/google/android/gms/internal/ads/JA;

    iget-object v10, v5, Lcom/google/android/gms/internal/ads/KA;->j6:Lcom/google/android/gms/internal/ads/vA;

    iget v10, v10, Lcom/google/android/gms/internal/ads/vA;->j6:I

    aget-object v6, v6, v10

    :goto_200
    iget-object v10, v1, Lcom/google/android/gms/internal/ads/yA;->er:Lcom/google/android/gms/internal/ads/BA;

    iget-object v11, v10, Lcom/google/android/gms/internal/ads/BA;->u7:Lcom/google/android/gms/internal/ads/JA;

    if-eq v6, v11, :cond_20f

    new-instance v10, Lcom/google/android/gms/internal/ads/Zz;

    iget-object v11, v6, Lcom/google/android/gms/internal/ads/JA;->FH:[B

    const/4 v12, 0x1

    invoke-direct {v10, v12, v11}, Lcom/google/android/gms/internal/ads/Zz;-><init>(I[B)V

    goto :goto_211

    :cond_20f
    iget-object v10, v10, Lcom/google/android/gms/internal/ads/BA;->gn:Lcom/google/android/gms/internal/ads/Zz;

    :goto_211
    move-object v15, v10

    goto :goto_215

    :cond_213
    const/4 v6, 0x0

    const/4 v15, 0x0

    :goto_215
    iget-object v10, v1, Lcom/google/android/gms/internal/ads/yA;->er:Lcom/google/android/gms/internal/ads/BA;

    iput-object v15, v10, Lcom/google/android/gms/internal/ads/BA;->gn:Lcom/google/android/gms/internal/ads/Zz;

    iput-object v6, v10, Lcom/google/android/gms/internal/ads/BA;->u7:Lcom/google/android/gms/internal/ads/JA;

    or-int v12, v4, v3

    iget v13, v1, Lcom/google/android/gms/internal/ads/yA;->yS:I

    const/4 v14, 0x0

    move-wide v10, v7

    :goto_221
    invoke-interface/range {v9 .. v15}, Lcom/google/android/gms/internal/ads/Yz;->j6(JIIILcom/google/android/gms/internal/ads/Zz;)V

    iget-object v3, v1, Lcom/google/android/gms/internal/ads/yA;->Ws:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_246

    iget-object v3, v1, Lcom/google/android/gms/internal/ads/yA;->Ws:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/ads/AA;

    iget v4, v1, Lcom/google/android/gms/internal/ads/yA;->a8:I

    iget v13, v3, Lcom/google/android/gms/internal/ads/AA;->DW:I

    sub-int/2addr v4, v13

    iput v4, v1, Lcom/google/android/gms/internal/ads/yA;->a8:I

    iget-object v9, v1, Lcom/google/android/gms/internal/ads/yA;->ei:Lcom/google/android/gms/internal/ads/Yz;

    iget-wide v3, v3, Lcom/google/android/gms/internal/ads/AA;->j6:J

    add-long v10, v7, v3

    const/4 v12, 0x1

    iget v14, v1, Lcom/google/android/gms/internal/ads/yA;->a8:I

    const/4 v15, 0x0

    goto :goto_221

    :cond_246
    iget-object v3, v1, Lcom/google/android/gms/internal/ads/yA;->er:Lcom/google/android/gms/internal/ads/BA;

    iget v4, v3, Lcom/google/android/gms/internal/ads/BA;->v5:I

    const/4 v6, 0x1

    add-int/2addr v4, v6

    iput v4, v3, Lcom/google/android/gms/internal/ads/BA;->v5:I

    iget v4, v3, Lcom/google/android/gms/internal/ads/BA;->Zo:I

    add-int/2addr v4, v6

    iput v4, v3, Lcom/google/android/gms/internal/ads/BA;->Zo:I

    iget v4, v3, Lcom/google/android/gms/internal/ads/BA;->Zo:I

    iget-object v5, v5, Lcom/google/android/gms/internal/ads/KA;->gn:[I

    iget v6, v3, Lcom/google/android/gms/internal/ads/BA;->VH:I

    aget v5, v5, v6

    if-ne v4, v5, :cond_268

    add-int/lit8 v6, v6, 0x1

    iput v6, v3, Lcom/google/android/gms/internal/ads/BA;->VH:I

    const/4 v4, 0x0

    iput v4, v3, Lcom/google/android/gms/internal/ads/BA;->Zo:I

    const/4 v3, 0x0

    iput-object v3, v1, Lcom/google/android/gms/internal/ads/yA;->er:Lcom/google/android/gms/internal/ads/BA;

    goto :goto_269

    :cond_268
    const/4 v4, 0x0

    :goto_269
    const/4 v3, 0x3

    iput v3, v1, Lcom/google/android/gms/internal/ads/yA;->QX:I

    const/4 v7, 0x1

    :goto_26d
    if-eqz v7, :cond_5

    return v4

    :cond_270
    new-instance v1, Ljava/lang/NoSuchMethodError;

    invoke-direct {v1}, Ljava/lang/NoSuchMethodError;-><init>()V

    throw v1

    :cond_276
    iget-object v3, v1, Lcom/google/android/gms/internal/ads/yA;->Zo:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_27e
    if-ge v4, v3, :cond_2a0

    iget-object v6, v1, Lcom/google/android/gms/internal/ads/yA;->Zo:Landroid/util/SparseArray;

    invoke-virtual {v6, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/android/gms/internal/ads/BA;

    iget-object v6, v6, Lcom/google/android/gms/internal/ads/BA;->j6:Lcom/google/android/gms/internal/ads/KA;

    iget-boolean v7, v6, Lcom/google/android/gms/internal/ads/KA;->aM:Z

    if-eqz v7, :cond_29d

    iget-wide v6, v6, Lcom/google/android/gms/internal/ads/KA;->Hw:J

    cmp-long v8, v6, v10

    if-gez v8, :cond_29d

    iget-object v5, v1, Lcom/google/android/gms/internal/ads/yA;->Zo:Landroid/util/SparseArray;

    invoke-virtual {v5, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/gms/internal/ads/BA;

    move-wide v10, v6

    :cond_29d
    add-int/lit8 v4, v4, 0x1

    goto :goto_27e

    :cond_2a0
    if-nez v5, :cond_2a7

    const/4 v3, 0x3

    iput v3, v1, Lcom/google/android/gms/internal/ads/yA;->QX:I

    goto/16 :goto_5

    :cond_2a7
    invoke-interface/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/Qz;->getPosition()J

    move-result-wide v3

    sub-long/2addr v10, v3

    long-to-int v3, v10

    if-ltz v3, :cond_2c7

    invoke-interface {v2, v3}, Lcom/google/android/gms/internal/ads/Qz;->DW(I)V

    iget-object v3, v5, Lcom/google/android/gms/internal/ads/BA;->j6:Lcom/google/android/gms/internal/ads/KA;

    iget-object v4, v3, Lcom/google/android/gms/internal/ads/KA;->XL:Lcom/google/android/gms/internal/ads/LD;

    iget-object v4, v4, Lcom/google/android/gms/internal/ads/LD;->j6:[B

    iget v5, v3, Lcom/google/android/gms/internal/ads/KA;->QX:I

    const/4 v6, 0x0

    invoke-interface {v2, v4, v6, v5}, Lcom/google/android/gms/internal/ads/Qz;->readFully([BII)V

    iget-object v4, v3, Lcom/google/android/gms/internal/ads/KA;->XL:Lcom/google/android/gms/internal/ads/LD;

    invoke-virtual {v4, v6}, Lcom/google/android/gms/internal/ads/LD;->DW(I)V

    iput-boolean v6, v3, Lcom/google/android/gms/internal/ads/KA;->aM:Z

    goto/16 :goto_5

    :cond_2c7
    new-instance v1, Lcom/google/android/gms/internal/ads/My;

    const-string v2, "Offset to encryption data was negative."

    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/ads/My;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_2cf
    iget-wide v5, v1, Lcom/google/android/gms/internal/ads/yA;->aM:J

    long-to-int v3, v5

    iget v5, v1, Lcom/google/android/gms/internal/ads/yA;->j3:I

    sub-int/2addr v3, v5

    iget-object v5, v1, Lcom/google/android/gms/internal/ads/yA;->Mr:Lcom/google/android/gms/internal/ads/LD;

    if-eqz v5, :cond_42a

    iget-object v5, v5, Lcom/google/android/gms/internal/ads/LD;->j6:[B

    const/16 v6, 0x8

    invoke-interface {v2, v5, v6, v3}, Lcom/google/android/gms/internal/ads/Qz;->readFully([BII)V

    new-instance v3, Lcom/google/android/gms/internal/ads/mA;

    iget v5, v1, Lcom/google/android/gms/internal/ads/yA;->XL:I

    iget-object v6, v1, Lcom/google/android/gms/internal/ads/yA;->Mr:Lcom/google/android/gms/internal/ads/LD;

    invoke-direct {v3, v5, v6}, Lcom/google/android/gms/internal/ads/mA;-><init>(ILcom/google/android/gms/internal/ads/LD;)V

    invoke-interface/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/Qz;->getPosition()J

    move-result-wide v5

    iget-object v7, v1, Lcom/google/android/gms/internal/ads/yA;->J8:Ljava/util/Stack;

    invoke-virtual {v7}, Ljava/util/Stack;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_303

    iget-object v4, v1, Lcom/google/android/gms/internal/ads/yA;->J8:Ljava/util/Stack;

    invoke-virtual {v4}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/internal/ads/lA;

    invoke-virtual {v4, v3}, Lcom/google/android/gms/internal/ads/lA;->j6(Lcom/google/android/gms/internal/ads/mA;)V

    move-object v5, v0

    goto/16 :goto_42e

    :cond_303
    iget v2, v3, Lcom/google/android/gms/internal/ads/kA;->sg:I

    sget v7, Lcom/google/android/gms/internal/ads/kA;->gW:I

    if-ne v2, v7, :cond_3d0

    iget-object v1, v3, Lcom/google/android/gms/internal/ads/mA;->pO:Lcom/google/android/gms/internal/ads/LD;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/LD;->DW(I)V

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/LD;->Hw()I

    move-result v2

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/kA;->j6(I)I

    move-result v2

    const/4 v3, 0x4

    invoke-virtual {v1, v3}, Lcom/google/android/gms/internal/ads/LD;->Hw(I)V

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/LD;->we()J

    move-result-wide v13

    if-nez v2, :cond_32b

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/LD;->we()J

    move-result-wide v2

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/LD;->we()J

    move-result-wide v7

    goto :goto_333

    :cond_32b
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/LD;->QX()J

    move-result-wide v2

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/LD;->QX()J

    move-result-wide v7

    :goto_333
    add-long/2addr v5, v7

    const-wide/32 v9, 0xf4240

    move-wide v7, v2

    move-wide v11, v13

    invoke-static/range {v7 .. v12}, Lcom/google/android/gms/internal/ads/TD;->j6(JJJ)J

    move-result-wide v15

    invoke-virtual {v1, v4}, Lcom/google/android/gms/internal/ads/LD;->Hw(I)V

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/LD;->gn()I

    move-result v4

    new-array v11, v4, [I

    new-array v12, v4, [J

    new-array v9, v4, [J

    new-array v10, v4, [J

    move-wide/from16 v18, v15

    const/4 v7, 0x0

    :goto_34f
    if-ge v7, v4, :cond_3a5

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/LD;->Hw()I

    move-result v8

    const/high16 v17, -0x80000000

    and-int v17, v8, v17

    if-nez v17, :cond_39d

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/LD;->we()J

    move-result-wide v20

    const v17, 0x7fffffff

    and-int v8, v8, v17

    aput v8, v11, v7

    aput-wide v5, v12, v7

    aput-wide v18, v10, v7

    add-long v2, v2, v20

    const-wide/32 v18, 0xf4240

    move/from16 v17, v7

    move-wide v7, v2

    move-wide/from16 v20, v2

    move-object v2, v9

    move-object v3, v10

    move-wide/from16 v9, v18

    move/from16 p2, v4

    move-object v4, v11

    move-object v0, v12

    move-wide v11, v13

    invoke-static/range {v7 .. v12}, Lcom/google/android/gms/internal/ads/TD;->j6(JJJ)J

    move-result-wide v18

    aget-wide v7, v3, v17

    sub-long v7, v18, v7

    aput-wide v7, v2, v17

    const/4 v7, 0x4

    invoke-virtual {v1, v7}, Lcom/google/android/gms/internal/ads/LD;->Hw(I)V

    aget v8, v4, v17

    int-to-long v8, v8

    add-long/2addr v5, v8

    add-int/lit8 v8, v17, 0x1

    move-object v12, v0

    move-object v9, v2

    move-object v10, v3

    move-object v11, v4

    move v7, v8

    move-wide/from16 v2, v20

    move-object/from16 v0, p0

    move/from16 v4, p2

    goto :goto_34f

    :cond_39d
    new-instance v0, Lcom/google/android/gms/internal/ads/My;

    const-string v1, "Unhandled indirect reference"

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/My;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3a5
    move-object v2, v9

    move-object v3, v10

    move-object v4, v11

    move-object v0, v12

    invoke-static/range {v15 .. v16}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    new-instance v5, Lcom/google/android/gms/internal/ads/Lz;

    invoke-direct {v5, v4, v0, v2, v3}, Lcom/google/android/gms/internal/ads/Lz;-><init>([I[J[J[J)V

    invoke-static {v1, v5}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    move-object/from16 v5, p0

    iput-wide v1, v5, Lcom/google/android/gms/internal/ads/yA;->rN:J

    iget-object v1, v5, Lcom/google/android/gms/internal/ads/yA;->P8:Lcom/google/android/gms/internal/ads/Rz;

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/internal/ads/Wz;

    invoke-interface {v1, v0}, Lcom/google/android/gms/internal/ads/Rz;->j6(Lcom/google/android/gms/internal/ads/Wz;)V

    const/4 v0, 0x1

    iput-boolean v0, v5, Lcom/google/android/gms/internal/ads/yA;->SI:Z

    move-object v1, v5

    goto :goto_427

    :cond_3d0
    move-object v5, v0

    sget v0, Lcom/google/android/gms/internal/ads/kA;->Z1:I

    if-ne v2, v0, :cond_427

    iget-object v0, v3, Lcom/google/android/gms/internal/ads/mA;->pO:Lcom/google/android/gms/internal/ads/LD;

    iget-object v2, v1, Lcom/google/android/gms/internal/ads/yA;->ei:Lcom/google/android/gms/internal/ads/Yz;

    if-eqz v2, :cond_427

    const/16 v2, 0xc

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ads/LD;->DW(I)V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/LD;->XL()Ljava/lang/String;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/LD;->XL()Ljava/lang/String;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/LD;->we()J

    move-result-wide v10

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/LD;->we()J

    move-result-wide v6

    const-wide/32 v8, 0xf4240

    invoke-static/range {v6 .. v11}, Lcom/google/android/gms/internal/ads/TD;->j6(JJJ)J

    move-result-wide v3

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ads/LD;->DW(I)V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/LD;->tp()I

    move-result v10

    iget-object v2, v1, Lcom/google/android/gms/internal/ads/yA;->ei:Lcom/google/android/gms/internal/ads/Yz;

    invoke-interface {v2, v0, v10}, Lcom/google/android/gms/internal/ads/Yz;->j6(Lcom/google/android/gms/internal/ads/LD;I)V

    iget-wide v6, v1, Lcom/google/android/gms/internal/ads/yA;->rN:J

    const-wide v8, -0x7fffffffffffffffL  # -4.9E-324

    cmp-long v0, v6, v8

    if-eqz v0, :cond_418

    iget-object v0, v1, Lcom/google/android/gms/internal/ads/yA;->ei:Lcom/google/android/gms/internal/ads/Yz;

    add-long/2addr v3, v6

    const/4 v9, 0x1

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object v6, v0

    move-wide v7, v3

    invoke-interface/range {v6 .. v12}, Lcom/google/android/gms/internal/ads/Yz;->j6(JIIILcom/google/android/gms/internal/ads/Zz;)V

    goto :goto_427

    :cond_418
    iget-object v0, v1, Lcom/google/android/gms/internal/ads/yA;->Ws:Ljava/util/LinkedList;

    new-instance v2, Lcom/google/android/gms/internal/ads/AA;

    invoke-direct {v2, v3, v4, v10}, Lcom/google/android/gms/internal/ads/AA;-><init>(JI)V

    invoke-virtual {v0, v2}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    iget v0, v1, Lcom/google/android/gms/internal/ads/yA;->a8:I

    add-int/2addr v0, v10

    iput v0, v1, Lcom/google/android/gms/internal/ads/yA;->a8:I

    :cond_427
    :goto_427
    move-object/from16 v2, p1

    goto :goto_42e

    :cond_42a
    move-object v5, v0

    invoke-interface {v2, v3}, Lcom/google/android/gms/internal/ads/Qz;->DW(I)V

    :goto_42e
    invoke-interface/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/Qz;->getPosition()J

    move-result-wide v3

    invoke-direct {v1, v3, v4}, Lcom/google/android/gms/internal/ads/yA;->j6(J)V

    goto/16 :goto_5cb

    :cond_437
    move-object v5, v0

    iget v0, v1, Lcom/google/android/gms/internal/ads/yA;->j3:I

    if-nez v0, :cond_463

    iget-object v0, v1, Lcom/google/android/gms/internal/ads/yA;->we:Lcom/google/android/gms/internal/ads/LD;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/LD;->j6:[B

    const/16 v3, 0x8

    const/4 v6, 0x1

    const/4 v7, 0x0

    invoke-interface {v2, v0, v7, v3, v6}, Lcom/google/android/gms/internal/ads/Qz;->j6([BIIZ)Z

    move-result v0

    if-nez v0, :cond_44c

    goto/16 :goto_5c7

    :cond_44c
    iput v3, v1, Lcom/google/android/gms/internal/ads/yA;->j3:I

    iget-object v0, v1, Lcom/google/android/gms/internal/ads/yA;->we:Lcom/google/android/gms/internal/ads/LD;

    invoke-virtual {v0, v7}, Lcom/google/android/gms/internal/ads/LD;->DW(I)V

    iget-object v0, v1, Lcom/google/android/gms/internal/ads/yA;->we:Lcom/google/android/gms/internal/ads/LD;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/LD;->we()J

    move-result-wide v6

    iput-wide v6, v1, Lcom/google/android/gms/internal/ads/yA;->aM:J

    iget-object v0, v1, Lcom/google/android/gms/internal/ads/yA;->we:Lcom/google/android/gms/internal/ads/LD;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/LD;->Hw()I

    move-result v0

    iput v0, v1, Lcom/google/android/gms/internal/ads/yA;->XL:I

    :cond_463
    iget-wide v6, v1, Lcom/google/android/gms/internal/ads/yA;->aM:J

    const-wide/16 v8, 0x1

    cmp-long v0, v6, v8

    if-nez v0, :cond_481

    iget-object v0, v1, Lcom/google/android/gms/internal/ads/yA;->we:Lcom/google/android/gms/internal/ads/LD;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/LD;->j6:[B

    const/16 v3, 0x8

    invoke-interface {v2, v0, v3, v3}, Lcom/google/android/gms/internal/ads/Qz;->readFully([BII)V

    iget v0, v1, Lcom/google/android/gms/internal/ads/yA;->j3:I

    add-int/2addr v0, v3

    iput v0, v1, Lcom/google/android/gms/internal/ads/yA;->j3:I

    iget-object v0, v1, Lcom/google/android/gms/internal/ads/yA;->we:Lcom/google/android/gms/internal/ads/LD;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/LD;->QX()J

    move-result-wide v6

    iput-wide v6, v1, Lcom/google/android/gms/internal/ads/yA;->aM:J

    :cond_481
    iget-wide v6, v1, Lcom/google/android/gms/internal/ads/yA;->aM:J

    iget v0, v1, Lcom/google/android/gms/internal/ads/yA;->j3:I

    int-to-long v8, v0

    cmp-long v0, v6, v8

    if-ltz v0, :cond_5d6

    invoke-interface/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/Qz;->getPosition()J

    move-result-wide v6

    iget v0, v1, Lcom/google/android/gms/internal/ads/yA;->j3:I

    int-to-long v8, v0

    sub-long/2addr v6, v8

    iget v0, v1, Lcom/google/android/gms/internal/ads/yA;->XL:I

    sget v3, Lcom/google/android/gms/internal/ads/kA;->sh:I

    if-ne v0, v3, :cond_4b4

    iget-object v0, v1, Lcom/google/android/gms/internal/ads/yA;->Zo:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    const/4 v3, 0x0

    :goto_49f
    if-ge v3, v0, :cond_4b4

    iget-object v8, v1, Lcom/google/android/gms/internal/ads/yA;->Zo:Landroid/util/SparseArray;

    invoke-virtual {v8, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/google/android/gms/internal/ads/BA;

    iget-object v8, v8, Lcom/google/android/gms/internal/ads/BA;->j6:Lcom/google/android/gms/internal/ads/KA;

    iput-wide v6, v8, Lcom/google/android/gms/internal/ads/KA;->DW:J

    iput-wide v6, v8, Lcom/google/android/gms/internal/ads/KA;->Hw:J

    iput-wide v6, v8, Lcom/google/android/gms/internal/ads/KA;->FH:J

    add-int/lit8 v3, v3, 0x1

    goto :goto_49f

    :cond_4b4
    iget v0, v1, Lcom/google/android/gms/internal/ads/yA;->XL:I

    sget v3, Lcom/google/android/gms/internal/ads/kA;->gn:I

    if-ne v0, v3, :cond_4d8

    const/4 v3, 0x0

    iput-object v3, v1, Lcom/google/android/gms/internal/ads/yA;->er:Lcom/google/android/gms/internal/ads/BA;

    iget-wide v8, v1, Lcom/google/android/gms/internal/ads/yA;->aM:J

    add-long/2addr v6, v8

    iput-wide v6, v1, Lcom/google/android/gms/internal/ads/yA;->U2:J

    iget-boolean v0, v1, Lcom/google/android/gms/internal/ads/yA;->SI:Z

    if-nez v0, :cond_4d5

    iget-object v0, v1, Lcom/google/android/gms/internal/ads/yA;->P8:Lcom/google/android/gms/internal/ads/Rz;

    new-instance v3, Lcom/google/android/gms/internal/ads/Xz;

    iget-wide v6, v1, Lcom/google/android/gms/internal/ads/yA;->lg:J

    invoke-direct {v3, v6, v7}, Lcom/google/android/gms/internal/ads/Xz;-><init>(J)V

    invoke-interface {v0, v3}, Lcom/google/android/gms/internal/ads/Rz;->j6(Lcom/google/android/gms/internal/ads/Wz;)V

    const/4 v0, 0x1

    iput-boolean v0, v1, Lcom/google/android/gms/internal/ads/yA;->SI:Z

    :cond_4d5
    iput v4, v1, Lcom/google/android/gms/internal/ads/yA;->QX:I

    goto :goto_528

    :cond_4d8
    sget v3, Lcom/google/android/gms/internal/ads/kA;->BT:I

    if-eq v0, v3, :cond_4ff

    sget v3, Lcom/google/android/gms/internal/ads/kA;->P8:I

    if-eq v0, v3, :cond_4ff

    sget v3, Lcom/google/android/gms/internal/ads/kA;->ei:I

    if-eq v0, v3, :cond_4ff

    sget v3, Lcom/google/android/gms/internal/ads/kA;->nw:I

    if-eq v0, v3, :cond_4ff

    sget v3, Lcom/google/android/gms/internal/ads/kA;->SI:I

    if-eq v0, v3, :cond_4ff

    sget v3, Lcom/google/android/gms/internal/ads/kA;->sh:I

    if-eq v0, v3, :cond_4ff

    sget v3, Lcom/google/android/gms/internal/ads/kA;->cb:I

    if-eq v0, v3, :cond_4ff

    sget v3, Lcom/google/android/gms/internal/ads/kA;->dx:I

    if-eq v0, v3, :cond_4ff

    sget v3, Lcom/google/android/gms/internal/ads/kA;->Sf:I

    if-ne v0, v3, :cond_4fd

    goto :goto_4ff

    :cond_4fd
    const/4 v0, 0x0

    goto :goto_500

    :cond_4ff
    :goto_4ff
    const/4 v0, 0x1

    :goto_500
    if-eqz v0, :cond_52b

    invoke-interface/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/Qz;->getPosition()J

    move-result-wide v3

    iget-wide v6, v1, Lcom/google/android/gms/internal/ads/yA;->aM:J

    add-long/2addr v3, v6

    const-wide/16 v6, 0x8

    sub-long/2addr v3, v6

    iget-object v0, v1, Lcom/google/android/gms/internal/ads/yA;->J8:Ljava/util/Stack;

    new-instance v6, Lcom/google/android/gms/internal/ads/lA;

    iget v7, v1, Lcom/google/android/gms/internal/ads/yA;->XL:I

    invoke-direct {v6, v7, v3, v4}, Lcom/google/android/gms/internal/ads/lA;-><init>(IJ)V

    invoke-virtual {v0, v6}, Ljava/util/Stack;->add(Ljava/lang/Object;)Z

    iget-wide v6, v1, Lcom/google/android/gms/internal/ads/yA;->aM:J

    iget v0, v1, Lcom/google/android/gms/internal/ads/yA;->j3:I

    int-to-long v8, v0

    cmp-long v0, v6, v8

    if-nez v0, :cond_525

    invoke-direct {v1, v3, v4}, Lcom/google/android/gms/internal/ads/yA;->j6(J)V

    goto :goto_528

    :cond_525
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/yA;->DW()V

    :goto_528
    const/4 v7, 0x1

    goto/16 :goto_5c7

    :cond_52b
    iget v0, v1, Lcom/google/android/gms/internal/ads/yA;->XL:I

    sget v3, Lcom/google/android/gms/internal/ads/kA;->Mz:I

    if-eq v0, v3, :cond_580

    sget v3, Lcom/google/android/gms/internal/ads/kA;->g3:I

    if-eq v0, v3, :cond_580

    sget v3, Lcom/google/android/gms/internal/ads/kA;->vy:I

    if-eq v0, v3, :cond_580

    sget v3, Lcom/google/android/gms/internal/ads/kA;->gW:I

    if-eq v0, v3, :cond_580

    sget v3, Lcom/google/android/gms/internal/ads/kA;->I:I

    if-eq v0, v3, :cond_580

    sget v3, Lcom/google/android/gms/internal/ads/kA;->lg:I

    if-eq v0, v3, :cond_580

    sget v3, Lcom/google/android/gms/internal/ads/kA;->rN:I

    if-eq v0, v3, :cond_580

    sget v3, Lcom/google/android/gms/internal/ads/kA;->ef:I

    if-eq v0, v3, :cond_580

    sget v3, Lcom/google/android/gms/internal/ads/kA;->er:I

    if-eq v0, v3, :cond_580

    sget v3, Lcom/google/android/gms/internal/ads/kA;->yS:I

    if-eq v0, v3, :cond_580

    sget v3, Lcom/google/android/gms/internal/ads/kA;->ca:I

    if-eq v0, v3, :cond_580

    sget v3, Lcom/google/android/gms/internal/ads/kA;->XX:I

    if-eq v0, v3, :cond_580

    sget v3, Lcom/google/android/gms/internal/ads/kA;->kQ:I

    if-eq v0, v3, :cond_580

    sget v3, Lcom/google/android/gms/internal/ads/kA;->wc:I

    if-eq v0, v3, :cond_580

    sget v3, Lcom/google/android/gms/internal/ads/kA;->jJ:I

    if-eq v0, v3, :cond_580

    sget v3, Lcom/google/android/gms/internal/ads/kA;->yO:I

    if-eq v0, v3, :cond_580

    sget v3, Lcom/google/android/gms/internal/ads/kA;->XG:I

    if-eq v0, v3, :cond_580

    sget v3, Lcom/google/android/gms/internal/ads/kA;->vJ:I

    if-eq v0, v3, :cond_580

    sget v3, Lcom/google/android/gms/internal/ads/kA;->sG:I

    if-eq v0, v3, :cond_580

    sget v3, Lcom/google/android/gms/internal/ads/kA;->Z1:I

    if-ne v0, v3, :cond_57e

    goto :goto_580

    :cond_57e
    const/4 v0, 0x0

    goto :goto_581

    :cond_580
    :goto_580
    const/4 v0, 0x1

    :goto_581
    const-wide/32 v3, 0x7fffffff

    if-eqz v0, :cond_5b9

    iget v0, v1, Lcom/google/android/gms/internal/ads/yA;->j3:I

    const/16 v6, 0x8

    if-ne v0, v6, :cond_5b1

    iget-wide v6, v1, Lcom/google/android/gms/internal/ads/yA;->aM:J

    cmp-long v0, v6, v3

    if-gtz v0, :cond_5a9

    new-instance v0, Lcom/google/android/gms/internal/ads/LD;

    long-to-int v3, v6

    invoke-direct {v0, v3}, Lcom/google/android/gms/internal/ads/LD;-><init>(I)V

    iput-object v0, v1, Lcom/google/android/gms/internal/ads/yA;->Mr:Lcom/google/android/gms/internal/ads/LD;

    iget-object v0, v1, Lcom/google/android/gms/internal/ads/yA;->we:Lcom/google/android/gms/internal/ads/LD;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/LD;->j6:[B

    iget-object v3, v1, Lcom/google/android/gms/internal/ads/yA;->Mr:Lcom/google/android/gms/internal/ads/LD;

    iget-object v3, v3, Lcom/google/android/gms/internal/ads/LD;->j6:[B

    const/16 v4, 0x8

    const/4 v6, 0x0

    invoke-static {v0, v6, v3, v6, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_5c2

    :cond_5a9
    new-instance v0, Lcom/google/android/gms/internal/ads/My;

    const-string v1, "Leaf atom with length > 2147483647 (unsupported)."

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/My;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5b1
    new-instance v0, Lcom/google/android/gms/internal/ads/My;

    const-string v1, "Leaf atom defines extended atom size (unsupported)."

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/My;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5b9
    iget-wide v6, v1, Lcom/google/android/gms/internal/ads/yA;->aM:J

    cmp-long v0, v6, v3

    if-gtz v0, :cond_5ce

    const/4 v0, 0x0

    iput-object v0, v1, Lcom/google/android/gms/internal/ads/yA;->Mr:Lcom/google/android/gms/internal/ads/LD;

    :goto_5c2
    const/4 v0, 0x1

    iput v0, v1, Lcom/google/android/gms/internal/ads/yA;->QX:I

    goto/16 :goto_528

    :goto_5c7
    if-nez v7, :cond_5cb

    const/4 v0, -0x1

    return v0

    :cond_5cb
    :goto_5cb
    move-object v0, v5

    goto/16 :goto_5

    :cond_5ce
    new-instance v0, Lcom/google/android/gms/internal/ads/My;

    const-string v1, "Skipping atom with length > 2147483647 (unsupported)."

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/My;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5d6
    new-instance v0, Lcom/google/android/gms/internal/ads/My;

    const-string v1, "Atom size less than header length (unsupported)."

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/My;-><init>(Ljava/lang/String;)V

    goto :goto_5df

    :goto_5de
    throw v0

    :goto_5df
    goto :goto_5de
.end method

.method public final j6()V
    .registers 1

    return-void
.end method

.method public final j6(JJ)V
    .registers 5

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/yA;->Zo:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result p1

    const/4 p2, 0x0

    const/4 p3, 0x0

    :goto_8
    if-ge p3, p1, :cond_18

    iget-object p4, p0, Lcom/google/android/gms/internal/ads/yA;->Zo:Landroid/util/SparseArray;

    invoke-virtual {p4, p3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lcom/google/android/gms/internal/ads/BA;

    invoke-virtual {p4}, Lcom/google/android/gms/internal/ads/BA;->j6()V

    add-int/lit8 p3, p3, 0x1

    goto :goto_8

    :cond_18
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/yA;->Ws:Ljava/util/LinkedList;

    invoke-virtual {p1}, Ljava/util/LinkedList;->clear()V

    iput p2, p0, Lcom/google/android/gms/internal/ads/yA;->a8:I

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/yA;->J8:Ljava/util/Stack;

    invoke-virtual {p1}, Ljava/util/Stack;->clear()V

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/yA;->DW()V

    return-void
.end method

.method public final j6(Lcom/google/android/gms/internal/ads/Rz;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/yA;->P8:Lcom/google/android/gms/internal/ads/Rz;

    return-void
.end method

.method public final j6(Lcom/google/android/gms/internal/ads/Qz;)Z
    .registers 2

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/HA;->j6(Lcom/google/android/gms/internal/ads/Qz;)Z

    move-result p1

    return p1
.end method
