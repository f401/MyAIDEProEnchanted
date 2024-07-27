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

    fill-array-data v0, :array_0

    sput-object v0, Labcd/Dr;->j6:[I

    return-void

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
    .registers 5

    const/4 v3, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Labcd/Dr$a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Labcd/Dr$a;-><init>(Labcd/Dr;Labcd/Cr;)V

    iput-object v0, p0, Labcd/Dr;->DW:Labcd/Dr$a;

    iput v3, p0, Labcd/Dr;->u7:I

    sget-object v0, Labcd/Dr;->j6:[I

    iget v1, p0, Labcd/Dr;->u7:I

    aget v2, v0, v1

    new-array v2, v2, [I

    iput-object v2, p0, Labcd/Dr;->FH:[I

    aget v0, v0, v1

    new-array v0, v0, [I

    iput-object v0, p0, Labcd/Dr;->v5:[I

    iput v3, p0, Labcd/Dr;->VH:I

    iput v3, p0, Labcd/Dr;->gn:I

    return-void
.end method

.method public constructor <init>(I)V
    .registers 7

    const/4 v4, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Labcd/Dr$a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Labcd/Dr$a;-><init>(Labcd/Dr;Labcd/Cr;)V

    iput-object v0, p0, Labcd/Dr;->DW:Labcd/Dr$a;

    iput v4, p0, Labcd/Dr;->u7:I

    :goto_0
    sget-object v0, Labcd/Dr;->j6:[I

    iget v1, p0, Labcd/Dr;->u7:I

    aget v2, v0, v1

    mul-int/lit8 v3, p1, 0x2

    if-ge v2, v3, :cond_0

    add-int/lit8 v0, v1, 0x1

    iput v0, p0, Labcd/Dr;->u7:I

    goto :goto_0

    :cond_0
    aget v2, v0, v1

    new-array v2, v2, [I

    iput-object v2, p0, Labcd/Dr;->FH:[I

    aget v0, v0, v1

    new-array v0, v0, [I

    iput-object v0, p0, Labcd/Dr;->v5:[I

    iput v4, p0, Labcd/Dr;->VH:I

    iput v4, p0, Labcd/Dr;->gn:I

    return-void
.end method

.method static synthetic DW(Labcd/Dr;)[I
    .registers 2

    iget-object v0, p0, Labcd/Dr;->v5:[I

    return-object v0
.end method

.method private Hw()V
    .registers 10

    const/4 v4, 0x0

    const/4 v1, 0x0

    iget v0, p0, Labcd/Dr;->gn:I

    iget-object v3, p0, Labcd/Dr;->FH:[I

    array-length v2, v3

    mul-int/lit8 v0, v0, 0x2

    if-le v0, v2, :cond_0

    iget v0, p0, Labcd/Dr;->u7:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Labcd/Dr;->u7:I

    iput-object v4, p0, Labcd/Dr;->Hw:[I

    iput-object v4, p0, Labcd/Dr;->Zo:[I

    sget-object v2, Labcd/Dr;->j6:[I

    iget v3, p0, Labcd/Dr;->u7:I

    aget v0, v2, v3

    new-array v0, v0, [I

    aget v2, v2, v3

    new-array v2, v2, [I

    move-object v3, v2

    :goto_0
    move v2, v1

    move v4, v1

    :goto_1
    iget-object v1, p0, Labcd/Dr;->FH:[I

    array-length v5, v1

    if-ge v4, v5, :cond_4

    aget v5, v1, v4

    if-eqz v5, :cond_5

    const/high16 v1, -0x80000000

    if-eq v5, v1, :cond_5

    const v1, 0x7fffffff

    and-int v6, v1, v5

    array-length v7, v0

    array-length v1, v0

    rem-int v1, v6, v1

    :goto_2
    aget v8, v0, v1

    if-eqz v8, :cond_3

    add-int/lit8 v8, v7, -0x2

    rem-int v8, v6, v8

    add-int/lit8 v8, v8, 0x1

    add-int/2addr v1, v8

    array-length v8, v0

    rem-int/2addr v1, v8

    goto :goto_2

    :cond_0
    iget-object v2, p0, Labcd/Dr;->Hw:[I

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
    iget-object v3, p0, Labcd/Dr;->Zo:[I

    iget-object v0, p0, Labcd/Dr;->FH:[I

    iput-object v0, p0, Labcd/Dr;->Hw:[I

    iget-object v0, p0, Labcd/Dr;->v5:[I

    iput-object v0, p0, Labcd/Dr;->Zo:[I

    move-object v0, v2

    goto :goto_0

    :cond_2
    iget-object v0, p0, Labcd/Dr;->FH:[I

    iput-object v0, p0, Labcd/Dr;->Hw:[I

    iget-object v0, p0, Labcd/Dr;->v5:[I

    iput-object v0, p0, Labcd/Dr;->Zo:[I

    sget-object v2, Labcd/Dr;->j6:[I

    iget v3, p0, Labcd/Dr;->u7:I

    aget v0, v2, v3

    new-array v0, v0, [I

    aget v2, v2, v3

    new-array v2, v2, [I

    move-object v3, v2

    goto :goto_0

    :cond_3
    aput v5, v0, v1

    iget-object v5, p0, Labcd/Dr;->v5:[I

    aget v5, v5, v4

    aput v5, v3, v1

    add-int/lit8 v2, v2, 0x1

    move v1, v2

    :goto_4
    add-int/lit8 v4, v4, 0x1

    move v2, v1

    goto :goto_1

    :cond_4
    iput-object v0, p0, Labcd/Dr;->FH:[I

    iput-object v3, p0, Labcd/Dr;->v5:[I

    iput v2, p0, Labcd/Dr;->VH:I

    return-void

    :cond_5
    move v1, v2

    goto :goto_4
.end method

.method static synthetic j6(Labcd/Dr;)[I
    .registers 2

    iget-object v0, p0, Labcd/Dr;->FH:[I

    return-object v0
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

    const/high16 v8, -0x80000000

    const/4 v4, -0x1

    if-nez p1, :cond_0

    move p1, v0

    :cond_0
    and-int v5, v0, p1

    iget-object v1, p0, Labcd/Dr;->FH:[I

    array-length v0, v1

    rem-int v2, v5, v0

    array-length v6, v1

    const/4 v0, 0x0

    aget v3, v1, v2

    move v1, v4

    :goto_0
    if-eqz v3, :cond_4

    if-ne v3, p1, :cond_3

    iget-object v3, p0, Labcd/Dr;->v5:[I

    aget v3, v3, v2

    if-ne v3, p2, :cond_2

    const/4 v0, 0x1

    :cond_1
    :goto_1
    iget-object v3, p0, Labcd/Dr;->FH:[I

    add-int/lit8 v7, v6, -0x2

    rem-int v7, v5, v7

    add-int/lit8 v7, v7, 0x1

    add-int/2addr v2, v7

    array-length v7, v3

    rem-int/2addr v2, v7

    aget v3, v3, v2

    goto :goto_0

    :cond_2
    iget-object v3, p0, Labcd/Dr;->FH:[I

    aput v8, v3, v2

    iget v3, p0, Labcd/Dr;->gn:I

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Labcd/Dr;->gn:I

    goto :goto_1

    :cond_3
    if-ne v3, v8, :cond_1

    move v1, v2

    goto :goto_1

    :cond_4
    if-nez v0, :cond_7

    if-eq v1, v4, :cond_5

    move v2, v1

    :cond_5
    iget-object v0, p0, Labcd/Dr;->FH:[I

    aput p1, v0, v2

    iget-object v0, p0, Labcd/Dr;->v5:[I

    aput p2, v0, v2

    iget v0, p0, Labcd/Dr;->gn:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Labcd/Dr;->gn:I

    if-ne v1, v4, :cond_6

    iget v0, p0, Labcd/Dr;->VH:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Labcd/Dr;->VH:I

    :cond_6
    iget v0, p0, Labcd/Dr;->VH:I

    mul-int/lit8 v0, v0, 0x2

    iget-object v1, p0, Labcd/Dr;->FH:[I

    array-length v1, v1

    if-le v0, v1, :cond_7

    invoke-direct {p0}, Labcd/Dr;->Hw()V

    :cond_7
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

    if-nez p1, :cond_0

    move p1, v0

    :cond_0
    and-int v2, v0, p1

    iget-object v0, p0, Labcd/Dr;->FH:[I

    array-length v3, v0

    array-length v1, v0

    rem-int v1, v2, v1

    aget v0, v0, v1

    :goto_0
    if-eq v0, p1, :cond_2

    if-nez v0, :cond_1

    const/4 v0, -0x1

    :goto_1
    return v0

    :cond_1
    iget-object v0, p0, Labcd/Dr;->FH:[I

    add-int/lit8 v4, v3, -0x2

    rem-int v4, v2, v4

    add-int/lit8 v4, v4, 0x1

    add-int/2addr v1, v4

    array-length v4, v0

    rem-int/2addr v1, v4

    aget v0, v0, v1

    goto :goto_0

    :cond_2
    iget-object v0, p0, Labcd/Dr;->v5:[I

    aget v0, v0, v1

    goto :goto_1
.end method

.method public j6()V
    .registers 5

    const/4 v1, 0x0

    iget v0, p0, Labcd/Dr;->VH:I

    if-lez v0, :cond_1

    move v0, v1

    :goto_0
    iget-object v2, p0, Labcd/Dr;->FH:[I

    array-length v3, v2

    if-ge v0, v3, :cond_0

    aput v1, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iput v1, p0, Labcd/Dr;->VH:I

    iput v1, p0, Labcd/Dr;->gn:I

    :cond_1
    return-void
.end method

.method public j6(II)V
    .registers 10

    const v0, 0x7fffffff

    const/4 v3, -0x1

    if-nez p1, :cond_0

    move p1, v0

    :cond_0
    and-int v4, v0, p1

    iget-object v0, p0, Labcd/Dr;->FH:[I

    array-length v1, v0

    rem-int v1, v4, v1

    array-length v5, v0

    aget v2, v0, v1

    move v0, v3

    :goto_0
    if-eqz v2, :cond_4

    if-ne v2, p1, :cond_2

    iget-object v2, p0, Labcd/Dr;->v5:[I

    aget v2, v2, v1

    if-ne v2, p2, :cond_3

    :cond_1
    :goto_1
    return-void

    :cond_2
    const/high16 v6, -0x80000000

    if-ne v2, v6, :cond_3

    move v0, v1

    :cond_3
    iget-object v2, p0, Labcd/Dr;->FH:[I

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
    iget-object v2, p0, Labcd/Dr;->FH:[I

    aput p1, v2, v1

    iget-object v2, p0, Labcd/Dr;->v5:[I

    aput p2, v2, v1

    iget v1, p0, Labcd/Dr;->gn:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Labcd/Dr;->gn:I

    if-ne v0, v3, :cond_6

    iget v0, p0, Labcd/Dr;->VH:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Labcd/Dr;->VH:I

    :cond_6
    iget v0, p0, Labcd/Dr;->VH:I

    mul-int/lit8 v0, v0, 0x2

    iget-object v1, p0, Labcd/Dr;->FH:[I

    array-length v1, v1

    if-le v0, v1, :cond_1

    invoke-direct {p0}, Labcd/Dr;->Hw()V

    goto :goto_1
.end method

.method public toString()Ljava/lang/String;
    .registers 6

    const-string v0, "{"

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Labcd/Dr;->FH:[I

    array-length v3, v2

    if-ge v1, v3, :cond_2

    aget v2, v2, v1

    if-eqz v2, :cond_0

    const/high16 v3, -0x80000000

    if-eq v2, v3, :cond_0

    iget-object v3, p0, Labcd/Dr;->v5:[I

    aget v3, v3, v1

    const v4, 0x7fffffff

    if-ne v2, v4, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "0->"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "->"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

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
