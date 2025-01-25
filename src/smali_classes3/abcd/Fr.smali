.class public Labcd/Fr;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Labcd/Fr$a;
    }
.end annotation


# static fields
.field public static final DW:Labcd/Fr;

.field private static final j6:[I


# instance fields
.field public final FH:Labcd/Fr$a;

.field private Hw:[I

.field private VH:I

.field private Zo:I

.field private gn:I

.field private v5:[I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/16 v0, 0x1e

    new-array v0, v0, [I

    fill-array-data v0, :array_12

    sput-object v0, Labcd/Fr;->j6:[I

    new-instance v0, Labcd/Fr;

    invoke-direct {v0}, Labcd/Fr;-><init>()V

    sput-object v0, Labcd/Fr;->DW:Labcd/Fr;

    return-void

    nop

    :array_12
    .array-data 4
        0x5
        0xb
        0x11
        0x25
        0x43
        0x83
        0x101
        0x209
        0x407
        0x805
        0x1003
        0x2011
        0x401b
        0x8003
        0x10001
        0x2001d
        0x40003
        0x80015
        0x100007
        0x200011
        0x40000f
        0x800009
        0x100002b
        0x2000023
        0x400000f
        0x800001d
        0x10000003
        0x2000000b
        0x40000003  # 2.0000007f
        0x7ffe7961
    .end array-data
.end method

.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Labcd/Fr$a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Labcd/Fr$a;-><init>(Labcd/Fr;Labcd/Er;)V

    iput-object v0, p0, Labcd/Fr;->FH:Labcd/Fr$a;

    const/4 v0, 0x1

    iput v0, p0, Labcd/Fr;->gn:I

    sget-object v1, Labcd/Fr;->j6:[I

    aget v0, v1, v0

    new-array v0, v0, [I

    iput-object v0, p0, Labcd/Fr;->Hw:[I

    const/4 v0, 0x0

    iput v0, p0, Labcd/Fr;->Zo:I

    iput v0, p0, Labcd/Fr;->VH:I

    return-void
.end method

.method private DW()V
    .registers 9

    iget v0, p0, Labcd/Fr;->VH:I

    iget-object v1, p0, Labcd/Fr;->Hw:[I

    array-length v2, v1

    mul-int/lit8 v0, v0, 0x2

    const/4 v3, 0x0

    if-le v0, v2, :cond_1a

    iget v0, p0, Labcd/Fr;->gn:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Labcd/Fr;->gn:I

    const/4 v1, 0x0

    iput-object v1, p0, Labcd/Fr;->v5:[I

    sget-object v1, Labcd/Fr;->j6:[I

    aget v0, v1, v0

    :goto_17
    new-array v0, v0, [I

    goto :goto_39

    :cond_1a
    iget-object v0, p0, Labcd/Fr;->v5:[I

    if-eqz v0, :cond_30

    array-length v2, v0

    array-length v4, v1

    if-ne v2, v4, :cond_30

    const/4 v1, 0x0

    :goto_23
    array-length v2, v0

    if-ge v1, v2, :cond_2b

    aput v3, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_23

    :cond_2b
    iget-object v1, p0, Labcd/Fr;->Hw:[I

    iput-object v1, p0, Labcd/Fr;->v5:[I

    goto :goto_39

    :cond_30
    iput-object v1, p0, Labcd/Fr;->v5:[I

    sget-object v0, Labcd/Fr;->j6:[I

    iget v1, p0, Labcd/Fr;->gn:I

    aget v0, v0, v1

    goto :goto_17

    :goto_39
    const/4 v1, 0x0

    :goto_3a
    iget-object v2, p0, Labcd/Fr;->Hw:[I

    array-length v4, v2

    if-ge v3, v4, :cond_64

    aget v2, v2, v3

    if-eqz v2, :cond_61

    const/high16 v4, -0x80000000

    if-eq v2, v4, :cond_61

    const v4, 0x7fffffff

    and-int/2addr v4, v2

    array-length v5, v0

    array-length v6, v0

    rem-int v6, v4, v6

    :goto_4f
    aget v7, v0, v6

    if-eqz v7, :cond_5d

    add-int/lit8 v7, v5, -0x2

    rem-int v7, v4, v7

    add-int/lit8 v7, v7, 0x1

    add-int/2addr v6, v7

    array-length v7, v0

    rem-int/2addr v6, v7

    goto :goto_4f

    :cond_5d
    aput v2, v0, v6

    add-int/lit8 v1, v1, 0x1

    :cond_61
    add-int/lit8 v3, v3, 0x1

    goto :goto_3a

    :cond_64
    iput-object v0, p0, Labcd/Fr;->Hw:[I

    iput v1, p0, Labcd/Fr;->Zo:I

    return-void
.end method

.method static synthetic j6(Labcd/Fr;)[I
    .registers 1

    iget-object p0, p0, Labcd/Fr;->Hw:[I

    return-object p0
.end method


# virtual methods
.method public DW(I)V
    .registers 9

    const v0, 0x7fffffff

    if-nez p1, :cond_8

    const p1, 0x7fffffff

    :cond_8
    and-int/2addr v0, p1

    iget-object v1, p0, Labcd/Fr;->Hw:[I

    array-length v2, v1

    rem-int v2, v0, v2

    array-length v3, v1

    aget v1, v1, v2

    const/4 v4, -0x1

    const/4 v5, -0x1

    :goto_13
    if-eqz v1, :cond_2b

    if-ne v1, p1, :cond_18

    return-void

    :cond_18
    const/high16 v6, -0x80000000

    if-ne v1, v6, :cond_1d

    move v5, v2

    :cond_1d
    iget-object v1, p0, Labcd/Fr;->Hw:[I

    add-int/lit8 v6, v3, -0x2

    rem-int v6, v0, v6

    add-int/lit8 v6, v6, 0x1

    add-int/2addr v2, v6

    array-length v6, v1

    rem-int/2addr v2, v6

    aget v1, v1, v2

    goto :goto_13

    :cond_2b
    if-eq v5, v4, :cond_2e

    move v2, v5

    :cond_2e
    iget-object v0, p0, Labcd/Fr;->Hw:[I

    aput p1, v0, v2

    if-ne v5, v4, :cond_3a

    iget p1, p0, Labcd/Fr;->Zo:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Labcd/Fr;->Zo:I

    :cond_3a
    iget p1, p0, Labcd/Fr;->VH:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Labcd/Fr;->VH:I

    iget p1, p0, Labcd/Fr;->Zo:I

    mul-int/lit8 p1, p1, 0x2

    array-length v0, v0

    if-le p1, v0, :cond_4a

    invoke-direct {p0}, Labcd/Fr;->DW()V

    :cond_4a
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6

    instance-of v0, p1, Labcd/Fr;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    :cond_6
    check-cast p1, Labcd/Fr;

    invoke-virtual {p1}, Labcd/Fr;->j6()I

    move-result v0

    invoke-virtual {p0}, Labcd/Fr;->j6()I

    move-result v2

    if-eq v0, v2, :cond_13

    return v1

    :cond_13
    const/4 v0, 0x0

    :goto_14
    iget-object v2, p0, Labcd/Fr;->Hw:[I

    array-length v3, v2

    if-ge v0, v3, :cond_31

    aget v2, v2, v0

    if-eqz v2, :cond_2e

    const/high16 v3, -0x80000000

    if-eq v2, v3, :cond_2e

    const v3, 0x7fffffff

    if-ne v2, v3, :cond_27

    const/4 v2, 0x0

    :cond_27
    invoke-virtual {p1, v2}, Labcd/Fr;->j6(I)Z

    move-result v2

    if-nez v2, :cond_2e

    return v1

    :cond_2e
    add-int/lit8 v0, v0, 0x1

    goto :goto_14

    :cond_31
    const/4 p1, 0x1

    return p1
.end method

.method public j6()I
    .registers 2

    iget v0, p0, Labcd/Fr;->VH:I

    return v0
.end method

.method public j6(I)Z
    .registers 8

    const v0, 0x7fffffff

    if-nez p1, :cond_8

    const p1, 0x7fffffff

    :cond_8
    and-int/2addr v0, p1

    iget-object v1, p0, Labcd/Fr;->Hw:[I

    array-length v2, v1

    array-length v3, v1

    rem-int v3, v0, v3

    aget v1, v1, v3

    :goto_11
    const/4 v4, 0x1

    if-eq v1, p1, :cond_25

    if-nez v1, :cond_18

    const/4 p1, 0x0

    return p1

    :cond_18
    iget-object v1, p0, Labcd/Fr;->Hw:[I

    add-int/lit8 v5, v2, -0x2

    rem-int v5, v0, v5

    add-int/2addr v5, v4

    add-int/2addr v3, v5

    array-length v4, v1

    rem-int/2addr v3, v4

    aget v1, v1, v3

    goto :goto_11

    :cond_25
    return v4
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    const-string v0, "{"

    const/4 v1, 0x0

    :goto_3
    iget-object v2, p0, Labcd/Fr;->Hw:[I

    array-length v3, v2

    if-ge v1, v3, :cond_3e

    aget v2, v2, v1

    if-eqz v2, :cond_3b

    const/high16 v3, -0x80000000

    if-eq v2, v3, :cond_3b

    const v3, 0x7fffffff

    if-ne v2, v3, :cond_27

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "0, "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_3b

    :cond_27
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_3b
    :goto_3b
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_3e
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "}"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
