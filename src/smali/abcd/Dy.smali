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
    .registers 8

    const-wide/32 v2, 0xffff

    and-long v0, p1, v2

    iput-wide v0, p0, Labcd/Dy;->j6:J

    const/16 v0, 0x10

    shr-long v0, p1, v0

    and-long/2addr v0, v2

    iput-wide v0, p0, Labcd/Dy;->DW:J

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

    const-wide/32 v8, 0xfff1

    const/4 v0, 0x1

    if-ne p3, v0, :cond_0

    iget-wide v0, p0, Labcd/Dy;->j6:J

    aget-byte v2, p1, p2

    and-int/lit16 v2, v2, 0xff

    int-to-long v2, v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Labcd/Dy;->j6:J

    iget-wide v0, p0, Labcd/Dy;->DW:J

    iget-wide v2, p0, Labcd/Dy;->j6:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Labcd/Dy;->DW:J

    rem-long v0, v2, v8

    iput-wide v0, p0, Labcd/Dy;->j6:J

    iget-wide v0, p0, Labcd/Dy;->DW:J

    rem-long/2addr v0, v8

    iput-wide v0, p0, Labcd/Dy;->DW:J

    :goto_0
    return-void

    :cond_0
    div-int/lit16 v0, p3, 0x15b0

    rem-int/lit16 v2, p3, 0x15b0

    move v3, v0

    move v1, p2

    :goto_1
    if-gtz v3, :cond_2

    move v0, v2

    :goto_2
    if-gtz v0, :cond_1

    iget-wide v0, p0, Labcd/Dy;->j6:J

    rem-long/2addr v0, v8

    iput-wide v0, p0, Labcd/Dy;->j6:J

    iget-wide v0, p0, Labcd/Dy;->DW:J

    rem-long/2addr v0, v8

    iput-wide v0, p0, Labcd/Dy;->DW:J

    goto :goto_0

    :cond_1
    iget-wide v2, p0, Labcd/Dy;->j6:J

    aget-byte v4, p1, v1

    and-int/lit16 v4, v4, 0xff

    int-to-long v4, v4

    add-long/2addr v2, v4

    iput-wide v2, p0, Labcd/Dy;->j6:J

    iget-wide v2, p0, Labcd/Dy;->DW:J

    iget-wide v4, p0, Labcd/Dy;->j6:J

    add-long/2addr v2, v4

    iput-wide v2, p0, Labcd/Dy;->DW:J

    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v0, v0, -0x1

    goto :goto_2

    :cond_2
    const/16 v0, 0x15b0

    :goto_3
    if-gtz v0, :cond_3

    iget-wide v4, p0, Labcd/Dy;->j6:J

    rem-long/2addr v4, v8

    iput-wide v4, p0, Labcd/Dy;->j6:J

    iget-wide v4, p0, Labcd/Dy;->DW:J

    rem-long/2addr v4, v8

    iput-wide v4, p0, Labcd/Dy;->DW:J

    add-int/lit8 v0, v3, -0x1

    move v3, v0

    goto :goto_1

    :cond_3
    iget-wide v4, p0, Labcd/Dy;->j6:J

    aget-byte v6, p1, v1

    and-int/lit16 v6, v6, 0xff

    int-to-long v6, v6

    add-long/2addr v4, v6

    iput-wide v4, p0, Labcd/Dy;->j6:J

    iget-wide v4, p0, Labcd/Dy;->DW:J

    iget-wide v6, p0, Labcd/Dy;->j6:J

    add-long/2addr v4, v6

    iput-wide v4, p0, Labcd/Dy;->DW:J

    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v0, v0, -0x1

    goto :goto_3
.end method
