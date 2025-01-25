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

    invoke-virtual {p1}, Labcd/jp;->u7()Labcd/Fp;

    move-result-object v0

    invoke-virtual {v0}, Labcd/Kp;->FH()I

    move-result v0

    invoke-virtual {p1}, Labcd/jp;->VH()Labcd/Kp;

    move-result-object v1

    invoke-virtual {p1}, Labcd/jp;->gn()Labcd/Kp;

    move-result-object v2

    invoke-virtual {v1}, Labcd/Kp;->FH()I

    move-result v1

    invoke-virtual {v2}, Labcd/Kp;->FH()I

    move-result v3

    invoke-virtual {v2}, Labcd/Kp;->u7()I

    move-result v2

    add-int/2addr v3, v2

    sub-int/2addr v3, v1

    invoke-virtual {p1}, Labcd/jp;->Hw()Labcd/Fn;

    move-result-object v2

    invoke-virtual {v2}, Labcd/Fn;->DW()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p2}, Labcd/Lt;->Hw()Z

    move-result v4

    const v5, 0x12345678

    const/16 v6, 0x70

    const/16 v7, 0x8

    const/4 v8, 0x4

    if-eqz v4, :cond_cb

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "magic: "

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v9, Labcd/Js;

    invoke-direct {v9, v2}, Labcd/Js;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9}, Labcd/Js;->lg()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p2, v7, v4}, Labcd/Lt;->j6(ILjava/lang/String;)V

    const-string v4, "checksum"

    invoke-interface {p2, v8, v4}, Labcd/Lt;->j6(ILjava/lang/String;)V

    const/16 v4, 0x14

    const-string v9, "signature"

    invoke-interface {p2, v4, v9}, Labcd/Lt;->j6(ILjava/lang/String;)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "file_size:       "

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Labcd/jp;->Zo()I

    move-result v9

    invoke-static {v9}, Labcd/Yt;->gn(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p2, v8, v4}, Labcd/Lt;->j6(ILjava/lang/String;)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "header_size:     "

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v6}, Labcd/Yt;->gn(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p2, v8, v4}, Labcd/Lt;->j6(ILjava/lang/String;)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "endian_tag:      "

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v5}, Labcd/Yt;->gn(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p2, v8, v4}, Labcd/Lt;->j6(ILjava/lang/String;)V

    const-string v4, "link_size:       0"

    invoke-interface {p2, v8, v4}, Labcd/Lt;->j6(ILjava/lang/String;)V

    const-string v4, "link_off:        0"

    invoke-interface {p2, v8, v4}, Labcd/Lt;->j6(ILjava/lang/String;)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "map_off:         "

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Labcd/Yt;->gn(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p2, v8, v4}, Labcd/Lt;->j6(ILjava/lang/String;)V

    :cond_cb
    const/4 v4, 0x0

    :goto_cc
    if-ge v4, v7, :cond_d8

    invoke-virtual {v2, v4}, Ljava/lang/String;->charAt(I)C

    move-result v9

    invoke-interface {p2, v9}, Labcd/ku;->writeByte(I)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_cc

    :cond_d8
    const/16 v2, 0x18

    invoke-interface {p2, v2}, Labcd/ku;->j6(I)V

    invoke-virtual {p1}, Labcd/jp;->Zo()I

    move-result v2

    invoke-interface {p2, v2}, Labcd/ku;->writeInt(I)V

    invoke-interface {p2, v6}, Labcd/ku;->writeInt(I)V

    invoke-interface {p2, v5}, Labcd/ku;->writeInt(I)V

    invoke-interface {p2, v7}, Labcd/ku;->j6(I)V

    invoke-interface {p2, v0}, Labcd/ku;->writeInt(I)V

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

    move-result-object p1

    invoke-virtual {p1, p2}, Labcd/cp;->Hw(Labcd/Lt;)V

    invoke-interface {p2}, Labcd/Lt;->Hw()Z

    move-result p1

    if-eqz p1, :cond_150

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "data_size:       "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v3}, Labcd/Yt;->gn(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, v8, p1}, Labcd/Lt;->j6(ILjava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "data_off:        "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Labcd/Yt;->gn(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, v8, p1}, Labcd/Lt;->j6(ILjava/lang/String;)V

    :cond_150
    invoke-interface {p2, v3}, Labcd/ku;->writeInt(I)V

    invoke-interface {p2, v1}, Labcd/ku;->writeInt(I)V

    return-void
.end method
