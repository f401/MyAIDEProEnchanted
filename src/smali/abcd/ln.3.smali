.class abstract Labcd/ln;
.super Ljava/lang/Object;


# instance fields
.field private final DW:Labcd/Ks;

.field private final FH:I

.field private final Hw:Labcd/gn;

.field private Zo:Labcd/xn;

.field private final j6:Labcd/jn;

.field private v5:I


# direct methods
.method public constructor <init>(Labcd/jn;Labcd/Ks;ILabcd/gn;)V
    .registers 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_2

    if-ltz p3, :cond_1

    if-eqz p4, :cond_0

    iput-object p1, p0, Labcd/ln;->j6:Labcd/jn;

    iput-object p2, p0, Labcd/ln;->DW:Labcd/Ks;

    iput p3, p0, Labcd/ln;->FH:I

    iput-object p4, p0, Labcd/ln;->Hw:Labcd/gn;

    const/4 v0, -0x1

    iput v0, p0, Labcd/ln;->v5:I

    return-void

    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "attributeFactory == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "offset < 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "cf == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private VH()V
    .registers 16

    const/4 v1, 0x0

    const/4 v11, 0x2

    invoke-virtual {p0}, Labcd/ln;->j6()I

    move-result v8

    invoke-virtual {p0}, Labcd/ln;->DW()I

    move-result v9

    iget v3, p0, Labcd/ln;->FH:I

    iget-object v2, p0, Labcd/ln;->j6:Labcd/jn;

    invoke-virtual {v2}, Labcd/jn;->Hw()Labcd/Pt;

    move-result-object v2

    iget-object v4, p0, Labcd/ln;->j6:Labcd/jn;

    invoke-virtual {v4}, Labcd/jn;->v5()Labcd/ns;

    move-result-object v10

    iget-object v4, p0, Labcd/ln;->Zo:Labcd/xn;

    if-eqz v4, :cond_0

    iget v5, p0, Labcd/ln;->FH:I

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Labcd/ln;->v5()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "s_count: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v9}, Labcd/Yt;->v5(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v2, v5, v11, v6}, Labcd/xn;->j6(Labcd/Pt;IILjava/lang/String;)V

    :cond_0
    add-int/lit8 v3, v3, 0x2

    move v7, v1

    :goto_0
    if-ge v7, v9, :cond_3

    :try_start_0
    invoke-virtual {v2, v3}, Labcd/Pt;->Zo(I)I

    move-result v6

    add-int/lit8 v11, v3, 0x2

    invoke-virtual {v2, v11}, Labcd/Pt;->Zo(I)I

    move-result v1

    add-int/lit8 v12, v3, 0x4

    invoke-virtual {v2, v12}, Labcd/Pt;->Zo(I)I

    move-result v5

    invoke-interface {v10, v1}, Labcd/ns;->get(I)Labcd/ms;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Labcd/Js;

    move-object v4, v0

    invoke-interface {v10, v5}, Labcd/ns;->get(I)Labcd/ms;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Labcd/Js;

    move-object v5, v0

    iget-object v1, p0, Labcd/ln;->Zo:Labcd/xn;

    if-eqz v1, :cond_1

    iget-object v1, p0, Labcd/ln;->Zo:Labcd/xn;

    invoke-virtual {v4}, Labcd/Js;->we()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v5}, Labcd/Js;->we()Ljava/lang/String;

    move-result-object v14

    invoke-interface {v1, v2, v3, v13, v14}, Labcd/xn;->j6(Labcd/Pt;ILjava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Labcd/ln;->Zo:Labcd/xn;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "\n"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Labcd/ln;->v5()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, "s["

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v14, "]:\n"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v14, 0x0

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-interface {v1, v2, v3, v14, v13}, Labcd/xn;->j6(Labcd/Pt;IILjava/lang/String;)V

    iget-object v1, p0, Labcd/ln;->Zo:Labcd/xn;

    const/4 v13, 0x1

    invoke-interface {v1, v13}, Labcd/xn;->j6(I)V

    iget-object v1, p0, Labcd/ln;->Zo:Labcd/xn;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "access_flags: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v6}, Labcd/ln;->j6(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v14, 0x2

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-interface {v1, v2, v3, v14, v13}, Labcd/xn;->j6(Labcd/Pt;IILjava/lang/String;)V

    iget-object v1, p0, Labcd/ln;->Zo:Labcd/xn;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "name: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Labcd/Js;->aM()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v14, 0x2

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-interface {v1, v2, v11, v14, v13}, Labcd/xn;->j6(Labcd/Pt;IILjava/lang/String;)V

    iget-object v1, p0, Labcd/ln;->Zo:Labcd/xn;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "descriptor: "

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Labcd/Js;->aM()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v13, 0x2

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v1, v2, v12, v13, v11}, Labcd/xn;->j6(Labcd/Pt;IILjava/lang/String;)V

    :cond_1
    new-instance v1, Labcd/hn;

    iget-object v11, p0, Labcd/ln;->j6:Labcd/jn;

    add-int/lit8 v3, v3, 0x6

    iget-object v12, p0, Labcd/ln;->Hw:Labcd/gn;

    invoke-direct {v1, v11, v8, v3, v12}, Labcd/hn;-><init>(Labcd/jn;IILabcd/gn;)V

    iget-object v3, p0, Labcd/ln;->Zo:Labcd/xn;

    invoke-virtual {v1, v3}, Labcd/hn;->j6(Labcd/xn;)V

    invoke-virtual {v1}, Labcd/hn;->j6()I

    move-result v3

    invoke-virtual {v1}, Labcd/hn;->DW()Labcd/yn;

    move-result-object v1

    invoke-virtual {v1}, Labcd/hu;->we()V

    new-instance v11, Labcd/Hs;

    invoke-direct {v11, v4, v5}, Labcd/Hs;-><init>(Labcd/Js;Labcd/Js;)V

    invoke-virtual {p0, v7, v6, v11, v1}, Labcd/ln;->j6(IILabcd/Hs;Labcd/pn;)Labcd/tn;

    move-result-object v6

    iget-object v1, p0, Labcd/ln;->Zo:Labcd/xn;

    if-eqz v1, :cond_2

    iget-object v1, p0, Labcd/ln;->Zo:Labcd/xn;

    const/4 v11, -0x1

    invoke-interface {v1, v11}, Labcd/xn;->j6(I)V

    iget-object v1, p0, Labcd/ln;->Zo:Labcd/xn;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "end "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Labcd/ln;->v5()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, "s["

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v12, "]\n"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v12, 0x0

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v1, v2, v3, v12, v11}, Labcd/xn;->j6(Labcd/Pt;IILjava/lang/String;)V

    iget-object v1, p0, Labcd/ln;->Zo:Labcd/xn;

    invoke-virtual {v4}, Labcd/Js;->we()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5}, Labcd/Js;->we()Ljava/lang/String;

    move-result-object v5

    invoke-interface/range {v1 .. v6}, Labcd/xn;->j6(Labcd/Pt;ILjava/lang/String;Ljava/lang/String;Labcd/tn;)V
    :try_end_0
    .catch Labcd/wn; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    add-int/lit8 v1, v7, 0x1

    move v7, v1

    goto/16 :goto_0

    :catch_0
    move-exception v1

    new-instance v2, Labcd/wn;

    invoke-direct {v2, v1}, Labcd/wn;-><init>(Ljava/lang/Throwable;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "...while parsing "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Labcd/ln;->v5()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "s["

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "]"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Labcd/Vt;->j6(Ljava/lang/String;)V

    throw v2

    :catch_1
    move-exception v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "...while parsing "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Labcd/ln;->v5()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "s["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Labcd/Vt;->j6(Ljava/lang/String;)V

    throw v1

    :cond_3
    iput v3, p0, Labcd/ln;->v5:I

    return-void
.end method


# virtual methods
.method protected final DW()I
    .registers 3

    iget-object v0, p0, Labcd/ln;->j6:Labcd/jn;

    invoke-virtual {v0}, Labcd/jn;->Hw()Labcd/Pt;

    move-result-object v0

    iget v1, p0, Labcd/ln;->FH:I

    invoke-virtual {v0, v1}, Labcd/Pt;->Zo(I)I

    move-result v0

    return v0
.end method

.method protected final FH()Labcd/Ks;
    .registers 2

    iget-object v0, p0, Labcd/ln;->DW:Labcd/Ks;

    return-object v0
.end method

.method public Hw()I
    .registers 2

    invoke-virtual {p0}, Labcd/ln;->Zo()V

    iget v0, p0, Labcd/ln;->v5:I

    return v0
.end method

.method protected final Zo()V
    .registers 2

    iget v0, p0, Labcd/ln;->v5:I

    if-gez v0, :cond_0

    invoke-direct {p0}, Labcd/ln;->VH()V

    :cond_0
    return-void
.end method

.method protected abstract j6()I
.end method

.method protected abstract j6(IILabcd/Hs;Labcd/pn;)Labcd/tn;
.end method

.method protected abstract j6(I)Ljava/lang/String;
.end method

.method public final j6(Labcd/xn;)V
    .registers 2

    iput-object p1, p0, Labcd/ln;->Zo:Labcd/xn;

    return-void
.end method

.method protected abstract v5()Ljava/lang/String;
.end method
