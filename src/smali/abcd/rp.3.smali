.class public final Labcd/rp;
.super Labcd/up;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Labcd/up;-><init>()V

    return-void
.end method


# virtual methods
.method public Hw()Labcd/wp;
    .registers 2

    sget-object v0, Labcd/wp;->j6:Labcd/wp;

    return-object v0
.end method

.method public VH()I
    .registers 2

    const/16 v0, 0x70

    return v0
.end method

.method public j6(Labcd/jp;)V
    .registers 2

    return-void
.end method

.method public j6(Labcd/jp;Labcd/Lt;)V
    .registers 13

    const v9, 0x12345678

    const/16 v8, 0x70

    const/16 v7, 0x8

    const/4 v6, 0x4

    invoke-virtual {p1}, Labcd/jp;->u7()Labcd/Fp;

    move-result-object v0

    invoke-virtual {v0}, Labcd/Kp;->FH()I

    move-result v1

    invoke-virtual {p1}, Labcd/jp;->VH()Labcd/Kp;

    move-result-object v0

    invoke-virtual {p1}, Labcd/jp;->gn()Labcd/Kp;

    move-result-object v2

    invoke-virtual {v0}, Labcd/Kp;->FH()I

    move-result v3

    invoke-virtual {v2}, Labcd/Kp;->FH()I

    move-result v0

    invoke-virtual {v2}, Labcd/Kp;->u7()I

    move-result v2

    add-int/2addr v0, v2

    sub-int v2, v0, v3

    invoke-virtual {p1}, Labcd/jp;->Hw()Labcd/Fn;

    move-result-object v0

    invoke-virtual {v0}, Labcd/Fn;->DW()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p2}, Labcd/Lt;->Hw()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "magic: "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v5, Labcd/Js;

    invoke-direct {v5, v4}, Labcd/Js;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Labcd/Js;->lg()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v7, v0}, Labcd/Lt;->j6(ILjava/lang/String;)V

    const-string v0, "checksum"

    invoke-interface {p2, v6, v0}, Labcd/Lt;->j6(ILjava/lang/String;)V

    const/16 v0, 0x14

    const-string v5, "signature"

    invoke-interface {p2, v0, v5}, Labcd/Lt;->j6(ILjava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "file_size:       "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Labcd/jp;->Zo()I

    move-result v5

    invoke-static {v5}, Labcd/Yt;->gn(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v6, v0}, Labcd/Lt;->j6(ILjava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "header_size:     "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v8}, Labcd/Yt;->gn(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v6, v0}, Labcd/Lt;->j6(ILjava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "endian_tag:      "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v9}, Labcd/Yt;->gn(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v6, v0}, Labcd/Lt;->j6(ILjava/lang/String;)V

    const-string v0, "link_size:       0"

    invoke-interface {p2, v6, v0}, Labcd/Lt;->j6(ILjava/lang/String;)V

    const-string v0, "link_off:        0"

    invoke-interface {p2, v6, v0}, Labcd/Lt;->j6(ILjava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "map_off:         "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Labcd/Yt;->gn(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v6, v0}, Labcd/Lt;->j6(ILjava/lang/String;)V

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v7, :cond_1

    invoke-virtual {v4, v0}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-interface {p2, v5}, Labcd/ku;->writeByte(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/16 v0, 0x18

    invoke-interface {p2, v0}, Labcd/ku;->j6(I)V

    invoke-virtual {p1}, Labcd/jp;->Zo()I

    move-result v0

    invoke-interface {p2, v0}, Labcd/ku;->writeInt(I)V

    invoke-interface {p2, v8}, Labcd/ku;->writeInt(I)V

    invoke-interface {p2, v9}, Labcd/ku;->writeInt(I)V

    invoke-interface {p2, v7}, Labcd/ku;->j6(I)V

    invoke-interface {p2, v1}, Labcd/ku;->writeInt(I)V

    invoke-virtual {p1}, Labcd/jp;->J8()Labcd/Op;

    move-result-object v0

    invoke-virtual {v0, p2}, Labcd/Op;->Hw(Labcd/Lt;)V

    invoke-virtual {p1}, Labcd/jp;->Ws()Labcd/Qp;

    move-result-object v0

    invoke-virtual {v0, p2}, Labcd/Qp;->Hw(Labcd/Lt;)V

    invoke-virtual {p1}, Labcd/jp;->EQ()Labcd/Jp;

    move-result-object v0

    invoke-virtual {v0, p2}, Labcd/Jp;->Hw(Labcd/Lt;)V

    invoke-virtual {p1}, Labcd/jp;->v5()Labcd/qp;

    move-result-object v0

    invoke-virtual {v0, p2}, Labcd/qp;->Hw(Labcd/Lt;)V

    invoke-virtual {p1}, Labcd/jp;->tp()Labcd/Cp;

    move-result-object v0

    invoke-virtual {v0, p2}, Labcd/Cp;->Hw(Labcd/Lt;)V

    invoke-virtual {p1}, Labcd/jp;->FH()Labcd/cp;

    move-result-object v0

    invoke-virtual {v0, p2}, Labcd/cp;->Hw(Labcd/Lt;)V

    invoke-interface {p2}, Labcd/Lt;->Hw()Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "data_size:       "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Labcd/Yt;->gn(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v6, v0}, Labcd/Lt;->j6(ILjava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "data_off:        "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v3}, Labcd/Yt;->gn(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v6, v0}, Labcd/Lt;->j6(ILjava/lang/String;)V

    :cond_2
    invoke-interface {p2, v2}, Labcd/ku;->writeInt(I)V

    invoke-interface {p2, v3}, Labcd/ku;->writeInt(I)V

    return-void
.end method
