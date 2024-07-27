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
    .registers 3

    iput-object p1, p0, Labcd/sC$a$b;->tp:Labcd/sC$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Labcd/CK;

    invoke-direct {v0}, Labcd/CK;-><init>()V

    iput-object v0, p0, Labcd/sC$a$b;->j6:Labcd/CK;

    new-instance v0, Labcd/DK;

    invoke-direct {v0}, Labcd/DK;-><init>()V

    iput-object v0, p0, Labcd/sC$a$b;->DW:Labcd/DK;

    return-void
.end method

.method private Hw(I)I
    .registers 4

    iget v0, p0, Labcd/sC$a$b;->gn:I

    if-ge p1, v0, :cond_1

    xor-int v1, p1, v0

    and-int/lit8 v1, v1, 0x1

    add-int p1, v0, v1

    :cond_0
    :goto_0
    return p1

    :cond_1
    iget v0, p0, Labcd/sC$a$b;->u7:I

    if-le p1, v0, :cond_0

    xor-int v1, p1, v0

    and-int/lit8 v1, v1, 0x1

    sub-int p1, v0, v1

    goto :goto_0
.end method


# virtual methods
.method abstract DW(I)I
.end method

.method final DW(II)I
    .registers 8

    add-int v0, p1, p2

    iget v1, p0, Labcd/sC$a$b;->v5:I

    sub-int v2, v0, v1

    rem-int/lit8 v2, v2, 0x2

    if-nez v2, :cond_0

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    return v0

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-static {}, Lorg/eclipse/jgit/JGitText;->j6()Lorg/eclipse/jgit/JGitText;

    move-result-object v1

    iget-object v1, v1, Lorg/eclipse/jgit/JGitText;->unexpectedOddResult:Ljava/lang/String;

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    iget v4, p0, Labcd/sC$a$b;->v5:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method final DW(J)I
    .registers 4

    long-to-int v0, p1

    return v0
.end method

.method abstract FH(I)I
.end method

.method final FH(II)J
    .registers 8

    iget v0, p0, Labcd/sC$a$b;->FH:I

    if-lt p2, v0, :cond_0

    iget v0, p0, Labcd/sC$a$b;->Hw:I

    if-gt p2, v0, :cond_0

    iget-object v0, p0, Labcd/sC$a$b;->DW:Labcd/DK;

    invoke-virtual {p0, p1, p2}, Labcd/sC$a$b;->DW(II)I

    move-result v1

    invoke-virtual {v0, v1}, Labcd/DK;->j6(I)J

    move-result-wide v0

    return-wide v0

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-static {}, Lorg/eclipse/jgit/JGitText;->j6()Lorg/eclipse/jgit/JGitText;

    move-result-object v1

    iget-object v1, v1, Lorg/eclipse/jgit/JGitText;->kNotInRange:Ljava/lang/String;

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget v4, p0, Labcd/sC$a$b;->FH:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    iget v4, p0, Labcd/sC$a$b;->Hw:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method final Hw(II)I
    .registers 8

    iget v0, p0, Labcd/sC$a$b;->FH:I

    if-lt p2, v0, :cond_0

    iget v0, p0, Labcd/sC$a$b;->Hw:I

    if-gt p2, v0, :cond_0

    iget-object v0, p0, Labcd/sC$a$b;->j6:Labcd/CK;

    invoke-virtual {p0, p1, p2}, Labcd/sC$a$b;->DW(II)I

    move-result v1

    invoke-virtual {v0, v1}, Labcd/CK;->DW(I)I

    move-result v0

    return v0

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-static {}, Lorg/eclipse/jgit/JGitText;->j6()Lorg/eclipse/jgit/JGitText;

    move-result-object v1

    iget-object v1, v1, Lorg/eclipse/jgit/JGitText;->kNotInRange:Ljava/lang/String;

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget v4, p0, Labcd/sC$a$b;->FH:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    iget v4, p0, Labcd/sC$a$b;->Hw:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method abstract VH(II)I
.end method

.method final Zo(II)J
    .registers 8

    add-int v0, p1, p2

    int-to-long v0, v0

    int-to-long v2, p2

    const/16 v4, 0x20

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    return-wide v0
.end method

.method final j6(J)I
    .registers 6

    const/16 v0, 0x20

    ushr-long v0, p1, v0

    long-to-int v0, v0

    return v0
.end method

.method abstract j6(II)V
.end method

.method j6(IIII)V
    .registers 9

    iput p3, p0, Labcd/sC$a$b;->gn:I

    iput p4, p0, Labcd/sC$a$b;->u7:I

    iput p1, p0, Labcd/sC$a$b;->v5:I

    iput p1, p0, Labcd/sC$a$b;->Hw:I

    iput p1, p0, Labcd/sC$a$b;->FH:I

    iget-object v0, p0, Labcd/sC$a$b;->j6:Labcd/CK;

    invoke-virtual {v0}, Labcd/CK;->j6()V

    iget-object v0, p0, Labcd/sC$a$b;->j6:Labcd/CK;

    invoke-virtual {v0, p2}, Labcd/CK;->j6(I)V

    iget-object v0, p0, Labcd/sC$a$b;->DW:Labcd/DK;

    invoke-virtual {v0}, Labcd/DK;->j6()V

    iget-object v0, p0, Labcd/sC$a$b;->DW:Labcd/DK;

    invoke-virtual {p0, p1, p2}, Labcd/sC$a$b;->Zo(II)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Labcd/DK;->j6(J)V

    return-void
.end method

.method j6(I)Z
    .registers 16

    const-wide/16 v10, -0x1

    const/4 v12, -0x1

    const/4 v13, 0x1

    iget v0, p0, Labcd/sC$a$b;->FH:I

    iput v0, p0, Labcd/sC$a$b;->Zo:I

    iget v0, p0, Labcd/sC$a$b;->Hw:I

    iput v0, p0, Labcd/sC$a$b;->VH:I

    iget v0, p0, Labcd/sC$a$b;->v5:I

    sub-int/2addr v0, p1

    invoke-direct {p0, v0}, Labcd/sC$a$b;->Hw(I)I

    move-result v0

    iput v0, p0, Labcd/sC$a$b;->FH:I

    iget v0, p0, Labcd/sC$a$b;->v5:I

    add-int/2addr v0, p1

    invoke-direct {p0, v0}, Labcd/sC$a$b;->Hw(I)I

    move-result v0

    iput v0, p0, Labcd/sC$a$b;->Hw:I

    iget v0, p0, Labcd/sC$a$b;->Hw:I

    move v6, v0

    :goto_0
    iget v0, p0, Labcd/sC$a$b;->FH:I

    if-ge v6, v0, :cond_0

    const/4 v0, 0x0

    :goto_1
    return v0

    :cond_0
    iget v0, p0, Labcd/sC$a$b;->Zo:I

    if-le v6, v0, :cond_3

    add-int/lit8 v2, v6, -0x1

    add-int/lit8 v0, p1, -0x1

    invoke-virtual {p0, v0, v2}, Labcd/sC$a$b;->DW(II)I

    move-result v0

    iget-object v1, p0, Labcd/sC$a$b;->j6:Labcd/CK;

    invoke-virtual {v1, v0}, Labcd/CK;->DW(I)I

    move-result v1

    invoke-virtual {p0, v2, v1}, Labcd/sC$a$b;->VH(II)I

    move-result v3

    if-eq v1, v3, :cond_1

    invoke-virtual {p0, v2, v3}, Labcd/sC$a$b;->Zo(II)J

    move-result-wide v4

    :goto_2
    move-object v0, p0

    move v1, p1

    invoke-virtual/range {v0 .. v5}, Labcd/sC$a$b;->j6(IIIJ)Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v13

    goto :goto_1

    :cond_1
    iget-object v1, p0, Labcd/sC$a$b;->DW:Labcd/DK;

    invoke-virtual {v1, v0}, Labcd/DK;->j6(I)J

    move-result-wide v4

    goto :goto_2

    :cond_2
    invoke-virtual {p0, v3}, Labcd/sC$a$b;->DW(I)I

    move-result v0

    move-wide v8, v4

    move v7, v0

    :goto_3
    iget v0, p0, Labcd/sC$a$b;->VH:I

    if-ge v6, v0, :cond_6

    add-int/lit8 v2, v6, 0x1

    add-int/lit8 v0, p1, -0x1

    invoke-virtual {p0, v0, v2}, Labcd/sC$a$b;->DW(II)I

    move-result v0

    iget-object v1, p0, Labcd/sC$a$b;->j6:Labcd/CK;

    invoke-virtual {v1, v0}, Labcd/CK;->DW(I)I

    move-result v1

    invoke-virtual {p0, v2, v1}, Labcd/sC$a$b;->VH(II)I

    move-result v3

    if-eq v1, v3, :cond_4

    invoke-virtual {p0, v2, v3}, Labcd/sC$a$b;->Zo(II)J

    move-result-wide v4

    :goto_4
    move-object v0, p0

    move v1, p1

    invoke-virtual/range {v0 .. v5}, Labcd/sC$a$b;->j6(IIIJ)Z

    move-result v0

    if-eqz v0, :cond_5

    move v0, v13

    goto :goto_1

    :cond_3
    move-wide v8, v10

    move v7, v12

    goto :goto_3

    :cond_4
    iget-object v1, p0, Labcd/sC$a$b;->DW:Labcd/DK;

    invoke-virtual {v1, v0}, Labcd/DK;->j6(I)J

    move-result-wide v4

    goto :goto_4

    :cond_5
    invoke-virtual {p0, v3}, Labcd/sC$a$b;->FH(I)I

    move-result v0

    :goto_5
    iget v1, p0, Labcd/sC$a$b;->VH:I

    if-ge v6, v1, :cond_9

    iget v1, p0, Labcd/sC$a$b;->Zo:I

    if-le v6, v1, :cond_7

    invoke-virtual {p0, v7, v0}, Labcd/sC$a$b;->v5(II)Z

    move-result v1

    if-eqz v1, :cond_7

    move-wide v4, v8

    move v3, v7

    :goto_6
    move-object v0, p0

    move v1, p1

    move v2, v6

    invoke-virtual/range {v0 .. v5}, Labcd/sC$a$b;->j6(IIIJ)Z

    move-result v0

    if-eqz v0, :cond_8

    move v0, v13

    goto/16 :goto_1

    :cond_6
    move-wide v4, v10

    move v0, v12

    goto :goto_5

    :cond_7
    move v3, v0

    goto :goto_6

    :cond_8
    invoke-virtual {p0, v6, v3}, Labcd/sC$a$b;->j6(II)V

    invoke-virtual {p0, p1, v6}, Labcd/sC$a$b;->DW(II)I

    move-result v0

    iget-object v1, p0, Labcd/sC$a$b;->j6:Labcd/CK;

    invoke-virtual {v1, v0, v3}, Labcd/CK;->DW(II)V

    iget-object v1, p0, Labcd/sC$a$b;->DW:Labcd/DK;

    invoke-virtual {v1, v0, v4, v5}, Labcd/DK;->j6(IJ)V

    add-int/lit8 v0, v6, -0x2

    move v6, v0

    goto/16 :goto_0

    :cond_9
    move-wide v4, v8

    move v3, v7

    goto :goto_6
.end method

.method abstract j6(IIIJ)Z
.end method

.method final j6(JJ)Z
    .registers 12

    invoke-virtual {p0, p1, p2}, Labcd/sC$a$b;->j6(J)I

    move-result v0

    invoke-virtual {p0, p3, p4}, Labcd/sC$a$b;->j6(J)I

    move-result v1

    invoke-virtual {p0, p1, p2}, Labcd/sC$a$b;->DW(J)I

    move-result v2

    invoke-virtual {p0, p3, p4}, Labcd/sC$a$b;->DW(J)I

    move-result v3

    if-gt v0, v1, :cond_0

    if-le v2, v3, :cond_1

    :cond_0
    move v0, v1

    move v2, v3

    :cond_1
    iget-object v4, p0, Labcd/sC$a$b;->tp:Labcd/sC$a;

    new-instance v5, Labcd/jC;

    invoke-direct {v5, v0, v1, v2, v3}, Labcd/jC;-><init>(IIII)V

    iput-object v5, v4, Labcd/sC$a;->VH:Labcd/jC;

    const/4 v0, 0x1

    return v0
.end method

.method abstract v5(II)Z
.end method
