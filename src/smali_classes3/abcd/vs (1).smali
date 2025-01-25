.class public final Labcd/vs;
.super Labcd/Fs;


# instance fields
.field private FH:Labcd/ws;


# direct methods
.method public constructor <init>(Labcd/Hs;)V
    .registers 4

    new-instance v0, Labcd/Ks;

    invoke-virtual {p1}, Labcd/Hs;->we()Labcd/Qs;

    move-result-object v1

    invoke-direct {v0, v1}, Labcd/Ks;-><init>(Labcd/Qs;)V

    invoke-direct {p0, v0, p1}, Labcd/Fs;-><init>(Labcd/Ks;Labcd/Hs;)V

    const/4 p1, 0x0

    iput-object p1, p0, Labcd/vs;->FH:Labcd/ws;

    return-void
.end method


# virtual methods
.method public J8()Labcd/ws;
    .registers 4

    iget-object v0, p0, Labcd/vs;->FH:Labcd/ws;

    if-nez v0, :cond_13

    new-instance v0, Labcd/ws;

    invoke-virtual {p0}, Labcd/Fs;->VH()Labcd/Ks;

    move-result-object v1

    invoke-virtual {p0}, Labcd/Fs;->we()Labcd/Hs;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Labcd/ws;-><init>(Labcd/Ks;Labcd/Hs;)V

    iput-object v0, p0, Labcd/vs;->FH:Labcd/ws;

    :cond_13
    iget-object v0, p0, Labcd/vs;->FH:Labcd/ws;

    return-object v0
.end method

.method public Zo()Ljava/lang/String;
    .registers 2

    const-string v0, "enum"

    return-object v0
.end method

.method public getType()Labcd/Qs;
    .registers 2

    invoke-virtual {p0}, Labcd/Fs;->VH()Labcd/Ks;

    move-result-object v0

    invoke-virtual {v0}, Labcd/Ks;->VH()Labcd/Qs;

    move-result-object v0

    return-object v0
.end method
