.class public final Labcd/eo;
.super Labcd/ro;


# instance fields
.field private final v5:Labcd/bs;


# direct methods
.method public constructor <init>(Labcd/hs;Labcd/bs;)V
    .registers 3

    invoke-direct {p0, p1}, Labcd/ro;-><init>(Labcd/hs;)V

    if-eqz p2, :cond_8

    iput-object p2, p0, Labcd/eo;->v5:Labcd/bs;

    return-void

    :cond_8
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "local == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static j6(Labcd/bs;)Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Labcd/bs;->lg()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Labcd/bs;->Zo()Labcd/Vr;

    move-result-object v1

    invoke-virtual {v1}, Labcd/Vr;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Labcd/bs;->J8()Labcd/Rs;

    move-result-object p0

    invoke-interface {p0}, Labcd/lu;->aM()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public DW(I)Labcd/Vn;
    .registers 5

    new-instance v0, Labcd/eo;

    invoke-virtual {p0}, Labcd/Vn;->VH()Labcd/hs;

    move-result-object v1

    iget-object v2, p0, Labcd/eo;->v5:Labcd/bs;

    invoke-virtual {v2, p1}, Labcd/bs;->DW(I)Labcd/bs;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Labcd/eo;-><init>(Labcd/hs;Labcd/bs;)V

    return-object v0
.end method

.method public j6(Labcd/cs;)Labcd/Vn;
    .registers 4

    new-instance p1, Labcd/eo;

    invoke-virtual {p0}, Labcd/Vn;->VH()Labcd/hs;

    move-result-object v0

    iget-object v1, p0, Labcd/eo;->v5:Labcd/bs;

    invoke-direct {p1, v0, v1}, Labcd/eo;-><init>(Labcd/hs;Labcd/bs;)V

    return-object p1
.end method

.method protected j6()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Labcd/eo;->v5:Labcd/bs;

    invoke-virtual {v0}, Labcd/bs;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected j6(Z)Ljava/lang/String;
    .registers 3

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "local-start "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Labcd/eo;->v5:Labcd/bs;

    invoke-static {v0}, Labcd/eo;->j6(Labcd/bs;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public we()Labcd/bs;
    .registers 2

    iget-object v0, p0, Labcd/eo;->v5:Labcd/bs;

    return-object v0
.end method
