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

    move-result p1

    const/4 p2, 0x6

    if-ne p1, p2, :cond_1d

    if-eqz p4, :cond_15

    iput-object p4, p0, Labcd/js;->Zo:Labcd/Ss;

    return-void

    :cond_15
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "catches == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1d
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "bogus branchingness"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
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

    if-eqz v2, :cond_12

    check-cast v0, Labcd/Js;

    invoke-virtual {v0}, Labcd/Js;->lg()Ljava/lang/String;

    move-result-object v1

    :cond_12
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Labcd/js;->Zo:Labcd/Ss;

    invoke-static {v1}, Labcd/ks;->j6(Labcd/Ss;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public j6(Labcd/Qs;)Labcd/Tr;
    .registers 9

    new-instance v6, Labcd/js;

    invoke-virtual {p0}, Labcd/Tr;->v5()Labcd/es;

    move-result-object v1

    invoke-virtual {p0}, Labcd/Tr;->Zo()Labcd/hs;

    move-result-object v2

    invoke-virtual {p0}, Labcd/Tr;->gn()Labcd/cs;

    move-result-object v3

    iget-object v0, p0, Labcd/js;->Zo:Labcd/Ss;

    invoke-interface {v0, p1}, Labcd/Ss;->j6(Labcd/Qs;)Labcd/Ss;

    move-result-object v4

    invoke-virtual {p0}, Labcd/Pr;->tp()Labcd/ms;

    move-result-object v5

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Labcd/js;-><init>(Labcd/es;Labcd/hs;Labcd/cs;Labcd/Ss;Labcd/ms;)V

    return-object v6
.end method

.method public j6(Labcd/bs;Labcd/cs;)Labcd/Tr;
    .registers 9

    new-instance p1, Labcd/js;

    invoke-virtual {p0}, Labcd/Tr;->v5()Labcd/es;

    move-result-object v1

    invoke-virtual {p0}, Labcd/Tr;->Zo()Labcd/hs;

    move-result-object v2

    iget-object v4, p0, Labcd/js;->Zo:Labcd/Ss;

    invoke-virtual {p0}, Labcd/Pr;->tp()Labcd/ms;

    move-result-object v5

    move-object v0, p1

    move-object v3, p2

    invoke-direct/range {v0 .. v5}, Labcd/js;-><init>(Labcd/es;Labcd/hs;Labcd/cs;Labcd/Ss;Labcd/ms;)V

    return-object p1
.end method

.method public j6(Labcd/Tr$b;)V
    .registers 2

    invoke-interface {p1, p0}, Labcd/Tr$b;->j6(Labcd/js;)V

    return-void
.end method
