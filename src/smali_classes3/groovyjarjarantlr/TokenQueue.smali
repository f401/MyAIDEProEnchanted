.class Lgroovyjarjarantlr/TokenQueue;
.super Ljava/lang/Object;


# instance fields
.field private DW:I

.field private FH:I

.field protected Hw:I

.field private j6:[Lgroovyjarjarantlr/Token;


# direct methods
.method public constructor <init>(I)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-gez p1, :cond_b

    const/16 p1, 0x10

    :goto_7
    invoke-direct {p0, p1}, Lgroovyjarjarantlr/TokenQueue;->DW(I)V

    return-void

    :cond_b
    const v0, 0x3fffffff  # 1.9999999f

    if-lt p1, v0, :cond_14

    const p1, 0x7fffffff

    goto :goto_7

    :cond_14
    const/4 v0, 0x2

    :goto_15
    if-ge v0, p1, :cond_1a

    mul-int/lit8 v0, v0, 0x2

    goto :goto_15

    :cond_1a
    invoke-direct {p0, v0}, Lgroovyjarjarantlr/TokenQueue;->DW(I)V

    return-void
.end method

.method private final DW()V
    .registers 5

    iget-object v0, p0, Lgroovyjarjarantlr/TokenQueue;->j6:[Lgroovyjarjarantlr/Token;

    array-length v0, v0

    mul-int/lit8 v0, v0, 0x2

    new-array v0, v0, [Lgroovyjarjarantlr/Token;

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_9
    iget-object v3, p0, Lgroovyjarjarantlr/TokenQueue;->j6:[Lgroovyjarjarantlr/Token;

    array-length v3, v3

    if-ge v2, v3, :cond_17

    invoke-virtual {p0, v2}, Lgroovyjarjarantlr/TokenQueue;->j6(I)Lgroovyjarjarantlr/Token;

    move-result-object v3

    aput-object v3, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    :cond_17
    iput-object v0, p0, Lgroovyjarjarantlr/TokenQueue;->j6:[Lgroovyjarjarantlr/Token;

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lgroovyjarjarantlr/TokenQueue;->DW:I

    iput v1, p0, Lgroovyjarjarantlr/TokenQueue;->FH:I

    return-void
.end method

.method private final DW(I)V
    .registers 3

    new-array v0, p1, [Lgroovyjarjarantlr/Token;

    iput-object v0, p0, Lgroovyjarjarantlr/TokenQueue;->j6:[Lgroovyjarjarantlr/Token;

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lgroovyjarjarantlr/TokenQueue;->DW:I

    const/4 p1, 0x0

    iput p1, p0, Lgroovyjarjarantlr/TokenQueue;->FH:I

    iput p1, p0, Lgroovyjarjarantlr/TokenQueue;->Hw:I

    return-void
.end method


# virtual methods
.method public final j6(I)Lgroovyjarjarantlr/Token;
    .registers 5

    iget-object v0, p0, Lgroovyjarjarantlr/TokenQueue;->j6:[Lgroovyjarjarantlr/Token;

    iget v1, p0, Lgroovyjarjarantlr/TokenQueue;->FH:I

    iget v2, p0, Lgroovyjarjarantlr/TokenQueue;->DW:I

    add-int/2addr v1, p1

    and-int p1, v2, v1

    aget-object p1, v0, p1

    return-object p1
.end method

.method public final j6()V
    .registers 3

    iget v0, p0, Lgroovyjarjarantlr/TokenQueue;->FH:I

    add-int/lit8 v0, v0, 0x1

    iget v1, p0, Lgroovyjarjarantlr/TokenQueue;->DW:I

    and-int/2addr v0, v1

    iput v0, p0, Lgroovyjarjarantlr/TokenQueue;->FH:I

    iget v0, p0, Lgroovyjarjarantlr/TokenQueue;->Hw:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lgroovyjarjarantlr/TokenQueue;->Hw:I

    return-void
.end method

.method public final j6(Lgroovyjarjarantlr/Token;)V
    .registers 6

    iget v0, p0, Lgroovyjarjarantlr/TokenQueue;->Hw:I

    iget-object v1, p0, Lgroovyjarjarantlr/TokenQueue;->j6:[Lgroovyjarjarantlr/Token;

    array-length v1, v1

    if-ne v0, v1, :cond_a

    invoke-direct {p0}, Lgroovyjarjarantlr/TokenQueue;->DW()V

    :cond_a
    iget-object v0, p0, Lgroovyjarjarantlr/TokenQueue;->j6:[Lgroovyjarjarantlr/Token;

    iget v1, p0, Lgroovyjarjarantlr/TokenQueue;->FH:I

    iget v2, p0, Lgroovyjarjarantlr/TokenQueue;->Hw:I

    add-int/2addr v1, v2

    iget v3, p0, Lgroovyjarjarantlr/TokenQueue;->DW:I

    and-int/2addr v1, v3

    aput-object p1, v0, v1

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lgroovyjarjarantlr/TokenQueue;->Hw:I

    return-void
.end method
