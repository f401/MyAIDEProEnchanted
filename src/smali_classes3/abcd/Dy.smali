.class public final Labcd/Dy;
.super Ljava/lang/Object;

# interfaces
.implements Labcd/Fy;


# instance fields
.field private DW:J

.field private j6:J


# direct methods
.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x1

    iput-wide v0, p0, Labcd/Dy;->j6:J

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Labcd/Dy;->DW:J

    return-void
.end method


# virtual methods
.method public getValue()J
    .registers 5

    iget-wide v0, p0, Labcd/Dy;->DW:J

    const/16 v2, 0x10

    shl-long/2addr v0, v2

    iget-wide v2, p0, Labcd/Dy;->j6:J

    or-long/2addr v0, v2

    return-wide v0
.end method

.method public j6(J)V
    .registers 7

    const-wide/32 v0, 0xffff

    and-long v2, p1, v0

    iput-wide v2, p0, Labcd/Dy;->j6:J

    const/16 v2, 0x10

    shr-long/2addr p1, v2

    and-long/2addr p1, v0

    iput-wide p1, p0, Labcd/Dy;->DW:J

    return-void
.end method

.method public reset()V
    .registers 3

    const-wide/16 v0, 0x1

    iput-wide v0, p0, Labcd/Dy;->j6:J

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Labcd/Dy;->DW:J

    return-void
.end method

.method public update([BII)V
    .registers 14

    const-wide/32 v0, 0xfff1

    const/4 v2, 0x1

    if-ne p3, v2, :cond_1c

    iget-wide v2, p0, Labcd/Dy;->j6:J

    aget-byte p1, p1, p2

    and-int/lit16 p1, p1, 0xff

    int-to-long p1, p1

    add-long/2addr v2, p1

    iput-wide v2, p0, Labcd/Dy;->j6:J

    iget-wide p1, p0, Labcd/Dy;->DW:J

    add-long/2addr p1, v2

    iput-wide p1, p0, Labcd/Dy;->DW:J

    rem-long/2addr v2, v0

    iput-wide v2, p0, Labcd/Dy;->j6:J

    :goto_18
    rem-long/2addr p1, v0

    iput-wide p1, p0, Labcd/Dy;->DW:J

    return-void

    :cond_1c
    div-int/lit16 v3, p3, 0x15b0

    const/16 v4, 0x15b0

    rem-int/2addr p3, v4

    :goto_21
    if-gtz v3, :cond_40

    :goto_23
    if-gtz p3, :cond_2d

    iget-wide p1, p0, Labcd/Dy;->j6:J

    rem-long/2addr p1, v0

    iput-wide p1, p0, Labcd/Dy;->j6:J

    iget-wide p1, p0, Labcd/Dy;->DW:J

    goto :goto_18

    :cond_2d
    iget-wide v3, p0, Labcd/Dy;->j6:J

    aget-byte v5, p1, p2

    and-int/lit16 v5, v5, 0xff

    int-to-long v5, v5

    add-long/2addr v3, v5

    iput-wide v3, p0, Labcd/Dy;->j6:J

    iget-wide v5, p0, Labcd/Dy;->DW:J

    add-long/2addr v5, v3

    iput-wide v5, p0, Labcd/Dy;->DW:J

    add-int/2addr p2, v2

    add-int/lit8 p3, p3, -0x1

    goto :goto_23

    :cond_40
    const/16 v5, 0x15b0

    :goto_42
    if-gtz v5, :cond_51

    iget-wide v5, p0, Labcd/Dy;->j6:J

    rem-long/2addr v5, v0

    iput-wide v5, p0, Labcd/Dy;->j6:J

    iget-wide v5, p0, Labcd/Dy;->DW:J

    rem-long/2addr v5, v0

    iput-wide v5, p0, Labcd/Dy;->DW:J

    add-int/lit8 v3, v3, -0x1

    goto :goto_21

    :cond_51
    iget-wide v6, p0, Labcd/Dy;->j6:J

    aget-byte v8, p1, p2

    and-int/lit16 v8, v8, 0xff

    int-to-long v8, v8

    add-long/2addr v6, v8

    iput-wide v6, p0, Labcd/Dy;->j6:J

    iget-wide v8, p0, Labcd/Dy;->DW:J

    add-long/2addr v8, v6

    iput-wide v8, p0, Labcd/Dy;->DW:J

    add-int/lit8 p2, p2, 0x1

    add-int/lit8 v5, v5, -0x1

    goto :goto_42
.end method
