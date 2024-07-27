.class public Labcd/dG;
.super Labcd/iG;


# static fields
.field static final we:[Labcd/dG;


# instance fields
.field private J0:Labcd/mG;

.field J8:[Labcd/dG;

.field QX:I

.field Ws:I

.field private XL:[B


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x0

    new-array v0, v0, [Labcd/dG;

    sput-object v0, Labcd/dG;->we:[Labcd/dG;

    return-void
.end method

.method protected constructor <init>(Labcd/YD;)V
    .registers 2

    invoke-direct {p0, p1}, Labcd/iG;-><init>(Labcd/YD;)V

    return-void
.end method

.method static j6(Labcd/dG;I)V
    .registers 8

    :goto_0
    iget-object v1, p0, Labcd/dG;->J8:[Labcd/dG;

    if-nez v1, :cond_1

    :cond_0
    return-void

    :cond_1
    array-length v2, v1

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    :goto_1
    if-lt v0, v2, :cond_2

    const/4 v0, 0x0

    aget-object p0, v1, v0

    iget v0, p0, Labcd/iG;->EQ:I

    and-int v1, v0, p1

    if-eq v1, p1, :cond_0

    or-int/2addr v0, p1

    iput v0, p0, Labcd/iG;->EQ:I

    goto :goto_0

    :cond_2
    aget-object v3, v1, v0

    iget v4, v3, Labcd/iG;->EQ:I

    and-int v5, v4, p1

    if-ne v5, p1, :cond_3

    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    or-int/2addr v4, p1

    iput v4, v3, Labcd/iG;->EQ:I

    invoke-static {v3, p1}, Labcd/dG;->j6(Labcd/dG;I)V

    goto :goto_2
.end method

.method static j6([BII)Z
    .registers 5

    :goto_0
    if-lt p1, p2, :cond_0

    const/4 v0, 0x0

    :goto_1
    return v0

    :cond_0
    aget-byte v0, p0, p1

    const/16 v1, 0xa

    if-ne v0, v1, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 p1, p1, 0x1

    goto :goto_0
.end method


# virtual methods
.method public final DW(I)Labcd/dG;
    .registers 3

    iget-object v0, p0, Labcd/dG;->J8:[Labcd/dG;

    aget-object v0, v0, p1

    return-object v0
.end method

.method DW(Labcd/qG;)V
    .registers 3

    iget-object v0, p0, Labcd/dG;->XL:[B

    if-nez v0, :cond_0

    invoke-virtual {p1, p0}, Labcd/qG;->j6(Labcd/iG;)[B

    move-result-object v0

    iput-object v0, p0, Labcd/dG;->XL:[B

    iget v0, p0, Labcd/iG;->EQ:I

    and-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_0

    iget-object v0, p0, Labcd/dG;->XL:[B

    invoke-virtual {p0, p1, v0}, Labcd/dG;->j6(Labcd/qG;[B)V

    :cond_0
    return-void
.end method

.method public FH(Labcd/fG;)V
    .registers 4

    iget v0, p0, Labcd/iG;->EQ:I

    iget v1, p1, Labcd/fG;->Hw:I

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    invoke-static {p0, v0}, Labcd/dG;->j6(Labcd/dG;I)V

    :cond_0
    return-void
.end method

.method public final Mr()Labcd/KE;
    .registers 3

    iget-object v0, p0, Labcd/dG;->XL:[B

    const/4 v1, 0x0

    invoke-static {v0, v1}, Labcd/IK;->j6([BI)I

    move-result v1

    if-gez v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {v0, v1}, Labcd/IK;->u7([BI)Labcd/KE;

    move-result-object v0

    goto :goto_0
.end method

.method public final U2()I
    .registers 2

    iget v0, p0, Labcd/dG;->Ws:I

    return v0
.end method

.method public final a8()Ljava/lang/String;
    .registers 5

    iget-object v0, p0, Labcd/dG;->XL:[B

    const/4 v1, 0x0

    invoke-static {v0, v1}, Labcd/IK;->DW([BI)I

    move-result v1

    if-gez v1, :cond_0

    const-string v0, ""

    :goto_0
    return-object v0

    :cond_0
    invoke-static {v0}, Labcd/IK;->DW([B)Ljava/nio/charset/Charset;

    move-result-object v2

    array-length v3, v0

    invoke-static {v2, v0, v1, v3}, Labcd/IK;->j6(Ljava/nio/charset/Charset;[BII)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public final aM()I
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public final er()Ljava/lang/String;
    .registers 5

    iget-object v1, p0, Labcd/dG;->XL:[B

    const/4 v0, 0x0

    invoke-static {v1, v0}, Labcd/IK;->DW([BI)I

    move-result v2

    if-gez v2, :cond_1

    const-string v0, ""

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    invoke-static {v1}, Labcd/IK;->DW([B)Ljava/nio/charset/Charset;

    move-result-object v0

    invoke-static {v1, v2}, Labcd/IK;->v5([BI)I

    move-result v3

    invoke-static {v0, v1, v2, v3}, Labcd/IK;->j6(Ljava/nio/charset/Charset;[BII)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v2, v3}, Labcd/dG;->j6([BII)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0xa

    const/16 v2, 0x20

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public gW()V
    .registers 2

    const/4 v0, 0x0

    iput v0, p0, Labcd/dG;->QX:I

    return-void
.end method

.method final j3()V
    .registers 2

    const/4 v0, 0x0

    iput-object v0, p0, Labcd/dG;->XL:[B

    return-void
.end method

.method j6(Labcd/qG;)V
    .registers 3

    invoke-virtual {p1, p0}, Labcd/qG;->j6(Labcd/iG;)[B

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Labcd/dG;->j6(Labcd/qG;[B)V

    return-void
.end method

.method j6(Labcd/qG;[B)V
    .registers 12

    const/4 v5, 0x2

    const/4 v8, 0x1

    const/4 v2, 0x0

    iget-object v6, p1, Labcd/qG;->FH:Labcd/uE;

    const/4 v0, 0x5

    invoke-virtual {v6, p2, v0}, Labcd/uE;->v5([BI)V

    invoke-virtual {p1, v6}, Labcd/qG;->v5(Labcd/YD;)Labcd/mG;

    move-result-object v0

    iput-object v0, p0, Labcd/dG;->J0:Labcd/mG;

    iget-object v0, p0, Labcd/dG;->J8:[Labcd/dG;

    const/16 v3, 0x2e

    if-nez v0, :cond_1

    new-array v0, v8, [Labcd/dG;

    move v1, v2

    :goto_0
    aget-byte v4, p2, v3

    const/16 v7, 0x70

    if-eq v4, v7, :cond_4

    array-length v4, v0

    if-eq v1, v4, :cond_0

    new-array v4, v1, [Labcd/dG;

    invoke-static {v0, v2, v4, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v0, v4

    :cond_0
    iput-object v0, p0, Labcd/dG;->J8:[Labcd/dG;

    :cond_1
    invoke-static {p2, v3}, Labcd/IK;->FH([BI)I

    move-result v0

    if-lez v0, :cond_2

    const/16 v1, 0x3e

    invoke-static {p2, v0, v1}, Labcd/IK;->DW([BIC)I

    move-result v0

    const/4 v1, 0x0

    invoke-static {p2, v0, v1}, Labcd/IK;->j6([BILabcd/EK;)I

    move-result v0

    iput v0, p0, Labcd/dG;->Ws:I

    :cond_2
    invoke-virtual {p1}, Labcd/qG;->u7()Z

    move-result v0

    if-eqz v0, :cond_3

    iput-object p2, p0, Labcd/dG;->XL:[B

    :cond_3
    iget v0, p0, Labcd/iG;->EQ:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Labcd/iG;->EQ:I

    return-void

    :cond_4
    add-int/lit8 v4, v3, 0x7

    invoke-virtual {v6, p2, v4}, Labcd/uE;->v5([BI)V

    invoke-virtual {p1, v6}, Labcd/qG;->FH(Labcd/YD;)Labcd/dG;

    move-result-object v7

    if-nez v1, :cond_5

    add-int/lit8 v4, v1, 0x1

    aput-object v7, v0, v1

    move v1, v4

    :goto_1
    add-int/lit8 v3, v3, 0x30

    goto :goto_0

    :cond_5
    if-ne v1, v8, :cond_6

    new-array v4, v5, [Labcd/dG;

    aget-object v0, v0, v2

    aput-object v0, v4, v2

    aput-object v7, v4, v8

    move-object v0, v4

    move v1, v5

    goto :goto_1

    :cond_6
    array-length v4, v0

    if-gt v4, v1, :cond_7

    array-length v4, v0

    add-int/lit8 v4, v4, 0x20

    new-array v4, v4, [Labcd/dG;

    invoke-static {v0, v2, v4, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v0, v4

    :cond_7
    add-int/lit8 v4, v1, 0x1

    aput-object v7, v0, v1

    move v1, v4

    goto :goto_1
.end method

.method public final lg()I
    .registers 2

    iget-object v0, p0, Labcd/dG;->J8:[Labcd/dG;

    array-length v0, v0

    return v0
.end method

.method public final rN()[Labcd/dG;
    .registers 2

    iget-object v0, p0, Labcd/dG;->J8:[Labcd/dG;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    const/16 v2, 0x20

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Labcd/dG;->aM()I

    move-result v1

    invoke-static {v1}, Labcd/hE;->DW(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Labcd/YD;->we()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget v1, p0, Labcd/dG;->Ws:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Labcd/iG;->j6(Ljava/lang/StringBuilder;)V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final yS()Labcd/mG;
    .registers 2

    iget-object v0, p0, Labcd/dG;->J0:Labcd/mG;

    return-object v0
.end method
