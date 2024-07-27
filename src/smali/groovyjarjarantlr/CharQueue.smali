.class public Lgroovyjarjarantlr/CharQueue;
.super Ljava/lang/Object;


# instance fields
.field private DW:I

.field private FH:I

.field protected Hw:I

.field protected j6:[C


# direct methods
.method public constructor <init>(I)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-gez p1, :cond_0

    const/16 v0, 0x10

    invoke-virtual {p0, v0}, Lgroovyjarjarantlr/CharQueue;->DW(I)V

    :goto_0
    return-void

    :cond_0
    const v0, 0x3fffffff    # 1.9999999f

    if-lt p1, v0, :cond_1

    const v0, 0x7fffffff

    invoke-virtual {p0, v0}, Lgroovyjarjarantlr/CharQueue;->DW(I)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x2

    :goto_1
    if-ge v0, p1, :cond_2

    mul-int/lit8 v0, v0, 0x2

    goto :goto_1

    :cond_2
    invoke-virtual {p0, v0}, Lgroovyjarjarantlr/CharQueue;->DW(I)V

    goto :goto_0
.end method

.method private final DW()V
    .registers 5

    const/4 v1, 0x0

    iget-object v0, p0, Lgroovyjarjarantlr/CharQueue;->j6:[C

    array-length v0, v0

    mul-int/lit8 v0, v0, 0x2

    new-array v2, v0, [C

    move v0, v1

    :goto_0
    iget-object v3, p0, Lgroovyjarjarantlr/CharQueue;->j6:[C

    array-length v3, v3

    if-ge v0, v3, :cond_0

    invoke-virtual {p0, v0}, Lgroovyjarjarantlr/CharQueue;->j6(I)C

    move-result v3

    aput-char v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iput-object v2, p0, Lgroovyjarjarantlr/CharQueue;->j6:[C

    iget-object v0, p0, Lgroovyjarjarantlr/CharQueue;->j6:[C

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lgroovyjarjarantlr/CharQueue;->DW:I

    iput v1, p0, Lgroovyjarjarantlr/CharQueue;->FH:I

    return-void
.end method


# virtual methods
.method public DW(I)V
    .registers 4

    const/4 v1, 0x0

    new-array v0, p1, [C

    iput-object v0, p0, Lgroovyjarjarantlr/CharQueue;->j6:[C

    add-int/lit8 v0, p1, -0x1

    iput v0, p0, Lgroovyjarjarantlr/CharQueue;->DW:I

    iput v1, p0, Lgroovyjarjarantlr/CharQueue;->FH:I

    iput v1, p0, Lgroovyjarjarantlr/CharQueue;->Hw:I

    return-void
.end method

.method public final j6(I)C
    .registers 5

    iget-object v0, p0, Lgroovyjarjarantlr/CharQueue;->j6:[C

    iget v1, p0, Lgroovyjarjarantlr/CharQueue;->FH:I

    iget v2, p0, Lgroovyjarjarantlr/CharQueue;->DW:I

    add-int/2addr v1, p1

    and-int/2addr v1, v2

    aget-char v0, v0, v1

    return v0
.end method

.method public final j6()V
    .registers 3

    iget v0, p0, Lgroovyjarjarantlr/CharQueue;->FH:I

    add-int/lit8 v0, v0, 0x1

    iget v1, p0, Lgroovyjarjarantlr/CharQueue;->DW:I

    and-int/2addr v0, v1

    iput v0, p0, Lgroovyjarjarantlr/CharQueue;->FH:I

    iget v0, p0, Lgroovyjarjarantlr/CharQueue;->Hw:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lgroovyjarjarantlr/CharQueue;->Hw:I

    return-void
.end method

.method public final j6(C)V
    .registers 6

    iget v0, p0, Lgroovyjarjarantlr/CharQueue;->Hw:I

    iget-object v1, p0, Lgroovyjarjarantlr/CharQueue;->j6:[C

    array-length v1, v1

    if-ne v0, v1, :cond_0

    invoke-direct {p0}, Lgroovyjarjarantlr/CharQueue;->DW()V

    :cond_0
    iget-object v0, p0, Lgroovyjarjarantlr/CharQueue;->j6:[C

    iget v1, p0, Lgroovyjarjarantlr/CharQueue;->FH:I

    iget v2, p0, Lgroovyjarjarantlr/CharQueue;->Hw:I

    add-int/2addr v1, v2

    iget v3, p0, Lgroovyjarjarantlr/CharQueue;->DW:I

    and-int/2addr v1, v3

    aput-char p1, v0, v1

    add-int/lit8 v0, v2, 0x1

    iput v0, p0, Lgroovyjarjarantlr/CharQueue;->Hw:I

    return-void
.end method
