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

    if-gez p1, :cond_0

    const/16 v0, 0x10

    invoke-direct {p0, v0}, Lgroovyjarjarantlr/TokenQueue;->DW(I)V

    :goto_0
    return-void

    :cond_0
    const v0, 0x3fffffff    # 1.9999999f

    if-lt p1, v0, :cond_1

    const v0, 0x7fffffff

    invoke-direct {p0, v0}, Lgroovyjarjarantlr/TokenQueue;->DW(I)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x2

    :goto_1
    if-ge v0, p1, :cond_2

    mul-int/lit8 v0, v0, 0x2

    goto :goto_1

    :cond_2
    invoke-direct {p0, v0}, Lgroovyjarjarantlr/TokenQueue;->DW(I)V

    goto :goto_0
.end method

.method private final DW()V
    .registers 5

    const/4 v1, 0x0

    iget-object v0, p0, Lgroovyjarjarantlr/TokenQueue;->j6:[Lgroovyjarjarantlr/Token;

    array-length v0, v0

    mul-int/lit8 v0, v0, 0x2

    new-array v2, v0, [Lgroovyjarjarantlr/Token;

    move v0, v1

    :goto_0
    iget-object v3, p0, Lgroovyjarjarantlr/TokenQueue;->j6:[Lgroovyjarjarantlr/Token;

    array-length v3, v3

    if-ge v0, v3, :cond_0

    invoke-virtual {p0, v0}, Lgroovyjarjarantlr/TokenQueue;->j6(I)Lgroovyjarjarantlr/Token;

    move-result-object v3

    aput-object v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iput-object v2, p0, Lgroovyjarjarantlr/TokenQueue;->j6:[Lgroovyjarjarantlr/Token;

    iget-object v0, p0, Lgroovyjarjarantlr/TokenQueue;->j6:[Lgroovyjarjarantlr/Token;

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lgroovyjarjarantlr/TokenQueue;->DW:I

    iput v1, p0, Lgroovyjarjarantlr/TokenQueue;->FH:I

    return-void
.end method

.method private final DW(I)V
    .registers 4

    const/4 v1, 0x0

    new-array v0, p1, [Lgroovyjarjarantlr/Token;

    iput-object v0, p0, Lgroovyjarjarantlr/TokenQueue;->j6:[Lgroovyjarjarantlr/Token;

    add-int/lit8 v0, p1, -0x1

    iput v0, p0, Lgroovyjarjarantlr/TokenQueue;->DW:I

    iput v1, p0, Lgroovyjarjarantlr/TokenQueue;->FH:I

    iput v1, p0, Lgroovyjarjarantlr/TokenQueue;->Hw:I

    return-void
.end method


# virtual methods
.method public final j6(I)Lgroovyjarjarantlr/Token;
    .registers 5

    iget-object v0, p0, Lgroovyjarjarantlr/TokenQueue;->j6:[Lgroovyjarjarantlr/Token;

    iget v1, p0, Lgroovyjarjarantlr/TokenQueue;->FH:I

    iget v2, p0, Lgroovyjarjarantlr/TokenQueue;->DW:I

    add-int/2addr v1, p1

    and-int/2addr v1, v2

    aget-object v0, v0, v1

    return-object v0
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

    if-ne v0, v1, :cond_0

    invoke-direct {p0}, Lgroovyjarjarantlr/TokenQueue;->DW()V

    :cond_0
    iget-object v0, p0, Lgroovyjarjarantlr/TokenQueue;->j6:[Lgroovyjarjarantlr/Token;

    iget v1, p0, Lgroovyjarjarantlr/TokenQueue;->FH:I

    iget v2, p0, Lgroovyjarjarantlr/TokenQueue;->Hw:I

    add-int/2addr v1, v2

    iget v3, p0, Lgroovyjarjarantlr/TokenQueue;->DW:I

    and-int/2addr v1, v3

    aput-object p1, v0, v1

    add-int/lit8 v0, v2, 0x1

    iput v0, p0, Lgroovyjarjarantlr/TokenQueue;->Hw:I

    return-void
.end method
