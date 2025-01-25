.class public final Labcd/Ey;
.super Ljava/lang/Object;

# interfaces
.implements Labcd/Fy;


# static fields
.field private static j6:[I


# instance fields
.field private DW:I


# direct methods
.method static constructor <clinit>()V
    .registers 5

    const/16 v0, 0x100

    new-array v1, v0, [I

    sput-object v1, Labcd/Ey;->j6:[I

    const/4 v1, 0x0

    :goto_7
    if-lt v1, v0, :cond_a

    return-void

    :cond_a
    const/16 v2, 0x8

    move v3, v1

    :cond_d
    :goto_d
    add-int/lit8 v2, v2, -0x1

    if-gez v2, :cond_18

    sget-object v2, Labcd/Ey;->j6:[I

    aput v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_18
    and-int/lit8 v4, v3, 0x1

    ushr-int/lit8 v3, v3, 0x1

    if-eqz v4, :cond_d

    const v4, -0x12477ce0

    xor-int/2addr v3, v4

    goto :goto_d
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Labcd/Ey;->DW:I

    return-void
.end method


# virtual methods
.method public getValue()J
    .registers 5

    iget v0, p0, Labcd/Ey;->DW:I

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    return-wide v0
.end method

.method public j6(J)V
    .registers 5

    const-wide v0, 0xffffffffL

    and-long/2addr p1, v0

    long-to-int p2, p1

    iput p2, p0, Labcd/Ey;->DW:I

    return-void
.end method

.method public reset()V
    .registers 2

    const/4 v0, 0x0

    iput v0, p0, Labcd/Ey;->DW:I

    return-void
.end method

.method public update([BII)V
    .registers 8

    iget v0, p0, Labcd/Ey;->DW:I

    xor-int/lit8 v0, v0, -0x1

    :goto_4
    add-int/lit8 p3, p3, -0x1

    if-gez p3, :cond_d

    xor-int/lit8 p1, v0, -0x1

    iput p1, p0, Labcd/Ey;->DW:I

    return-void

    :cond_d
    ushr-int/lit8 v1, v0, 0x8

    sget-object v2, Labcd/Ey;->j6:[I

    aget-byte v3, p1, p2

    xor-int/2addr v0, v3

    and-int/lit16 v0, v0, 0xff

    aget v0, v2, v0

    xor-int/2addr v0, v1

    add-int/lit8 p2, p2, 0x1

    goto :goto_4
.end method
