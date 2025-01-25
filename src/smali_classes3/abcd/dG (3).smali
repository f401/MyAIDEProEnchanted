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
    .registers 7

    :goto_0
    iget-object p0, p0, Labcd/dG;->J8:[Labcd/dG;

    if-nez p0, :cond_5

    return-void

    :cond_5
    array-length v0, p0

    if-nez v0, :cond_9

    return-void

    :cond_9
    const/4 v1, 0x1

    :goto_a
    if-lt v1, v0, :cond_1a

    const/4 v0, 0x0

    aget-object p0, p0, v0

    iget v0, p0, Labcd/iG;->EQ:I

    and-int v1, v0, p1

    if-ne v1, p1, :cond_16

    return-void

    :cond_16
    or-int/2addr v0, p1

    iput v0, p0, Labcd/iG;->EQ:I

    goto :goto_0

    :cond_1a
    aget-object v2, p0, v1

    iget v3, v2, Labcd/iG;->EQ:I

    and-int v4, v3, p1

    if-ne v4, p1, :cond_23

    goto :goto_29

    :cond_23
    or-int/2addr v3, p1

    iput v3, v2, Labcd/iG;->EQ:I

    invoke-static {v2, p1}, Labcd/dG;->j6(Labcd/dG;I)V

    :goto_29
    add-int/lit8 v1, v1, 0x1

    goto :goto_a
.end method

.method static j6([BII)Z
    .registers 5

    :goto_0
    if-lt p1, p2, :cond_4

    const/4 p0, 0x0

    return p0

    :cond_4
    aget-byte v0, p0, p1

    const/16 v1, 0xa

    if-ne v0, v1, :cond_c

    const/4 p0, 0x1

    return p0

    :cond_c
    add-int/lit8 p1, p1, 0x1

    goto :goto_0
.end method


# virtual methods
.method public final DW(I)Labcd/dG;
    .registers 3

    iget-object v0, p0, Labcd/dG;->J8:[Labcd/dG;

    aget-object p1, v0, p1

    return-object p1
.end method

.method DW(Labcd/qG;)V
    .registers 3

    iget-object v0, p0, Labcd/dG;->XL:[B

    if-nez v0, :cond_15

    invoke-virtual {p1, p0}, Labcd/qG;->j6(Labcd/iG;)[B

    move-result-object v0

    iput-object v0, p0, Labcd/dG;->XL:[B

    iget v0, p0, Labcd/iG;->EQ:I

    and-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_15

    iget-object v0, p0, Labcd/dG;->XL:[B

    invoke-virtual {p0, p1, v0}, Labcd/dG;->j6(Labcd/qG;[B)V

    :cond_15
    return-void
.end method

.method public FH(Labcd/fG;)V
    .registers 3

    iget v0, p0, Labcd/iG;->EQ:I

    iget p1, p1, Labcd/fG;->Hw:I

    and-int/2addr p1, v0

    if-eqz p1, :cond_a

    invoke-static {p0, p1}, Labcd/dG;->j6(Labcd/dG;I)V

    :cond_a
    return-void
.end method

.method public final Mr()Labcd/KE;
    .registers 3

    iget-object v0, p0, Labcd/dG;->XL:[B

    const/4 v1, 0x0

    invoke-static {v0, v1}, Labcd/IK;->j6([BI)I

    move-result v1

    if-gez v1, :cond_b

    const/4 v0, 0x0

    return-object v0

    :cond_b
    invoke-static {v0, v1}, Labcd/IK;->u7([BI)Labcd/KE;

    move-result-object v0

    return-object v0
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

    if-gez v1, :cond_c

    const-string v0, ""

    return-object v0

    :cond_c
    invoke-static {v0}, Labcd/IK;->DW([B)Ljava/nio/charset/Charset;

    move-result-object v2

    array-length v3, v0

    invoke-static {v2, v0, v1, v3}, Labcd/IK;->j6(Ljava/nio/charset/Charset;[BII)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final aM()I
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public final er()Ljava/lang/String;
    .registers 5

    iget-object v0, p0, Labcd/dG;->XL:[B

    const/4 v1, 0x0

    invoke-static {v0, v1}, Labcd/IK;->DW([BI)I

    move-result v1

    if-gez v1, :cond_c

    const-string v0, ""

    return-object v0

    :cond_c
    invoke-static {v0}, Labcd/IK;->DW([B)Ljava/nio/charset/Charset;

    move-result-object v2

    invoke-static {v0, v1}, Labcd/IK;->v5([BI)I

    move-result v3

    invoke-static {v2, v0, v1, v3}, Labcd/IK;->j6(Ljava/nio/charset/Charset;[BII)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v3}, Labcd/dG;->j6([BII)Z

    move-result v0

    if-eqz v0, :cond_26

    const/16 v0, 0xa

    const/16 v1, 0x20

    invoke-virtual {v2, v0, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v2

    :cond_26
    return-object v2
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
    .registers 11

    iget-object v0, p1, Labcd/qG;->FH:Labcd/uE;

    const/4 v1, 0x5

    invoke-virtual {v0, p2, v1}, Labcd/uE;->v5([BI)V

    invoke-virtual {p1, v0}, Labcd/qG;->v5(Labcd/YD;)Labcd/mG;

    move-result-object v1

    iput-object v1, p0, Labcd/dG;->J0:Labcd/mG;

    iget-object v1, p0, Labcd/dG;->J8:[Labcd/dG;

    const/4 v2, 0x1

    const/16 v3, 0x2e

    if-nez v1, :cond_5a

    new-array v1, v2, [Labcd/dG;

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_17
    aget-byte v6, p2, v3

    const/16 v7, 0x70

    if-eq v6, v7, :cond_29

    array-length v0, v1

    if-eq v5, v0, :cond_26

    new-array v0, v5, [Labcd/dG;

    invoke-static {v1, v4, v0, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v1, v0

    :cond_26
    iput-object v1, p0, Labcd/dG;->J8:[Labcd/dG;

    goto :goto_5a

    :cond_29
    add-int/lit8 v6, v3, 0x7

    invoke-virtual {v0, p2, v6}, Labcd/uE;->v5([BI)V

    invoke-virtual {p1, v0}, Labcd/qG;->FH(Labcd/YD;)Labcd/dG;

    move-result-object v6

    if-nez v5, :cond_39

    add-int/lit8 v7, v5, 0x1

    aput-object v6, v1, v5

    goto :goto_56

    :cond_39
    if-ne v5, v2, :cond_46

    const/4 v5, 0x2

    new-array v7, v5, [Labcd/dG;

    aget-object v1, v1, v4

    aput-object v1, v7, v4

    aput-object v6, v7, v2

    move-object v1, v7

    goto :goto_57

    :cond_46
    array-length v7, v1

    if-gt v7, v5, :cond_52

    array-length v7, v1

    add-int/lit8 v7, v7, 0x20

    new-array v7, v7, [Labcd/dG;

    invoke-static {v1, v4, v7, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v1, v7

    :cond_52
    add-int/lit8 v7, v5, 0x1

    aput-object v6, v1, v5

    :goto_56
    move v5, v7

    :goto_57
    add-int/lit8 v3, v3, 0x30

    goto :goto_17

    :cond_5a
    :goto_5a
    invoke-static {p2, v3}, Labcd/IK;->FH([BI)I

    move-result v0

    if-lez v0, :cond_6d

    const/16 v1, 0x3e

    invoke-static {p2, v0, v1}, Labcd/IK;->DW([BIC)I

    move-result v0

    const/4 v1, 0x0

    invoke-static {p2, v0, v1}, Labcd/IK;->j6([BILabcd/EK;)I

    move-result v0

    iput v0, p0, Labcd/dG;->Ws:I

    :cond_6d
    invoke-virtual {p1}, Labcd/qG;->u7()Z

    move-result p1

    if-eqz p1, :cond_75

    iput-object p2, p0, Labcd/dG;->XL:[B

    :cond_75
    iget p1, p0, Labcd/iG;->EQ:I

    or-int/2addr p1, v2

    iput p1, p0, Labcd/iG;->EQ:I

    return-void
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

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Labcd/dG;->aM()I

    move-result v1

    invoke-static {v1}, Labcd/hE;->DW(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Labcd/YD;->we()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget v2, p0, Labcd/dG;->Ws:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

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
