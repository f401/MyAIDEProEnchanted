.class final Labcd/pC;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<S:",
        "Labcd/CC;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final DW:Labcd/mC;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LmC<",
            "TS;>;"
        }
    .end annotation
.end field

.field private EQ:[I

.field private final FH:Labcd/lC;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LlC<",
            "TS;>;"
        }
    .end annotation
.end field

.field private final Hw:Labcd/lC;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LlC<",
            "TS;>;"
        }
    .end annotation
.end field

.field private J0:Labcd/jC;

.field private J8:I

.field private final VH:I

.field private Ws:Z

.field private final Zo:[I

.field private gn:[J

.field private final j6:I

.field private tp:[I

.field private u7:I

.field private final v5:Labcd/jC;

.field private we:I


# direct methods
.method constructor <init>(ILabcd/mC;Labcd/lC;Labcd/lC;Labcd/jC;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "LmC<",
            "TS;>;",
            "LlC<",
            "TS;>;",
            "LlC<",
            "TS;>;",
            "Labcd/jC;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Labcd/pC;->j6:I

    iput-object p2, p0, Labcd/pC;->DW:Labcd/mC;

    iput-object p3, p0, Labcd/pC;->FH:Labcd/lC;

    iput-object p4, p0, Labcd/pC;->Hw:Labcd/lC;

    iput-object p5, p0, Labcd/pC;->v5:Labcd/jC;

    iget p1, p5, Labcd/jC;->DW:I

    const p2, 0xfffffff

    if-ge p1, p2, :cond_3e

    invoke-virtual {p5}, Labcd/jC;->VH()I

    move-result p1

    invoke-static {p1}, Labcd/pC;->j6(I)I

    move-result p2

    const/4 p3, 0x1

    shl-int/2addr p3, p2

    new-array p3, p3, [I

    iput-object p3, p0, Labcd/pC;->Zo:[I

    rsub-int/lit8 p2, p2, 0x20

    iput p2, p0, Labcd/pC;->VH:I

    iget p2, p5, Labcd/jC;->j6:I

    iput p2, p0, Labcd/pC;->we:I

    ushr-int/lit8 p2, p1, 0x3

    const/4 p3, 0x4

    invoke-static {p3, p2}, Ljava/lang/Math;->max(II)I

    move-result p2

    new-array p2, p2, [J

    iput-object p2, p0, Labcd/pC;->gn:[J

    new-array p2, p1, [I

    iput-object p2, p0, Labcd/pC;->tp:[I

    new-array p1, p1, [I

    iput-object p1, p0, Labcd/pC;->EQ:[I

    return-void

    :cond_3e
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-static {}, Lorg/eclipse/jgit/JGitText;->j6()Lorg/eclipse/jgit/JGitText;

    move-result-object p2

    iget-object p2, p2, Lorg/eclipse/jgit/JGitText;->sequenceTooLargeForDiffAlgorithm:Ljava/lang/String;

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private DW(I)I
    .registers 18

    move-object/from16 v0, p0

    move/from16 v1, p1

    add-int/lit8 v2, v1, 0x1

    iget-object v3, v0, Labcd/pC;->Zo:[I

    iget-object v4, v0, Labcd/pC;->Hw:Labcd/lC;

    invoke-direct {v0, v4, v1}, Labcd/pC;->j6(Labcd/lC;I)I

    move-result v4

    aget v3, v3, v4

    move v4, v2

    :goto_11
    if-nez v3, :cond_14

    return v4

    :cond_14
    iget-object v5, v0, Labcd/pC;->gn:[J

    aget-wide v6, v5, v3

    invoke-static {v6, v7}, Labcd/pC;->j6(J)I

    move-result v3

    iget v5, v0, Labcd/pC;->J8:I

    if-le v3, v5, :cond_36

    iget-boolean v3, v0, Labcd/pC;->Ws:Z

    if-nez v3, :cond_f4

    iget-object v3, v0, Labcd/pC;->DW:Labcd/mC;

    iget-object v5, v0, Labcd/pC;->FH:Labcd/lC;

    invoke-static {v6, v7}, Labcd/pC;->FH(J)I

    move-result v8

    iget-object v9, v0, Labcd/pC;->Hw:Labcd/lC;

    invoke-virtual {v3, v5, v8, v9, v1}, Labcd/mC;->j6(Labcd/lC;ILabcd/lC;I)Z

    move-result v3

    iput-boolean v3, v0, Labcd/pC;->Ws:Z

    goto/16 :goto_f4

    :cond_36
    invoke-static {v6, v7}, Labcd/pC;->FH(J)I

    move-result v3

    iget-object v5, v0, Labcd/pC;->DW:Labcd/mC;

    iget-object v8, v0, Labcd/pC;->FH:Labcd/lC;

    iget-object v9, v0, Labcd/pC;->Hw:Labcd/lC;

    invoke-virtual {v5, v8, v3, v9, v1}, Labcd/mC;->j6(Labcd/lC;ILabcd/lC;I)Z

    move-result v5

    if-nez v5, :cond_48

    goto/16 :goto_f4

    :cond_48
    const/4 v5, 0x1

    iput-boolean v5, v0, Labcd/pC;->Ws:Z

    :goto_4b
    iget-object v8, v0, Labcd/pC;->tp:[I

    iget v9, v0, Labcd/pC;->we:I

    sub-int v9, v3, v9

    aget v8, v8, v9

    add-int/lit8 v9, v3, 0x1

    invoke-static {v6, v7}, Labcd/pC;->j6(J)I

    move-result v10

    move v11, v1

    :goto_5a
    iget-object v12, v0, Labcd/pC;->v5:Labcd/jC;

    iget v13, v12, Labcd/jC;->j6:I

    if-ge v13, v3, :cond_90

    iget v12, v12, Labcd/jC;->FH:I

    if-ge v12, v11, :cond_90

    iget-object v12, v0, Labcd/pC;->DW:Labcd/mC;

    iget-object v13, v0, Labcd/pC;->FH:Labcd/lC;

    add-int/lit8 v14, v3, -0x1

    iget-object v15, v0, Labcd/pC;->Hw:Labcd/lC;

    add-int/lit8 v5, v11, -0x1

    invoke-virtual {v12, v13, v14, v15, v5}, Labcd/mC;->j6(Labcd/lC;ILabcd/lC;I)Z

    move-result v12

    if-nez v12, :cond_75

    goto :goto_90

    :cond_75
    const/4 v12, 0x1

    if-ge v12, v10, :cond_8c

    iget-object v3, v0, Labcd/pC;->gn:[J

    iget-object v11, v0, Labcd/pC;->EQ:[I

    iget v12, v0, Labcd/pC;->we:I

    sub-int v12, v14, v12

    aget v11, v11, v12

    aget-wide v11, v3, v11

    invoke-static {v11, v12}, Labcd/pC;->j6(J)I

    move-result v3

    invoke-static {v10, v3}, Ljava/lang/Math;->min(II)I

    move-result v10

    :cond_8c
    move v11, v5

    move v3, v14

    const/4 v5, 0x1

    goto :goto_5a

    :cond_90
    :goto_90
    move v5, v2

    :goto_91
    iget-object v12, v0, Labcd/pC;->v5:Labcd/jC;

    iget v13, v12, Labcd/jC;->DW:I

    if-ge v9, v13, :cond_c4

    iget v12, v12, Labcd/jC;->Hw:I

    if-ge v5, v12, :cond_c4

    iget-object v12, v0, Labcd/pC;->DW:Labcd/mC;

    iget-object v13, v0, Labcd/pC;->FH:Labcd/lC;

    iget-object v14, v0, Labcd/pC;->Hw:Labcd/lC;

    invoke-virtual {v12, v13, v9, v14, v5}, Labcd/mC;->j6(Labcd/lC;ILabcd/lC;I)Z

    move-result v12

    if-nez v12, :cond_a8

    goto :goto_c4

    :cond_a8
    const/4 v12, 0x1

    if-ge v12, v10, :cond_bf

    iget-object v13, v0, Labcd/pC;->gn:[J

    iget-object v14, v0, Labcd/pC;->EQ:[I

    iget v15, v0, Labcd/pC;->we:I

    sub-int v15, v9, v15

    aget v14, v14, v15

    aget-wide v14, v13, v14

    invoke-static {v14, v15}, Labcd/pC;->j6(J)I

    move-result v13

    invoke-static {v10, v13}, Ljava/lang/Math;->min(II)I

    move-result v10

    :cond_bf
    add-int/lit8 v9, v9, 0x1

    add-int/lit8 v5, v5, 0x1

    goto :goto_91

    :cond_c4
    :goto_c4
    const/4 v12, 0x1

    if-ge v4, v5, :cond_c8

    move v4, v5

    :cond_c8
    iget-object v13, v0, Labcd/pC;->J0:Labcd/jC;

    invoke-virtual {v13}, Labcd/jC;->VH()I

    move-result v13

    sub-int v14, v9, v3

    if-lt v13, v14, :cond_d6

    iget v13, v0, Labcd/pC;->J8:I

    if-ge v10, v13, :cond_e2

    :cond_d6
    iget-object v13, v0, Labcd/pC;->J0:Labcd/jC;

    iput v3, v13, Labcd/jC;->j6:I

    iput v11, v13, Labcd/jC;->FH:I

    iput v9, v13, Labcd/jC;->DW:I

    iput v5, v13, Labcd/jC;->Hw:I

    iput v10, v0, Labcd/pC;->J8:I

    :cond_e2
    if-nez v8, :cond_e5

    goto :goto_f4

    :cond_e5
    move v3, v8

    :cond_e6
    if-lt v3, v9, :cond_eb

    const/4 v5, 0x1

    goto/16 :goto_4b

    :cond_eb
    iget-object v5, v0, Labcd/pC;->tp:[I

    iget v8, v0, Labcd/pC;->we:I

    sub-int/2addr v3, v8

    aget v3, v5, v3

    if-nez v3, :cond_e6

    :cond_f4
    :goto_f4
    invoke-static {v6, v7}, Labcd/pC;->DW(J)I

    move-result v3

    goto/16 :goto_11
.end method

.method private static DW(J)I
    .registers 3

    const/16 v0, 0x24

    ushr-long/2addr p0, v0

    long-to-int p1, p0

    return p1
.end method

.method private DW()Z
    .registers 13

    iget-object v0, p0, Labcd/pC;->v5:Labcd/jC;

    iget v0, v0, Labcd/jC;->DW:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_6
    iget-object v2, p0, Labcd/pC;->v5:Labcd/jC;

    iget v2, v2, Labcd/jC;->j6:I

    if-le v2, v0, :cond_d

    return v1

    :cond_d
    iget-object v2, p0, Labcd/pC;->FH:Labcd/lC;

    invoke-direct {p0, v2, v0}, Labcd/pC;->j6(Labcd/lC;I)I

    move-result v2

    iget-object v3, p0, Labcd/pC;->Zo:[I

    aget v3, v3, v2

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_19
    if-nez v3, :cond_5a

    iget v3, p0, Labcd/pC;->j6:I

    if-ne v5, v3, :cond_20

    return v4

    :cond_20
    iget v3, p0, Labcd/pC;->u7:I

    add-int/2addr v3, v1

    iput v3, p0, Labcd/pC;->u7:I

    iget-object v5, p0, Labcd/pC;->gn:[J

    array-length v6, v5

    if-ne v3, v6, :cond_41

    array-length v5, v5

    shl-int/2addr v5, v1

    iget-object v6, p0, Labcd/pC;->v5:Labcd/jC;

    invoke-virtual {v6}, Labcd/jC;->VH()I

    move-result v6

    add-int/2addr v6, v1

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v5

    new-array v5, v5, [J

    iget-object v6, p0, Labcd/pC;->gn:[J

    array-length v7, v6

    invoke-static {v6, v4, v5, v4, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v5, p0, Labcd/pC;->gn:[J

    :cond_41
    iget-object v4, p0, Labcd/pC;->gn:[J

    iget-object v5, p0, Labcd/pC;->Zo:[I

    aget v5, v5, v2

    invoke-static {v5, v0, v1}, Labcd/pC;->j6(III)J

    move-result-wide v5

    aput-wide v5, v4, v3

    iget-object v4, p0, Labcd/pC;->EQ:[I

    iget v5, p0, Labcd/pC;->we:I

    sub-int v5, v0, v5

    aput v3, v4, v5

    iget-object v4, p0, Labcd/pC;->Zo:[I

    aput v3, v4, v2

    goto :goto_99

    :cond_5a
    iget-object v6, p0, Labcd/pC;->gn:[J

    aget-wide v7, v6, v3

    iget-object v6, p0, Labcd/pC;->DW:Labcd/mC;

    iget-object v9, p0, Labcd/pC;->FH:Labcd/lC;

    invoke-static {v7, v8}, Labcd/pC;->FH(J)I

    move-result v10

    iget-object v11, p0, Labcd/pC;->FH:Labcd/lC;

    invoke-virtual {v6, v9, v10, v11, v0}, Labcd/mC;->j6(Labcd/lC;ILabcd/lC;I)Z

    move-result v6

    if-eqz v6, :cond_9d

    invoke-static {v7, v8}, Labcd/pC;->j6(J)I

    move-result v2

    add-int/2addr v2, v1

    const/16 v4, 0xff

    if-ge v4, v2, :cond_79

    const/16 v2, 0xff

    :cond_79
    iget-object v4, p0, Labcd/pC;->gn:[J

    invoke-static {v7, v8}, Labcd/pC;->DW(J)I

    move-result v5

    invoke-static {v5, v0, v2}, Labcd/pC;->j6(III)J

    move-result-wide v5

    aput-wide v5, v4, v3

    iget-object v2, p0, Labcd/pC;->tp:[I

    iget v4, p0, Labcd/pC;->we:I

    sub-int v4, v0, v4

    invoke-static {v7, v8}, Labcd/pC;->FH(J)I

    move-result v5

    aput v5, v2, v4

    iget-object v2, p0, Labcd/pC;->EQ:[I

    iget v4, p0, Labcd/pC;->we:I

    sub-int v4, v0, v4

    aput v3, v2, v4

    :goto_99
    add-int/lit8 v0, v0, -0x1

    goto/16 :goto_6

    :cond_9d
    invoke-static {v7, v8}, Labcd/pC;->DW(J)I

    move-result v3

    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_19
.end method

.method private static FH(J)I
    .registers 3

    const/16 v0, 0x8

    ushr-long/2addr p0, v0

    long-to-int p1, p0

    const p0, 0xfffffff

    and-int/2addr p0, p1

    return p0
.end method

.method private static j6(I)I
    .registers 3

    invoke-static {p0}, Ljava/lang/Integer;->numberOfLeadingZeros(I)I

    move-result v0

    rsub-int/lit8 v0, v0, 0x1f

    const/4 v1, 0x1

    if-nez v0, :cond_a

    const/4 v0, 0x1

    :cond_a
    shl-int/2addr v1, v0

    if-ge v1, p0, :cond_f

    add-int/lit8 v0, v0, 0x1

    :cond_f
    return v0
.end method

.method private static j6(J)I
    .registers 2

    long-to-int p1, p0

    and-int/lit16 p0, p1, 0xff

    return p0
.end method

.method private j6(Labcd/lC;I)I
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LlC<",
            "TS;>;I)I"
        }
    .end annotation

    iget-object v0, p0, Labcd/pC;->DW:Labcd/mC;

    invoke-virtual {v0, p1, p2}, Labcd/mC;->j6(Labcd/lC;I)I

    move-result p1

    const p2, -0x61c8ffff

    mul-int p1, p1, p2

    iget p2, p0, Labcd/pC;->VH:I

    ushr-int/2addr p1, p2

    return p1
.end method

.method private static j6(III)J
    .registers 6

    int-to-long v0, p0

    int-to-long p0, p1

    const/16 v2, 0x8

    shl-long/2addr p0, v2

    const/16 v2, 0x24

    shl-long/2addr v0, v2

    or-long/2addr p0, v0

    int-to-long v0, p2

    or-long/2addr p0, v0

    return-wide p0
.end method


# virtual methods
.method j6()Labcd/jC;
    .registers 4

    invoke-direct {p0}, Labcd/pC;->DW()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return-object v1

    :cond_8
    new-instance v0, Labcd/jC;

    const/4 v2, 0x0

    invoke-direct {v0, v2, v2}, Labcd/jC;-><init>(II)V

    iput-object v0, p0, Labcd/pC;->J0:Labcd/jC;

    iget v0, p0, Labcd/pC;->j6:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Labcd/pC;->J8:I

    iget-object v0, p0, Labcd/pC;->v5:Labcd/jC;

    iget v0, v0, Labcd/jC;->FH:I

    :goto_1a
    iget-object v2, p0, Labcd/pC;->v5:Labcd/jC;

    iget v2, v2, Labcd/jC;->Hw:I

    if-lt v0, v2, :cond_2e

    iget-boolean v0, p0, Labcd/pC;->Ws:Z

    if-eqz v0, :cond_2b

    iget v0, p0, Labcd/pC;->j6:I

    iget v2, p0, Labcd/pC;->J8:I

    if-ge v0, v2, :cond_2b

    goto :goto_2d

    :cond_2b
    iget-object v1, p0, Labcd/pC;->J0:Labcd/jC;

    :goto_2d
    return-object v1

    :cond_2e
    invoke-direct {p0, v0}, Labcd/pC;->DW(I)I

    move-result v0

    goto :goto_1a
.end method
