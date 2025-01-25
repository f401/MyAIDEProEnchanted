.class public final Labcd/kp;
.super Labcd/Gp;


# instance fields
.field private Zo:[B

.field private final v5:Labcd/ps;


# direct methods
.method public constructor <init>(Labcd/ps;)V
    .registers 4

    const/4 v0, 0x1

    const/4 v1, -0x1

    invoke-direct {p0, v0, v1}, Labcd/Gp;-><init>(II)V

    if-eqz p1, :cond_d

    iput-object p1, p0, Labcd/kp;->v5:Labcd/ps;

    const/4 p1, 0x0

    iput-object p1, p0, Labcd/kp;->Zo:[B

    return-void

    :cond_d
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "array == null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method protected DW(Labcd/Gp;)I
    .registers 3

    check-cast p1, Labcd/kp;

    iget-object v0, p0, Labcd/kp;->v5:Labcd/ps;

    iget-object p1, p1, Labcd/kp;->v5:Labcd/ps;

    invoke-virtual {v0, p1}, Labcd/ms;->j6(Labcd/ms;)I

    move-result p1

    return p1
.end method

.method protected DW(Labcd/Kp;I)V
    .registers 5

    new-instance p2, Labcd/Qt;

    invoke-direct {p2}, Labcd/Qt;-><init>()V

    new-instance v0, Labcd/Up;

    invoke-virtual {p1}, Labcd/Kp;->DW()Labcd/jp;

    move-result-object p1

    invoke-direct {v0, p1, p2}, Labcd/Up;-><init>(Labcd/jp;Labcd/Lt;)V

    iget-object p1, p0, Labcd/kp;->v5:Labcd/ps;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Labcd/Up;->j6(Labcd/ps;Z)V

    invoke-virtual {p2}, Labcd/Qt;->gn()[B

    move-result-object p1

    iput-object p1, p0, Labcd/kp;->Zo:[B

    array-length p1, p1

    invoke-virtual {p0, p1}, Labcd/Gp;->j6(I)V

    return-void
.end method

.method protected DW(Labcd/jp;Labcd/Lt;)V
    .registers 5

    invoke-interface {p2}, Labcd/Lt;->Hw()Z

    move-result v0

    if-eqz v0, :cond_2b

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Labcd/Gp;->Ws()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " encoded array"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v1, v0}, Labcd/Lt;->j6(ILjava/lang/String;)V

    new-instance v0, Labcd/Up;

    invoke-direct {v0, p1, p2}, Labcd/Up;-><init>(Labcd/jp;Labcd/Lt;)V

    iget-object p1, p0, Labcd/kp;->v5:Labcd/ps;

    const/4 p2, 0x1

    invoke-virtual {v0, p1, p2}, Labcd/Up;->j6(Labcd/ps;Z)V

    goto :goto_30

    :cond_2b
    iget-object p1, p0, Labcd/kp;->Zo:[B

    invoke-interface {p2, p1}, Labcd/ku;->write([B)V

    :goto_30
    return-void
.end method

.method public Hw()Labcd/wp;
    .registers 2

    sget-object v0, Labcd/wp;->XL:Labcd/wp;

    return-object v0
.end method

.method public aM()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Labcd/kp;->v5:Labcd/ps;

    invoke-virtual {v0}, Labcd/ps;->aM()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .registers 2

    iget-object v0, p0, Labcd/kp;->v5:Labcd/ps;

    invoke-virtual {v0}, Labcd/ps;->hashCode()I

    move-result v0

    return v0
.end method

.method public j6(Labcd/jp;)V
    .registers 3

    iget-object v0, p0, Labcd/kp;->v5:Labcd/ps;

    invoke-static {p1, v0}, Labcd/Up;->j6(Labcd/jp;Labcd/ms;)V

    return-void
.end method
