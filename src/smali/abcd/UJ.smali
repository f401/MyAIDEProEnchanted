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

    iget v1, p0, Labcd/UJ;->we:I

    iget-object v2, p0, Labcd/UJ;->tp:[B

    add-int/lit8 v0, v1, 0x1

    aget-byte v1, v2, v1

    add-int/lit8 v1, v1, -0x30

    move v2, v1

    :goto_0
    iget-object v3, p0, Labcd/UJ;->tp:[B

    add-int/lit8 v1, v0, 0x1

    aget-byte v0, v3, v0

    const/16 v3, 0x20

    if-ne v3, v0, :cond_1

    iput v2, p0, Labcd/TJ;->v5:I

    iget v0, p0, Labcd/TJ;->VH:I

    :goto_1
    iget-object v3, p0, Labcd/UJ;->tp:[B

    add-int/lit8 v2, v1, 0x1

    aget-byte v1, v3, v1

    if-nez v1, :cond_0

    iput v0, p0, Labcd/TJ;->gn:I

    add-int/lit8 v0, v2, 0x14

    iput v0, p0, Labcd/UJ;->J0:I

    return-void

    :cond_0
    :try_start_0
    iget-object v3, p0, Labcd/TJ;->Zo:[B

    aput-byte v1, v3, v0
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_2
    add-int/lit8 v0, v0, 0x1

    move v1, v2

    goto :goto_1

    :catch_0
    move-exception v3

    invoke-virtual {p0, v0}, Labcd/TJ;->DW(I)V

    iget-object v3, p0, Labcd/TJ;->Zo:[B

    aput-byte v1, v3, v0

    goto :goto_2

    :cond_1
    shl-int/lit8 v2, v2, 0x3

    add-int/lit8 v0, v0, -0x30

    add-int/2addr v2, v0

    move v0, v1

    goto :goto_0
.end method


# virtual methods
.method public DW(Labcd/IE;Labcd/YD;)V
    .registers 4

    const/4 v0, 0x2

    invoke-virtual {p1, p2, v0}, Labcd/IE;->Hw(Labcd/YD;I)Labcd/FE;

    move-result-object v0

    invoke-virtual {v0}, Labcd/FE;->j6()[B

    move-result-object v0

    invoke-virtual {p0, v0}, Labcd/UJ;->j6([B)V

    return-void
.end method

.method public DW()Z
    .registers 3

    iget v0, p0, Labcd/UJ;->we:I

    iget-object v1, p0, Labcd/UJ;->tp:[B

    array-length v1, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public EQ()V
    .registers 2

    invoke-virtual {p0}, Labcd/UJ;->FH()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Labcd/UJ;->tp:[B

    invoke-virtual {p0, v0}, Labcd/UJ;->j6([B)V

    :cond_0
    return-void
.end method

.method public FH(I)V
    .registers 5

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    iget v0, p0, Labcd/UJ;->we:I

    iput v0, p0, Labcd/UJ;->EQ:I

    iget v0, p0, Labcd/UJ;->J0:I

    iput v0, p0, Labcd/UJ;->we:I

    invoke-virtual {p0}, Labcd/UJ;->DW()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Labcd/UJ;->Ws()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Labcd/UJ;->tp:[B

    array-length v1, v0

    iget v0, p0, Labcd/UJ;->J0:I

    :goto_1
    add-int/lit8 p1, p1, -0x1

    if-lez p1, :cond_2

    if-ne v0, v1, :cond_3

    :cond_2
    if-nez p1, :cond_5

    iput v0, p0, Labcd/UJ;->we:I

    invoke-virtual {p0}, Labcd/UJ;->DW()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Labcd/UJ;->Ws()V

    goto :goto_0

    :cond_3
    iput v0, p0, Labcd/UJ;->EQ:I

    :goto_2
    iget-object v2, p0, Labcd/UJ;->tp:[B

    aget-byte v2, v2, v0

    if-nez v2, :cond_4

    add-int/lit8 v0, v0, 0x15

    goto :goto_1

    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_5
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0, p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(I)V

    throw v0
.end method

.method public FH()Z
    .registers 2

    iget v0, p0, Labcd/UJ;->we:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public J8()Labcd/UJ;
    .registers 3

    :goto_0
    iget v1, p0, Labcd/UJ;->J0:I

    iget-object v0, p0, Labcd/UJ;->tp:[B

    array-length v0, v0

    if-ne v1, v0, :cond_1

    iget-object v0, p0, Labcd/TJ;->DW:Labcd/TJ;

    if-nez v0, :cond_0

    iput v1, p0, Labcd/UJ;->we:I

    :goto_1
    return-object p0

    :cond_0
    check-cast v0, Labcd/UJ;

    move-object p0, v0

    goto :goto_0

    :cond_1
    iget v0, p0, Labcd/UJ;->we:I

    iput v0, p0, Labcd/UJ;->EQ:I

    iput v1, p0, Labcd/UJ;->we:I

    invoke-direct {p0}, Labcd/UJ;->Ws()V

    goto :goto_1
.end method

.method public gn()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public bridge synthetic j6(Labcd/IE;)Labcd/TJ;
    .registers 3

    invoke-virtual {p0, p1}, Labcd/UJ;->j6(Labcd/IE;)Labcd/UJ;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic j6(Labcd/IE;Labcd/uE;)Labcd/TJ;
    .registers 4

    invoke-virtual {p0, p1, p2}, Labcd/UJ;->j6(Labcd/IE;Labcd/uE;)Labcd/UJ;

    move-result-object v0

    return-object v0
.end method

.method public j6(Labcd/IE;)Labcd/UJ;
    .registers 3

    new-instance v0, Labcd/uE;

    invoke-direct {v0}, Labcd/uE;-><init>()V

    invoke-virtual {p0, p1, v0}, Labcd/UJ;->j6(Labcd/IE;Labcd/uE;)Labcd/UJ;

    move-result-object v0

    return-object v0
.end method

.method public final j6(Labcd/IE;Labcd/YD;)Labcd/UJ;
    .registers 4

    new-instance v0, Labcd/UJ;

    invoke-direct {v0, p0}, Labcd/UJ;-><init>(Labcd/UJ;)V

    invoke-virtual {v0, p1, p2}, Labcd/UJ;->DW(Labcd/IE;Labcd/YD;)V

    return-object v0
.end method

.method public j6(Labcd/IE;Labcd/uE;)Labcd/UJ;
    .registers 6

    invoke-virtual {p0}, Labcd/UJ;->u7()[B

    move-result-object v0

    invoke-virtual {p0}, Labcd/UJ;->tp()I

    move-result v1

    invoke-virtual {p2, v0, v1}, Labcd/uE;->Hw([BI)V

    sget-object v0, Labcd/rE;->j6:Labcd/rE;

    iget v1, p0, Labcd/TJ;->v5:I

    invoke-virtual {v0, v1}, Labcd/rE;->j6(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1, p2}, Labcd/UJ;->j6(Labcd/IE;Labcd/YD;)Labcd/UJ;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Labcd/ZC;

    invoke-virtual {p2}, Labcd/uE;->J8()Labcd/yE;

    move-result-object v1

    const-string v2, "tree"

    invoke-direct {v0, v1, v2}, Labcd/ZC;-><init>(Labcd/yE;Ljava/lang/String;)V

    throw v0
.end method

.method public j6(I)V
    .registers 8

    const/4 v1, 0x0

    const/4 v5, -0x1

    const/4 v4, 0x1

    if-ne p1, v4, :cond_1

    iget v0, p0, Labcd/UJ;->EQ:I

    if-ltz v0, :cond_1

    iput v0, p0, Labcd/UJ;->we:I

    iput v5, p0, Labcd/UJ;->EQ:I

    invoke-virtual {p0}, Labcd/UJ;->DW()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Labcd/UJ;->Ws()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-lez p1, :cond_5

    add-int/lit8 v0, p1, 0x1

    new-array v2, v0, [I

    invoke-static {v2, v5}, Ljava/util/Arrays;->fill([II)V

    move v0, v1

    :goto_1
    iget v3, p0, Labcd/UJ;->we:I

    if-ne v0, v3, :cond_3

    aget v0, v2, v4

    if-eq v0, v5, :cond_2

    aget v0, v2, v1

    iput v0, p0, Labcd/UJ;->EQ:I

    aget v0, v2, v4

    iput v0, p0, Labcd/UJ;->we:I

    invoke-direct {p0}, Labcd/UJ;->Ws()V

    goto :goto_0

    :cond_2
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0, p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(I)V

    throw v0

    :cond_3
    invoke-static {v2, v4, v2, v1, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    aput v0, v2, p1

    :goto_2
    iget-object v3, p0, Labcd/UJ;->tp:[B

    aget-byte v3, v3, v0

    if-nez v3, :cond_4

    add-int/lit8 v0, v0, 0x15

    goto :goto_1

    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_5
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0, p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(I)V

    throw v0
.end method

.method public j6([B)V
    .registers 4

    const/4 v1, 0x0

    iput-object p1, p0, Labcd/UJ;->tp:[B

    const/4 v0, -0x1

    iput v0, p0, Labcd/UJ;->EQ:I

    iput v1, p0, Labcd/UJ;->we:I

    invoke-virtual {p0}, Labcd/UJ;->DW()Z

    move-result v0

    if-eqz v0, :cond_0

    iput v1, p0, Labcd/UJ;->J0:I

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0}, Labcd/UJ;->Ws()V

    goto :goto_0
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
