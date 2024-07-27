.class public Lgroovyjarjarantlr/CommonHiddenStreamToken;
.super Lgroovyjarjarantlr/CommonToken;


# instance fields
.field protected VH:Lgroovyjarjarantlr/CommonHiddenStreamToken;

.field protected Zo:Lgroovyjarjarantlr/CommonHiddenStreamToken;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lgroovyjarjarantlr/CommonToken;-><init>()V

    return-void
.end method


# virtual methods
.method protected DW(Lgroovyjarjarantlr/CommonHiddenStreamToken;)V
    .registers 2

    iput-object p1, p0, Lgroovyjarjarantlr/CommonHiddenStreamToken;->Zo:Lgroovyjarjarantlr/CommonHiddenStreamToken;

    return-void
.end method

.method public FH()Lgroovyjarjarantlr/CommonHiddenStreamToken;
    .registers 2

    iget-object v0, p0, Lgroovyjarjarantlr/CommonHiddenStreamToken;->VH:Lgroovyjarjarantlr/CommonHiddenStreamToken;

    return-object v0
.end method

.method protected j6(Lgroovyjarjarantlr/CommonHiddenStreamToken;)V
    .registers 2

    iput-object p1, p0, Lgroovyjarjarantlr/CommonHiddenStreamToken;->VH:Lgroovyjarjarantlr/CommonHiddenStreamToken;

    return-void
.end method

.method public v5()Lgroovyjarjarantlr/CommonHiddenStreamToken;
    .registers 2

    iget-object v0, p0, Lgroovyjarjarantlr/CommonHiddenStreamToken;->Zo:Lgroovyjarjarantlr/CommonHiddenStreamToken;

    return-object v0
.end method
