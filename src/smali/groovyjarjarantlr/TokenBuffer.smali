.class public Lgroovyjarjarantlr/TokenBuffer;
.super Ljava/lang/Object;


# instance fields
.field DW:I

.field FH:I

.field Hw:I

.field protected j6:Lgroovyjarjarantlr/TokenStream;

.field v5:Lgroovyjarjarantlr/TokenQueue;


# direct methods
.method public constructor <init>(Lgroovyjarjarantlr/TokenStream;)V
    .registers 4

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lgroovyjarjarantlr/TokenBuffer;->DW:I

    iput v0, p0, Lgroovyjarjarantlr/TokenBuffer;->FH:I

    iput v0, p0, Lgroovyjarjarantlr/TokenBuffer;->Hw:I

    iput-object p1, p0, Lgroovyjarjarantlr/TokenBuffer;->j6:Lgroovyjarjarantlr/TokenStream;

    new-instance v0, Lgroovyjarjarantlr/TokenQueue;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lgroovyjarjarantlr/TokenQueue;-><init>(I)V

    iput-object v0, p0, Lgroovyjarjarantlr/TokenBuffer;->v5:Lgroovyjarjarantlr/TokenQueue;

    return-void
.end method

.method private final FH()V
    .registers 2

    :goto_0
    iget v0, p0, Lgroovyjarjarantlr/TokenBuffer;->Hw:I

    if-lez v0, :cond_1

    iget v0, p0, Lgroovyjarjarantlr/TokenBuffer;->DW:I

    if-lez v0, :cond_0

    iget v0, p0, Lgroovyjarjarantlr/TokenBuffer;->FH:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lgroovyjarjarantlr/TokenBuffer;->FH:I

    :goto_1
    iget v0, p0, Lgroovyjarjarantlr/TokenBuffer;->Hw:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lgroovyjarjarantlr/TokenBuffer;->Hw:I

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lgroovyjarjarantlr/TokenBuffer;->v5:Lgroovyjarjarantlr/TokenQueue;

    invoke-virtual {v0}, Lgroovyjarjarantlr/TokenQueue;->j6()V

    goto :goto_1

    :cond_1
    return-void
.end method

.method private final Hw(I)V
    .registers 5

    invoke-direct {p0}, Lgroovyjarjarantlr/TokenBuffer;->FH()V

    :goto_0
    iget-object v0, p0, Lgroovyjarjarantlr/TokenBuffer;->v5:Lgroovyjarjarantlr/TokenQueue;

    iget v1, v0, Lgroovyjarjarantlr/TokenQueue;->Hw:I

    iget v2, p0, Lgroovyjarjarantlr/TokenBuffer;->FH:I

    add-int/2addr v2, p1

    if-ge v1, v2, :cond_0

    iget-object v1, p0, Lgroovyjarjarantlr/TokenBuffer;->j6:Lgroovyjarjarantlr/TokenStream;

    invoke-interface {v1}, Lgroovyjarjarantlr/TokenStream;->nextToken()Lgroovyjarjarantlr/Token;

    move-result-object v1

    invoke-virtual {v0, v1}, Lgroovyjarjarantlr/TokenQueue;->j6(Lgroovyjarjarantlr/Token;)V

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public final DW()I
    .registers 2

    invoke-direct {p0}, Lgroovyjarjarantlr/TokenBuffer;->FH()V

    iget v0, p0, Lgroovyjarjarantlr/TokenBuffer;->DW:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lgroovyjarjarantlr/TokenBuffer;->DW:I

    iget v0, p0, Lgroovyjarjarantlr/TokenBuffer;->FH:I

    return v0
.end method

.method public final DW(I)Lgroovyjarjarantlr/Token;
    .registers 4

    invoke-direct {p0, p1}, Lgroovyjarjarantlr/TokenBuffer;->Hw(I)V

    iget-object v0, p0, Lgroovyjarjarantlr/TokenBuffer;->v5:Lgroovyjarjarantlr/TokenQueue;

    iget v1, p0, Lgroovyjarjarantlr/TokenBuffer;->FH:I

    add-int/2addr v1, p1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Lgroovyjarjarantlr/TokenQueue;->j6(I)Lgroovyjarjarantlr/Token;

    move-result-object v0

    return-object v0
.end method

.method public final FH(I)V
    .registers 3

    invoke-direct {p0}, Lgroovyjarjarantlr/TokenBuffer;->FH()V

    iput p1, p0, Lgroovyjarjarantlr/TokenBuffer;->FH:I

    iget v0, p0, Lgroovyjarjarantlr/TokenBuffer;->DW:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lgroovyjarjarantlr/TokenBuffer;->DW:I

    return-void
.end method

.method public final j6(I)I
    .registers 4

    invoke-direct {p0, p1}, Lgroovyjarjarantlr/TokenBuffer;->Hw(I)V

    iget-object v0, p0, Lgroovyjarjarantlr/TokenBuffer;->v5:Lgroovyjarjarantlr/TokenQueue;

    iget v1, p0, Lgroovyjarjarantlr/TokenBuffer;->FH:I

    add-int/2addr v1, p1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Lgroovyjarjarantlr/TokenQueue;->j6(I)Lgroovyjarjarantlr/Token;

    move-result-object v0

    invoke-virtual {v0}, Lgroovyjarjarantlr/Token;->DW()I

    move-result v0

    return v0
.end method

.method public final j6()V
    .registers 2

    iget v0, p0, Lgroovyjarjarantlr/TokenBuffer;->Hw:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lgroovyjarjarantlr/TokenBuffer;->Hw:I

    return-void
.end method
