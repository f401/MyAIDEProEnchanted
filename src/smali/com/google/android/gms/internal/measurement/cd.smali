.class final Lcom/google/android/gms/internal/measurement/cd;
.super Ljava/lang/Object;


# direct methods
.method private static DW(BBBB[CI)V
    .registers 9

    invoke-static {p1}, Lcom/google/android/gms/internal/measurement/cd;->VH(B)Z

    move-result v0

    if-nez v0, :cond_0

    shl-int/lit8 v0, p0, 0x1c

    add-int/lit8 v1, p1, 0x70

    add-int/2addr v0, v1

    shr-int/lit8 v0, v0, 0x1e

    if-nez v0, :cond_0

    invoke-static {p2}, Lcom/google/android/gms/internal/measurement/cd;->VH(B)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p3}, Lcom/google/android/gms/internal/measurement/cd;->VH(B)Z

    move-result v0

    if-nez v0, :cond_0

    and-int/lit8 v0, p0, 0x7

    shl-int/lit8 v0, v0, 0x12

    and-int/lit8 v1, p1, 0x3f

    shl-int/lit8 v1, v1, 0xc

    or-int/2addr v0, v1

    and-int/lit8 v1, p2, 0x3f

    shl-int/lit8 v1, v1, 0x6

    or-int/2addr v0, v1

    and-int/lit8 v1, p3, 0x3f

    or-int/2addr v0, v1

    ushr-int/lit8 v1, v0, 0xa

    const v2, 0xd7c0

    add-int/2addr v1, v2

    int-to-char v1, v1

    aput-char v1, p4, p5

    add-int/lit8 v1, p5, 0x1

    and-int/lit16 v0, v0, 0x3ff

    const v2, 0xdc00

    add-int/2addr v0, v2

    int-to-char v0, v0

    aput-char v0, p4, v1

    return-void

    :cond_0
    invoke-static {}, Lcom/google/android/gms/internal/measurement/Mb;->gn()Lcom/google/android/gms/internal/measurement/Mb;

    move-result-object v0

    throw v0
.end method

.method private static DW(BBB[CI)V
    .registers 7

    const/16 v1, -0x60

    invoke-static {p1}, Lcom/google/android/gms/internal/measurement/cd;->VH(B)Z

    move-result v0

    if-nez v0, :cond_2

    const/16 v0, -0x20

    if-ne p0, v0, :cond_0

    if-lt p1, v1, :cond_2

    :cond_0
    const/16 v0, -0x13

    if-ne p0, v0, :cond_1

    if-ge p1, v1, :cond_2

    :cond_1
    invoke-static {p2}, Lcom/google/android/gms/internal/measurement/cd;->VH(B)Z

    move-result v0

    if-nez v0, :cond_2

    and-int/lit8 v0, p0, 0xf

    shl-int/lit8 v0, v0, 0xc

    and-int/lit8 v1, p1, 0x3f

    shl-int/lit8 v1, v1, 0x6

    or-int/2addr v0, v1

    and-int/lit8 v1, p2, 0x3f

    or-int/2addr v0, v1

    int-to-char v0, v0

    aput-char v0, p3, p4

    return-void

    :cond_2
    invoke-static {}, Lcom/google/android/gms/internal/measurement/Mb;->gn()Lcom/google/android/gms/internal/measurement/Mb;

    move-result-object v0

    throw v0
.end method

.method private static DW(BB[CI)V
    .registers 6

    const/16 v0, -0x3e

    if-lt p0, v0, :cond_0

    invoke-static {p1}, Lcom/google/android/gms/internal/measurement/cd;->VH(B)Z

    move-result v0

    if-nez v0, :cond_0

    and-int/lit8 v0, p0, 0x1f

    shl-int/lit8 v0, v0, 0x6

    and-int/lit8 v1, p1, 0x3f

    or-int/2addr v0, v1

    int-to-char v0, v0

    aput-char v0, p2, p3

    return-void

    :cond_0
    invoke-static {}, Lcom/google/android/gms/internal/measurement/Mb;->gn()Lcom/google/android/gms/internal/measurement/Mb;

    move-result-object v0

    throw v0
.end method

.method private static DW(B[CI)V
    .registers 4

    int-to-char v0, p0

    aput-char v0, p1, p2

    return-void
.end method

.method static synthetic DW(B)Z
    .registers 2

    invoke-static {p0}, Lcom/google/android/gms/internal/measurement/cd;->v5(B)Z

    move-result v0

    return v0
.end method

.method static synthetic FH(B)Z
    .registers 2

    invoke-static {p0}, Lcom/google/android/gms/internal/measurement/cd;->Zo(B)Z

    move-result v0

    return v0
.end method

.method private static Hw(B)Z
    .registers 2

    if-ltz p0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static VH(B)Z
    .registers 2

    const/16 v0, -0x41

    if-le p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static Zo(B)Z
    .registers 2

    const/16 v0, -0x10

    if-ge p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic j6(BBBB[CI)V
    .registers 6

    invoke-static/range {p0 .. p5}, Lcom/google/android/gms/internal/measurement/cd;->DW(BBBB[CI)V

    return-void
.end method

.method static synthetic j6(BBB[CI)V
    .registers 5

    invoke-static {p0, p1, p2, p3, p4}, Lcom/google/android/gms/internal/measurement/cd;->DW(BBB[CI)V

    return-void
.end method

.method static synthetic j6(BB[CI)V
    .registers 4

    invoke-static {p0, p1, p2, p3}, Lcom/google/android/gms/internal/measurement/cd;->DW(BB[CI)V

    return-void
.end method

.method static synthetic j6(B[CI)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/measurement/cd;->DW(B[CI)V

    return-void
.end method

.method static synthetic j6(B)Z
    .registers 2

    invoke-static {p0}, Lcom/google/android/gms/internal/measurement/cd;->Hw(B)Z

    move-result v0

    return v0
.end method

.method private static v5(B)Z
    .registers 2

    const/16 v0, -0x20

    if-ge p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
