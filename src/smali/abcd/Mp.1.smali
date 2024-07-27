.class public final Labcd/Mp;
.super Labcd/Gp;


# instance fields
.field private final v5:Labcd/Js;


# direct methods
.method public constructor <init>(Labcd/Js;)V
    .registers 4

    const/4 v0, 0x1

    invoke-static {p1}, Labcd/Mp;->j6(Labcd/Js;)I

    move-result v1

    invoke-direct {p0, v0, v1}, Labcd/Gp;-><init>(II)V

    iput-object p1, p0, Labcd/Mp;->v5:Labcd/Js;

    return-void
.end method

.method private static j6(Labcd/Js;)I
    .registers 3

    invoke-virtual {p0}, Labcd/Js;->J8()I

    move-result v0

    invoke-static {v0}, Labcd/eu;->j6(I)I

    move-result v0

    invoke-virtual {p0}, Labcd/Js;->Ws()I

    move-result v1

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    return v0
.end method


# virtual methods
.method protected DW(Labcd/Gp;)I
    .registers 4

    check-cast p1, Labcd/Mp;

    iget-object v0, p0, Labcd/Mp;->v5:Labcd/Js;

    iget-object v1, p1, Labcd/Mp;->v5:Labcd/Js;

    invoke-virtual {v0, v1}, Labcd/ms;->j6(Labcd/ms;)I

    move-result v0

    return v0
.end method

.method public DW(Labcd/jp;Labcd/Lt;)V
    .registers 8

    iget-object v0, p0, Labcd/Mp;->v5:Labcd/Js;

    invoke-virtual {v0}, Labcd/Js;->VH()Labcd/Pt;

    move-result-object v0

    iget-object v1, p0, Labcd/Mp;->v5:Labcd/Js;

    invoke-virtual {v1}, Labcd/Js;->J8()I

    move-result v1

    invoke-interface {p2}, Labcd/Lt;->Hw()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {v1}, Labcd/eu;->j6(I)I

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "utf16_size: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Labcd/Yt;->gn(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p2, v2, v3}, Labcd/Lt;->j6(ILjava/lang/String;)V

    invoke-virtual {v0}, Labcd/Pt;->FH()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    iget-object v3, p0, Labcd/Mp;->v5:Labcd/Js;

    invoke-virtual {v3}, Labcd/Js;->lg()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p2, v2, v3}, Labcd/Lt;->j6(ILjava/lang/String;)V

    :cond_0
    invoke-interface {p2, v1}, Labcd/ku;->DW(I)I

    invoke-interface {p2, v0}, Labcd/ku;->j6(Labcd/Pt;)V

    const/4 v0, 0x0

    invoke-interface {p2, v0}, Labcd/ku;->writeByte(I)V

    return-void
.end method

.method public Hw()Labcd/wp;
    .registers 2

    sget-object v0, Labcd/wp;->J8:Labcd/wp;

    return-object v0
.end method

.method public aM()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Labcd/Mp;->v5:Labcd/Js;

    invoke-virtual {v0}, Labcd/Js;->lg()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public j6(Labcd/jp;)V
    .registers 2

    return-void
.end method
