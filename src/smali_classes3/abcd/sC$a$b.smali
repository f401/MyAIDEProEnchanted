.class abstract Labcd/sC$a$b;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Labcd/sC$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x400
    name = "b"
.end annotation


# instance fields
.field private DW:Labcd/DK;

.field FH:I

.field Hw:I

.field VH:I

.field Zo:I

.field gn:I

.field private j6:Labcd/CK;

.field final tp:Labcd/sC$a;

.field u7:I

.field v5:I


# direct methods
.method constructor <init>(Labcd/sC$a;)V
    .registers 2

    iput-object p1, p0, Labcd/sC$a$b;->tp:Labcd/sC$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Labcd/CK;

    invoke-direct {p1}, Labcd/CK;-><init>()V

    iput-object p1, p0, Labcd/sC$a$b;->j6:Labcd/CK;

    new-instance p1, Labcd/DK;

    invoke-direct {p1}, Labcd/DK;-><init>()V

    iput-object p1, p0, Labcd/sC$a$b;->DW:Labcd/DK;

    return-void
.end method

.method private Hw(I)I
    .registers 3

    iget v0, p0, Labcd/sC$a$b;->gn:I

    if-ge p1, v0, :cond_9

    xor-int/2addr p1, v0

    and-int/lit8 p1, p1, 0x1

    add-int/2addr v0, p1

    return v0

    :cond_9
    iget v0, p0, Labcd/sC$a$b;->u7:I

    if-le p1, v0, :cond_12

    xor-int/2addr p1, v0

    and-int/lit8 p1, p1, 0x1

    sub-int/2addr v0, p1

    return v0

    :cond_12
    return p1
.end method


# virtual methods
.method abstract DW(I)I
.end method

.method final DW(II)I
    .registers 8

    add-int v0, p1, p2

    iget v1, p0, Labcd/sC$a$b;->v5:I

    sub-int/2addr v0, v1

    rem-int/lit8 v1, v0, 0x2

    const/4 v2, 0x2

    if-nez v1, :cond_c

    div-int/2addr v0, v2

    return v0

    :cond_c
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-static {}, Lorg/eclipse/jgit/JGitText;->j6()Lorg/eclipse/jgit/JGitText;

    move-result-object v1

    iget-object v1, v1, Lorg/eclipse/jgit/JGitText;->unexpectedOddResult:Ljava/lang/String;

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v3, v4

    const/4 p1, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v3, p1

    iget p1, p0, Labcd/sC$a$b;->v5:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v3, v2

    invoke-static {v1, v3}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method final DW(J)I
    .registers 3

    long-to-int p2, p1

    return p2
.end method

.method abstract FH(I)I
.end method

.method final FH(II)J
    .registers 6

    iget v0, p0, Labcd/sC$a$b;->FH:I

    if-lt p2, v0, :cond_13

    iget v0, p0, Labcd/sC$a$b;->Hw:I

    if-gt p2, v0, :cond_13

    iget-object v0, p0, Labcd/sC$a$b;->DW:Labcd/DK;

    invoke-virtual {p0, p1, p2}, Labcd/sC$a$b;->DW(II)I

    move-result p1

    invoke-virtual {v0, p1}, Labcd/DK;->j6(I)J

    move-result-wide p1

    return-wide p1

    :cond_13
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-static {}, Lorg/eclipse/jgit/JGitText;->j6()Lorg/eclipse/jgit/JGitText;

    move-result-object v0

    iget-object v0, v0, Lorg/eclipse/jgit/JGitText;->kNotInRange:Ljava/lang/String;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v1, v2

    iget p2, p0, Labcd/sC$a$b;->FH:I

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    iget p2, p0, Labcd/sC$a$b;->Hw:I

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const/4 v2, 0x2

    aput-object p2, v1, v2

    invoke-static {v0, v1}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method final Hw(II)I
    .registers 6

    iget v0, p0, Labcd/sC$a$b;->FH:I

    if-lt p2, v0, :cond_13

    iget v0, p0, Labcd/sC$a$b;->Hw:I

    if-gt p2, v0, :cond_13

    iget-object v0, p0, Labcd/sC$a$b;->j6:Labcd/CK;

    invoke-virtual {p0, p1, p2}, Labcd/sC$a$b;->DW(II)I

    move-result p1

    invoke-virtual {v0, p1}, Labcd/CK;->DW(I)I

    move-result p1

    return p1

    :cond_13
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-static {}, Lorg/eclipse/jgit/JGitText;->j6()Lorg/eclipse/jgit/JGitText;

    move-result-object v0

    iget-object v0, v0, Lorg/eclipse/jgit/JGitText;->kNotInRange:Ljava/lang/String;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v1, v2

    iget p2, p0, Labcd/sC$a$b;->FH:I

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    iget p2, p0, Labcd/sC$a$b;->Hw:I

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const/4 v2, 0x2

    aput-object p2, v1, v2

    invoke-static {v0, v1}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method abstract VH(II)I
.end method

.method final Zo(II)J
    .registers 6

    add-int/2addr p1, p2

    int-to-long v0, p1

    int-to-long p1, p2

    const/16 v2, 0x20

    shl-long/2addr p1, v2

    or-long/2addr p1, v0

    return-wide p1
.end method

.method final j6(J)I
    .registers 4

    const/16 v0, 0x20

    ushr-long/2addr p1, v0

    long-to-int p2, p1

    return p2
.end method

.method abstract j6(II)V
.end method

.method j6(IIII)V
    .registers 5

    iput p3, p0, Labcd/sC$a$b;->gn:I

    iput p4, p0, Labcd/sC$a$b;->u7:I

    iput p1, p0, Labcd/sC$a$b;->v5:I

    iput p1, p0, Labcd/sC$a$b;->Hw:I

    iput p1, p0, Labcd/sC$a$b;->FH:I

    iget-object p3, p0, Labcd/sC$a$b;->j6:Labcd/CK;

    invoke-virtual {p3}, Labcd/CK;->j6()V

    iget-object p3, p0, Labcd/sC$a$b;->j6:Labcd/CK;

    invoke-virtual {p3, p2}, Labcd/CK;->j6(I)V

    iget-object p3, p0, Labcd/sC$a$b;->DW:Labcd/DK;

    invoke-virtual {p3}, Labcd/DK;->j6()V

    iget-object p3, p0, Labcd/sC$a$b;->DW:Labcd/DK;

    invoke-virtual {p0, p1, p2}, Labcd/sC$a$b;->Zo(II)J

    move-result-wide p1

    invoke-virtual {p3, p1, p2}, Labcd/DK;->j6(J)V

    return-void
.end method

.method j6(I)Z
    .registers 18

    move-object/from16 v6, p0

    move/from16 v7, p1

    iget v0, v6, Labcd/sC$a$b;->FH:I

    iput v0, v6, Labcd/sC$a$b;->Zo:I

    iget v0, v6, Labcd/sC$a$b;->Hw:I

    iput v0, v6, Labcd/sC$a$b;->VH:I

    iget v0, v6, Labcd/sC$a$b;->v5:I

    sub-int/2addr v0, v7

    invoke-direct {v6, v0}, Labcd/sC$a$b;->Hw(I)I

    move-result v0

    iput v0, v6, Labcd/sC$a$b;->FH:I

    iget v0, v6, Labcd/sC$a$b;->v5:I

    add-int/2addr v0, v7

    invoke-direct {v6, v0}, Labcd/sC$a$b;->Hw(I)I

    move-result v0

    iput v0, v6, Labcd/sC$a$b;->Hw:I

    move v8, v0

    :goto_1f
    iget v0, v6, Labcd/sC$a$b;->FH:I

    if-ge v8, v0, :cond_25

    const/4 v0, 0x0

    return v0

    :cond_25
    iget v0, v6, Labcd/sC$a$b;->Zo:I

    const/4 v9, -0x1

    const-wide/16 v10, -0x1

    const/4 v12, 0x1

    if-le v8, v0, :cond_60

    add-int/lit8 v2, v8, -0x1

    add-int/lit8 v0, v7, -0x1

    invoke-virtual {v6, v0, v2}, Labcd/sC$a$b;->DW(II)I

    move-result v0

    iget-object v1, v6, Labcd/sC$a$b;->j6:Labcd/CK;

    invoke-virtual {v1, v0}, Labcd/CK;->DW(I)I

    move-result v1

    invoke-virtual {v6, v2, v1}, Labcd/sC$a$b;->VH(II)I

    move-result v13

    if-eq v1, v13, :cond_46

    invoke-virtual {v6, v2, v13}, Labcd/sC$a$b;->Zo(II)J

    move-result-wide v0

    goto :goto_4c

    :cond_46
    iget-object v1, v6, Labcd/sC$a$b;->DW:Labcd/DK;

    invoke-virtual {v1, v0}, Labcd/DK;->j6(I)J

    move-result-wide v0

    :goto_4c
    move-wide v14, v0

    move-object/from16 v0, p0

    move/from16 v1, p1

    move v3, v13

    move-wide v4, v14

    invoke-virtual/range {v0 .. v5}, Labcd/sC$a$b;->j6(IIIJ)Z

    move-result v0

    if-eqz v0, :cond_5a

    return v12

    :cond_5a
    invoke-virtual {v6, v13}, Labcd/sC$a$b;->DW(I)I

    move-result v0

    move v13, v0

    goto :goto_62

    :cond_60
    move-wide v14, v10

    const/4 v13, -0x1

    :goto_62
    iget v0, v6, Labcd/sC$a$b;->VH:I

    if-ge v8, v0, :cond_97

    add-int/lit8 v2, v8, 0x1

    add-int/lit8 v0, v7, -0x1

    invoke-virtual {v6, v0, v2}, Labcd/sC$a$b;->DW(II)I

    move-result v0

    iget-object v1, v6, Labcd/sC$a$b;->j6:Labcd/CK;

    invoke-virtual {v1, v0}, Labcd/CK;->DW(I)I

    move-result v1

    invoke-virtual {v6, v2, v1}, Labcd/sC$a$b;->VH(II)I

    move-result v9

    if-eq v1, v9, :cond_7f

    invoke-virtual {v6, v2, v9}, Labcd/sC$a$b;->Zo(II)J

    move-result-wide v0

    goto :goto_85

    :cond_7f
    iget-object v1, v6, Labcd/sC$a$b;->DW:Labcd/DK;

    invoke-virtual {v1, v0}, Labcd/DK;->j6(I)J

    move-result-wide v0

    :goto_85
    move-wide v10, v0

    move-object/from16 v0, p0

    move/from16 v1, p1

    move v3, v9

    move-wide v4, v10

    invoke-virtual/range {v0 .. v5}, Labcd/sC$a$b;->j6(IIIJ)Z

    move-result v0

    if-eqz v0, :cond_93

    return v12

    :cond_93
    invoke-virtual {v6, v9}, Labcd/sC$a$b;->FH(I)I

    move-result v9

    :cond_97
    iget v0, v6, Labcd/sC$a$b;->VH:I

    if-ge v8, v0, :cond_a8

    iget v0, v6, Labcd/sC$a$b;->Zo:I

    if-le v8, v0, :cond_a6

    invoke-virtual {v6, v13, v9}, Labcd/sC$a$b;->v5(II)Z

    move-result v0

    if-eqz v0, :cond_a6

    goto :goto_a8

    :cond_a6
    move v13, v9

    move-wide v14, v10

    :cond_a8
    :goto_a8
    move-object/from16 v0, p0

    move/from16 v1, p1

    move v2, v8

    move v3, v13

    move-wide v4, v14

    invoke-virtual/range {v0 .. v5}, Labcd/sC$a$b;->j6(IIIJ)Z

    move-result v0

    if-eqz v0, :cond_b6

    return v12

    :cond_b6
    invoke-virtual {v6, v8, v13}, Labcd/sC$a$b;->j6(II)V

    invoke-virtual {v6, v7, v8}, Labcd/sC$a$b;->DW(II)I

    move-result v0

    iget-object v1, v6, Labcd/sC$a$b;->j6:Labcd/CK;

    invoke-virtual {v1, v0, v13}, Labcd/CK;->DW(II)V

    iget-object v1, v6, Labcd/sC$a$b;->DW:Labcd/DK;

    invoke-virtual {v1, v0, v14, v15}, Labcd/DK;->j6(IJ)V

    add-int/lit8 v8, v8, -0x2

    goto/16 :goto_1f
.end method

.method abstract j6(IIIJ)Z
.end method

.method final j6(JJ)Z
    .registers 7

    invoke-virtual {p0, p1, p2}, Labcd/sC$a$b;->j6(J)I

    move-result v0

    invoke-virtual {p0, p3, p4}, Labcd/sC$a$b;->j6(J)I

    move-result v1

    invoke-virtual {p0, p1, p2}, Labcd/sC$a$b;->DW(J)I

    move-result p1

    invoke-virtual {p0, p3, p4}, Labcd/sC$a$b;->DW(J)I

    move-result p2

    if-gt v0, v1, :cond_14

    if-le p1, p2, :cond_16

    :cond_14
    move p1, p2

    move v0, v1

    :cond_16
    iget-object p3, p0, Labcd/sC$a$b;->tp:Labcd/sC$a;

    new-instance p4, Labcd/jC;

    invoke-direct {p4, v0, v1, p1, p2}, Labcd/jC;-><init>(IIII)V

    iput-object p4, p3, Labcd/sC$a;->VH:Labcd/jC;

    const/4 p1, 0x1

    return p1
.end method

.method abstract v5(II)Z
.end method
