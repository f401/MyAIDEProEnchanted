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

    fill-array-data v0, :array_0

    sput-object v0, Labcd/Fr;->j6:[I

    new-instance v0, Labcd/Fr;

    invoke-direct {v0}, Labcd/Fr;-><init>()V

    sput-object v0, Labcd/Fr;->DW:Labcd/Fr;

    return-void

    nop

    :array_0
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
        0x40000003    # 2.0000007f
        0x7ffe7961
    .end array-data
.end method

.method public constructor <init>()V
    .registers 4

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Labcd/Fr$a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Labcd/Fr$a;-><init>(Labcd/Fr;Labcd/Er;)V

    iput-object v0, p0, Labcd/Fr;->FH:Labcd/Fr$a;

    const/4 v0, 0x1

    iput v0, p0, Labcd/Fr;->gn:I

    sget-object v0, Labcd/Fr;->j6:[I

    iget v1, p0, Labcd/Fr;->gn:I

    aget v0, v0, v1

    new-array v0, v0, [I

    iput-object v0, p0, Labcd/Fr;->Hw:[I

    iput v2, p0, Labcd/Fr;->Zo:I

    iput v2, p0, Labcd/Fr;->VH:I

    return-void
.end method

.method private DW()V
    .registers 9

    const/4 v1, 0x0

    iget v0, p0, Labcd/Fr;->VH:I

    iget-object v3, p0, Labcd/Fr;->Hw:[I

    array-length v2, v3

    mul-int/lit8 v0, v0, 0x2

    if-le v0, v2, :cond_0

    iget v0, p0, Labcd/Fr;->gn:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Labcd/Fr;->gn:I

    const/4 v0, 0x0

    iput-object v0, p0, Labcd/Fr;->v5:[I

    sget-object v0, Labcd/Fr;->j6:[I

    iget v2, p0, Labcd/Fr;->gn:I

    aget v0, v0, v2

    new-array v0, v0, [I

    :goto_0
    move v2, v1

    move v3, v1

    :goto_1
    iget-object v1, p0, Labcd/Fr;->Hw:[I

    array-length v4, v1

    if-ge v3, v4, :cond_4

    aget v4, v1, v3

    if-eqz v4, :cond_5

    const/high16 v1, -0x80000000

    if-eq v4, v1, :cond_5

    const v1, 0x7fffffff

    and-int v5, v1, v4

    array-length v6, v0

    array-length v1, v0

    rem-int v1, v5, v1

    :goto_2
    aget v7, v0, v1

    if-eqz v7, :cond_3

    add-int/lit8 v7, v6, -0x2

    rem-int v7, v5, v7

    add-int/lit8 v7, v7, 0x1

    add-int/2addr v1, v7

    array-length v7, v0

    rem-int/2addr v1, v7

    goto :goto_2

    :cond_0
    iget-object v2, p0, Labcd/Fr;->v5:[I

    if-eqz v2, :cond_2

    array-length v0, v2

    array-length v3, v3

    if-ne v0, v3, :cond_2

    move v0, v1

    :goto_3
    array-length v3, v2

    if-ge v0, v3, :cond_1

    aput v1, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_1
    iget-object v0, p0, Labcd/Fr;->Hw:[I

    iput-object v0, p0, Labcd/Fr;->v5:[I

    move-object v0, v2

    goto :goto_0

    :cond_2
    iget-object v0, p0, Labcd/Fr;->Hw:[I

    iput-object v0, p0, Labcd/Fr;->v5:[I

    sget-object v0, Labcd/Fr;->j6:[I

    iget v2, p0, Labcd/Fr;->gn:I

    aget v0, v0, v2

    new-array v0, v0, [I

    goto :goto_0

    :cond_3
    aput v4, v0, v1

    add-int/lit8 v2, v2, 0x1

    move v1, v2

    :goto_4
    add-int/lit8 v3, v3, 0x1

    move v2, v1

    goto :goto_1

    :cond_4
    iput-object v0, p0, Labcd/Fr;->Hw:[I

    iput v2, p0, Labcd/Fr;->Zo:I

    return-void

    :cond_5
    move v1, v2

    goto :goto_4
.end method

.method static synthetic j6(Labcd/Fr;)[I
    .registers 2

    iget-object v0, p0, Labcd/Fr;->Hw:[I

    return-object v0
.end method


# virtual methods
.method public DW(I)V
    .registers 9

    const v0, 0x7fffffff

    const/4 v3, -0x1

    if-nez p1, :cond_0

    move p1, v0

    :cond_0
    and-int v4, v0, p1

    iget-object v0, p0, Labcd/Fr;->Hw:[I

    array-length v1, v0

    rem-int v1, v4, v1

    array-length v5, v0

    aget v2, v0, v1

    move v0, v3

    :goto_0
    if-eqz v2, :cond_4

    if-ne v2, p1, :cond_2

    :cond_1
    :goto_1
    return-void

    :cond_2
    const/high16 v6, -0x80000000

    if-ne v2, v6, :cond_3

    move v0, v1

    :cond_3
    iget-object v2, p0, Labcd/Fr;->Hw:[I

    add-int/lit8 v6, v5, -0x2

    rem-int v6, v4, v6

    add-int/lit8 v6, v6, 0x1

    add-int/2addr v1, v6

    array-length v6, v2

    rem-int/2addr v1, v6

    aget v2, v2, v1

    goto :goto_0

    :cond_4
    if-eq v0, v3, :cond_5

    move v1, v0

    :cond_5
    iget-object v2, p0, Labcd/Fr;->Hw:[I

    aput p1, v2, v1

    if-ne v0, v3, :cond_6

    iget v0, p0, Labcd/Fr;->Zo:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Labcd/Fr;->Zo:I

    :cond_6
    iget v0, p0, Labcd/Fr;->VH:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Labcd/Fr;->VH:I

    iget v0, p0, Labcd/Fr;->Zo:I

    mul-int/lit8 v0, v0, 0x2

    iget-object v1, p0, Labcd/Fr;->Hw:[I

    array-length v1, v1

    if-le v0, v1, :cond_1

    invoke-direct {p0}, Labcd/Fr;->DW()V

    goto :goto_1
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v1, 0x0

    instance-of v0, p1, Labcd/Fr;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    check-cast p1, Labcd/Fr;

    invoke-virtual {p1}, Labcd/Fr;->j6()I

    move-result v0

    invoke-virtual {p0}, Labcd/Fr;->j6()I

    move-result v2

    if-ne v0, v2, :cond_0

    move v0, v1

    :goto_1
    iget-object v2, p0, Labcd/Fr;->Hw:[I

    array-length v3, v2

    if-ge v0, v3, :cond_4

    aget v2, v2, v0

    if-eqz v2, :cond_3

    const/high16 v3, -0x80000000

    if-eq v2, v3, :cond_3

    const v3, 0x7fffffff

    if-ne v2, v3, :cond_2

    move v2, v1

    :cond_2
    invoke-virtual {p1, v2}, Labcd/Fr;->j6(I)Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_4
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public j6()I
    .registers 2

    iget v0, p0, Labcd/Fr;->VH:I

    return v0
.end method

.method public j6(I)Z
    .registers 7

    const v0, 0x7fffffff

    if-nez p1, :cond_0

    move p1, v0

    :cond_0
    and-int v2, v0, p1

    iget-object v1, p0, Labcd/Fr;->Hw:[I

    array-length v3, v1

    array-length v0, v1

    rem-int v0, v2, v0

    aget v1, v1, v0

    :goto_0
    if-eq v1, p1, :cond_2

    if-nez v1, :cond_1

    const/4 v0, 0x0

    :goto_1
    return v0

    :cond_1
    iget-object v1, p0, Labcd/Fr;->Hw:[I

    add-int/lit8 v4, v3, -0x2

    rem-int v4, v2, v4

    add-int/lit8 v4, v4, 0x1

    add-int/2addr v0, v4

    array-length v4, v1

    rem-int/2addr v0, v4

    aget v1, v1, v0

    goto :goto_0

    :cond_2
    const/4 v0, 0x1

    goto :goto_1
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    const-string v0, "{"

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Labcd/Fr;->Hw:[I

    array-length v3, v2

    if-ge v1, v3, :cond_2

    aget v2, v2, v1

    if-eqz v2, :cond_0

    const/high16 v3, -0x80000000

    if-eq v2, v3, :cond_0

    const v3, 0x7fffffff

    if-ne v2, v3, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "0, "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "}"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
