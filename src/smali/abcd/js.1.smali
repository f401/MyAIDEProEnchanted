.class public final Labcd/js;
.super Labcd/Pr;


# instance fields
.field private final Zo:Labcd/Ss;


# direct methods
.method public constructor <init>(Labcd/es;Labcd/hs;Labcd/cs;Labcd/Ss;Labcd/ms;)V
    .registers 12

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Labcd/Pr;-><init>(Labcd/es;Labcd/hs;Labcd/bs;Labcd/cs;Labcd/ms;)V

    invoke-virtual {p1}, Labcd/es;->DW()I

    move-result v0

    const/4 v1, 0x6

    if-ne v0, v1, :cond_1

    if-eqz p4, :cond_0

    iput-object p4, p0, Labcd/js;->Zo:Labcd/Ss;

    return-void

    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "catches == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "bogus branchingness"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public DW()Labcd/Ss;
    .registers 2

    iget-object v0, p0, Labcd/js;->Zo:Labcd/Ss;

    return-object v0
.end method

.method public FH()Ljava/lang/String;
    .registers 4

    invoke-virtual {p0}, Labcd/Pr;->tp()Labcd/ms;

    move-result-object v0

    invoke-interface {v0}, Labcd/lu;->aM()Ljava/lang/String;

    move-result-object v1

    instance-of v2, v0, Labcd/Js;

    if-eqz v2, :cond_0

    check-cast v0, Labcd/Js;

    invoke-virtual {v0}, Labcd/Js;->lg()Ljava/lang/String;

    move-result-object v0

    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Labcd/js;->Zo:Labcd/Ss;

    invoke-static {v0}, Labcd/ks;->j6(Labcd/Ss;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    move-object v0, v1

    goto :goto_0
.end method

.method public j6(Labcd/Qs;)Labcd/Tr;
    .registers 8

    new-instance v0, Labcd/js;

    invoke-virtual {p0}, Labcd/Tr;->v5()Labcd/es;

    move-result-object v1

    invoke-virtual {p0}, Labcd/Tr;->Zo()Labcd/hs;

    move-result-object v2

    invoke-virtual {p0}, Labcd/Tr;->gn()Labcd/cs;

    move-result-object v3

    iget-object v4, p0, Labcd/js;->Zo:Labcd/Ss;

    invoke-interface {v4, p1}, Labcd/Ss;->j6(Labcd/Qs;)Labcd/Ss;

    move-result-object v4

    invoke-virtual {p0}, Labcd/Pr;->tp()Labcd/ms;

    move-result-object v5

    invoke-direct/range {v0 .. v5}, Labcd/js;-><init>(Labcd/es;Labcd/hs;Labcd/cs;Labcd/Ss;Labcd/ms;)V

    return-object v0
.end method

.method public j6(Labcd/bs;Labcd/cs;)Labcd/Tr;
    .registers 9

    new-instance v0, Labcd/js;

    invoke-virtual {p0}, Labcd/Tr;->v5()Labcd/es;

    move-result-object v1

    invoke-virtual {p0}, Labcd/Tr;->Zo()Labcd/hs;

    move-result-object v2

    iget-object v4, p0, Labcd/js;->Zo:Labcd/Ss;

    invoke-virtual {p0}, Labcd/Pr;->tp()Labcd/ms;

    move-result-object v5

    move-object v3, p2

    invoke-direct/range {v0 .. v5}, Labcd/js;-><init>(Labcd/es;Labcd/hs;Labcd/cs;Labcd/Ss;Labcd/ms;)V

    return-object v0
.end method

.method public j6(Labcd/Tr$b;)V
    .registers 2

    invoke-interface {p1, p0}, Labcd/Tr$b;->j6(Labcd/js;)V

    return-void
.end method
