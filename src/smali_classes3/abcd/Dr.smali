.class public Labcd/Dr;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Labcd/Dr$a;
    }
.end annotation


# static fields
.field private static final j6:[I


# instance fields
.field public final DW:Labcd/Dr$a;

.field private FH:[I

.field private Hw:[I

.field private VH:I

.field private Zo:[I

.field private gn:I

.field private u7:I

.field private v5:[I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/16 v0, 0x1e

    new-array v0, v0, [I

    fill-array-data v0, :array_a

    sput-object v0, Labcd/Dr;->j6:[I

    return-void

    :array_a
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
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Labcd/Dr$a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Labcd/Dr$a;-><init>(Labcd/Dr;Labcd/Cr;)V

    iput-object v0, p0, Labcd/Dr;->DW:Labcd/Dr$a;

    const/4 v0, 0x0

    iput v0, p0, Labcd/Dr;->u7:I

    sget-object v1, Labcd/Dr;->j6:[I

    aget v1, v1, v0

    new-array v2, v1, [I

    iput-object v2, p0, Labcd/Dr;->FH:[I

    new-array v1, v1, [I

    iput-object v1, p0, Labcd/Dr;->v5:[I

    iput v0, p0, Labcd/Dr;->VH:I

    iput v0, p0, Labcd/Dr;->gn:I

    return-void
.end method

.method public constructor <init>(I)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Labcd/Dr$a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Labcd/Dr$a;-><init>(Labcd/Dr;Labcd/Cr;)V

    iput-object v0, p0, Labcd/Dr;->DW:Labcd/Dr$a;

    const/4 v0, 0x0

    iput v0, p0, Labcd/Dr;->u7:I

    :goto_e
    sget-object v1, Labcd/Dr;->j6:[I

    iget v2, p0, Labcd/Dr;->u7:I

    aget v1, v1, v2

    mul-int/lit8 v3, p1, 0x2

    if-ge v1, v3, :cond_1d

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Labcd/Dr;->u7:I

    goto :goto_e

    :cond_1d
    new-array p1, v1, [I

    iput-object p1, p0, Labcd/Dr;->FH:[I

    new-array p1, v1, [I

    iput-object p1, p0, Labcd/Dr;->v5:[I

    iput v0, p0, Labcd/Dr;->VH:I

    iput v0, p0, Labcd/Dr;->gn:I

    return-void
.end method

.method static synthetic DW(Labcd/Dr;)[I
    .registers 1

    iget-object p0, p0, Labcd/Dr;->v5:[I

    return-object p0
.end method

.method private Hw()V
    .registers 11

    iget v0, p0, Labcd/Dr;->gn:I

    iget-object v1, p0, Labcd/Dr;->FH:[I

    array-length v2, v1

    mul-int/lit8 v0, v0, 0x2

    const/4 v3, 0x0

    if-le v0, v2, :cond_1e

    iget v0, p0, Labcd/Dr;->u7:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Labcd/Dr;->u7:I

    const/4 v1, 0x0

    iput-object v1, p0, Labcd/Dr;->Hw:[I

    iput-object v1, p0, Labcd/Dr;->Zo:[I

    sget-object v1, Labcd/Dr;->j6:[I

    aget v0, v1, v0

    :goto_19
    new-array v1, v0, [I

    new-array v0, v0, [I

    goto :goto_4a

    :cond_1e
    iget-object v0, p0, Labcd/Dr;->Hw:[I

    if-eqz v0, :cond_3d

    array-length v2, v0

    array-length v4, v1

    if-ne v2, v4, :cond_3d

    const/4 v1, 0x0

    :goto_27
    array-length v2, v0

    if-ge v1, v2, :cond_2f

    aput v3, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_27

    :cond_2f
    iget-object v1, p0, Labcd/Dr;->Zo:[I

    iget-object v2, p0, Labcd/Dr;->FH:[I

    iput-object v2, p0, Labcd/Dr;->Hw:[I

    iget-object v2, p0, Labcd/Dr;->v5:[I

    iput-object v2, p0, Labcd/Dr;->Zo:[I

    move-object v9, v1

    move-object v1, v0

    move-object v0, v9

    goto :goto_4a

    :cond_3d
    iput-object v1, p0, Labcd/Dr;->Hw:[I

    iget-object v0, p0, Labcd/Dr;->v5:[I

    iput-object v0, p0, Labcd/Dr;->Zo:[I

    sget-object v0, Labcd/Dr;->j6:[I

    iget v1, p0, Labcd/Dr;->u7:I

    aget v0, v0, v1

    goto :goto_19

    :goto_4a
    const/4 v2, 0x0

    :goto_4b
    iget-object v4, p0, Labcd/Dr;->FH:[I

    array-length v5, v4

    if-ge v3, v5, :cond_7b

    aget v4, v4, v3

    if-eqz v4, :cond_78

    const/high16 v5, -0x80000000

    if-eq v4, v5, :cond_78

    const v5, 0x7fffffff

    and-int/2addr v5, v4

    array-length v6, v1

    array-length v7, v1

    rem-int v7, v5, v7

    :goto_60
    aget v8, v1, v7

    if-eqz v8, :cond_6e

    add-int/lit8 v8, v6, -0x2

    rem-int v8, v5, v8

    add-int/lit8 v8, v8, 0x1

    add-int/2addr v7, v8

    array-length v8, v1

    rem-int/2addr v7, v8

    goto :goto_60

    :cond_6e
    aput v4, v1, v7

    iget-object v4, p0, Labcd/Dr;->v5:[I

    aget v4, v4, v3

    aput v4, v0, v7

    add-int/lit8 v2, v2, 0x1

    :cond_78
    add-int/lit8 v3, v3, 0x1

    goto :goto_4b

    :cond_7b
    iput-object v1, p0, Labcd/Dr;->FH:[I

    iput-object v0, p0, Labcd/Dr;->v5:[I

    iput v2, p0, Labcd/Dr;->VH:I

    return-void
.end method

.method static synthetic j6(Labcd/Dr;)[I
    .registers 1

    iget-object p0, p0, Labcd/Dr;->FH:[I

    return-object p0
.end method


# virtual methods
.method public DW()Labcd/Dr$a;
    .registers 3

    new-instance v0, Labcd/Dr$a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Labcd/Dr$a;-><init>(Labcd/Dr;Labcd/Cr;)V

    return-object v0
.end method

.method public DW(II)V
    .registers 12

    const v0, 0x7fffffff

    if-nez p1, :cond_8

    const p1, 0x7fffffff

    :cond_8
    and-int/2addr v0, p1

    iget-object v1, p0, Labcd/Dr;->FH:[I

    array-length v2, v1

    rem-int v2, v0, v2

    array-length v3, v1

    aget v1, v1, v2

    const/4 v4, -0x1

    const/4 v5, 0x0

    const/4 v6, -0x1

    :goto_14
    const/4 v7, 0x1

    if-eqz v1, :cond_3d

    const/high16 v8, -0x80000000

    if-ne v1, p1, :cond_2d

    iget-object v1, p0, Labcd/Dr;->v5:[I

    aget v1, v1, v2

    if-ne v1, p2, :cond_23

    const/4 v5, 0x1

    goto :goto_30

    :cond_23
    iget-object v1, p0, Labcd/Dr;->FH:[I

    aput v8, v1, v2

    iget v1, p0, Labcd/Dr;->gn:I

    sub-int/2addr v1, v7

    iput v1, p0, Labcd/Dr;->gn:I

    goto :goto_30

    :cond_2d
    if-ne v1, v8, :cond_30

    move v6, v2

    :cond_30
    :goto_30
    iget-object v1, p0, Labcd/Dr;->FH:[I

    add-int/lit8 v8, v3, -0x2

    rem-int v8, v0, v8

    add-int/2addr v8, v7

    add-int/2addr v2, v8

    array-length v7, v1

    rem-int/2addr v2, v7

    aget v1, v1, v2

    goto :goto_14

    :cond_3d
    if-nez v5, :cond_60

    if-eq v6, v4, :cond_42

    move v2, v6

    :cond_42
    iget-object v0, p0, Labcd/Dr;->FH:[I

    aput p1, v0, v2

    iget-object p1, p0, Labcd/Dr;->v5:[I

    aput p2, p1, v2

    iget p1, p0, Labcd/Dr;->gn:I

    add-int/2addr p1, v7

    iput p1, p0, Labcd/Dr;->gn:I

    if-ne v6, v4, :cond_56

    iget p1, p0, Labcd/Dr;->VH:I

    add-int/2addr p1, v7

    iput p1, p0, Labcd/Dr;->VH:I

    :cond_56
    iget p1, p0, Labcd/Dr;->VH:I

    mul-int/lit8 p1, p1, 0x2

    array-length p2, v0

    if-le p1, p2, :cond_60

    invoke-direct {p0}, Labcd/Dr;->Hw()V

    :cond_60
    return-void
.end method

.method public FH()I
    .registers 2

    iget v0, p0, Labcd/Dr;->gn:I

    return v0
.end method

.method public j6(I)I
    .registers 7

    const v0, 0x7fffffff

    if-nez p1, :cond_8

    const p1, 0x7fffffff

    :cond_8
    and-int/2addr v0, p1

    iget-object v1, p0, Labcd/Dr;->FH:[I

    array-length v2, v1

    array-length v3, v1

    rem-int v3, v0, v3

    aget v1, v1, v3

    :goto_11
    if-eq v1, p1, :cond_25

    if-nez v1, :cond_17

    const/4 p1, -0x1

    return p1

    :cond_17
    iget-object v1, p0, Labcd/Dr;->FH:[I

    add-int/lit8 v4, v2, -0x2

    rem-int v4, v0, v4

    add-int/lit8 v4, v4, 0x1

    add-int/2addr v3, v4

    array-length v4, v1

    rem-int/2addr v3, v4

    aget v1, v1, v3

    goto :goto_11

    :cond_25
    iget-object p1, p0, Labcd/Dr;->v5:[I

    aget p1, p1, v3

    return p1
.end method

.method public j6()V
    .registers 5

    iget v0, p0, Labcd/Dr;->VH:I

    if-lez v0, :cond_14

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_6
    iget-object v2, p0, Labcd/Dr;->FH:[I

    array-length v3, v2

    if-ge v1, v3, :cond_10

    aput v0, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_10
    iput v0, p0, Labcd/Dr;->VH:I

    iput v0, p0, Labcd/Dr;->gn:I

    :cond_14
    return-void
.end method

.method public j6(II)V
    .registers 10

    const v0, 0x7fffffff

    if-nez p1, :cond_8

    const p1, 0x7fffffff

    :cond_8
    and-int/2addr v0, p1

    iget-object v1, p0, Labcd/Dr;->FH:[I

    array-length v2, v1

    rem-int v2, v0, v2

    array-length v3, v1

    aget v1, v1, v2

    const/4 v4, -0x1

    const/4 v5, -0x1

    :goto_13
    if-eqz v1, :cond_31

    if-ne v1, p1, :cond_1e

    iget-object v1, p0, Labcd/Dr;->v5:[I

    aget v1, v1, v2

    if-ne v1, p2, :cond_23

    return-void

    :cond_1e
    const/high16 v6, -0x80000000

    if-ne v1, v6, :cond_23

    move v5, v2

    :cond_23
    iget-object v1, p0, Labcd/Dr;->FH:[I

    add-int/lit8 v6, v3, -0x2

    rem-int v6, v0, v6

    add-int/lit8 v6, v6, 0x1

    add-int/2addr v2, v6

    array-length v6, v1

    rem-int/2addr v2, v6

    aget v1, v1, v2

    goto :goto_13

    :cond_31
    if-eq v5, v4, :cond_34

    move v2, v5

    :cond_34
    iget-object v0, p0, Labcd/Dr;->FH:[I

    aput p1, v0, v2

    iget-object p1, p0, Labcd/Dr;->v5:[I

    aput p2, p1, v2

    iget p1, p0, Labcd/Dr;->gn:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Labcd/Dr;->gn:I

    if-ne v5, v4, :cond_4a

    iget p1, p0, Labcd/Dr;->VH:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Labcd/Dr;->VH:I

    :cond_4a
    iget p1, p0, Labcd/Dr;->VH:I

    mul-int/lit8 p1, p1, 0x2

    array-length p2, v0

    if-le p1, p2, :cond_54

    invoke-direct {p0}, Labcd/Dr;->Hw()V

    :cond_54
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 7

    const-string v0, "{"

    const/4 v1, 0x0

    :goto_3
    iget-object v2, p0, Labcd/Dr;->FH:[I

    array-length v3, v2

    if-ge v1, v3, :cond_50

    aget v2, v2, v1

    if-eqz v2, :cond_4d

    const/high16 v3, -0x80000000

    if-eq v2, v3, :cond_4d

    iget-object v3, p0, Labcd/Dr;->v5:[I

    aget v3, v3, v1

    const v4, 0x7fffffff

    const-string v5, ", "

    if-ne v2, v4, :cond_33

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "0->"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_4d

    :cond_33
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "->"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_4d
    :goto_4d
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_50
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "}"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
