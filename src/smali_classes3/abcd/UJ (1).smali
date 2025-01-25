.class public Labcd/UJ;
.super Labcd/TJ;


# static fields
.field private static final u7:[B


# instance fields
.field private EQ:I

.field private J0:I

.field private tp:[B

.field private we:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x0

    new-array v0, v0, [B

    sput-object v0, Labcd/UJ;->u7:[B

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Labcd/TJ;-><init>()V

    sget-object v0, Labcd/UJ;->u7:[B

    invoke-virtual {p0, v0}, Labcd/UJ;->j6([B)V

    return-void
.end method

.method private constructor <init>(Labcd/UJ;)V
    .registers 2

    invoke-direct {p0, p1}, Labcd/TJ;-><init>(Labcd/TJ;)V

    return-void
.end method

.method public constructor <init>([BLabcd/IE;Labcd/YD;)V
    .registers 4

    invoke-direct {p0, p1}, Labcd/TJ;-><init>([B)V

    invoke-virtual {p0, p2, p3}, Labcd/UJ;->DW(Labcd/IE;Labcd/YD;)V

    return-void
.end method

.method private Ws()V
    .registers 5

    iget v0, p0, Labcd/UJ;->we:I

    iget-object v1, p0, Labcd/UJ;->tp:[B

    add-int/lit8 v2, v0, 0x1

    aget-byte v0, v1, v0

    add-int/lit8 v0, v0, -0x30

    :goto_a
    iget-object v1, p0, Labcd/UJ;->tp:[B

    add-int/lit8 v3, v2, 0x1

    aget-byte v1, v1, v2

    const/16 v2, 0x20

    if-ne v2, v1, :cond_38

    iput v0, p0, Labcd/TJ;->v5:I

    iget v0, p0, Labcd/TJ;->VH:I

    :goto_18
    iget-object v1, p0, Labcd/UJ;->tp:[B

    add-int/lit8 v2, v3, 0x1

    aget-byte v1, v1, v3

    if-nez v1, :cond_27

    iput v0, p0, Labcd/TJ;->gn:I

    add-int/lit8 v2, v2, 0x14

    iput v2, p0, Labcd/UJ;->J0:I

    return-void

    :cond_27
    :try_start_27
    iget-object v3, p0, Labcd/TJ;->Zo:[B

    aput-byte v1, v3, v0
    :try_end_2b
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_27 .. :try_end_2b} :catch_2c

    goto :goto_34

    :catch_2c
    move-exception v3

    invoke-virtual {p0, v0}, Labcd/TJ;->DW(I)V

    iget-object v3, p0, Labcd/TJ;->Zo:[B

    aput-byte v1, v3, v0

    :goto_34
    add-int/lit8 v0, v0, 0x1

    move v3, v2

    goto :goto_18

    :cond_38
    shl-int/lit8 v0, v0, 0x3

    add-int/lit8 v1, v1, -0x30

    add-int/2addr v0, v1

    move v2, v3

    goto :goto_a
.end method


# virtual methods
.method public DW(Labcd/IE;Labcd/YD;)V
    .registers 4

    const/4 v0, 0x2

    invoke-virtual {p1, p2, v0}, Labcd/IE;->Hw(Labcd/YD;I)Labcd/FE;

    move-result-object p1

    invoke-virtual {p1}, Labcd/FE;->j6()[B

    move-result-object p1

    invoke-virtual {p0, p1}, Labcd/UJ;->j6([B)V

    return-void
.end method

.method public DW()Z
    .registers 3

    iget v0, p0, Labcd/UJ;->we:I

    iget-object v1, p0, Labcd/UJ;->tp:[B

    array-length v1, v1

    if-ne v0, v1, :cond_9

    const/4 v0, 0x1

    return v0

    :cond_9
    const/4 v0, 0x0

    return v0
.end method

.method public EQ()V
    .registers 2

    invoke-virtual {p0}, Labcd/UJ;->FH()Z

    move-result v0

    if-nez v0, :cond_b

    iget-object v0, p0, Labcd/UJ;->tp:[B

    invoke-virtual {p0, v0}, Labcd/UJ;->j6([B)V

    :cond_b
    return-void
.end method

.method public FH(I)V
    .registers 5

    const/4 v0, 0x1

    if-ne p1, v0, :cond_15

    iget p1, p0, Labcd/UJ;->we:I

    iput p1, p0, Labcd/UJ;->EQ:I

    iget p1, p0, Labcd/UJ;->J0:I

    iput p1, p0, Labcd/UJ;->we:I

    invoke-virtual {p0}, Labcd/UJ;->DW()Z

    move-result p1

    if-nez p1, :cond_14

    invoke-direct {p0}, Labcd/UJ;->Ws()V

    :cond_14
    return-void

    :cond_15
    iget-object v0, p0, Labcd/UJ;->tp:[B

    array-length v0, v0

    iget v1, p0, Labcd/UJ;->J0:I

    :goto_1a
    add-int/lit8 p1, p1, -0x1

    if-lez p1, :cond_2f

    if-ne v1, v0, :cond_21

    goto :goto_2f

    :cond_21
    iput v1, p0, Labcd/UJ;->EQ:I

    :goto_23
    iget-object v2, p0, Labcd/UJ;->tp:[B

    aget-byte v2, v2, v1

    if-nez v2, :cond_2c

    add-int/lit8 v1, v1, 0x15

    goto :goto_1a

    :cond_2c
    add-int/lit8 v1, v1, 0x1

    goto :goto_23

    :cond_2f
    :goto_2f
    if-nez p1, :cond_3d

    iput v1, p0, Labcd/UJ;->we:I

    invoke-virtual {p0}, Labcd/UJ;->DW()Z

    move-result p1

    if-nez p1, :cond_3c

    invoke-direct {p0}, Labcd/UJ;->Ws()V

    :cond_3c
    return-void

    :cond_3d
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0, p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(I)V

    goto :goto_44

    :goto_43
    throw v0

    :goto_44
    goto :goto_43
.end method

.method public FH()Z
    .registers 2

    iget v0, p0, Labcd/UJ;->we:I

    if-nez v0, :cond_6

    const/4 v0, 0x1

    return v0

    :cond_6
    const/4 v0, 0x0

    return v0
.end method

.method public J8()Labcd/UJ;
    .registers 4

    move-object v0, p0

    :goto_1
    iget v1, v0, Labcd/UJ;->J0:I

    iget-object v2, v0, Labcd/UJ;->tp:[B

    array-length v2, v2

    if-ne v1, v2, :cond_13

    iget-object v2, v0, Labcd/TJ;->DW:Labcd/TJ;

    if-nez v2, :cond_f

    iput v1, v0, Labcd/UJ;->we:I

    return-object v0

    :cond_f
    move-object v0, v2

    check-cast v0, Labcd/UJ;

    goto :goto_1

    :cond_13
    iget v2, v0, Labcd/UJ;->we:I

    iput v2, v0, Labcd/UJ;->EQ:I

    iput v1, v0, Labcd/UJ;->we:I

    invoke-direct {v0}, Labcd/UJ;->Ws()V

    return-object v0
.end method

.method public gn()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public bridge synthetic j6(Labcd/IE;)Labcd/TJ;
    .registers 2

    invoke-virtual {p0, p1}, Labcd/UJ;->j6(Labcd/IE;)Labcd/UJ;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic j6(Labcd/IE;Labcd/uE;)Labcd/TJ;
    .registers 3

    invoke-virtual {p0, p1, p2}, Labcd/UJ;->j6(Labcd/IE;Labcd/uE;)Labcd/UJ;

    move-result-object p1

    return-object p1
.end method

.method public j6(Labcd/IE;)Labcd/UJ;
    .registers 3

    new-instance v0, Labcd/uE;

    invoke-direct {v0}, Labcd/uE;-><init>()V

    invoke-virtual {p0, p1, v0}, Labcd/UJ;->j6(Labcd/IE;Labcd/uE;)Labcd/UJ;

    move-result-object p1

    return-object p1
.end method

.method public final j6(Labcd/IE;Labcd/YD;)Labcd/UJ;
    .registers 4

    new-instance v0, Labcd/UJ;

    invoke-direct {v0, p0}, Labcd/UJ;-><init>(Labcd/UJ;)V

    invoke-virtual {v0, p1, p2}, Labcd/UJ;->DW(Labcd/IE;Labcd/YD;)V

    return-object v0
.end method

.method public j6(Labcd/IE;Labcd/uE;)Labcd/UJ;
    .registers 5

    invoke-virtual {p0}, Labcd/UJ;->u7()[B

    move-result-object v0

    invoke-virtual {p0}, Labcd/UJ;->tp()I

    move-result v1

    invoke-virtual {p2, v0, v1}, Labcd/uE;->Hw([BI)V

    sget-object v0, Labcd/rE;->j6:Labcd/rE;

    iget v1, p0, Labcd/TJ;->v5:I

    invoke-virtual {v0, v1}, Labcd/rE;->j6(I)Z

    move-result v0

    if-eqz v0, :cond_1a

    invoke-virtual {p0, p1, p2}, Labcd/UJ;->j6(Labcd/IE;Labcd/YD;)Labcd/UJ;

    move-result-object p1

    return-object p1

    :cond_1a
    new-instance p1, Labcd/ZC;

    invoke-virtual {p2}, Labcd/uE;->J8()Labcd/yE;

    move-result-object p2

    const-string v0, "tree"

    invoke-direct {p1, p2, v0}, Labcd/ZC;-><init>(Labcd/yE;Ljava/lang/String;)V

    throw p1
.end method

.method public j6(I)V
    .registers 8

    const/4 v0, -0x1

    const/4 v1, 0x1

    if-ne p1, v1, :cond_16

    iget v2, p0, Labcd/UJ;->EQ:I

    if-ltz v2, :cond_16

    iput v2, p0, Labcd/UJ;->we:I

    iput v0, p0, Labcd/UJ;->EQ:I

    invoke-virtual {p0}, Labcd/UJ;->DW()Z

    move-result p1

    if-nez p1, :cond_15

    invoke-direct {p0}, Labcd/UJ;->Ws()V

    :cond_15
    return-void

    :cond_16
    if-lez p1, :cond_4a

    add-int/lit8 v2, p1, 0x1

    new-array v2, v2, [I

    invoke-static {v2, v0}, Ljava/util/Arrays;->fill([II)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_21
    iget v5, p0, Labcd/UJ;->we:I

    if-ne v4, v5, :cond_39

    aget v1, v2, v1

    if-eq v1, v0, :cond_33

    aget p1, v2, v3

    iput p1, p0, Labcd/UJ;->EQ:I

    iput v1, p0, Labcd/UJ;->we:I

    invoke-direct {p0}, Labcd/UJ;->Ws()V

    return-void

    :cond_33
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0, p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(I)V

    throw v0

    :cond_39
    invoke-static {v2, v1, v2, v3, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    aput v4, v2, p1

    :goto_3e
    iget-object v5, p0, Labcd/UJ;->tp:[B

    aget-byte v5, v5, v4

    if-nez v5, :cond_47

    add-int/lit8 v4, v4, 0x15

    goto :goto_21

    :cond_47
    add-int/lit8 v4, v4, 0x1

    goto :goto_3e

    :cond_4a
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0, p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(I)V

    goto :goto_51

    :goto_50
    throw v0

    :goto_51
    goto :goto_50
.end method

.method public j6([B)V
    .registers 3

    iput-object p1, p0, Labcd/UJ;->tp:[B

    const/4 p1, -0x1

    iput p1, p0, Labcd/UJ;->EQ:I

    const/4 p1, 0x0

    iput p1, p0, Labcd/UJ;->we:I

    invoke-virtual {p0}, Labcd/UJ;->DW()Z

    move-result v0

    if-eqz v0, :cond_11

    iput p1, p0, Labcd/UJ;->J0:I

    goto :goto_14

    :cond_11
    invoke-direct {p0}, Labcd/UJ;->Ws()V

    :goto_14
    return-void
.end method

.method public tp()I
    .registers 2

    iget v0, p0, Labcd/UJ;->J0:I

    add-int/lit8 v0, v0, -0x14

    return v0
.end method

.method public u7()[B
    .registers 2

    iget-object v0, p0, Labcd/UJ;->tp:[B

    return-object v0
.end method
