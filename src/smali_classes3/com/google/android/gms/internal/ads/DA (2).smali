.class public final Lcom/google/android/gms/internal/ads/DA;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/ads/Oz;
.implements Lcom/google/android/gms/internal/ads/Wz;


# static fields
.field private static final DW:I

.field private static final j6:Lcom/google/android/gms/internal/ads/Sz;


# instance fields
.field private EQ:Lcom/google/android/gms/internal/ads/LD;

.field private final FH:Lcom/google/android/gms/internal/ads/LD;

.field private final Hw:Lcom/google/android/gms/internal/ads/LD;

.field private J0:I

.field private J8:Lcom/google/android/gms/internal/ads/Rz;

.field private QX:J

.field private VH:I

.field private Ws:[Lcom/google/android/gms/internal/ads/FA;

.field private XL:Z

.field private final Zo:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack<",
            "Lcom/google/android/gms/internal/ads/lA;",
            ">;"
        }
    .end annotation
.end field

.field private gn:I

.field private tp:I

.field private u7:J

.field private final v5:Lcom/google/android/gms/internal/ads/LD;

.field private we:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/google/android/gms/internal/ads/EA;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/EA;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/DA;->j6:Lcom/google/android/gms/internal/ads/Sz;

    const-string v0, "qt  "

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/TD;->Zo(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/google/android/gms/internal/ads/DA;->DW:I

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/android/gms/internal/ads/LD;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/LD;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/DA;->v5:Lcom/google/android/gms/internal/ads/LD;

    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/DA;->Zo:Ljava/util/Stack;

    new-instance v0, Lcom/google/android/gms/internal/ads/LD;

    sget-object v1, Lcom/google/android/gms/internal/ads/ID;->j6:[B

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/LD;-><init>([B)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/DA;->FH:Lcom/google/android/gms/internal/ads/LD;

    new-instance v0, Lcom/google/android/gms/internal/ads/LD;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/LD;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/DA;->Hw:Lcom/google/android/gms/internal/ads/LD;

    return-void
.end method

.method private final DW(J)V
    .registers 19

    move-object/from16 v0, p0

    :cond_2
    :goto_2
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/DA;->Zo:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->isEmpty()Z

    move-result v1

    const/4 v2, 0x2

    if-nez v1, :cond_10b

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/DA;->Zo:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/lA;

    iget-wide v3, v1, Lcom/google/android/gms/internal/ads/lA;->pO:J

    cmp-long v1, v3, p1

    if-nez v1, :cond_10b

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/DA;->Zo:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/lA;

    iget v3, v1, Lcom/google/android/gms/internal/ads/kA;->sg:I

    sget v4, Lcom/google/android/gms/internal/ads/kA;->BT:I

    if-ne v3, v4, :cond_f6

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    new-instance v4, Lcom/google/android/gms/internal/ads/Tz;

    invoke-direct {v4}, Lcom/google/android/gms/internal/ads/Tz;-><init>()V

    sget v5, Lcom/google/android/gms/internal/ads/kA;->zh:I

    invoke-virtual {v1, v5}, Lcom/google/android/gms/internal/ads/lA;->Hw(I)Lcom/google/android/gms/internal/ads/mA;

    move-result-object v5

    if-eqz v5, :cond_45

    iget-boolean v6, v0, Lcom/google/android/gms/internal/ads/DA;->XL:Z

    invoke-static {v5, v6}, Lcom/google/android/gms/internal/ads/nA;->j6(Lcom/google/android/gms/internal/ads/mA;Z)Lcom/google/android/gms/internal/ads/zzki;

    move-result-object v5

    if-eqz v5, :cond_46

    invoke-virtual {v4, v5}, Lcom/google/android/gms/internal/ads/Tz;->j6(Lcom/google/android/gms/internal/ads/zzki;)Z

    goto :goto_46

    :cond_45
    const/4 v5, 0x0

    :cond_46
    :goto_46
    const-wide v6, -0x7fffffffffffffffL  # -4.9E-324

    const/4 v8, 0x0

    :goto_4c
    iget-object v9, v1, Lcom/google/android/gms/internal/ads/lA;->Gj:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    if-ge v8, v9, :cond_d3

    iget-object v9, v1, Lcom/google/android/gms/internal/ads/lA;->Gj:Ljava/util/List;

    invoke-interface {v9, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/google/android/gms/internal/ads/lA;

    iget v10, v9, Lcom/google/android/gms/internal/ads/kA;->sg:I

    sget v11, Lcom/google/android/gms/internal/ads/kA;->P8:I

    if-ne v10, v11, :cond_cf

    sget v10, Lcom/google/android/gms/internal/ads/kA;->vy:I

    invoke-virtual {v1, v10}, Lcom/google/android/gms/internal/ads/lA;->Hw(I)Lcom/google/android/gms/internal/ads/mA;

    move-result-object v11

    const-wide v12, -0x7fffffffffffffffL  # -4.9E-324

    const/4 v14, 0x0

    iget-boolean v15, v0, Lcom/google/android/gms/internal/ads/DA;->XL:Z

    move-object v10, v9

    invoke-static/range {v10 .. v15}, Lcom/google/android/gms/internal/ads/nA;->j6(Lcom/google/android/gms/internal/ads/lA;Lcom/google/android/gms/internal/ads/mA;JLcom/google/android/gms/internal/ads/zzhp;Z)Lcom/google/android/gms/internal/ads/IA;

    move-result-object v10

    if-eqz v10, :cond_cf

    sget v11, Lcom/google/android/gms/internal/ads/kA;->ei:I

    invoke-virtual {v9, v11}, Lcom/google/android/gms/internal/ads/lA;->v5(I)Lcom/google/android/gms/internal/ads/lA;

    move-result-object v9

    sget v11, Lcom/google/android/gms/internal/ads/kA;->nw:I

    invoke-virtual {v9, v11}, Lcom/google/android/gms/internal/ads/lA;->v5(I)Lcom/google/android/gms/internal/ads/lA;

    move-result-object v9

    sget v11, Lcom/google/android/gms/internal/ads/kA;->SI:I

    invoke-virtual {v9, v11}, Lcom/google/android/gms/internal/ads/lA;->v5(I)Lcom/google/android/gms/internal/ads/lA;

    move-result-object v9

    invoke-static {v10, v9, v4}, Lcom/google/android/gms/internal/ads/nA;->j6(Lcom/google/android/gms/internal/ads/IA;Lcom/google/android/gms/internal/ads/lA;Lcom/google/android/gms/internal/ads/Tz;)Lcom/google/android/gms/internal/ads/LA;

    move-result-object v9

    iget v11, v9, Lcom/google/android/gms/internal/ads/LA;->j6:I

    if-eqz v11, :cond_cf

    new-instance v11, Lcom/google/android/gms/internal/ads/FA;

    iget-object v12, v0, Lcom/google/android/gms/internal/ads/DA;->J8:Lcom/google/android/gms/internal/ads/Rz;

    iget v13, v10, Lcom/google/android/gms/internal/ads/IA;->DW:I

    invoke-interface {v12, v8, v13}, Lcom/google/android/gms/internal/ads/Rz;->j6(II)Lcom/google/android/gms/internal/ads/Yz;

    move-result-object v12

    invoke-direct {v11, v10, v9, v12}, Lcom/google/android/gms/internal/ads/FA;-><init>(Lcom/google/android/gms/internal/ads/IA;Lcom/google/android/gms/internal/ads/LA;Lcom/google/android/gms/internal/ads/Yz;)V

    iget v9, v9, Lcom/google/android/gms/internal/ads/LA;->Hw:I

    iget-object v12, v10, Lcom/google/android/gms/internal/ads/IA;->Zo:Lcom/google/android/gms/internal/ads/zzfs;

    add-int/lit8 v9, v9, 0x1e

    invoke-virtual {v12, v9}, Lcom/google/android/gms/internal/ads/zzfs;->j6(I)Lcom/google/android/gms/internal/ads/zzfs;

    move-result-object v9

    iget v12, v10, Lcom/google/android/gms/internal/ads/IA;->DW:I

    const/4 v13, 0x1

    if-ne v12, v13, :cond_c1

    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/Tz;->j6()Z

    move-result v12

    if-eqz v12, :cond_bb

    iget v12, v4, Lcom/google/android/gms/internal/ads/Tz;->FH:I

    iget v13, v4, Lcom/google/android/gms/internal/ads/Tz;->Hw:I

    invoke-virtual {v9, v12, v13}, Lcom/google/android/gms/internal/ads/zzfs;->j6(II)Lcom/google/android/gms/internal/ads/zzfs;

    move-result-object v9

    :cond_bb
    if-eqz v5, :cond_c1

    invoke-virtual {v9, v5}, Lcom/google/android/gms/internal/ads/zzfs;->j6(Lcom/google/android/gms/internal/ads/zzki;)Lcom/google/android/gms/internal/ads/zzfs;

    move-result-object v9

    :cond_c1
    iget-object v12, v11, Lcom/google/android/gms/internal/ads/FA;->FH:Lcom/google/android/gms/internal/ads/Yz;

    invoke-interface {v12, v9}, Lcom/google/android/gms/internal/ads/Yz;->j6(Lcom/google/android/gms/internal/ads/zzfs;)V

    iget-wide v9, v10, Lcom/google/android/gms/internal/ads/IA;->v5:J

    invoke-static {v6, v7, v9, v10}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v6

    invoke-interface {v3, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_cf
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_4c

    :cond_d3
    iput-wide v6, v0, Lcom/google/android/gms/internal/ads/DA;->QX:J

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Lcom/google/android/gms/internal/ads/FA;

    invoke-interface {v3, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/google/android/gms/internal/ads/FA;

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/DA;->Ws:[Lcom/google/android/gms/internal/ads/FA;

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/DA;->J8:Lcom/google/android/gms/internal/ads/Rz;

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/Rz;->j6()V

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/DA;->J8:Lcom/google/android/gms/internal/ads/Rz;

    invoke-interface {v1, v0}, Lcom/google/android/gms/internal/ads/Rz;->j6(Lcom/google/android/gms/internal/ads/Wz;)V

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/DA;->Zo:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->clear()V

    iput v2, v0, Lcom/google/android/gms/internal/ads/DA;->VH:I

    goto/16 :goto_2

    :cond_f6
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/DA;->Zo:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/DA;->Zo:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/ads/lA;

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/lA;->j6(Lcom/google/android/gms/internal/ads/lA;)V

    goto/16 :goto_2

    :cond_10b
    iget v1, v0, Lcom/google/android/gms/internal/ads/DA;->VH:I

    if-eq v1, v2, :cond_112

    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/DA;->Hw()V

    :cond_112
    return-void
.end method

.method private final Hw()V
    .registers 2

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/internal/ads/DA;->VH:I

    iput v0, p0, Lcom/google/android/gms/internal/ads/DA;->tp:I

    return-void
.end method


# virtual methods
.method public final DW()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public final FH()J
    .registers 3

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/DA;->QX:J

    return-wide v0
.end method

.method public final j6(Lcom/google/android/gms/internal/ads/Qz;Lcom/google/android/gms/internal/ads/Vz;)I
    .registers 26

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    :cond_6
    iget v3, v0, Lcom/google/android/gms/internal/ads/DA;->VH:I

    const/4 v4, -0x1

    const/16 v5, 0x8

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-eqz v3, :cond_189

    const-wide/32 v8, 0x40000

    const/4 v10, 0x2

    if-eq v3, v6, :cond_109

    if-ne v3, v10, :cond_103

    const-wide v12, 0x7fffffffffffffffL

    const/4 v3, 0x0

    const/4 v5, -0x1

    :goto_1e
    iget-object v14, v0, Lcom/google/android/gms/internal/ads/DA;->Ws:[Lcom/google/android/gms/internal/ads/FA;

    array-length v15, v14

    if-ge v3, v15, :cond_3a

    aget-object v14, v14, v3

    iget v15, v14, Lcom/google/android/gms/internal/ads/FA;->Hw:I

    iget-object v14, v14, Lcom/google/android/gms/internal/ads/FA;->DW:Lcom/google/android/gms/internal/ads/LA;

    iget v11, v14, Lcom/google/android/gms/internal/ads/LA;->j6:I

    if-eq v15, v11, :cond_37

    iget-object v11, v14, Lcom/google/android/gms/internal/ads/LA;->DW:[J

    aget-wide v14, v11, v15

    cmp-long v11, v14, v12

    if-gez v11, :cond_37

    move v5, v3

    move-wide v12, v14

    :cond_37
    add-int/lit8 v3, v3, 0x1

    goto :goto_1e

    :cond_3a
    if-ne v5, v4, :cond_3d

    return v4

    :cond_3d
    aget-object v3, v14, v5

    iget-object v4, v3, Lcom/google/android/gms/internal/ads/FA;->FH:Lcom/google/android/gms/internal/ads/Yz;

    iget v5, v3, Lcom/google/android/gms/internal/ads/FA;->Hw:I

    iget-object v11, v3, Lcom/google/android/gms/internal/ads/FA;->DW:Lcom/google/android/gms/internal/ads/LA;

    iget-object v12, v11, Lcom/google/android/gms/internal/ads/LA;->DW:[J

    aget-wide v13, v12, v5

    iget-object v11, v11, Lcom/google/android/gms/internal/ads/LA;->FH:[I

    aget v11, v11, v5

    iget-object v12, v3, Lcom/google/android/gms/internal/ads/FA;->j6:Lcom/google/android/gms/internal/ads/IA;

    iget v12, v12, Lcom/google/android/gms/internal/ads/IA;->VH:I

    if-ne v12, v6, :cond_59

    const-wide/16 v16, 0x8

    add-long v13, v13, v16

    add-int/lit8 v11, v11, -0x8

    :cond_59
    invoke-interface/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/Qz;->getPosition()J

    move-result-wide v16

    iget v12, v0, Lcom/google/android/gms/internal/ads/DA;->we:I

    sub-long v16, v13, v16

    move/from16 v18, v11

    int-to-long v10, v12

    add-long v10, v16, v10

    const-wide/16 v16, 0x0

    cmp-long v12, v10, v16

    if-ltz v12, :cond_100

    cmp-long v12, v10, v8

    if-ltz v12, :cond_72

    goto/16 :goto_100

    :cond_72
    long-to-int v2, v10

    invoke-interface {v1, v2}, Lcom/google/android/gms/internal/ads/Qz;->DW(I)V

    iget-object v2, v3, Lcom/google/android/gms/internal/ads/FA;->j6:Lcom/google/android/gms/internal/ads/IA;

    iget v2, v2, Lcom/google/android/gms/internal/ads/IA;->EQ:I

    if-eqz v2, :cond_c8

    iget-object v8, v0, Lcom/google/android/gms/internal/ads/DA;->Hw:Lcom/google/android/gms/internal/ads/LD;

    iget-object v8, v8, Lcom/google/android/gms/internal/ads/LD;->j6:[B

    aput-byte v7, v8, v7

    aput-byte v7, v8, v6

    const/4 v9, 0x2

    aput-byte v7, v8, v9

    rsub-int/lit8 v8, v2, 0x4

    move/from16 v11, v18

    :goto_8b
    iget v9, v0, Lcom/google/android/gms/internal/ads/DA;->we:I

    if-ge v9, v11, :cond_e1

    iget v9, v0, Lcom/google/android/gms/internal/ads/DA;->J0:I

    if-nez v9, :cond_b9

    iget-object v9, v0, Lcom/google/android/gms/internal/ads/DA;->Hw:Lcom/google/android/gms/internal/ads/LD;

    iget-object v9, v9, Lcom/google/android/gms/internal/ads/LD;->j6:[B

    invoke-interface {v1, v9, v8, v2}, Lcom/google/android/gms/internal/ads/Qz;->readFully([BII)V

    iget-object v9, v0, Lcom/google/android/gms/internal/ads/DA;->Hw:Lcom/google/android/gms/internal/ads/LD;

    invoke-virtual {v9, v7}, Lcom/google/android/gms/internal/ads/LD;->DW(I)V

    iget-object v9, v0, Lcom/google/android/gms/internal/ads/DA;->Hw:Lcom/google/android/gms/internal/ads/LD;

    invoke-virtual {v9}, Lcom/google/android/gms/internal/ads/LD;->Ws()I

    move-result v9

    iput v9, v0, Lcom/google/android/gms/internal/ads/DA;->J0:I

    iget-object v9, v0, Lcom/google/android/gms/internal/ads/DA;->FH:Lcom/google/android/gms/internal/ads/LD;

    invoke-virtual {v9, v7}, Lcom/google/android/gms/internal/ads/LD;->DW(I)V

    iget-object v9, v0, Lcom/google/android/gms/internal/ads/DA;->FH:Lcom/google/android/gms/internal/ads/LD;

    const/4 v10, 0x4

    invoke-interface {v4, v9, v10}, Lcom/google/android/gms/internal/ads/Yz;->j6(Lcom/google/android/gms/internal/ads/LD;I)V

    iget v9, v0, Lcom/google/android/gms/internal/ads/DA;->we:I

    add-int/2addr v9, v10

    iput v9, v0, Lcom/google/android/gms/internal/ads/DA;->we:I

    add-int/2addr v11, v8

    goto :goto_8b

    :cond_b9
    invoke-interface {v4, v1, v9, v7}, Lcom/google/android/gms/internal/ads/Yz;->j6(Lcom/google/android/gms/internal/ads/Qz;IZ)I

    move-result v9

    iget v10, v0, Lcom/google/android/gms/internal/ads/DA;->we:I

    add-int/2addr v10, v9

    iput v10, v0, Lcom/google/android/gms/internal/ads/DA;->we:I

    iget v10, v0, Lcom/google/android/gms/internal/ads/DA;->J0:I

    sub-int/2addr v10, v9

    iput v10, v0, Lcom/google/android/gms/internal/ads/DA;->J0:I

    goto :goto_8b

    :cond_c8
    :goto_c8
    iget v2, v0, Lcom/google/android/gms/internal/ads/DA;->we:I

    move/from16 v11, v18

    if-ge v2, v11, :cond_e1

    sub-int v2, v11, v2

    invoke-interface {v4, v1, v2, v7}, Lcom/google/android/gms/internal/ads/Yz;->j6(Lcom/google/android/gms/internal/ads/Qz;IZ)I

    move-result v2

    iget v8, v0, Lcom/google/android/gms/internal/ads/DA;->we:I

    add-int/2addr v8, v2

    iput v8, v0, Lcom/google/android/gms/internal/ads/DA;->we:I

    iget v8, v0, Lcom/google/android/gms/internal/ads/DA;->J0:I

    sub-int/2addr v8, v2

    iput v8, v0, Lcom/google/android/gms/internal/ads/DA;->J0:I

    move/from16 v18, v11

    goto :goto_c8

    :cond_e1
    move/from16 v20, v11

    iget-object v1, v3, Lcom/google/android/gms/internal/ads/FA;->DW:Lcom/google/android/gms/internal/ads/LA;

    iget-object v2, v1, Lcom/google/android/gms/internal/ads/LA;->v5:[J

    aget-wide v17, v2, v5

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/LA;->Zo:[I

    aget v19, v1, v5

    const/16 v21, 0x0

    const/16 v22, 0x0

    move-object/from16 v16, v4

    invoke-interface/range {v16 .. v22}, Lcom/google/android/gms/internal/ads/Yz;->j6(JIIILcom/google/android/gms/internal/ads/Zz;)V

    iget v1, v3, Lcom/google/android/gms/internal/ads/FA;->Hw:I

    add-int/2addr v1, v6

    iput v1, v3, Lcom/google/android/gms/internal/ads/FA;->Hw:I

    iput v7, v0, Lcom/google/android/gms/internal/ads/DA;->we:I

    iput v7, v0, Lcom/google/android/gms/internal/ads/DA;->J0:I

    return v7

    :cond_100
    :goto_100
    iput-wide v13, v2, Lcom/google/android/gms/internal/ads/Vz;->j6:J

    return v6

    :cond_103
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    throw v1

    :cond_109
    iget-wide v3, v0, Lcom/google/android/gms/internal/ads/DA;->u7:J

    iget v10, v0, Lcom/google/android/gms/internal/ads/DA;->tp:I

    int-to-long v10, v10

    sub-long/2addr v3, v10

    invoke-interface/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/Qz;->getPosition()J

    move-result-wide v10

    iget-object v12, v0, Lcom/google/android/gms/internal/ads/DA;->EQ:Lcom/google/android/gms/internal/ads/LD;

    if-eqz v12, :cond_168

    iget-object v8, v12, Lcom/google/android/gms/internal/ads/LD;->j6:[B

    iget v9, v0, Lcom/google/android/gms/internal/ads/DA;->tp:I

    long-to-int v12, v3

    invoke-interface {v1, v8, v9, v12}, Lcom/google/android/gms/internal/ads/Qz;->readFully([BII)V

    iget v8, v0, Lcom/google/android/gms/internal/ads/DA;->gn:I

    sget v9, Lcom/google/android/gms/internal/ads/kA;->j6:I

    if-ne v8, v9, :cond_14b

    iget-object v8, v0, Lcom/google/android/gms/internal/ads/DA;->EQ:Lcom/google/android/gms/internal/ads/LD;

    invoke-virtual {v8, v5}, Lcom/google/android/gms/internal/ads/LD;->DW(I)V

    invoke-virtual {v8}, Lcom/google/android/gms/internal/ads/LD;->Hw()I

    move-result v5

    sget v9, Lcom/google/android/gms/internal/ads/DA;->DW:I

    if-ne v5, v9, :cond_133

    goto :goto_145

    :cond_133
    const/4 v5, 0x4

    invoke-virtual {v8, v5}, Lcom/google/android/gms/internal/ads/LD;->Hw(I)V

    :cond_137
    invoke-virtual {v8}, Lcom/google/android/gms/internal/ads/LD;->tp()I

    move-result v5

    if-lez v5, :cond_147

    invoke-virtual {v8}, Lcom/google/android/gms/internal/ads/LD;->Hw()I

    move-result v5

    sget v9, Lcom/google/android/gms/internal/ads/DA;->DW:I

    if-ne v5, v9, :cond_137

    :goto_145
    const/4 v5, 0x1

    goto :goto_148

    :cond_147
    const/4 v5, 0x0

    :goto_148
    iput-boolean v5, v0, Lcom/google/android/gms/internal/ads/DA;->XL:Z

    goto :goto_170

    :cond_14b
    iget-object v5, v0, Lcom/google/android/gms/internal/ads/DA;->Zo:Ljava/util/Stack;

    invoke-virtual {v5}, Ljava/util/Stack;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_170

    iget-object v5, v0, Lcom/google/android/gms/internal/ads/DA;->Zo:Ljava/util/Stack;

    invoke-virtual {v5}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/gms/internal/ads/lA;

    new-instance v8, Lcom/google/android/gms/internal/ads/mA;

    iget v9, v0, Lcom/google/android/gms/internal/ads/DA;->gn:I

    iget-object v12, v0, Lcom/google/android/gms/internal/ads/DA;->EQ:Lcom/google/android/gms/internal/ads/LD;

    invoke-direct {v8, v9, v12}, Lcom/google/android/gms/internal/ads/mA;-><init>(ILcom/google/android/gms/internal/ads/LD;)V

    invoke-virtual {v5, v8}, Lcom/google/android/gms/internal/ads/lA;->j6(Lcom/google/android/gms/internal/ads/mA;)V

    goto :goto_170

    :cond_168
    cmp-long v5, v3, v8

    if-gez v5, :cond_172

    long-to-int v5, v3

    invoke-interface {v1, v5}, Lcom/google/android/gms/internal/ads/Qz;->DW(I)V

    :cond_170
    :goto_170
    const/4 v5, 0x0

    goto :goto_17a

    :cond_172
    invoke-interface/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/Qz;->getPosition()J

    move-result-wide v8

    add-long/2addr v8, v3

    iput-wide v8, v2, Lcom/google/android/gms/internal/ads/Vz;->j6:J

    const/4 v5, 0x1

    :goto_17a
    add-long/2addr v10, v3

    invoke-direct {v0, v10, v11}, Lcom/google/android/gms/internal/ads/DA;->DW(J)V

    if-eqz v5, :cond_186

    iget v3, v0, Lcom/google/android/gms/internal/ads/DA;->VH:I

    const/4 v4, 0x2

    if-eq v3, v4, :cond_186

    const/4 v7, 0x1

    :cond_186
    if-eqz v7, :cond_6

    return v6

    :cond_189
    iget v3, v0, Lcom/google/android/gms/internal/ads/DA;->tp:I

    if-nez v3, :cond_1b1

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/DA;->v5:Lcom/google/android/gms/internal/ads/LD;

    iget-object v3, v3, Lcom/google/android/gms/internal/ads/LD;->j6:[B

    invoke-interface {v1, v3, v7, v5, v6}, Lcom/google/android/gms/internal/ads/Qz;->j6([BIIZ)Z

    move-result v3

    if-nez v3, :cond_19a

    const/4 v6, 0x0

    goto/16 :goto_293

    :cond_19a
    iput v5, v0, Lcom/google/android/gms/internal/ads/DA;->tp:I

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/DA;->v5:Lcom/google/android/gms/internal/ads/LD;

    invoke-virtual {v3, v7}, Lcom/google/android/gms/internal/ads/LD;->DW(I)V

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/DA;->v5:Lcom/google/android/gms/internal/ads/LD;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/LD;->we()J

    move-result-wide v8

    iput-wide v8, v0, Lcom/google/android/gms/internal/ads/DA;->u7:J

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/DA;->v5:Lcom/google/android/gms/internal/ads/LD;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/LD;->Hw()I

    move-result v3

    iput v3, v0, Lcom/google/android/gms/internal/ads/DA;->gn:I

    :cond_1b1
    iget-wide v8, v0, Lcom/google/android/gms/internal/ads/DA;->u7:J

    const-wide/16 v10, 0x1

    cmp-long v3, v8, v10

    if-nez v3, :cond_1cd

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/DA;->v5:Lcom/google/android/gms/internal/ads/LD;

    iget-object v3, v3, Lcom/google/android/gms/internal/ads/LD;->j6:[B

    invoke-interface {v1, v3, v5, v5}, Lcom/google/android/gms/internal/ads/Qz;->readFully([BII)V

    iget v3, v0, Lcom/google/android/gms/internal/ads/DA;->tp:I

    add-int/2addr v3, v5

    iput v3, v0, Lcom/google/android/gms/internal/ads/DA;->tp:I

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/DA;->v5:Lcom/google/android/gms/internal/ads/LD;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/LD;->QX()J

    move-result-wide v8

    iput-wide v8, v0, Lcom/google/android/gms/internal/ads/DA;->u7:J

    :cond_1cd
    iget v3, v0, Lcom/google/android/gms/internal/ads/DA;->gn:I

    sget v8, Lcom/google/android/gms/internal/ads/kA;->BT:I

    if-eq v3, v8, :cond_1ea

    sget v8, Lcom/google/android/gms/internal/ads/kA;->P8:I

    if-eq v3, v8, :cond_1ea

    sget v8, Lcom/google/android/gms/internal/ads/kA;->ei:I

    if-eq v3, v8, :cond_1ea

    sget v8, Lcom/google/android/gms/internal/ads/kA;->nw:I

    if-eq v3, v8, :cond_1ea

    sget v8, Lcom/google/android/gms/internal/ads/kA;->SI:I

    if-eq v3, v8, :cond_1ea

    sget v8, Lcom/google/android/gms/internal/ads/kA;->Sf:I

    if-ne v3, v8, :cond_1e8

    goto :goto_1ea

    :cond_1e8
    const/4 v3, 0x0

    goto :goto_1eb

    :cond_1ea
    :goto_1ea
    const/4 v3, 0x1

    :goto_1eb
    if-eqz v3, :cond_217

    invoke-interface/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/Qz;->getPosition()J

    move-result-wide v7

    iget-wide v9, v0, Lcom/google/android/gms/internal/ads/DA;->u7:J

    add-long/2addr v7, v9

    iget v3, v0, Lcom/google/android/gms/internal/ads/DA;->tp:I

    int-to-long v9, v3

    sub-long/2addr v7, v9

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/DA;->Zo:Ljava/util/Stack;

    new-instance v5, Lcom/google/android/gms/internal/ads/lA;

    iget v9, v0, Lcom/google/android/gms/internal/ads/DA;->gn:I

    invoke-direct {v5, v9, v7, v8}, Lcom/google/android/gms/internal/ads/lA;-><init>(IJ)V

    invoke-virtual {v3, v5}, Ljava/util/Stack;->add(Ljava/lang/Object;)Z

    iget-wide v9, v0, Lcom/google/android/gms/internal/ads/DA;->u7:J

    iget v3, v0, Lcom/google/android/gms/internal/ads/DA;->tp:I

    int-to-long v11, v3

    cmp-long v3, v9, v11

    if-nez v3, :cond_212

    invoke-direct {v0, v7, v8}, Lcom/google/android/gms/internal/ads/DA;->DW(J)V

    goto/16 :goto_293

    :cond_212
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/DA;->Hw()V

    goto/16 :goto_293

    :cond_217
    iget v3, v0, Lcom/google/android/gms/internal/ads/DA;->gn:I

    sget v8, Lcom/google/android/gms/internal/ads/kA;->g3:I

    if-eq v3, v8, :cond_25c

    sget v8, Lcom/google/android/gms/internal/ads/kA;->vy:I

    if-eq v3, v8, :cond_25c

    sget v8, Lcom/google/android/gms/internal/ads/kA;->Mz:I

    if-eq v3, v8, :cond_25c

    sget v8, Lcom/google/android/gms/internal/ads/kA;->I:I

    if-eq v3, v8, :cond_25c

    sget v8, Lcom/google/android/gms/internal/ads/kA;->hz:I

    if-eq v3, v8, :cond_25c

    sget v8, Lcom/google/android/gms/internal/ads/kA;->aq:I

    if-eq v3, v8, :cond_25c

    sget v8, Lcom/google/android/gms/internal/ads/kA;->FN:I

    if-eq v3, v8, :cond_25c

    sget v8, Lcom/google/android/gms/internal/ads/kA;->vJ:I

    if-eq v3, v8, :cond_25c

    sget v8, Lcom/google/android/gms/internal/ads/kA;->jO:I

    if-eq v3, v8, :cond_25c

    sget v8, Lcom/google/android/gms/internal/ads/kA;->oY:I

    if-eq v3, v8, :cond_25c

    sget v8, Lcom/google/android/gms/internal/ads/kA;->ko:I

    if-eq v3, v8, :cond_25c

    sget v8, Lcom/google/android/gms/internal/ads/kA;->Ev:I

    if-eq v3, v8, :cond_25c

    sget v8, Lcom/google/android/gms/internal/ads/kA;->ye:I

    if-eq v3, v8, :cond_25c

    sget v8, Lcom/google/android/gms/internal/ads/kA;->ef:I

    if-eq v3, v8, :cond_25c

    sget v8, Lcom/google/android/gms/internal/ads/kA;->j6:I

    if-eq v3, v8, :cond_25c

    sget v8, Lcom/google/android/gms/internal/ads/kA;->zh:I

    if-ne v3, v8, :cond_25a

    goto :goto_25c

    :cond_25a
    const/4 v3, 0x0

    goto :goto_25d

    :cond_25c
    :goto_25c
    const/4 v3, 0x1

    :goto_25d
    if-eqz v3, :cond_28e

    iget v3, v0, Lcom/google/android/gms/internal/ads/DA;->tp:I

    if-ne v3, v5, :cond_265

    const/4 v3, 0x1

    goto :goto_266

    :cond_265
    const/4 v3, 0x0

    :goto_266
    invoke-static {v3}, Lcom/google/android/gms/internal/ads/CD;->DW(Z)V

    iget-wide v8, v0, Lcom/google/android/gms/internal/ads/DA;->u7:J

    const-wide/32 v10, 0x7fffffff

    cmp-long v3, v8, v10

    if-gtz v3, :cond_274

    const/4 v3, 0x1

    goto :goto_275

    :cond_274
    const/4 v3, 0x0

    :goto_275
    invoke-static {v3}, Lcom/google/android/gms/internal/ads/CD;->DW(Z)V

    new-instance v3, Lcom/google/android/gms/internal/ads/LD;

    iget-wide v8, v0, Lcom/google/android/gms/internal/ads/DA;->u7:J

    long-to-int v9, v8

    invoke-direct {v3, v9}, Lcom/google/android/gms/internal/ads/LD;-><init>(I)V

    iput-object v3, v0, Lcom/google/android/gms/internal/ads/DA;->EQ:Lcom/google/android/gms/internal/ads/LD;

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/DA;->v5:Lcom/google/android/gms/internal/ads/LD;

    iget-object v3, v3, Lcom/google/android/gms/internal/ads/LD;->j6:[B

    iget-object v8, v0, Lcom/google/android/gms/internal/ads/DA;->EQ:Lcom/google/android/gms/internal/ads/LD;

    iget-object v8, v8, Lcom/google/android/gms/internal/ads/LD;->j6:[B

    invoke-static {v3, v7, v8, v7, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_291

    :cond_28e
    const/4 v3, 0x0

    iput-object v3, v0, Lcom/google/android/gms/internal/ads/DA;->EQ:Lcom/google/android/gms/internal/ads/LD;

    :goto_291
    iput v6, v0, Lcom/google/android/gms/internal/ads/DA;->VH:I

    :goto_293
    if-nez v6, :cond_6

    return v4
.end method

.method public final j6(J)J
    .registers 11

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/DA;->Ws:[Lcom/google/android/gms/internal/ads/FA;

    array-length v1, v0

    const-wide v2, 0x7fffffffffffffffL

    const/4 v4, 0x0

    :goto_9
    if-ge v4, v1, :cond_26

    aget-object v5, v0, v4

    iget-object v5, v5, Lcom/google/android/gms/internal/ads/FA;->DW:Lcom/google/android/gms/internal/ads/LA;

    invoke-virtual {v5, p1, p2}, Lcom/google/android/gms/internal/ads/LA;->j6(J)I

    move-result v6

    const/4 v7, -0x1

    if-ne v6, v7, :cond_1a

    invoke-virtual {v5, p1, p2}, Lcom/google/android/gms/internal/ads/LA;->DW(J)I

    move-result v6

    :cond_1a
    iget-object v5, v5, Lcom/google/android/gms/internal/ads/LA;->DW:[J

    aget-wide v6, v5, v6

    cmp-long v5, v6, v2

    if-gez v5, :cond_23

    move-wide v2, v6

    :cond_23
    add-int/lit8 v4, v4, 0x1

    goto :goto_9

    :cond_26
    return-wide v2
.end method

.method public final j6()V
    .registers 1

    return-void
.end method

.method public final j6(JJ)V
    .registers 10

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/DA;->Zo:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->clear()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/internal/ads/DA;->tp:I

    iput v0, p0, Lcom/google/android/gms/internal/ads/DA;->we:I

    iput v0, p0, Lcom/google/android/gms/internal/ads/DA;->J0:I

    const-wide/16 v1, 0x0

    cmp-long v3, p1, v1

    if-nez v3, :cond_16

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/DA;->Hw()V

    return-void

    :cond_16
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/DA;->Ws:[Lcom/google/android/gms/internal/ads/FA;

    if-eqz p1, :cond_31

    array-length p2, p1

    :goto_1b
    if-ge v0, p2, :cond_31

    aget-object v1, p1, v0

    iget-object v2, v1, Lcom/google/android/gms/internal/ads/FA;->DW:Lcom/google/android/gms/internal/ads/LA;

    invoke-virtual {v2, p3, p4}, Lcom/google/android/gms/internal/ads/LA;->j6(J)I

    move-result v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_2c

    invoke-virtual {v2, p3, p4}, Lcom/google/android/gms/internal/ads/LA;->DW(J)I

    move-result v3

    :cond_2c
    iput v3, v1, Lcom/google/android/gms/internal/ads/FA;->Hw:I

    add-int/lit8 v0, v0, 0x1

    goto :goto_1b

    :cond_31
    return-void
.end method

.method public final j6(Lcom/google/android/gms/internal/ads/Rz;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/DA;->J8:Lcom/google/android/gms/internal/ads/Rz;

    return-void
.end method

.method public final j6(Lcom/google/android/gms/internal/ads/Qz;)Z
    .registers 2

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/HA;->DW(Lcom/google/android/gms/internal/ads/Qz;)Z

    move-result p1

    return p1
.end method
