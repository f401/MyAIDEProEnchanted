.class public final Labcd/Np;
.super Labcd/up;

# interfaces
.implements Ljava/lang/Comparable;


# instance fields
.field private final DW:Labcd/Js;

.field private FH:Labcd/Mp;


# direct methods
.method public constructor <init>(Labcd/Js;)V
    .registers 4

    invoke-direct {p0}, Labcd/up;-><init>()V

    if-eqz p1, :cond_0

    iput-object p1, p0, Labcd/Np;->DW:Labcd/Js;

    const/4 v0, 0x0

    iput-object v0, p0, Labcd/Np;->FH:Labcd/Mp;

    return-void

    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "value == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public Hw()Labcd/wp;
    .registers 2

    sget-object v0, Labcd/wp;->DW:Labcd/wp;

    return-object v0
.end method

.method public VH()I
    .registers 2

    const/4 v0, 0x4

    return v0
.end method

.method public aM()Labcd/Js;
    .registers 2

    iget-object v0, p0, Labcd/Np;->DW:Labcd/Js;

    return-object v0
.end method

.method public compareTo(Ljava/lang/Object;)I
    .registers 4

    check-cast p1, Labcd/Np;

    iget-object v0, p0, Labcd/Np;->DW:Labcd/Js;

    iget-object v1, p1, Labcd/Np;->DW:Labcd/Js;

    invoke-virtual {v0, v1}, Labcd/ms;->j6(Labcd/ms;)I

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 4

    instance-of v0, p1, Labcd/Np;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    check-cast p1, Labcd/Np;

    iget-object v0, p0, Labcd/Np;->DW:Labcd/Js;

    iget-object v1, p1, Labcd/Np;->DW:Labcd/Js;

    invoke-virtual {v0, v1}, Labcd/Js;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public hashCode()I
    .registers 2

    iget-object v0, p0, Labcd/Np;->DW:Labcd/Js;

    invoke-virtual {v0}, Labcd/Js;->hashCode()I

    move-result v0

    return v0
.end method

.method public j6(Labcd/jp;)V
    .registers 5

    iget-object v0, p0, Labcd/Np;->FH:Labcd/Mp;

    if-nez v0, :cond_0

    invoke-virtual {p1}, Labcd/jp;->J0()Labcd/Fp;

    move-result-object v0

    new-instance v1, Labcd/Mp;

    iget-object v2, p0, Labcd/Np;->DW:Labcd/Js;

    invoke-direct {v1, v2}, Labcd/Mp;-><init>(Labcd/Js;)V

    iput-object v1, p0, Labcd/Np;->FH:Labcd/Mp;

    iget-object v1, p0, Labcd/Np;->FH:Labcd/Mp;

    invoke-virtual {v0, v1}, Labcd/Fp;->j6(Labcd/Gp;)V

    :cond_0
    return-void
.end method

.method public j6(Labcd/jp;Labcd/Lt;)V
    .registers 7

    iget-object v0, p0, Labcd/Np;->FH:Labcd/Mp;

    invoke-virtual {v0}, Labcd/Gp;->we()I

    move-result v0

    invoke-interface {p2}, Labcd/Lt;->Hw()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Labcd/up;->Ws()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x20

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v2, p0, Labcd/Np;->DW:Labcd/Js;

    const/16 v3, 0x64

    invoke-virtual {v2, v3}, Labcd/Js;->j6(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v2, v1}, Labcd/Lt;->j6(ILjava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  string_data_off: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Labcd/Yt;->gn(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x4

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v2, v1}, Labcd/Lt;->j6(ILjava/lang/String;)V

    :cond_0
    invoke-interface {p2, v0}, Labcd/ku;->writeInt(I)V

    return-void
.end method
