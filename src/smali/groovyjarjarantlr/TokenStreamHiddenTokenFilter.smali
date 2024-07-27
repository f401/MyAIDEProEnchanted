.class public Lgroovyjarjarantlr/TokenStreamHiddenTokenFilter;
.super Lgroovyjarjarantlr/TokenStreamBasicFilter;

# interfaces
.implements Lgroovyjarjarantlr/TokenStream;


# instance fields
.field protected FH:Lgroovyjarjarantlr/collections/impl/BitSet;

.field protected Hw:Lgroovyjarjarantlr/CommonHiddenStreamToken;

.field protected Zo:Lgroovyjarjarantlr/CommonHiddenStreamToken;

.field protected v5:Lgroovyjarjarantlr/CommonHiddenStreamToken;


# direct methods
.method private DW()V
    .registers 5

    const/4 v3, 0x1

    invoke-virtual {p0}, Lgroovyjarjarantlr/TokenStreamHiddenTokenFilter;->j6()V

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lgroovyjarjarantlr/TokenStreamHiddenTokenFilter;->FH:Lgroovyjarjarantlr/collections/impl/BitSet;

    invoke-virtual {p0, v3}, Lgroovyjarjarantlr/TokenStreamHiddenTokenFilter;->j6(I)Lgroovyjarjarantlr/CommonHiddenStreamToken;

    move-result-object v2

    invoke-virtual {v2}, Lgroovyjarjarantlr/Token;->DW()I

    move-result v2

    invoke-virtual {v1, v2}, Lgroovyjarjarantlr/collections/impl/BitSet;->Hw(I)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lgroovyjarjarantlr/TokenStreamBasicFilter;->j6:Lgroovyjarjarantlr/collections/impl/BitSet;

    invoke-virtual {p0, v3}, Lgroovyjarjarantlr/TokenStreamHiddenTokenFilter;->j6(I)Lgroovyjarjarantlr/CommonHiddenStreamToken;

    move-result-object v2

    invoke-virtual {v2}, Lgroovyjarjarantlr/Token;->DW()I

    move-result v2

    invoke-virtual {v1, v2}, Lgroovyjarjarantlr/collections/impl/BitSet;->Hw(I)Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_0
    iget-object v1, p0, Lgroovyjarjarantlr/TokenStreamHiddenTokenFilter;->FH:Lgroovyjarjarantlr/collections/impl/BitSet;

    invoke-virtual {p0, v3}, Lgroovyjarjarantlr/TokenStreamHiddenTokenFilter;->j6(I)Lgroovyjarjarantlr/CommonHiddenStreamToken;

    move-result-object v2

    invoke-virtual {v2}, Lgroovyjarjarantlr/Token;->DW()I

    move-result v2

    invoke-virtual {v1, v2}, Lgroovyjarjarantlr/collections/impl/BitSet;->Hw(I)Z

    move-result v1

    if-eqz v1, :cond_1

    if-nez v0, :cond_2

    invoke-virtual {p0, v3}, Lgroovyjarjarantlr/TokenStreamHiddenTokenFilter;->j6(I)Lgroovyjarjarantlr/CommonHiddenStreamToken;

    move-result-object v0

    :goto_1
    iput-object v0, p0, Lgroovyjarjarantlr/TokenStreamHiddenTokenFilter;->v5:Lgroovyjarjarantlr/CommonHiddenStreamToken;

    iget-object v1, p0, Lgroovyjarjarantlr/TokenStreamHiddenTokenFilter;->Zo:Lgroovyjarjarantlr/CommonHiddenStreamToken;

    if-nez v1, :cond_1

    iput-object v0, p0, Lgroovyjarjarantlr/TokenStreamHiddenTokenFilter;->Zo:Lgroovyjarjarantlr/CommonHiddenStreamToken;

    :cond_1
    invoke-virtual {p0}, Lgroovyjarjarantlr/TokenStreamHiddenTokenFilter;->j6()V

    goto :goto_0

    :cond_2
    invoke-virtual {p0, v3}, Lgroovyjarjarantlr/TokenStreamHiddenTokenFilter;->j6(I)Lgroovyjarjarantlr/CommonHiddenStreamToken;

    move-result-object v1

    invoke-virtual {v0, v1}, Lgroovyjarjarantlr/CommonHiddenStreamToken;->j6(Lgroovyjarjarantlr/CommonHiddenStreamToken;)V

    invoke-virtual {p0, v3}, Lgroovyjarjarantlr/TokenStreamHiddenTokenFilter;->j6(I)Lgroovyjarjarantlr/CommonHiddenStreamToken;

    move-result-object v1

    invoke-virtual {v1, v0}, Lgroovyjarjarantlr/CommonHiddenStreamToken;->DW(Lgroovyjarjarantlr/CommonHiddenStreamToken;)V

    invoke-virtual {p0, v3}, Lgroovyjarjarantlr/TokenStreamHiddenTokenFilter;->j6(I)Lgroovyjarjarantlr/CommonHiddenStreamToken;

    move-result-object v0

    goto :goto_1

    :cond_3
    return-void
.end method


# virtual methods
.method protected j6(I)Lgroovyjarjarantlr/CommonHiddenStreamToken;
    .registers 3

    iget-object v0, p0, Lgroovyjarjarantlr/TokenStreamHiddenTokenFilter;->Hw:Lgroovyjarjarantlr/CommonHiddenStreamToken;

    return-object v0
.end method

.method protected j6()V
    .registers 2

    iget-object v0, p0, Lgroovyjarjarantlr/TokenStreamBasicFilter;->DW:Lgroovyjarjarantlr/TokenStream;

    invoke-interface {v0}, Lgroovyjarjarantlr/TokenStream;->nextToken()Lgroovyjarjarantlr/Token;

    move-result-object v0

    check-cast v0, Lgroovyjarjarantlr/CommonHiddenStreamToken;

    iput-object v0, p0, Lgroovyjarjarantlr/TokenStreamHiddenTokenFilter;->Hw:Lgroovyjarjarantlr/CommonHiddenStreamToken;

    return-void
.end method

.method public nextToken()Lgroovyjarjarantlr/Token;
    .registers 6

    const/4 v4, 0x1

    invoke-virtual {p0, v4}, Lgroovyjarjarantlr/TokenStreamHiddenTokenFilter;->j6(I)Lgroovyjarjarantlr/CommonHiddenStreamToken;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lgroovyjarjarantlr/TokenStreamHiddenTokenFilter;->DW()V

    :cond_0
    invoke-virtual {p0, v4}, Lgroovyjarjarantlr/TokenStreamHiddenTokenFilter;->j6(I)Lgroovyjarjarantlr/CommonHiddenStreamToken;

    move-result-object v1

    iget-object v0, p0, Lgroovyjarjarantlr/TokenStreamHiddenTokenFilter;->v5:Lgroovyjarjarantlr/CommonHiddenStreamToken;

    invoke-virtual {v1, v0}, Lgroovyjarjarantlr/CommonHiddenStreamToken;->DW(Lgroovyjarjarantlr/CommonHiddenStreamToken;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lgroovyjarjarantlr/TokenStreamHiddenTokenFilter;->v5:Lgroovyjarjarantlr/CommonHiddenStreamToken;

    invoke-virtual {p0}, Lgroovyjarjarantlr/TokenStreamHiddenTokenFilter;->j6()V

    move-object v0, v1

    :goto_0
    iget-object v2, p0, Lgroovyjarjarantlr/TokenStreamHiddenTokenFilter;->FH:Lgroovyjarjarantlr/collections/impl/BitSet;

    invoke-virtual {p0, v4}, Lgroovyjarjarantlr/TokenStreamHiddenTokenFilter;->j6(I)Lgroovyjarjarantlr/CommonHiddenStreamToken;

    move-result-object v3

    invoke-virtual {v3}, Lgroovyjarjarantlr/Token;->DW()I

    move-result v3

    invoke-virtual {v2, v3}, Lgroovyjarjarantlr/collections/impl/BitSet;->Hw(I)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lgroovyjarjarantlr/TokenStreamBasicFilter;->j6:Lgroovyjarjarantlr/collections/impl/BitSet;

    invoke-virtual {p0, v4}, Lgroovyjarjarantlr/TokenStreamHiddenTokenFilter;->j6(I)Lgroovyjarjarantlr/CommonHiddenStreamToken;

    move-result-object v3

    invoke-virtual {v3}, Lgroovyjarjarantlr/Token;->DW()I

    move-result v3

    invoke-virtual {v2, v3}, Lgroovyjarjarantlr/collections/impl/BitSet;->Hw(I)Z

    move-result v2

    if-eqz v2, :cond_4

    :cond_1
    iget-object v2, p0, Lgroovyjarjarantlr/TokenStreamHiddenTokenFilter;->FH:Lgroovyjarjarantlr/collections/impl/BitSet;

    invoke-virtual {p0, v4}, Lgroovyjarjarantlr/TokenStreamHiddenTokenFilter;->j6(I)Lgroovyjarjarantlr/CommonHiddenStreamToken;

    move-result-object v3

    invoke-virtual {v3}, Lgroovyjarjarantlr/Token;->DW()I

    move-result v3

    invoke-virtual {v2, v3}, Lgroovyjarjarantlr/collections/impl/BitSet;->Hw(I)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {p0, v4}, Lgroovyjarjarantlr/TokenStreamHiddenTokenFilter;->j6(I)Lgroovyjarjarantlr/CommonHiddenStreamToken;

    move-result-object v2

    invoke-virtual {v0, v2}, Lgroovyjarjarantlr/CommonHiddenStreamToken;->j6(Lgroovyjarjarantlr/CommonHiddenStreamToken;)V

    if-eq v0, v1, :cond_2

    invoke-virtual {p0, v4}, Lgroovyjarjarantlr/TokenStreamHiddenTokenFilter;->j6(I)Lgroovyjarjarantlr/CommonHiddenStreamToken;

    move-result-object v2

    invoke-virtual {v2, v0}, Lgroovyjarjarantlr/CommonHiddenStreamToken;->DW(Lgroovyjarjarantlr/CommonHiddenStreamToken;)V

    :cond_2
    invoke-virtual {p0, v4}, Lgroovyjarjarantlr/TokenStreamHiddenTokenFilter;->j6(I)Lgroovyjarjarantlr/CommonHiddenStreamToken;

    move-result-object v0

    iput-object v0, p0, Lgroovyjarjarantlr/TokenStreamHiddenTokenFilter;->v5:Lgroovyjarjarantlr/CommonHiddenStreamToken;

    :cond_3
    invoke-virtual {p0}, Lgroovyjarjarantlr/TokenStreamHiddenTokenFilter;->j6()V

    goto :goto_0

    :cond_4
    return-object v1
.end method
