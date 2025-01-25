.class public Labcd/HK;
.super Ljava/lang/Object;


# static fields
.field private static final j6:[Z


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const/16 v0, 0x100

    new-array v0, v0, [Z

    sput-object v0, Labcd/HK;->j6:[Z

    const/16 v1, 0xd

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    const/16 v1, 0xa

    aput-boolean v2, v0, v1

    const/16 v1, 0x9

    aput-boolean v2, v0, v1

    const/16 v1, 0x20

    aput-boolean v2, v0, v1

    return-void
.end method

.method public static DW([BII)I
    .registers 4

    :cond_0
    add-int/lit8 p2, p2, -0x1

    if-gt p1, p2, :cond_c

    aget-byte v0, p0, p2

    invoke-static {v0}, Labcd/HK;->j6(B)Z

    move-result v0

    if-nez v0, :cond_0

    :cond_c
    add-int/lit8 p2, p2, 0x1

    return p2
.end method

.method public static j6([BII)I
    .registers 4

    :goto_0
    if-ge p1, p2, :cond_e

    aget-byte v0, p0, p1

    invoke-static {v0}, Labcd/HK;->j6(B)Z

    move-result v0

    if-nez v0, :cond_b

    goto :goto_e

    :cond_b
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_e
    :goto_e
    return p1
.end method

.method public static j6(B)Z
    .registers 2

    sget-object v0, Labcd/HK;->j6:[Z

    and-int/lit16 p0, p0, 0xff

    aget-boolean p0, v0, p0

    return p0
.end method
