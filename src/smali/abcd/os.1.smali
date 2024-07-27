.class public final Labcd/os;
.super Labcd/ms;


# instance fields
.field private final j6:Labcd/Hr;


# direct methods
.method public constructor <init>(Labcd/Hr;)V
    .registers 4

    invoke-direct {p0}, Labcd/ms;-><init>()V

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Labcd/hu;->Ws()V

    iput-object p1, p0, Labcd/os;->j6:Labcd/Hr;

    return-void

    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "annotation == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method protected DW(Labcd/ms;)I
    .registers 4

    iget-object v0, p0, Labcd/os;->j6:Labcd/Hr;

    check-cast p1, Labcd/os;

    iget-object v1, p1, Labcd/os;->j6:Labcd/Hr;

    invoke-virtual {v0, v1}, Labcd/Hr;->j6(Labcd/Hr;)I

    move-result v0

    return v0
.end method

.method public Hw()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public VH()Labcd/Hr;
    .registers 2

    iget-object v0, p0, Labcd/os;->j6:Labcd/Hr;

    return-object v0
.end method

.method public Zo()Ljava/lang/String;
    .registers 2

    const-string v0, "annotation"

    return-object v0
.end method

.method public aM()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Labcd/os;->j6:Labcd/Hr;

    invoke-virtual {v0}, Labcd/Hr;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 4

    instance-of v0, p1, Labcd/os;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Labcd/os;->j6:Labcd/Hr;

    check-cast p1, Labcd/os;

    iget-object v1, p1, Labcd/os;->j6:Labcd/Hr;

    invoke-virtual {v0, v1}, Labcd/Hr;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public hashCode()I
    .registers 2

    iget-object v0, p0, Labcd/os;->j6:Labcd/Hr;

    invoke-virtual {v0}, Labcd/Hr;->hashCode()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Labcd/os;->j6:Labcd/Hr;

    invoke-virtual {v0}, Labcd/Hr;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
