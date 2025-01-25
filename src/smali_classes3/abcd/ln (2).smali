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
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_25

    if-ltz p3, :cond_1d

    if-eqz p4, :cond_15

    iput-object p1, p0, Labcd/ln;->j6:Labcd/jn;

    iput-object p2, p0, Labcd/ln;->DW:Labcd/Ks;

    iput p3, p0, Labcd/ln;->FH:I

    iput-object p4, p0, Labcd/ln;->Hw:Labcd/gn;

    const/4 p1, -0x1

    iput p1, p0, Labcd/ln;->v5:I

    return-void

    :cond_15
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "attributeFactory == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1d
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "offset < 0"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_25
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "cf == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private VH()V
    .registers 20

    move-object/from16 v1, p0

    const-string v2, "]"

    const-string v3, "...while parsing "

    const-string v4, "s["

    invoke-virtual/range {p0 .. p0}, Labcd/ln;->j6()I

    move-result v0

    invoke-virtual/range {p0 .. p0}, Labcd/ln;->DW()I

    move-result v5

    iget v6, v1, Labcd/ln;->FH:I

    iget-object v7, v1, Labcd/ln;->j6:Labcd/jn;

    invoke-virtual {v7}, Labcd/jn;->Hw()Labcd/Pt;

    move-result-object v7

    iget-object v8, v1, Labcd/ln;->j6:Labcd/jn;

    invoke-virtual {v8}, Labcd/jn;->v5()Labcd/ns;

    move-result-object v14

    iget-object v8, v1, Labcd/ln;->Zo:Labcd/xn;

    const/4 v15, 0x2

    if-eqz v8, :cond_44

    iget v9, v1, Labcd/ln;->FH:I

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Labcd/ln;->v5()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, "s_count: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v5}, Labcd/Yt;->v5(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v8, v7, v9, v15, v10}, Labcd/xn;->j6(Labcd/Pt;IILjava/lang/String;)V

    :cond_44
    add-int/2addr v6, v15

    const/4 v12, 0x0

    :goto_46
    if-ge v12, v5, :cond_1b8

    :try_start_48
    invoke-virtual {v7, v6}, Labcd/Pt;->Zo(I)I

    move-result v8

    add-int/lit8 v9, v6, 0x2

    invoke-virtual {v7, v9}, Labcd/Pt;->Zo(I)I

    move-result v10

    add-int/lit8 v11, v6, 0x4

    invoke-virtual {v7, v11}, Labcd/Pt;->Zo(I)I

    move-result v15

    invoke-interface {v14, v10}, Labcd/ns;->get(I)Labcd/ms;

    move-result-object v10

    check-cast v10, Labcd/Js;

    invoke-interface {v14, v15}, Labcd/ns;->get(I)Labcd/ms;

    move-result-object v15

    check-cast v15, Labcd/Js;

    iget-object v13, v1, Labcd/ln;->Zo:Labcd/xn;

    move/from16 v17, v5

    if-eqz v13, :cond_f5

    invoke-virtual {v10}, Labcd/Js;->we()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v18, v14

    invoke-virtual {v15}, Labcd/Js;->we()Ljava/lang/String;

    move-result-object v14

    invoke-interface {v13, v7, v6, v5, v14}, Labcd/xn;->j6(Labcd/Pt;ILjava/lang/String;Ljava/lang/String;)V

    iget-object v5, v1, Labcd/ln;->Zo:Labcd/xn;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "\n"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Labcd/ln;->v5()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v14, "]:\n"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x0

    invoke-interface {v5, v7, v6, v14, v13}, Labcd/xn;->j6(Labcd/Pt;IILjava/lang/String;)V

    iget-object v5, v1, Labcd/ln;->Zo:Labcd/xn;

    const/4 v13, 0x1

    invoke-interface {v5, v13}, Labcd/xn;->j6(I)V

    iget-object v5, v1, Labcd/ln;->Zo:Labcd/xn;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "access_flags: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Labcd/ln;->j6(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x2

    invoke-interface {v5, v7, v6, v14, v13}, Labcd/xn;->j6(Labcd/Pt;IILjava/lang/String;)V

    iget-object v5, v1, Labcd/ln;->Zo:Labcd/xn;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "name: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Labcd/Js;->aM()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x2

    invoke-interface {v5, v7, v9, v14, v13}, Labcd/xn;->j6(Labcd/Pt;IILjava/lang/String;)V

    iget-object v5, v1, Labcd/ln;->Zo:Labcd/xn;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "descriptor: "

    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Labcd/Js;->aM()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const/4 v14, 0x2

    invoke-interface {v5, v7, v11, v14, v9}, Labcd/xn;->j6(Labcd/Pt;IILjava/lang/String;)V

    goto :goto_f8

    :cond_f5
    move-object/from16 v18, v14

    const/4 v14, 0x2

    :goto_f8
    new-instance v5, Labcd/hn;

    iget-object v9, v1, Labcd/ln;->j6:Labcd/jn;

    add-int/lit8 v6, v6, 0x6

    iget-object v11, v1, Labcd/ln;->Hw:Labcd/gn;

    invoke-direct {v5, v9, v0, v6, v11}, Labcd/hn;-><init>(Labcd/jn;IILabcd/gn;)V

    iget-object v6, v1, Labcd/ln;->Zo:Labcd/xn;

    invoke-virtual {v5, v6}, Labcd/hn;->j6(Labcd/xn;)V

    invoke-virtual {v5}, Labcd/hn;->j6()I

    move-result v6

    invoke-virtual {v5}, Labcd/hn;->DW()Labcd/yn;

    move-result-object v5

    invoke-virtual {v5}, Labcd/hu;->we()V

    new-instance v9, Labcd/Hs;

    invoke-direct {v9, v10, v15}, Labcd/Hs;-><init>(Labcd/Js;Labcd/Js;)V

    invoke-virtual {v1, v12, v8, v9, v5}, Labcd/ln;->j6(IILabcd/Hs;Labcd/pn;)Labcd/tn;

    move-result-object v13

    iget-object v5, v1, Labcd/ln;->Zo:Labcd/xn;

    if-eqz v5, :cond_164

    const/4 v8, -0x1

    invoke-interface {v5, v8}, Labcd/xn;->j6(I)V

    iget-object v5, v1, Labcd/ln;->Zo:Labcd/xn;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "end "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Labcd/ln;->v5()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, "]\n"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v11, 0x0

    invoke-interface {v5, v7, v6, v11, v8}, Labcd/xn;->j6(Labcd/Pt;IILjava/lang/String;)V

    iget-object v8, v1, Labcd/ln;->Zo:Labcd/xn;

    invoke-virtual {v10}, Labcd/Js;->we()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v15}, Labcd/Js;->we()Ljava/lang/String;

    move-result-object v15
    :try_end_154
    .catch Labcd/wn; {:try_start_48 .. :try_end_154} :catch_196
    .catch Ljava/lang/RuntimeException; {:try_start_48 .. :try_end_154} :catch_16f

    move-object v9, v7

    move v10, v6

    const/16 v16, 0x0

    move-object v11, v5

    move v5, v12

    move-object v12, v15

    const/4 v15, 0x0

    :try_start_15c
    invoke-interface/range {v8 .. v13}, Labcd/xn;->j6(Labcd/Pt;ILjava/lang/String;Ljava/lang/String;Labcd/tn;)V
    :try_end_15f
    .catch Labcd/wn; {:try_start_15c .. :try_end_15f} :catch_162
    .catch Ljava/lang/RuntimeException; {:try_start_15c .. :try_end_15f} :catch_160

    goto :goto_166

    :catch_160
    move-exception v0

    goto :goto_171

    :catch_162
    move-exception v0

    goto :goto_198

    :cond_164
    move v5, v12

    const/4 v15, 0x0

    :goto_166
    add-int/lit8 v12, v5, 0x1

    move/from16 v5, v17

    move-object/from16 v14, v18

    const/4 v15, 0x2

    goto/16 :goto_46

    :catch_16f
    move-exception v0

    move v5, v12

    :goto_171
    new-instance v6, Labcd/wn;

    invoke-direct {v6, v0}, Labcd/wn;-><init>(Ljava/lang/Throwable;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Labcd/ln;->v5()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Labcd/Vt;->j6(Ljava/lang/String;)V

    throw v6

    :catch_196
    move-exception v0

    move v5, v12

    :goto_198
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Labcd/ln;->v5()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Labcd/Vt;->j6(Ljava/lang/String;)V

    throw v0

    :cond_1b8
    iput v6, v1, Labcd/ln;->v5:I

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

    if-gez v0, :cond_7

    invoke-direct {p0}, Labcd/ln;->VH()V

    :cond_7
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
