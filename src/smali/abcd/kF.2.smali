.class public Labcd/kF;
.super Ljava/lang/Object;

# interfaces
.implements Labcd/ME;


# instance fields
.field private final DW:Labcd/ME;

.field private final j6:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Labcd/ME;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Labcd/kF;->j6:Ljava/lang/String;

    iput-object p2, p0, Labcd/kF;->DW:Labcd/ME;

    return-void
.end method


# virtual methods
.method public DW()Labcd/yE;
    .locals 1

    invoke-virtual {p0}, Labcd/kF;->v5()Labcd/ME;

    move-result-object v0

    invoke-interface {v0}, Labcd/ME;->DW()Labcd/yE;

    move-result-object v0

    return-object v0
.end method

.method public FH()Labcd/yE;
    .locals 1

    invoke-virtual {p0}, Labcd/kF;->v5()Labcd/ME;

    move-result-object v0

    invoke-interface {v0}, Labcd/ME;->FH()Labcd/yE;

    move-result-object v0

    return-object v0
.end method

.method public Hw()Z
    .locals 1

    invoke-virtual {p0}, Labcd/kF;->v5()Labcd/ME;

    move-result-object v0

    invoke-interface {v0}, Labcd/ME;->Hw()Z

    move-result v0

    return v0
.end method

.method public Zo()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Labcd/kF;->j6:Ljava/lang/String;

    return-object v0
.end method

.method public getTarget()Labcd/ME;
    .locals 1

    iget-object v0, p0, Labcd/kF;->DW:Labcd/ME;

    return-object v0
.end method

.method public j6()Labcd/ME$a;
    .locals 1

    sget-object v0, Labcd/ME$a;->DW:Labcd/ME$a;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SymbolicRef["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    invoke-interface {p0}, Labcd/ME;->Zo()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-interface {p0}, Labcd/ME;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x3d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-interface {p0}, Labcd/ME;->DW()Labcd/yE;

    move-result-object v1

    invoke-static {v1}, Labcd/yE;->j6(Labcd/yE;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-interface {p0}, Labcd/ME;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " -> "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p0}, Labcd/ME;->getTarget()Labcd/ME;

    move-result-object p0

    goto :goto_0
.end method

.method public v5()Labcd/ME;
    .locals 2

    invoke-virtual {p0}, Labcd/kF;->getTarget()Labcd/ME;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Labcd/ME;->Zo()Z

    move-result v1

    if-nez v1, :cond_0

    return-object v0

    :cond_0
    invoke-interface {v0}, Labcd/ME;->getTarget()Labcd/ME;

    move-result-object v0

    goto :goto_0
.end method
