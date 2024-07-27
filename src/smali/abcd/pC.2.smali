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
            "LmC",
            "<TS;>;"
        }
    .end annotation
.end field

.field private EQ:[I

.field private final FH:Labcd/lC;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LlC",
            "<TS;>;"
        }
    .end annotation
.end field

.field private final Hw:Labcd/lC;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LlC",
            "<TS;>;"
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
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "LmC",
            "<TS;>;",
            "LlC",
            "<TS;>;",
            "LlC",
            "<TS;>;",
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

    iget-object v0, p0, Labcd/pC;->v5:Labcd/jC;

    iget v0, v0, Labcd/jC;->DW:I

    const v1, 0xfffffff

    if-ge v0, v1, :cond_0

    invoke-virtual {p5}, Labcd/jC;->VH()I

    move-result v0

    invoke-static {v0}, Labcd/pC;->j6(I)I

    move-result v1

    const/4 v2, 0x1

    shl-int/2addr v2, v1

    new-array v2, v2, [I

    iput-object v2, p0, Labcd/pC;->Zo:[I

    rsub-int/lit8 v1, v1, 0x20

    iput v1, p0, Labcd/pC;->VH:I

    iget v1, p5, Labcd/jC;->j6:I

    iput v1, p0, Labcd/pC;->we:I

    const/4 v1, 0x4

    ushr-int/lit8 v2, v0, 0x3

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    new-array v1, v1, [J

    iput-object v1, p0, Labcd/pC;->gn:[J

    new-array v1, v0, [I

    iput-object v1, p0, Labcd/pC;->tp:[I

    new-array v0, v0, [I

    iput-object v0, p0, Labcd/pC;->EQ:[I

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-static {}, Lorg/eclipse/jgit/JGitText;->j6()Lorg/eclipse/jgit/JGitText;

    move-result-object v1

    iget-object v1, v1, Lorg/eclipse/jgit/JGitText;->sequenceTooLargeForDiffAlgorithm:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private DW(I)I
    .registers 16

    add-int/lit8 v6, p1, 0x1

    iget-object v0, p0, Labcd/pC;->Zo:[I

    iget-object v1, p0, Labcd/pC;->Hw:Labcd/lC;

    invoke-direct {p0, v1, p1}, Labcd/pC;->j6(Labcd/lC;I)I

    move-result v1

    aget v1, v0, v1

    move v0, v6

    :goto_0
    if-nez v1, :cond_0

    return v0

    :cond_0
    iget-object v2, p0, Labcd/pC;->gn:[J

    aget-wide v8, v2, v1

    invoke-static {v8, v9}, Labcd/pC;->j6(J)I

    move-result v1

    iget v2, p0, Labcd/pC;->J8:I

    if-le v1, v2, :cond_2

    iget-boolean v1, p0, Labcd/pC;->Ws:Z

    if-nez v1, :cond_1

    iget-object v1, p0, Labcd/pC;->DW:Labcd/mC;

    iget-object v2, p0, Labcd/pC;->FH:Labcd/lC;

    invoke-static {v8, v9}, Labcd/pC;->FH(J)I

    move-result v3

    iget-object v4, p0, Labcd/pC;->Hw:Labcd/lC;

    invoke-virtual {v1, v2, v3, v4, p1}, Labcd/mC;->j6(Labcd/lC;ILabcd/lC;I)Z

    move-result v1

    iput-boolean v1, p0, Labcd/pC;->Ws:Z

    :cond_1
    :goto_1
    invoke-static {v8, v9}, Labcd/pC;->DW(J)I

    move-result v1

    goto :goto_0

    :cond_2
    invoke-static {v8, v9}, Labcd/pC;->FH(J)I

    move-result v1

    iget-object v2, p0, Labcd/pC;->DW:Labcd/mC;

    iget-object v3, p0, Labcd/pC;->FH:Labcd/lC;

    iget-object v4, p0, Labcd/pC;->Hw:Labcd/lC;

    invoke-virtual {v2, v3, v1, v4, p1}, Labcd/mC;->j6(Labcd/lC;ILabcd/lC;I)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    iput-boolean v2, p0, Labcd/pC;->Ws:Z

    :cond_3
    iget-object v2, p0, Labcd/pC;->tp:[I

    iget v3, p0, Labcd/pC;->we:I

    sub-int v3, v1, v3

    aget v7, v2, v3

    add-int/lit8 v4, v1, 0x1

    invoke-static {v8, v9}, Labcd/pC;->j6(J)I

    move-result v3

    move v2, p1

    :cond_4
    :goto_2
    iget-object v5, p0, Labcd/pC;->v5:Labcd/jC;

    iget v10, v5, Labcd/jC;->j6:I

    if-ge v10, v1, :cond_5

    iget v5, v5, Labcd/jC;->FH:I

    if-ge v5, v2, :cond_5

    iget-object v5, p0, Labcd/pC;->DW:Labcd/mC;

    iget-object v10, p0, Labcd/pC;->FH:Labcd/lC;

    add-int/lit8 v11, v1, -0x1

    iget-object v12, p0, Labcd/pC;->Hw:Labcd/lC;

    add-int/lit8 v13, v2, -0x1

    invoke-virtual {v5, v10, v11, v12, v13}, Labcd/mC;->j6(Labcd/lC;ILabcd/lC;I)Z

    move-result v5

    if-nez v5, :cond_b

    :cond_5
    move v5, v6

    :goto_3
    iget-object v10, p0, Labcd/pC;->v5:Labcd/jC;

    iget v11, v10, Labcd/jC;->DW:I

    if-ge v4, v11, :cond_6

    iget v10, v10, Labcd/jC;->Hw:I

    if-ge v5, v10, :cond_6

    iget-object v10, p0, Labcd/pC;->DW:Labcd/mC;

    iget-object v11, p0, Labcd/pC;->FH:Labcd/lC;

    iget-object v12, p0, Labcd/pC;->Hw:Labcd/lC;

    invoke-virtual {v10, v11, v4, v12, v5}, Labcd/mC;->j6(Labcd/lC;ILabcd/lC;I)Z

    move-result v10

    if-nez v10, :cond_c

    :cond_6
    if-ge v0, v5, :cond_7

    move v0, v5

    :cond_7
    iget-object v10, p0, Labcd/pC;->J0:Labcd/jC;

    invoke-virtual {v10}, Labcd/jC;->VH()I

    move-result v10

    sub-int v11, v4, v1

    if-lt v10, v11, :cond_8

    iget v10, p0, Labcd/pC;->J8:I

    if-ge v3, v10, :cond_9

    :cond_8
    iget-object v10, p0, Labcd/pC;->J0:Labcd/jC;

    iput v1, v10, Labcd/jC;->j6:I

    iput v2, v10, Labcd/jC;->FH:I

    iput v4, v10, Labcd/jC;->DW:I

    iput v5, v10, Labcd/jC;->Hw:I

    iput v3, p0, Labcd/pC;->J8:I

    :cond_9
    if-eqz v7, :cond_1

    move v1, v7

    :cond_a
    if-ge v1, v4, :cond_3

    iget-object v2, p0, Labcd/pC;->tp:[I

    iget v3, p0, Labcd/pC;->we:I

    sub-int/2addr v1, v3

    aget v1, v2, v1

    if-nez v1, :cond_a

    goto/16 :goto_1

    :cond_b
    add-int/lit8 v1, v1, -0x1

    add-int/lit8 v2, v2, -0x1

    const/4 v5, 0x1

    if-ge v5, v3, :cond_4

    iget-object v5, p0, Labcd/pC;->gn:[J

    iget-object v10, p0, Labcd/pC;->EQ:[I

    iget v11, p0, Labcd/pC;->we:I

    sub-int v11, v1, v11

    aget v10, v10, v11

    aget-wide v10, v5, v10

    invoke-static {v10, v11}, Labcd/pC;->j6(J)I

    move-result v5

    invoke-static {v3, v5}, Ljava/lang/Math;->min(II)I

    move-result v3

    goto :goto_2

    :cond_c
    const/4 v10, 0x1

    if-ge v10, v3, :cond_d

    iget-object v10, p0, Labcd/pC;->gn:[J

    iget-object v11, p0, Labcd/pC;->EQ:[I

    iget v12, p0, Labcd/pC;->we:I

    sub-int v12, v4, v12

    aget v11, v11, v12

    aget-wide v10, v10, v11

    invoke-static {v10, v11}, Labcd/pC;->j6(J)I

    move-result v10

    invoke-static {v3, v10}, Ljava/lang/Math;->min(II)I

    move-result v3

    :cond_d
    add-int/lit8 v4, v4, 0x1

    add-int/lit8 v5, v5, 0x1

    goto :goto_3
.end method

.method private static DW(J)I
    .registers 4

    const/16 v0, 0x24

    ushr-long v0, p0, v0

    long-to-int v0, v0

    return v0
.end method

.method private DW()Z
    .registers 14

    const/16 v2, 0xff

    const/4 v3, 0x1

    const/4 v4, 0x0

    iget-object v0, p0, Labcd/pC;->v5:Labcd/jC;

    iget v0, v0, Labcd/jC;->DW:I

    add-int/lit8 v0, v0, -0x1

    :goto_0
    iget-object v1, p0, Labcd/pC;->v5:Labcd/jC;

    iget v1, v1, Labcd/jC;->j6:I

    if-le v1, v0, :cond_0

    move v0, v3

    :goto_1
    return v0

    :cond_0
    iget-object v1, p0, Labcd/pC;->FH:Labcd/lC;

    invoke-direct {p0, v1, v0}, Labcd/pC;->j6(Labcd/lC;I)I

    move-result v6

    iget-object v1, p0, Labcd/pC;->Zo:[I

    aget v5, v1, v6

    move v1, v4

    :goto_2
    if-nez v5, :cond_3

    iget v5, p0, Labcd/pC;->j6:I

    if-ne v1, v5, :cond_1

    move v0, v4

    goto :goto_1

    :cond_1
    iget v1, p0, Labcd/pC;->u7:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Labcd/pC;->u7:I

    iget-object v5, p0, Labcd/pC;->gn:[J

    array-length v7, v5

    if-ne v1, v7, :cond_2

    array-length v5, v5

    shl-int/lit8 v5, v5, 0x1

    iget-object v7, p0, Labcd/pC;->v5:Labcd/jC;

    invoke-virtual {v7}, Labcd/jC;->VH()I

    move-result v7

    add-int/lit8 v7, v7, 0x1

    invoke-static {v5, v7}, Ljava/lang/Math;->min(II)I

    move-result v5

    new-array v5, v5, [J

    iget-object v7, p0, Labcd/pC;->gn:[J

    array-length v8, v7

    invoke-static {v7, v4, v5, v4, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v5, p0, Labcd/pC;->gn:[J

    :cond_2
    iget-object v5, p0, Labcd/pC;->gn:[J

    iget-object v7, p0, Labcd/pC;->Zo:[I

    aget v7, v7, v6

    invoke-static {v7, v0, v3}, Labcd/pC;->j6(III)J

    move-result-wide v8

    aput-wide v8, v5, v1

    iget-object v5, p0, Labcd/pC;->EQ:[I

    iget v7, p0, Labcd/pC;->we:I

    sub-int v7, v0, v7

    aput v1, v5, v7

    iget-object v5, p0, Labcd/pC;->Zo:[I

    aput v1, v5, v6

    :goto_3
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_3
    iget-object v7, p0, Labcd/pC;->gn:[J

    aget-wide v8, v7, v5

    iget-object v7, p0, Labcd/pC;->DW:Labcd/mC;

    iget-object v10, p0, Labcd/pC;->FH:Labcd/lC;

    invoke-static {v8, v9}, Labcd/pC;->FH(J)I

    move-result v11

    iget-object v12, p0, Labcd/pC;->FH:Labcd/lC;

    invoke-virtual {v7, v10, v11, v12, v0}, Labcd/mC;->j6(Labcd/lC;ILabcd/lC;I)Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-static {v8, v9}, Labcd/pC;->j6(J)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    if-ge v2, v1, :cond_4

    move v1, v2

    :cond_4
    iget-object v6, p0, Labcd/pC;->gn:[J

    invoke-static {v8, v9}, Labcd/pC;->DW(J)I

    move-result v7

    invoke-static {v7, v0, v1}, Labcd/pC;->j6(III)J

    move-result-wide v10

    aput-wide v10, v6, v5

    iget-object v1, p0, Labcd/pC;->tp:[I

    iget v6, p0, Labcd/pC;->we:I

    sub-int v6, v0, v6

    invoke-static {v8, v9}, Labcd/pC;->FH(J)I

    move-result v7

    aput v7, v1, v6

    iget-object v1, p0, Labcd/pC;->EQ:[I

    iget v6, p0, Labcd/pC;->we:I

    sub-int v6, v0, v6

    aput v5, v1, v6

    goto :goto_3

    :cond_5
    invoke-static {v8, v9}, Labcd/pC;->DW(J)I

    move-result v5

    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_2
.end method

.method private static FH(J)I
    .registers 6

    const v0, 0xfffffff

    const/16 v1, 0x8

    ushr-long v2, p0, v1

    long-to-int v1, v2

    and-int/2addr v0, v1

    return v0
.end method

.method private static j6(I)I
    .registers 3

    const/4 v1, 0x1

    invoke-static {p0}, Ljava/lang/Integer;->numberOfLeadingZeros(I)I

    move-result v0

    rsub-int/lit8 v0, v0, 0x1f

    if-nez v0, :cond_0

    move v0, v1

    :cond_0
    shl-int/2addr v1, v0

    if-ge v1, p0, :cond_1

    add-int/lit8 v0, v0, 0x1

    :cond_1
    return v0
.end method

.method private static j6(J)I
    .registers 4

    long-to-int v0, p0

    and-int/lit16 v0, v0, 0xff

    return v0
.end method

.method private j6(Labcd/lC;I)I
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LlC",
            "<TS;>;I)I"
        }
    .end annotation

    iget-object v0, p0, Labcd/pC;->DW:Labcd/mC;

    invoke-virtual {v0, p1, p2}, Labcd/mC;->j6(Labcd/lC;I)I

    move-result v0

    const v1, -0x61c8ffff

    mul-int/2addr v0, v1

    iget v1, p0, Labcd/pC;->VH:I

    ushr-int/2addr v0, v1

    return v0
.end method

.method private static j6(III)J
    .registers 8

    int-to-long v0, p0

    int-to-long v2, p1

    const/16 v4, 0x8

    shl-long/2addr v2, v4

    const/16 v4, 0x24

    shl-long/2addr v0, v4

    or-long/2addr v0, v2

    int-to-long v2, p2

    or-long/2addr v0, v2

    return-wide v0
.end method


# virtual methods
.method j6()Labcd/jC;
    .registers 4

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0}, Labcd/pC;->DW()Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-object v1

    :cond_0
    new-instance v0, Labcd/jC;

    invoke-direct {v0, v2, v2}, Labcd/jC;-><init>(II)V

    iput-object v0, p0, Labcd/pC;->J0:Labcd/jC;

    iget v0, p0, Labcd/pC;->j6:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Labcd/pC;->J8:I

    iget-object v0, p0, Labcd/pC;->v5:Labcd/jC;

    iget v0, v0, Labcd/jC;->FH:I

    :goto_1
    iget-object v2, p0, Labcd/pC;->v5:Labcd/jC;

    iget v2, v2, Labcd/jC;->Hw:I

    if-lt v0, v2, :cond_2

    iget-boolean v0, p0, Labcd/pC;->Ws:Z

    if-eqz v0, :cond_1

    iget v0, p0, Labcd/pC;->j6:I

    iget v2, p0, Labcd/pC;->J8:I

    if-ge v0, v2, :cond_1

    move-object v0, v1

    :goto_2
    move-object v1, v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Labcd/pC;->J0:Labcd/jC;

    goto :goto_2

    :cond_2
    invoke-direct {p0, v0}, Labcd/pC;->DW(I)I

    move-result v0

    goto :goto_1
.end method
