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

    const/16 v4, 0x100

    new-array v0, v4, [I

    sput-object v0, Labcd/Ey;->j6:[I

    const/4 v2, 0x0

    :goto_0
    if-lt v2, v4, :cond_0

    return-void

    :cond_0
    const/16 v0, 0x8

    move v1, v2

    :goto_1
    add-int/lit8 v0, v0, -0x1

    if-gez v0, :cond_1

    sget-object v0, Labcd/Ey;->j6:[I

    aput v1, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    and-int/lit8 v3, v1, 0x1

    if-eqz v3, :cond_2

    ushr-int/lit8 v1, v1, 0x1

    const v3, -0x12477ce0

    xor-int/2addr v1, v3

    goto :goto_1

    :cond_2
    ushr-int/lit8 v1, v1, 0x1

    goto :goto_1
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
    .registers 6

    const-wide v0, 0xffffffffL

    and-long/2addr v0, p1

    long-to-int v0, v0

    iput v0, p0, Labcd/Ey;->DW:I

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

    :goto_0
    add-int/lit8 p3, p3, -0x1

    if-gez p3, :cond_0

    xor-int/lit8 v0, v0, -0x1

    iput v0, p0, Labcd/Ey;->DW:I

    return-void

    :cond_0
    ushr-int/lit8 v1, v0, 0x8

    sget-object v2, Labcd/Ey;->j6:[I

    aget-byte v3, p1, p2

    xor-int/2addr v0, v3

    and-int/lit16 v0, v0, 0xff

    aget v0, v2, v0

    xor-int/2addr v0, v1

    add-int/lit8 p2, p2, 0x1

    goto :goto_0
.end method
