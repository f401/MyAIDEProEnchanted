.class public Labcd/WF;
.super Labcd/jK;


# instance fields
.field private final FH:Labcd/fK;

.field private Hw:Labcd/bG;


# direct methods
.method constructor <init>(Labcd/fK;)V
    .registers 2

    invoke-direct {p0}, Labcd/jK;-><init>()V

    iput-object p1, p0, Labcd/WF;->FH:Labcd/fK;

    return-void
.end method

.method public static j6(Ljava/lang/String;)Labcd/WF;
    .registers 3

    new-instance v0, Labcd/WF;

    invoke-static {p0}, Labcd/fK;->j6(Ljava/lang/String;)Labcd/fK;

    move-result-object v1

    invoke-direct {v0, v1}, Labcd/WF;-><init>(Labcd/fK;)V

    return-object v0
.end method


# virtual methods
.method public DW()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Labcd/WF;->FH:Labcd/fK;

    invoke-virtual {v0}, Labcd/fK;->DW()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public FH()Labcd/bG;
    .registers 2

    iget-object v0, p0, Labcd/WF;->Hw:Labcd/bG;

    return-object v0
.end method

.method public clone()Labcd/jK;
    .registers 3

    iget-object v0, p0, Labcd/WF;->FH:Labcd/fK;

    invoke-virtual {v0}, Labcd/fK;->clone()Labcd/fK;

    new-instance v1, Labcd/WF;

    invoke-direct {v1, v0}, Labcd/WF;-><init>(Labcd/fK;)V

    return-object v1
.end method

.method public j6(Labcd/bG;)V
    .registers 2

    iput-object p1, p0, Labcd/WF;->Hw:Labcd/bG;

    return-void
.end method

.method public j6()Z
    .registers 2

    iget-object v0, p0, Labcd/WF;->FH:Labcd/fK;

    invoke-virtual {v0}, Labcd/fK;->j6()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Labcd/jK;->DW:Labcd/jK;

    invoke-virtual {v0}, Labcd/jK;->j6()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public j6(Labcd/YJ;)Z
    .registers 3

    iget-object v0, p0, Labcd/WF;->FH:Labcd/fK;

    invoke-virtual {v0, p1}, Labcd/fK;->j6(Labcd/YJ;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Labcd/jK;->DW:Labcd/jK;

    invoke-virtual {v0, p1}, Labcd/jK;->j6(Labcd/YJ;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "(FOLLOW("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Labcd/WF;->FH:Labcd/fK;

    invoke-virtual {v1}, Labcd/fK;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " AND "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Labcd/jK;->DW:Labcd/jK;

    invoke-virtual {v1}, Labcd/jK;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
