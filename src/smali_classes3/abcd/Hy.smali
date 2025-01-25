.class public Labcd/Hy;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Cloneable;


# instance fields
.field private DW:Z

.field EQ:Z

.field FH:J

.field Hw:I

.field VH:[B

.field Zo:[B

.field gn:[B

.field j6:Z

.field tp:J

.field u7:I

.field v5:I

.field we:J


# direct methods
.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Labcd/Hy;->j6:Z

    iput-boolean v0, p0, Labcd/Hy;->DW:Z

    const/16 v1, 0xff

    iput v1, p0, Labcd/Hy;->v5:I

    iput-boolean v0, p0, Labcd/Hy;->EQ:Z

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Labcd/Hy;->we:J

    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .registers 6

    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Labcd/Hy;

    iget-object v1, v0, Labcd/Hy;->Zo:[B

    const/4 v2, 0x0

    if-eqz v1, :cond_13

    array-length v3, v1

    new-array v4, v3, [B

    invoke-static {v1, v2, v4, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v4, v0, Labcd/Hy;->Zo:[B

    :cond_13
    iget-object v1, v0, Labcd/Hy;->VH:[B

    if-eqz v1, :cond_1f

    array-length v3, v1

    new-array v4, v3, [B

    invoke-static {v1, v2, v4, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v4, v0, Labcd/Hy;->VH:[B

    :cond_1f
    iget-object v1, v0, Labcd/Hy;->gn:[B

    if-eqz v1, :cond_2b

    array-length v3, v1

    new-array v4, v3, [B

    invoke-static {v1, v2, v4, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v4, v0, Labcd/Hy;->gn:[B

    :cond_2b
    return-object v0
.end method

.method public j6(J)V
    .registers 3

    iput-wide p1, p0, Labcd/Hy;->tp:J

    return-void
.end method

.method j6(Labcd/Gy;)V
    .registers 8

    iget-boolean v0, p0, Labcd/Hy;->j6:Z

    iget-boolean v1, p0, Labcd/Hy;->DW:Z

    if-eqz v1, :cond_8

    or-int/lit8 v0, v0, 0x2

    :cond_8
    iget-object v1, p0, Labcd/Hy;->Zo:[B

    if-eqz v1, :cond_e

    or-int/lit8 v0, v0, 0x4

    :cond_e
    iget-object v1, p0, Labcd/Hy;->VH:[B

    if-eqz v1, :cond_14

    or-int/lit8 v0, v0, 0x8

    :cond_14
    iget-object v1, p0, Labcd/Hy;->gn:[B

    if-eqz v1, :cond_1a

    or-int/lit8 v0, v0, 0x10

    :cond_1a
    iget v1, p1, Labcd/Gy;->ro:I

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v1, v2, :cond_22

    const/4 v1, 0x4

    goto :goto_29

    :cond_22
    const/16 v2, 0x9

    if-ne v1, v2, :cond_28

    const/4 v1, 0x2

    goto :goto_29

    :cond_28
    const/4 v1, 0x0

    :goto_29
    const/16 v2, -0x74e1

    invoke-virtual {p1, v2}, Labcd/Gy;->VH(I)V

    const/16 v2, 0x8

    invoke-virtual {p1, v2}, Labcd/Gy;->j6(B)V

    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Labcd/Gy;->j6(B)V

    iget-wide v4, p0, Labcd/Hy;->we:J

    long-to-int v0, v4

    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Labcd/Gy;->j6(B)V

    iget-wide v4, p0, Labcd/Hy;->we:J

    shr-long/2addr v4, v2

    long-to-int v0, v4

    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Labcd/Gy;->j6(B)V

    iget-wide v4, p0, Labcd/Hy;->we:J

    const/16 v0, 0x10

    shr-long/2addr v4, v0

    long-to-int v0, v4

    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Labcd/Gy;->j6(B)V

    iget-wide v4, p0, Labcd/Hy;->we:J

    const/16 v0, 0x18

    shr-long/2addr v4, v0

    long-to-int v0, v4

    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Labcd/Gy;->j6(B)V

    int-to-byte v0, v1

    invoke-virtual {p1, v0}, Labcd/Gy;->j6(B)V

    iget v0, p0, Labcd/Hy;->v5:I

    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Labcd/Gy;->j6(B)V

    iget-object v0, p0, Labcd/Hy;->Zo:[B

    if-eqz v0, :cond_7b

    array-length v0, v0

    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Labcd/Gy;->j6(B)V

    iget-object v0, p0, Labcd/Hy;->Zo:[B

    array-length v0, v0

    shr-int/2addr v0, v2

    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Labcd/Gy;->j6(B)V

    iget-object v0, p0, Labcd/Hy;->Zo:[B

    array-length v1, v0

    invoke-virtual {p1, v0, v3, v1}, Labcd/Gy;->j6([BII)V

    :cond_7b
    iget-object v0, p0, Labcd/Hy;->VH:[B

    if-eqz v0, :cond_86

    array-length v1, v0

    invoke-virtual {p1, v0, v3, v1}, Labcd/Gy;->j6([BII)V

    invoke-virtual {p1, v3}, Labcd/Gy;->j6(B)V

    :cond_86
    iget-object v0, p0, Labcd/Hy;->gn:[B

    if-eqz v0, :cond_91

    array-length v1, v0

    invoke-virtual {p1, v0, v3, v1}, Labcd/Gy;->j6([BII)V

    invoke-virtual {p1, v3}, Labcd/Gy;->j6(B)V

    :cond_91
    return-void
.end method
