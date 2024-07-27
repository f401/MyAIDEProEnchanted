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

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v1, p0, Labcd/Hy;->j6:Z

    iput-boolean v1, p0, Labcd/Hy;->DW:Z

    const/16 v0, 0xff

    iput v0, p0, Labcd/Hy;->v5:I

    iput-boolean v1, p0, Labcd/Hy;->EQ:Z

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Labcd/Hy;->we:J

    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .registers 6

    const/4 v4, 0x0

    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Labcd/Hy;

    iget-object v1, v0, Labcd/Hy;->Zo:[B

    if-eqz v1, :cond_0

    array-length v2, v1

    new-array v2, v2, [B

    array-length v3, v2

    invoke-static {v1, v4, v2, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v2, v0, Labcd/Hy;->Zo:[B

    :cond_0
    iget-object v1, v0, Labcd/Hy;->VH:[B

    if-eqz v1, :cond_1

    array-length v2, v1

    new-array v2, v2, [B

    array-length v3, v2

    invoke-static {v1, v4, v2, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v2, v0, Labcd/Hy;->VH:[B

    :cond_1
    iget-object v1, v0, Labcd/Hy;->gn:[B

    if-eqz v1, :cond_2

    array-length v2, v1

    new-array v2, v2, [B

    array-length v3, v2

    invoke-static {v1, v4, v2, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v2, v0, Labcd/Hy;->gn:[B

    :cond_2
    return-object v0
.end method

.method public j6(J)V
    .registers 4

    iput-wide p1, p0, Labcd/Hy;->tp:J

    return-void
.end method

.method j6(Labcd/Gy;)V
    .registers 9

    const/16 v6, 0x8

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-boolean v0, p0, Labcd/Hy;->j6:Z

    if-eqz v0, :cond_7

    move v0, v1

    :goto_0
    iget-boolean v3, p0, Labcd/Hy;->DW:Z

    if-eqz v3, :cond_0

    or-int/lit8 v0, v0, 0x2

    :cond_0
    iget-object v3, p0, Labcd/Hy;->Zo:[B

    if-eqz v3, :cond_1

    or-int/lit8 v0, v0, 0x4

    :cond_1
    iget-object v3, p0, Labcd/Hy;->VH:[B

    if-eqz v3, :cond_2

    or-int/lit8 v0, v0, 0x8

    :cond_2
    iget-object v3, p0, Labcd/Hy;->gn:[B

    if-eqz v3, :cond_3

    or-int/lit8 v0, v0, 0x10

    :cond_3
    iget v3, p1, Labcd/Gy;->ro:I

    if-ne v3, v1, :cond_8

    const/4 v1, 0x4

    :goto_1
    const/16 v3, -0x74e1

    invoke-virtual {p1, v3}, Labcd/Gy;->VH(I)V

    invoke-virtual {p1, v6}, Labcd/Gy;->j6(B)V

    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Labcd/Gy;->j6(B)V

    iget-wide v4, p0, Labcd/Hy;->we:J

    long-to-int v0, v4

    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Labcd/Gy;->j6(B)V

    iget-wide v4, p0, Labcd/Hy;->we:J

    shr-long/2addr v4, v6

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

    if-eqz v0, :cond_4

    array-length v0, v0

    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Labcd/Gy;->j6(B)V

    iget-object v0, p0, Labcd/Hy;->Zo:[B

    array-length v0, v0

    shr-int/lit8 v0, v0, 0x8

    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Labcd/Gy;->j6(B)V

    iget-object v0, p0, Labcd/Hy;->Zo:[B

    array-length v1, v0

    invoke-virtual {p1, v0, v2, v1}, Labcd/Gy;->j6([BII)V

    :cond_4
    iget-object v0, p0, Labcd/Hy;->VH:[B

    if-eqz v0, :cond_5

    array-length v1, v0

    invoke-virtual {p1, v0, v2, v1}, Labcd/Gy;->j6([BII)V

    invoke-virtual {p1, v2}, Labcd/Gy;->j6(B)V

    :cond_5
    iget-object v0, p0, Labcd/Hy;->gn:[B

    if-eqz v0, :cond_6

    array-length v1, v0

    invoke-virtual {p1, v0, v2, v1}, Labcd/Gy;->j6([BII)V

    invoke-virtual {p1, v2}, Labcd/Gy;->j6(B)V

    :cond_6
    return-void

    :cond_7
    move v0, v2

    goto/16 :goto_0

    :cond_8
    const/16 v1, 0x9

    if-ne v3, v1, :cond_9

    const/4 v1, 0x2

    goto :goto_1

    :cond_9
    move v1, v2

    goto :goto_1
.end method
