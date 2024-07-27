.class public final Labcd/zs;
.super Labcd/qs;


# instance fields
.field private v5:Labcd/Gs;


# direct methods
.method public constructor <init>(Labcd/Ks;Labcd/Hs;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Labcd/qs;-><init>(Labcd/Ks;Labcd/Hs;)V

    const/4 v0, 0x0

    iput-object v0, p0, Labcd/zs;->v5:Labcd/Gs;

    return-void
.end method


# virtual methods
.method public Zo()Ljava/lang/String;
    .registers 2

    const-string v0, "ifaceMethod"

    return-object v0
.end method

.method public rN()Labcd/Gs;
    .registers 4

    iget-object v0, p0, Labcd/zs;->v5:Labcd/Gs;

    if-nez v0, :cond_0

    new-instance v0, Labcd/Gs;

    invoke-virtual {p0}, Labcd/Fs;->VH()Labcd/Ks;

    move-result-object v1

    invoke-virtual {p0}, Labcd/Fs;->we()Labcd/Hs;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Labcd/Gs;-><init>(Labcd/Ks;Labcd/Hs;)V

    iput-object v0, p0, Labcd/zs;->v5:Labcd/Gs;

    :cond_0
    iget-object v0, p0, Labcd/zs;->v5:Labcd/Gs;

    return-object v0
.end method
