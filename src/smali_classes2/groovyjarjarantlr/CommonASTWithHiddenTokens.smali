.class public Lgroovyjarjarantlr/CommonASTWithHiddenTokens;
.super Lgroovyjarjarantlr/CommonAST;


# instance fields
.field protected VH:Lgroovyjarjarantlr/CommonHiddenStreamToken;

.field protected gn:Lgroovyjarjarantlr/CommonHiddenStreamToken;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lgroovyjarjarantlr/CommonAST;-><init>()V

    return-void
.end method


# virtual methods
.method public VH()Lgroovyjarjarantlr/CommonHiddenStreamToken;
    .locals 1

    iget-object v0, p0, Lgroovyjarjarantlr/CommonASTWithHiddenTokens;->VH:Lgroovyjarjarantlr/CommonHiddenStreamToken;

    return-object v0
.end method

.method public Zo()Lgroovyjarjarantlr/CommonHiddenStreamToken;
    .locals 1

    iget-object v0, p0, Lgroovyjarjarantlr/CommonASTWithHiddenTokens;->gn:Lgroovyjarjarantlr/CommonHiddenStreamToken;

    return-object v0
.end method

.method public j6(Lgroovyjarjarantlr/Token;)V
    .locals 1

    check-cast p1, Lgroovyjarjarantlr/CommonHiddenStreamToken;

    invoke-super {p0, p1}, Lgroovyjarjarantlr/CommonAST;->j6(Lgroovyjarjarantlr/Token;)V

    invoke-virtual {p1}, Lgroovyjarjarantlr/CommonHiddenStreamToken;->v5()Lgroovyjarjarantlr/CommonHiddenStreamToken;

    move-result-object v0

    iput-object v0, p0, Lgroovyjarjarantlr/CommonASTWithHiddenTokens;->VH:Lgroovyjarjarantlr/CommonHiddenStreamToken;

    invoke-virtual {p1}, Lgroovyjarjarantlr/CommonHiddenStreamToken;->FH()Lgroovyjarjarantlr/CommonHiddenStreamToken;

    move-result-object v0

    iput-object v0, p0, Lgroovyjarjarantlr/CommonASTWithHiddenTokens;->gn:Lgroovyjarjarantlr/CommonHiddenStreamToken;

    return-void
.end method

.method public j6(Lgroovyjarjarantlr/collections/AST;)V
    .locals 2

    move-object v0, p1

    check-cast v0, Lgroovyjarjarantlr/CommonASTWithHiddenTokens;

    invoke-virtual {v0}, Lgroovyjarjarantlr/CommonASTWithHiddenTokens;->VH()Lgroovyjarjarantlr/CommonHiddenStreamToken;

    move-result-object v1

    iput-object v1, p0, Lgroovyjarjarantlr/CommonASTWithHiddenTokens;->VH:Lgroovyjarjarantlr/CommonHiddenStreamToken;

    invoke-virtual {v0}, Lgroovyjarjarantlr/CommonASTWithHiddenTokens;->Zo()Lgroovyjarjarantlr/CommonHiddenStreamToken;

    move-result-object v0

    iput-object v0, p0, Lgroovyjarjarantlr/CommonASTWithHiddenTokens;->gn:Lgroovyjarjarantlr/CommonHiddenStreamToken;

    invoke-super {p0, p1}, Lgroovyjarjarantlr/CommonAST;->j6(Lgroovyjarjarantlr/collections/AST;)V

    return-void
.end method
