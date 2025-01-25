.class public Labcd/RC;
.super Labcd/TJ;


# instance fields
.field private final EQ:I

.field private final J0:[B

.field protected J8:I

.field protected QX:Labcd/QC;

.field private Ws:I

.field protected XL:Labcd/TC;

.field private final tp:Labcd/TC;

.field protected final u7:Labcd/KC;

.field private final we:I


# direct methods
.method public constructor <init>(Labcd/KC;)V
    .registers 3

    invoke-direct {p0}, Labcd/TJ;-><init>()V

    iput-object p1, p0, Labcd/RC;->u7:Labcd/KC;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Labcd/KC;->j6(Z)Labcd/TC;

    move-result-object p1

    iput-object p1, p0, Labcd/RC;->tp:Labcd/TC;

    const/4 v0, 0x0

    iput v0, p0, Labcd/RC;->EQ:I

    invoke-virtual {p1}, Labcd/TC;->DW()I

    move-result p1

    iput p1, p0, Labcd/RC;->we:I

    const/16 p1, 0x14

    new-array p1, p1, [B

    iput-object p1, p0, Labcd/RC;->J0:[B

    invoke-virtual {p0}, Labcd/RC;->DW()Z

    move-result p1

    if-nez p1, :cond_24

    invoke-direct {p0}, Labcd/RC;->Ws()V

    :cond_24
    return-void
.end method

.method constructor <init>(Labcd/RC;Labcd/TC;)V
    .registers 5

    iget-object v0, p1, Labcd/TJ;->Zo:[B

    iget v1, p1, Labcd/TJ;->gn:I

    add-int/lit8 v1, v1, 0x1

    invoke-direct {p0, p1, v0, v1}, Labcd/TJ;-><init>(Labcd/TJ;[BI)V

    iget-object v0, p1, Labcd/RC;->u7:Labcd/KC;

    iput-object v0, p0, Labcd/RC;->u7:Labcd/KC;

    iput-object p2, p0, Labcd/RC;->tp:Labcd/TC;

    iget v0, p1, Labcd/RC;->J8:I

    iput v0, p0, Labcd/RC;->EQ:I

    invoke-virtual {p2}, Labcd/TC;->DW()I

    move-result p2

    add-int/2addr v0, p2

    iput v0, p0, Labcd/RC;->we:I

    iget-object p2, p1, Labcd/RC;->J0:[B

    iput-object p2, p0, Labcd/RC;->J0:[B

    iget p1, p1, Labcd/RC;->J8:I

    iput p1, p0, Labcd/RC;->J8:I

    invoke-direct {p0}, Labcd/RC;->Ws()V

    return-void
.end method

.method private Ws()V
    .registers 6

    iget-object v0, p0, Labcd/RC;->u7:Labcd/KC;

    iget v1, p0, Labcd/RC;->J8:I

    invoke-virtual {v0, v1}, Labcd/KC;->j6(I)Labcd/QC;

    move-result-object v0

    iput-object v0, p0, Labcd/RC;->QX:Labcd/QC;

    iget-object v0, v0, Labcd/QC;->Hw:[B

    iget v1, p0, Labcd/RC;->Ws:I

    iget-object v2, p0, Labcd/RC;->tp:Labcd/TC;

    invoke-virtual {v2}, Labcd/TC;->j6()I

    move-result v2

    if-eq v1, v2, :cond_53

    iget-object v1, p0, Labcd/RC;->tp:Labcd/TC;

    iget v2, p0, Labcd/RC;->Ws:I

    invoke-virtual {v1, v2}, Labcd/TC;->j6(I)Labcd/TC;

    move-result-object v1

    iget v2, p0, Labcd/TJ;->VH:I

    array-length v3, v0

    invoke-virtual {v1, v0, v2, v3}, Labcd/TC;->j6([BII)Z

    move-result v2

    if-eqz v2, :cond_53

    iput-object v1, p0, Labcd/RC;->XL:Labcd/TC;

    iget v2, p0, Labcd/RC;->Ws:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Labcd/RC;->Ws:I

    invoke-virtual {v1}, Labcd/TC;->Hw()Z

    move-result v2

    if-eqz v2, :cond_3f

    invoke-virtual {v1}, Labcd/TC;->FH()Labcd/yE;

    move-result-object v2

    iget-object v3, p0, Labcd/RC;->J0:[B

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Labcd/YD;->DW([BI)V

    :cond_3f
    sget-object v2, Labcd/rE;->j6:Labcd/rE;

    invoke-virtual {v2}, Labcd/rE;->DW()I

    move-result v2

    iput v2, p0, Labcd/TJ;->v5:I

    iput-object v0, p0, Labcd/TJ;->Zo:[B

    iget v0, p0, Labcd/TJ;->VH:I

    invoke-virtual {v1}, Labcd/TC;->v5()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Labcd/TJ;->gn:I

    return-void

    :cond_53
    iget-object v1, p0, Labcd/RC;->QX:Labcd/QC;

    invoke-virtual {v1}, Labcd/QC;->Zo()I

    move-result v1

    iput v1, p0, Labcd/TJ;->v5:I

    iput-object v0, p0, Labcd/TJ;->Zo:[B

    array-length v0, v0

    iput v0, p0, Labcd/TJ;->gn:I

    const/4 v0, 0x0

    iput-object v0, p0, Labcd/RC;->XL:Labcd/TC;

    return-void
.end method


# virtual methods
.method public DW()Z
    .registers 3

    iget v0, p0, Labcd/RC;->J8:I

    iget v1, p0, Labcd/RC;->we:I

    if-ne v0, v1, :cond_8

    const/4 v0, 0x1

    return v0

    :cond_8
    const/4 v0, 0x0

    return v0
.end method

.method public EQ()V
    .registers 2

    invoke-virtual {p0}, Labcd/RC;->FH()Z

    move-result v0

    if-nez v0, :cond_13

    iget v0, p0, Labcd/RC;->EQ:I

    iput v0, p0, Labcd/RC;->J8:I

    invoke-virtual {p0}, Labcd/RC;->DW()Z

    move-result v0

    if-nez v0, :cond_13

    invoke-direct {p0}, Labcd/RC;->Ws()V

    :cond_13
    return-void
.end method

.method public FH(I)V
    .registers 4

    :goto_0
    add-int/lit8 p1, p1, -0x1

    if-gez p1, :cond_5

    goto :goto_1f

    :cond_5
    iget-object v0, p0, Labcd/RC;->XL:Labcd/TC;

    if-eqz v0, :cond_13

    iget v1, p0, Labcd/RC;->J8:I

    invoke-virtual {v0}, Labcd/TC;->DW()I

    move-result v0

    add-int/2addr v1, v0

    iput v1, p0, Labcd/RC;->J8:I

    goto :goto_19

    :cond_13
    iget v0, p0, Labcd/RC;->J8:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Labcd/RC;->J8:I

    :goto_19
    invoke-virtual {p0}, Labcd/RC;->DW()Z

    move-result v0

    if-eqz v0, :cond_20

    :goto_1f
    return-void

    :cond_20
    invoke-direct {p0}, Labcd/RC;->Ws()V

    goto :goto_0
.end method

.method public FH()Z
    .registers 3

    iget v0, p0, Labcd/RC;->J8:I

    iget v1, p0, Labcd/RC;->EQ:I

    if-ne v0, v1, :cond_8

    const/4 v0, 0x1

    return v0

    :cond_8
    const/4 v0, 0x0

    return v0
.end method

.method public J8()Labcd/QC;
    .registers 2

    iget-object v0, p0, Labcd/RC;->XL:Labcd/TC;

    if-nez v0, :cond_7

    iget-object v0, p0, Labcd/RC;->QX:Labcd/QC;

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    return-object v0
.end method

.method public gn()Z
    .registers 2

    iget-object v0, p0, Labcd/RC;->XL:Labcd/TC;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Labcd/TC;->Hw()Z

    move-result v0

    return v0

    :cond_9
    iget-object v0, p0, Labcd/RC;->QX:Labcd/QC;

    if-eqz v0, :cond_f

    const/4 v0, 0x1

    return v0

    :cond_f
    const/4 v0, 0x0

    return v0
.end method

.method public j6(Labcd/IE;)Labcd/TJ;
    .registers 4

    iget-object p1, p0, Labcd/RC;->XL:Labcd/TC;

    if-eqz p1, :cond_a

    new-instance v0, Labcd/RC;

    invoke-direct {v0, p0, p1}, Labcd/RC;-><init>(Labcd/RC;Labcd/TC;)V

    return-object v0

    :cond_a
    new-instance p1, Labcd/ZC;

    invoke-virtual {p0}, Labcd/TJ;->v5()Labcd/yE;

    move-result-object v0

    const-string v1, "tree"

    invoke-direct {p1, v0, v1}, Labcd/ZC;-><init>(Labcd/yE;Ljava/lang/String;)V

    throw p1
.end method

.method public j6()Labcd/VJ;
    .registers 5

    iget v0, p0, Labcd/TJ;->gn:I

    add-int/lit8 v0, v0, 0x1

    const/16 v1, 0x80

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    new-array v0, v0, [B

    iget-object v1, p0, Labcd/TJ;->Zo:[B

    const/4 v2, 0x0

    iget v3, p0, Labcd/TJ;->gn:I

    invoke-static {v1, v2, v0, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v1, p0, Labcd/TJ;->gn:I

    const/16 v2, 0x2f

    aput-byte v2, v0, v1

    new-instance v2, Labcd/VJ;

    add-int/lit8 v1, v1, 0x1

    invoke-direct {v2, p0, v0, v1}, Labcd/VJ;-><init>(Labcd/TJ;[BI)V

    return-object v2
.end method

.method public j6(I)V
    .registers 4

    :cond_0
    :goto_0
    add-int/lit8 p1, p1, -0x1

    if-gez p1, :cond_5

    return-void

    :cond_5
    iget-object v0, p0, Labcd/RC;->XL:Labcd/TC;

    if-eqz v0, :cond_f

    iget v0, p0, Labcd/RC;->Ws:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Labcd/RC;->Ws:I

    :cond_f
    iget v0, p0, Labcd/RC;->J8:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Labcd/RC;->J8:I

    invoke-direct {p0}, Labcd/RC;->Ws()V

    iget-object v0, p0, Labcd/RC;->XL:Labcd/TC;

    if-eqz v0, :cond_0

    iget v1, p0, Labcd/RC;->J8:I

    invoke-virtual {v0}, Labcd/TC;->DW()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    sub-int/2addr v1, v0

    iput v1, p0, Labcd/RC;->J8:I

    goto :goto_0
.end method

.method public tp()I
    .registers 3

    iget-object v0, p0, Labcd/RC;->XL:Labcd/TC;

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    return v1

    :cond_6
    iget-object v0, p0, Labcd/RC;->QX:Labcd/QC;

    if-eqz v0, :cond_f

    invoke-virtual {v0}, Labcd/QC;->u7()I

    move-result v0

    return v0

    :cond_f
    return v1
.end method

.method public u7()[B
    .registers 2

    iget-object v0, p0, Labcd/RC;->XL:Labcd/TC;

    if-eqz v0, :cond_10

    invoke-virtual {v0}, Labcd/TC;->Hw()Z

    move-result v0

    if-eqz v0, :cond_d

    iget-object v0, p0, Labcd/RC;->J0:[B

    goto :goto_f

    :cond_d
    sget-object v0, Labcd/TJ;->j6:[B

    :goto_f
    return-object v0

    :cond_10
    iget-object v0, p0, Labcd/RC;->QX:Labcd/QC;

    if-eqz v0, :cond_19

    invoke-virtual {v0}, Labcd/QC;->gn()[B

    move-result-object v0

    return-object v0

    :cond_19
    sget-object v0, Labcd/TJ;->j6:[B

    return-object v0
.end method
