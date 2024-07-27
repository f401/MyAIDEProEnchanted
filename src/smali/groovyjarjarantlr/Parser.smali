.class public abstract Lgroovyjarjarantlr/Parser;
.super Ljava/lang/Object;


# instance fields
.field protected DW:[Ljava/lang/String;

.field protected FH:Lgroovyjarjarantlr/collections/AST;

.field protected Hw:Lgroovyjarjarantlr/ASTFactory;

.field protected VH:I

.field private Zo:Z

.field protected j6:Lgroovyjarjarantlr/ParserSharedInputState;

.field protected v5:Ljava/util/Hashtable;


# direct methods
.method public constructor <init>()V
    .registers 2

    new-instance v0, Lgroovyjarjarantlr/ParserSharedInputState;

    invoke-direct {v0}, Lgroovyjarjarantlr/ParserSharedInputState;-><init>()V

    invoke-direct {p0, v0}, Lgroovyjarjarantlr/Parser;-><init>(Lgroovyjarjarantlr/ParserSharedInputState;)V

    return-void
.end method

.method public constructor <init>(Lgroovyjarjarantlr/ParserSharedInputState;)V
    .registers 4

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lgroovyjarjarantlr/Parser;->Hw:Lgroovyjarjarantlr/ASTFactory;

    iput-object v1, p0, Lgroovyjarjarantlr/Parser;->v5:Ljava/util/Hashtable;

    iput-boolean v0, p0, Lgroovyjarjarantlr/Parser;->Zo:Z

    iput v0, p0, Lgroovyjarjarantlr/Parser;->VH:I

    iput-object p1, p0, Lgroovyjarjarantlr/Parser;->j6:Lgroovyjarjarantlr/ParserSharedInputState;

    return-void
.end method


# virtual methods
.method public abstract DW(I)Lgroovyjarjarantlr/Token;
.end method

.method public DW()Lgroovyjarjarantlr/collections/AST;
    .registers 2

    iget-object v0, p0, Lgroovyjarjarantlr/Parser;->FH:Lgroovyjarjarantlr/collections/AST;

    return-object v0
.end method

.method public FH()Lgroovyjarjarantlr/ASTFactory;
    .registers 2

    iget-object v0, p0, Lgroovyjarjarantlr/Parser;->Hw:Lgroovyjarjarantlr/ASTFactory;

    return-object v0
.end method

.method public FH(I)V
    .registers 8

    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lgroovyjarjarantlr/Parser;->j6(I)I

    move-result v0

    if-ne v0, p1, :cond_0

    invoke-virtual {p0}, Lgroovyjarjarantlr/Parser;->j6()V

    return-void

    :cond_0
    new-instance v0, Lgroovyjarjarantlr/MismatchedTokenException;

    iget-object v1, p0, Lgroovyjarjarantlr/Parser;->DW:[Ljava/lang/String;

    invoke-virtual {p0, v2}, Lgroovyjarjarantlr/Parser;->DW(I)Lgroovyjarjarantlr/Token;

    move-result-object v2

    const/4 v4, 0x0

    invoke-virtual {p0}, Lgroovyjarjarantlr/Parser;->Hw()Ljava/lang/String;

    move-result-object v5

    move v3, p1

    invoke-direct/range {v0 .. v5}, Lgroovyjarjarantlr/MismatchedTokenException;-><init>([Ljava/lang/String;Lgroovyjarjarantlr/Token;IZLjava/lang/String;)V

    throw v0
.end method

.method public Hw()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lgroovyjarjarantlr/Parser;->j6:Lgroovyjarjarantlr/ParserSharedInputState;

    iget-object v0, v0, Lgroovyjarjarantlr/ParserSharedInputState;->FH:Ljava/lang/String;

    return-object v0
.end method

.method public Hw(I)V
    .registers 8

    const/4 v4, 0x1

    invoke-virtual {p0, v4}, Lgroovyjarjarantlr/Parser;->j6(I)I

    move-result v0

    if-eq v0, p1, :cond_0

    invoke-virtual {p0}, Lgroovyjarjarantlr/Parser;->j6()V

    return-void

    :cond_0
    new-instance v0, Lgroovyjarjarantlr/MismatchedTokenException;

    iget-object v1, p0, Lgroovyjarjarantlr/Parser;->DW:[Ljava/lang/String;

    invoke-virtual {p0, v4}, Lgroovyjarjarantlr/Parser;->DW(I)Lgroovyjarjarantlr/Token;

    move-result-object v2

    invoke-virtual {p0}, Lgroovyjarjarantlr/Parser;->Hw()Ljava/lang/String;

    move-result-object v5

    move v3, p1

    invoke-direct/range {v0 .. v5}, Lgroovyjarjarantlr/MismatchedTokenException;-><init>([Ljava/lang/String;Lgroovyjarjarantlr/Token;IZLjava/lang/String;)V

    throw v0
.end method

.method public Zo()I
    .registers 2

    iget-object v0, p0, Lgroovyjarjarantlr/Parser;->j6:Lgroovyjarjarantlr/ParserSharedInputState;

    iget-object v0, v0, Lgroovyjarjarantlr/ParserSharedInputState;->j6:Lgroovyjarjarantlr/TokenBuffer;

    invoke-virtual {v0}, Lgroovyjarjarantlr/TokenBuffer;->DW()I

    move-result v0

    return v0
.end method

.method public abstract j6(I)I
.end method

.method public abstract j6()V
.end method

.method public j6(Lgroovyjarjarantlr/TokenBuffer;)V
    .registers 3

    iget-object v0, p0, Lgroovyjarjarantlr/Parser;->j6:Lgroovyjarjarantlr/ParserSharedInputState;

    iput-object p1, v0, Lgroovyjarjarantlr/ParserSharedInputState;->j6:Lgroovyjarjarantlr/TokenBuffer;

    return-void
.end method

.method public j6(Lgroovyjarjarantlr/collections/impl/BitSet;)V
    .registers 8

    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lgroovyjarjarantlr/Parser;->j6(I)I

    move-result v0

    invoke-virtual {p1, v0}, Lgroovyjarjarantlr/collections/impl/BitSet;->Hw(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lgroovyjarjarantlr/Parser;->j6()V

    return-void

    :cond_0
    new-instance v0, Lgroovyjarjarantlr/MismatchedTokenException;

    iget-object v1, p0, Lgroovyjarjarantlr/Parser;->DW:[Ljava/lang/String;

    invoke-virtual {p0, v2}, Lgroovyjarjarantlr/Parser;->DW(I)Lgroovyjarjarantlr/Token;

    move-result-object v2

    const/4 v4, 0x0

    invoke-virtual {p0}, Lgroovyjarjarantlr/Parser;->Hw()Ljava/lang/String;

    move-result-object v5

    move-object v3, p1

    invoke-direct/range {v0 .. v5}, Lgroovyjarjarantlr/MismatchedTokenException;-><init>([Ljava/lang/String;Lgroovyjarjarantlr/Token;Lgroovyjarjarantlr/collections/impl/BitSet;ZLjava/lang/String;)V

    throw v0
.end method

.method public v5()Ljava/util/Hashtable;
    .registers 2

    iget-object v0, p0, Lgroovyjarjarantlr/Parser;->v5:Ljava/util/Hashtable;

    return-object v0
.end method

.method public v5(I)V
    .registers 3

    iget-object v0, p0, Lgroovyjarjarantlr/Parser;->j6:Lgroovyjarjarantlr/ParserSharedInputState;

    iget-object v0, v0, Lgroovyjarjarantlr/ParserSharedInputState;->j6:Lgroovyjarjarantlr/TokenBuffer;

    invoke-virtual {v0, p1}, Lgroovyjarjarantlr/TokenBuffer;->FH(I)V

    return-void
.end method
