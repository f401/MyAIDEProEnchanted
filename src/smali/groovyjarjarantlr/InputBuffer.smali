.class public abstract Lgroovyjarjarantlr/InputBuffer;
.super Ljava/lang/Object;


# instance fields
.field protected DW:I

.field protected FH:I

.field protected Hw:Lgroovyjarjarantlr/CharQueue;

.field protected j6:I


# direct methods
.method public constructor <init>()V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lgroovyjarjarantlr/InputBuffer;->j6:I

    iput v0, p0, Lgroovyjarjarantlr/InputBuffer;->DW:I

    iput v0, p0, Lgroovyjarjarantlr/InputBuffer;->FH:I

    new-instance v0, Lgroovyjarjarantlr/CharQueue;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lgroovyjarjarantlr/CharQueue;-><init>(I)V

    iput-object v0, p0, Lgroovyjarjarantlr/InputBuffer;->Hw:Lgroovyjarjarantlr/CharQueue;

    return-void
.end method


# virtual methods
.method public DW()I
    .registers 2

    invoke-virtual {p0}, Lgroovyjarjarantlr/InputBuffer;->FH()V

    iget v0, p0, Lgroovyjarjarantlr/InputBuffer;->j6:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lgroovyjarjarantlr/InputBuffer;->j6:I

    iget v0, p0, Lgroovyjarjarantlr/InputBuffer;->DW:I

    return v0
.end method

.method public abstract DW(I)V
.end method

.method protected FH()V
    .registers 2

    :goto_0
    iget v0, p0, Lgroovyjarjarantlr/InputBuffer;->FH:I

    if-lez v0, :cond_1

    iget v0, p0, Lgroovyjarjarantlr/InputBuffer;->j6:I

    if-lez v0, :cond_0

    iget v0, p0, Lgroovyjarjarantlr/InputBuffer;->DW:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lgroovyjarjarantlr/InputBuffer;->DW:I

    :goto_1
    iget v0, p0, Lgroovyjarjarantlr/InputBuffer;->FH:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lgroovyjarjarantlr/InputBuffer;->FH:I

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lgroovyjarjarantlr/InputBuffer;->Hw:Lgroovyjarjarantlr/CharQueue;

    invoke-virtual {v0}, Lgroovyjarjarantlr/CharQueue;->j6()V

    goto :goto_1

    :cond_1
    return-void
.end method

.method public FH(I)V
    .registers 3

    invoke-virtual {p0}, Lgroovyjarjarantlr/InputBuffer;->FH()V

    iput p1, p0, Lgroovyjarjarantlr/InputBuffer;->DW:I

    iget v0, p0, Lgroovyjarjarantlr/InputBuffer;->j6:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lgroovyjarjarantlr/InputBuffer;->j6:I

    return-void
.end method

.method public j6(I)C
    .registers 4

    invoke-virtual {p0, p1}, Lgroovyjarjarantlr/InputBuffer;->DW(I)V

    iget-object v0, p0, Lgroovyjarjarantlr/InputBuffer;->Hw:Lgroovyjarjarantlr/CharQueue;

    iget v1, p0, Lgroovyjarjarantlr/InputBuffer;->DW:I

    add-int/2addr v1, p1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Lgroovyjarjarantlr/CharQueue;->j6(I)C

    move-result v0

    return v0
.end method

.method public j6()V
    .registers 2

    iget v0, p0, Lgroovyjarjarantlr/InputBuffer;->FH:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lgroovyjarjarantlr/InputBuffer;->FH:I

    return-void
.end method
