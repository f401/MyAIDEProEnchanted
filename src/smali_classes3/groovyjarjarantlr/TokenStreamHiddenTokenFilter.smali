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

    invoke-virtual {p0}, Lgroovyjarjarantlr/TokenStreamHiddenTokenFilter;->j6()V

    const/4 v0, 0x0

    :goto_4
    iget-object v1, p0, Lgroovyjarjarantlr/TokenStreamHiddenTokenFilter;->FH:Lgroovyjarjarantlr/collections/impl/BitSet;

    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lgroovyjarjarantlr/TokenStreamHiddenTokenFilter;->j6(I)Lgroovyjarjarantlr/CommonHiddenStreamToken;

    move-result-object v3

    invoke-virtual {v3}, Lgroovyjarjarantlr/Token;->DW()I

    move-result v3

    invoke-virtual {v1, v3}, Lgroovyjarjarantlr/collections/impl/BitSet;->Hw(I)Z

    move-result v1

    if-nez v1, :cond_27

    iget-object v1, p0, Lgroovyjarjarantlr/TokenStreamBasicFilter;->j6:Lgroovyjarjarantlr/collections/impl/BitSet;

    invoke-virtual {p0, v2}, Lgroovyjarjarantlr/TokenStreamHiddenTokenFilter;->j6(I)Lgroovyjarjarantlr/CommonHiddenStreamToken;

    move-result-object v3

    invoke-virtual {v3}, Lgroovyjarjarantlr/Token;->DW()I

    move-result v3

    invoke-virtual {v1, v3}, Lgroovyjarjarantlr/collections/impl/BitSet;->Hw(I)Z

    move-result v1

    if-eqz v1, :cond_26

    goto :goto_27

    :cond_26
    return-void

    :cond_27
    :goto_27
    iget-object v1, p0, Lgroovyjarjarantlr/TokenStreamHiddenTokenFilter;->FH:Lgroovyjarjarantlr/collections/impl/BitSet;

    invoke-virtual {p0, v2}, Lgroovyjarjarantlr/TokenStreamHiddenTokenFilter;->j6(I)Lgroovyjarjarantlr/CommonHiddenStreamToken;

    move-result-object v3

    invoke-virtual {v3}, Lgroovyjarjarantlr/Token;->DW()I

    move-result v3

    invoke-virtual {v1, v3}, Lgroovyjarjarantlr/collections/impl/BitSet;->Hw(I)Z

    move-result v1

    if-eqz v1, :cond_54

    if-nez v0, :cond_3a

    goto :goto_48

    :cond_3a
    invoke-virtual {p0, v2}, Lgroovyjarjarantlr/TokenStreamHiddenTokenFilter;->j6(I)Lgroovyjarjarantlr/CommonHiddenStreamToken;

    move-result-object v1

    invoke-virtual {v0, v1}, Lgroovyjarjarantlr/CommonHiddenStreamToken;->j6(Lgroovyjarjarantlr/CommonHiddenStreamToken;)V

    invoke-virtual {p0, v2}, Lgroovyjarjarantlr/TokenStreamHiddenTokenFilter;->j6(I)Lgroovyjarjarantlr/CommonHiddenStreamToken;

    move-result-object v1

    invoke-virtual {v1, v0}, Lgroovyjarjarantlr/CommonHiddenStreamToken;->DW(Lgroovyjarjarantlr/CommonHiddenStreamToken;)V

    :goto_48
    invoke-virtual {p0, v2}, Lgroovyjarjarantlr/TokenStreamHiddenTokenFilter;->j6(I)Lgroovyjarjarantlr/CommonHiddenStreamToken;

    move-result-object v0

    iput-object v0, p0, Lgroovyjarjarantlr/TokenStreamHiddenTokenFilter;->v5:Lgroovyjarjarantlr/CommonHiddenStreamToken;

    iget-object v1, p0, Lgroovyjarjarantlr/TokenStreamHiddenTokenFilter;->Zo:Lgroovyjarjarantlr/CommonHiddenStreamToken;

    if-nez v1, :cond_54

    iput-object v0, p0, Lgroovyjarjarantlr/TokenStreamHiddenTokenFilter;->Zo:Lgroovyjarjarantlr/CommonHiddenStreamToken;

    :cond_54
    invoke-virtual {p0}, Lgroovyjarjarantlr/TokenStreamHiddenTokenFilter;->j6()V

    goto :goto_4
.end method


# virtual methods
.method protected j6(I)Lgroovyjarjarantlr/CommonHiddenStreamToken;
    .registers 2

    iget-object p1, p0, Lgroovyjarjarantlr/TokenStreamHiddenTokenFilter;->Hw:Lgroovyjarjarantlr/CommonHiddenStreamToken;

    return-object p1
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

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lgroovyjarjarantlr/TokenStreamHiddenTokenFilter;->j6(I)Lgroovyjarjarantlr/CommonHiddenStreamToken;

    move-result-object v1

    if-nez v1, :cond_a

    invoke-direct {p0}, Lgroovyjarjarantlr/TokenStreamHiddenTokenFilter;->DW()V

    :cond_a
    invoke-virtual {p0, v0}, Lgroovyjarjarantlr/TokenStreamHiddenTokenFilter;->j6(I)Lgroovyjarjarantlr/CommonHiddenStreamToken;

    move-result-object v1

    iget-object v2, p0, Lgroovyjarjarantlr/TokenStreamHiddenTokenFilter;->v5:Lgroovyjarjarantlr/CommonHiddenStreamToken;

    invoke-virtual {v1, v2}, Lgroovyjarjarantlr/CommonHiddenStreamToken;->DW(Lgroovyjarjarantlr/CommonHiddenStreamToken;)V

    const/4 v2, 0x0

    iput-object v2, p0, Lgroovyjarjarantlr/TokenStreamHiddenTokenFilter;->v5:Lgroovyjarjarantlr/CommonHiddenStreamToken;

    invoke-virtual {p0}, Lgroovyjarjarantlr/TokenStreamHiddenTokenFilter;->j6()V

    move-object v2, v1

    :goto_1a
    iget-object v3, p0, Lgroovyjarjarantlr/TokenStreamHiddenTokenFilter;->FH:Lgroovyjarjarantlr/collections/impl/BitSet;

    invoke-virtual {p0, v0}, Lgroovyjarjarantlr/TokenStreamHiddenTokenFilter;->j6(I)Lgroovyjarjarantlr/CommonHiddenStreamToken;

    move-result-object v4

    invoke-virtual {v4}, Lgroovyjarjarantlr/Token;->DW()I

    move-result v4

    invoke-virtual {v3, v4}, Lgroovyjarjarantlr/collections/impl/BitSet;->Hw(I)Z

    move-result v3

    if-nez v3, :cond_3c

    iget-object v3, p0, Lgroovyjarjarantlr/TokenStreamBasicFilter;->j6:Lgroovyjarjarantlr/collections/impl/BitSet;

    invoke-virtual {p0, v0}, Lgroovyjarjarantlr/TokenStreamHiddenTokenFilter;->j6(I)Lgroovyjarjarantlr/CommonHiddenStreamToken;

    move-result-object v4

    invoke-virtual {v4}, Lgroovyjarjarantlr/Token;->DW()I

    move-result v4

    invoke-virtual {v3, v4}, Lgroovyjarjarantlr/collections/impl/BitSet;->Hw(I)Z

    move-result v3

    if-eqz v3, :cond_3b

    goto :goto_3c

    :cond_3b
    return-object v1

    :cond_3c
    :goto_3c
    iget-object v3, p0, Lgroovyjarjarantlr/TokenStreamHiddenTokenFilter;->FH:Lgroovyjarjarantlr/collections/impl/BitSet;

    invoke-virtual {p0, v0}, Lgroovyjarjarantlr/TokenStreamHiddenTokenFilter;->j6(I)Lgroovyjarjarantlr/CommonHiddenStreamToken;

    move-result-object v4

    invoke-virtual {v4}, Lgroovyjarjarantlr/Token;->DW()I

    move-result v4

    invoke-virtual {v3, v4}, Lgroovyjarjarantlr/collections/impl/BitSet;->Hw(I)Z

    move-result v3

    if-eqz v3, :cond_62

    invoke-virtual {p0, v0}, Lgroovyjarjarantlr/TokenStreamHiddenTokenFilter;->j6(I)Lgroovyjarjarantlr/CommonHiddenStreamToken;

    move-result-object v3

    invoke-virtual {v2, v3}, Lgroovyjarjarantlr/CommonHiddenStreamToken;->j6(Lgroovyjarjarantlr/CommonHiddenStreamToken;)V

    if-eq v2, v1, :cond_5c

    invoke-virtual {p0, v0}, Lgroovyjarjarantlr/TokenStreamHiddenTokenFilter;->j6(I)Lgroovyjarjarantlr/CommonHiddenStreamToken;

    move-result-object v3

    invoke-virtual {v3, v2}, Lgroovyjarjarantlr/CommonHiddenStreamToken;->DW(Lgroovyjarjarantlr/CommonHiddenStreamToken;)V

    :cond_5c
    invoke-virtual {p0, v0}, Lgroovyjarjarantlr/TokenStreamHiddenTokenFilter;->j6(I)Lgroovyjarjarantlr/CommonHiddenStreamToken;

    move-result-object v2

    iput-object v2, p0, Lgroovyjarjarantlr/TokenStreamHiddenTokenFilter;->v5:Lgroovyjarjarantlr/CommonHiddenStreamToken;

    :cond_62
    invoke-virtual {p0}, Lgroovyjarjarantlr/TokenStreamHiddenTokenFilter;->j6()V

    goto :goto_1a
.end method
