.class public abstract Labcd/xO;
.super Ljava/lang/Object;

# interfaces
.implements Labcd/tO;


# instance fields
.field private DW:I

.field private FH:J

.field private j6:[B


# direct methods
.method protected constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x4

    new-array v0, v0, [B

    iput-object v0, p0, Labcd/xO;->j6:[B

    const/4 v0, 0x0

    iput v0, p0, Labcd/xO;->DW:I

    return-void
.end method

.method protected constructor <init>(Labcd/xO;)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p1, Labcd/xO;->j6:[B

    array-length v0, v0

    new-array v0, v0, [B

    iput-object v0, p0, Labcd/xO;->j6:[B

    iget-object v1, p1, Labcd/xO;->j6:[B

    const/4 v2, 0x0

    array-length v3, v1

    invoke-static {v1, v2, v0, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v0, p1, Labcd/xO;->DW:I

    iput v0, p0, Labcd/xO;->DW:I

    iget-wide v0, p1, Labcd/xO;->FH:J

    iput-wide v0, p0, Labcd/xO;->FH:J

    return-void
.end method


# virtual methods
.method protected abstract DW([BI)V
.end method

.method public FH()V
    .registers 4

    iget-wide v0, p0, Labcd/xO;->FH:J

    const/16 v2, -0x80

    :goto_4
    invoke-virtual {p0, v2}, Labcd/xO;->j6(B)V

    iget v2, p0, Labcd/xO;->DW:I

    if-nez v2, :cond_14

    const/4 v2, 0x3

    shl-long/2addr v0, v2

    invoke-virtual {p0, v0, v1}, Labcd/xO;->j6(J)V

    invoke-virtual {p0}, Labcd/xO;->Hw()V

    return-void

    :cond_14
    const/4 v2, 0x0

    goto :goto_4
.end method

.method protected abstract Hw()V
.end method

.method public j6(B)V
    .registers 6

    iget-object v0, p0, Labcd/xO;->j6:[B

    iget v1, p0, Labcd/xO;->DW:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Labcd/xO;->DW:I

    aput-byte p1, v0, v1

    array-length p1, v0

    if-ne v2, p1, :cond_13

    const/4 p1, 0x0

    invoke-virtual {p0, v0, p1}, Labcd/xO;->DW([BI)V

    iput p1, p0, Labcd/xO;->DW:I

    :cond_13
    iget-wide v0, p0, Labcd/xO;->FH:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Labcd/xO;->FH:J

    return-void
.end method

.method protected abstract j6(J)V
.end method

.method public reset()V
    .registers 5

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Labcd/xO;->FH:J

    const/4 v0, 0x0

    iput v0, p0, Labcd/xO;->DW:I

    const/4 v1, 0x0

    :goto_8
    iget-object v2, p0, Labcd/xO;->j6:[B

    array-length v3, v2

    if-lt v1, v3, :cond_e

    return-void

    :cond_e
    aput-byte v0, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_8
.end method

.method public update([BII)V
    .registers 9

    :goto_0
    iget v0, p0, Labcd/xO;->DW:I

    if-eqz v0, :cond_11

    if-gtz p3, :cond_7

    goto :goto_11

    :cond_7
    aget-byte v0, p1, p2

    invoke-virtual {p0, v0}, Labcd/xO;->j6(B)V

    add-int/lit8 p2, p2, 0x1

    add-int/lit8 p3, p3, -0x1

    goto :goto_0

    :cond_11
    :goto_11
    iget-object v0, p0, Labcd/xO;->j6:[B

    array-length v0, v0

    if-gt p3, v0, :cond_23

    :goto_16
    if-gtz p3, :cond_19

    return-void

    :cond_19
    aget-byte v0, p1, p2

    invoke-virtual {p0, v0}, Labcd/xO;->j6(B)V

    add-int/lit8 p2, p2, 0x1

    add-int/lit8 p3, p3, -0x1

    goto :goto_16

    :cond_23
    invoke-virtual {p0, p1, p2}, Labcd/xO;->DW([BI)V

    iget-object v0, p0, Labcd/xO;->j6:[B

    array-length v1, v0

    add-int/2addr p2, v1

    array-length v1, v0

    sub-int/2addr p3, v1

    iget-wide v1, p0, Labcd/xO;->FH:J

    array-length v0, v0

    int-to-long v3, v0

    add-long/2addr v1, v3

    iput-wide v1, p0, Labcd/xO;->FH:J

    goto :goto_11
.end method
