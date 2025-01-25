.class public Labcd/nn;
.super Labcd/gn;


# static fields
.field public static final j6:Labcd/nn;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Labcd/nn;

    invoke-direct {v0}, Labcd/nn;-><init>()V

    sput-object v0, Labcd/nn;->j6:Labcd/nn;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Labcd/gn;-><init>()V

    return-void
.end method

.method private static DW()Labcd/on;
    .registers 2

    new-instance v0, Labcd/wn;

    const-string v1, "truncated attribute"

    invoke-direct {v0, v1}, Labcd/wn;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private DW(Labcd/jn;IILabcd/xn;)Labcd/on;
    .registers 7

    const/4 v0, 0x2

    if-lt p3, v0, :cond_12

    new-instance v0, Labcd/im;

    new-instance v1, Labcd/fn;

    invoke-direct {v1, p1, p2, p3, p4}, Labcd/fn;-><init>(Labcd/jn;IILabcd/xn;)V

    invoke-virtual {v1}, Labcd/fn;->j6()Labcd/ms;

    move-result-object p1

    invoke-direct {v0, p1, p3}, Labcd/im;-><init>(Labcd/ms;I)V

    return-object v0

    :cond_12
    invoke-static {}, Labcd/nn;->j6()Labcd/on;

    const/4 p1, 0x0

    throw p1
.end method

.method private EQ(Labcd/jn;IILabcd/xn;)Labcd/on;
    .registers 13

    const/4 v0, 0x2

    if-lt p3, v0, :cond_3d

    invoke-virtual {p1}, Labcd/jn;->Hw()Labcd/Pt;

    move-result-object v1

    invoke-virtual {v1, p2}, Labcd/Pt;->Zo(I)I

    move-result v6

    if-eqz p4, :cond_25

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "local_variable_type_table_length: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v6}, Labcd/Yt;->v5(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p4, v1, p2, v0, v2}, Labcd/xn;->j6(Labcd/Pt;IILjava/lang/String;)V

    :cond_25
    new-instance v0, Labcd/rm;

    add-int/lit8 v2, p2, 0x2

    add-int/2addr p2, p3

    invoke-virtual {v1, v2, p2}, Labcd/Pt;->j6(II)Labcd/Pt;

    move-result-object v3

    invoke-virtual {p1}, Labcd/jn;->v5()Labcd/ns;

    move-result-object v4

    const/4 v7, 0x1

    move-object v2, p0

    move-object v5, p4

    invoke-direct/range {v2 .. v7}, Labcd/nn;->j6(Labcd/Pt;Labcd/ns;Labcd/xn;IZ)Labcd/Qm;

    move-result-object p1

    invoke-direct {v0, p1}, Labcd/rm;-><init>(Labcd/Qm;)V

    return-object v0

    :cond_3d
    invoke-static {}, Labcd/nn;->j6()Labcd/on;

    const/4 p1, 0x0

    throw p1
.end method

.method private FH(Labcd/jn;IILabcd/xn;)Labcd/on;
    .registers 28

    move/from16 v0, p2

    move/from16 v1, p3

    move-object/from16 v2, p4

    const/16 v3, 0xc

    const/4 v4, 0x0

    if-lt v1, v3, :cond_17a

    invoke-virtual/range {p1 .. p1}, Labcd/jn;->Hw()Labcd/Pt;

    move-result-object v3

    invoke-virtual/range {p1 .. p1}, Labcd/jn;->v5()Labcd/ns;

    move-result-object v5

    invoke-virtual {v3, v0}, Labcd/Pt;->Zo(I)I

    move-result v7

    add-int/lit8 v6, v0, 0x2

    invoke-virtual {v3, v6}, Labcd/Pt;->Zo(I)I

    move-result v8

    add-int/lit8 v9, v0, 0x4

    invoke-virtual {v3, v9}, Labcd/Pt;->DW(I)I

    move-result v10

    const/4 v11, 0x2

    if-eqz v2, :cond_6f

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "max_stack: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v7}, Labcd/Yt;->v5(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-interface {v2, v3, v0, v11, v12}, Labcd/xn;->j6(Labcd/Pt;IILjava/lang/String;)V

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "max_locals: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v8}, Labcd/Yt;->v5(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-interface {v2, v3, v6, v11, v12}, Labcd/xn;->j6(Labcd/Pt;IILjava/lang/String;)V

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "code_length: "

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v10}, Labcd/Yt;->gn(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v12, 0x4

    invoke-interface {v2, v3, v9, v12, v6}, Labcd/xn;->j6(Labcd/Pt;IILjava/lang/String;)V

    :cond_6f
    add-int/lit8 v6, v0, 0x8

    add-int/lit8 v1, v1, -0x8

    add-int/lit8 v9, v10, 0x4

    if-lt v1, v9, :cond_174

    add-int v9, v6, v10

    new-instance v12, Labcd/Lm;

    invoke-virtual {v3, v6, v9}, Labcd/Pt;->j6(II)Labcd/Pt;

    move-result-object v6

    invoke-direct {v12, v6, v5}, Labcd/Lm;-><init>(Labcd/Pt;Labcd/ns;)V

    if-eqz v2, :cond_90

    new-instance v6, Labcd/in;

    invoke-virtual {v12}, Labcd/Lm;->DW()Labcd/Pt;

    move-result-object v13

    invoke-direct {v6, v13, v2}, Labcd/in;-><init>(Labcd/Pt;Labcd/xn;)V

    invoke-virtual {v12, v6}, Labcd/Lm;->j6(Labcd/Lm$c;)V

    :cond_90
    invoke-virtual {v3, v9}, Labcd/Pt;->Zo(I)I

    move-result v6

    if-nez v6, :cond_99

    sget-object v13, Labcd/Jm;->FH:Labcd/Jm;

    goto :goto_9e

    :cond_99
    new-instance v13, Labcd/Jm;

    invoke-direct {v13, v6}, Labcd/Jm;-><init>(I)V

    :goto_9e
    if-eqz v2, :cond_b8

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "exception_table_length: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v6}, Labcd/Yt;->v5(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-interface {v2, v3, v9, v11, v14}, Labcd/xn;->j6(Labcd/Pt;IILjava/lang/String;)V

    :cond_b8
    add-int/2addr v9, v11

    sub-int/2addr v1, v10

    sub-int/2addr v1, v11

    mul-int/lit8 v10, v6, 0x8

    add-int/2addr v10, v11

    if-lt v1, v10, :cond_16e

    const/4 v10, 0x0

    :goto_c1
    if-ge v10, v6, :cond_141

    if-eqz v2, :cond_c9

    const/4 v11, 0x1

    invoke-interface {v2, v11}, Labcd/xn;->j6(I)V

    :cond_c9
    invoke-virtual {v3, v9}, Labcd/Pt;->Zo(I)I

    move-result v11

    add-int/lit8 v14, v9, 0x2

    invoke-virtual {v3, v14}, Labcd/Pt;->Zo(I)I

    move-result v20

    add-int/lit8 v14, v9, 0x4

    invoke-virtual {v3, v14}, Labcd/Pt;->Zo(I)I

    move-result v21

    add-int/lit8 v14, v9, 0x6

    invoke-virtual {v3, v14}, Labcd/Pt;->Zo(I)I

    move-result v14

    invoke-interface {v5, v14}, Labcd/ns;->j6(I)Labcd/ms;

    move-result-object v14

    move-object/from16 v22, v14

    check-cast v22, Labcd/Ks;

    move-object v14, v13

    move v15, v10

    move/from16 v16, v11

    move/from16 v17, v20

    move/from16 v18, v21

    move-object/from16 v19, v22

    invoke-virtual/range {v14 .. v19}, Labcd/Jm;->j6(IIIILabcd/Ks;)V

    if-eqz v2, :cond_134

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v11}, Labcd/Yt;->v5(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, ".."

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {v20 .. v20}, Labcd/Yt;->v5(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, " -> "

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {v21 .. v21}, Labcd/Yt;->v5(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, " "

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez v22, :cond_124

    const-string v11, "<any>"

    goto :goto_128

    :cond_124
    invoke-virtual/range {v22 .. v22}, Labcd/Ks;->aM()Ljava/lang/String;

    move-result-object v11

    :goto_128
    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    const/16 v14, 0x8

    invoke-interface {v2, v3, v9, v14, v11}, Labcd/xn;->j6(Labcd/Pt;IILjava/lang/String;)V

    :cond_134
    add-int/lit8 v9, v9, 0x8

    add-int/lit8 v1, v1, -0x8

    if-eqz v2, :cond_13e

    const/4 v11, -0x1

    invoke-interface {v2, v11}, Labcd/xn;->j6(I)V

    :cond_13e
    add-int/lit8 v10, v10, 0x1

    goto :goto_c1

    :cond_141
    invoke-virtual {v13}, Labcd/hu;->we()V

    new-instance v3, Labcd/hn;

    const/4 v5, 0x3

    move-object/from16 v14, p0

    move-object/from16 v6, p1

    invoke-direct {v3, v6, v5, v9, v14}, Labcd/hn;-><init>(Labcd/jn;IILabcd/gn;)V

    invoke-virtual {v3, v2}, Labcd/hn;->j6(Labcd/xn;)V

    invoke-virtual {v3}, Labcd/hn;->DW()Labcd/yn;

    move-result-object v11

    invoke-virtual {v11}, Labcd/hu;->we()V

    invoke-virtual {v3}, Labcd/hn;->j6()I

    move-result v2

    sub-int/2addr v2, v9

    if-ne v2, v1, :cond_168

    new-instance v0, Labcd/jm;

    move-object v6, v0

    move-object v9, v12

    move-object v10, v13

    invoke-direct/range {v6 .. v11}, Labcd/jm;-><init>(IILabcd/Lm;Labcd/Jm;Labcd/pn;)V

    return-object v0

    :cond_168
    sub-int/2addr v9, v0

    add-int/2addr v2, v9

    invoke-static {v2}, Labcd/nn;->j6(I)Labcd/on;

    throw v4

    :cond_16e
    move-object/from16 v14, p0

    invoke-static {}, Labcd/nn;->DW()Labcd/on;

    throw v4

    :cond_174
    move-object/from16 v14, p0

    invoke-static {}, Labcd/nn;->DW()Labcd/on;

    throw v4

    :cond_17a
    move-object/from16 v14, p0

    invoke-static {}, Labcd/nn;->j6()Labcd/on;

    goto :goto_181

    :goto_180
    throw v4

    :goto_181
    goto :goto_180
.end method

.method private Hw(Labcd/jn;IILabcd/xn;)Labcd/on;
    .registers 9

    const/4 v0, 0x2

    if-ne p3, v0, :cond_31

    invoke-virtual {p1}, Labcd/jn;->Hw()Labcd/Pt;

    move-result-object p3

    invoke-virtual {p1}, Labcd/jn;->v5()Labcd/ns;

    move-result-object p1

    invoke-virtual {p3, p2}, Labcd/Pt;->Zo(I)I

    move-result v1

    invoke-interface {p1, v1}, Labcd/ns;->get(I)Labcd/ms;

    move-result-object p1

    check-cast p1, Labcd/Ms;

    new-instance v1, Labcd/km;

    invoke-direct {v1, p1}, Labcd/km;-><init>(Labcd/Ms;)V

    if-eqz p4, :cond_30

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "value: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p4, p3, p2, v0, p1}, Labcd/xn;->j6(Labcd/Pt;IILjava/lang/String;)V

    :cond_30
    return-object v1

    :cond_31
    invoke-static {v0}, Labcd/nn;->j6(I)Labcd/on;

    const/4 p1, 0x0

    throw p1
.end method

.method private J0(Labcd/jn;IILabcd/xn;)Labcd/on;
    .registers 7

    const/4 v0, 0x2

    if-lt p3, v0, :cond_14

    new-instance v0, Labcd/tm;

    new-instance v1, Labcd/fn;

    invoke-direct {v1, p1, p2, p3, p4}, Labcd/fn;-><init>(Labcd/jn;IILabcd/xn;)V

    sget-object p1, Labcd/Ir;->DW:Labcd/Ir;

    invoke-virtual {v1, p1}, Labcd/fn;->DW(Labcd/Ir;)Labcd/Kr;

    move-result-object p1

    invoke-direct {v0, p1, p3}, Labcd/tm;-><init>(Labcd/Kr;I)V

    return-object v0

    :cond_14
    invoke-static {}, Labcd/nn;->j6()Labcd/on;

    const/4 p1, 0x0

    throw p1
.end method

.method private J8(Labcd/jn;IILabcd/xn;)Labcd/on;
    .registers 7

    const/4 v0, 0x2

    if-lt p3, v0, :cond_14

    new-instance v0, Labcd/um;

    new-instance v1, Labcd/fn;

    invoke-direct {v1, p1, p2, p3, p4}, Labcd/fn;-><init>(Labcd/jn;IILabcd/xn;)V

    sget-object p1, Labcd/Ir;->j6:Labcd/Ir;

    invoke-virtual {v1, p1}, Labcd/fn;->j6(Labcd/Ir;)Labcd/Jr;

    move-result-object p1

    invoke-direct {v0, p1, p3}, Labcd/um;-><init>(Labcd/Jr;I)V

    return-object v0

    :cond_14
    invoke-static {}, Labcd/nn;->j6()Labcd/on;

    const/4 p1, 0x0

    throw p1
.end method

.method private QX(Labcd/jn;IILabcd/xn;)Labcd/on;
    .registers 9

    const/4 v0, 0x2

    if-ne p3, v0, :cond_31

    invoke-virtual {p1}, Labcd/jn;->Hw()Labcd/Pt;

    move-result-object p3

    invoke-virtual {p1}, Labcd/jn;->v5()Labcd/ns;

    move-result-object p1

    invoke-virtual {p3, p2}, Labcd/Pt;->Zo(I)I

    move-result v1

    invoke-interface {p1, v1}, Labcd/ns;->get(I)Labcd/ms;

    move-result-object p1

    check-cast p1, Labcd/Js;

    new-instance v1, Labcd/wm;

    invoke-direct {v1, p1}, Labcd/wm;-><init>(Labcd/Js;)V

    if-eqz p4, :cond_30

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "signature: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p4, p3, p2, v0, p1}, Labcd/xn;->j6(Labcd/Pt;IILjava/lang/String;)V

    :cond_30
    return-object v1

    :cond_31
    invoke-static {v0}, Labcd/nn;->j6(I)Labcd/on;

    const/4 p1, 0x0

    throw p1
.end method

.method private VH(Labcd/jn;IILabcd/xn;)Labcd/on;
    .registers 11

    const/4 v0, 0x0

    const/4 v1, 0x2

    if-lt p3, v1, :cond_3b

    invoke-virtual {p1}, Labcd/jn;->Hw()Labcd/Pt;

    move-result-object v2

    invoke-virtual {v2, p2}, Labcd/Pt;->Zo(I)I

    move-result v3

    if-eqz p4, :cond_26

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "number_of_exceptions: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v3}, Labcd/Yt;->v5(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p4, v2, p2, v1, v4}, Labcd/xn;->j6(Labcd/Pt;IILjava/lang/String;)V

    :cond_26
    mul-int/lit8 p4, v3, 0x2

    sub-int/2addr p3, v1

    if-ne p3, p4, :cond_36

    new-instance p3, Labcd/nm;

    add-int/2addr p2, v1

    invoke-virtual {p1, p2, v3}, Labcd/jn;->j6(II)Labcd/Ss;

    move-result-object p1

    invoke-direct {p3, p1}, Labcd/nm;-><init>(Labcd/Ss;)V

    return-object p3

    :cond_36
    add-int/2addr p4, v1

    invoke-static {p4}, Labcd/nn;->j6(I)Labcd/on;

    throw v0

    :cond_3b
    invoke-static {}, Labcd/nn;->j6()Labcd/on;

    throw v0
.end method

.method private Ws(Labcd/jn;IILabcd/xn;)Labcd/on;
    .registers 7

    const/4 v0, 0x2

    if-lt p3, v0, :cond_14

    new-instance v0, Labcd/vm;

    new-instance v1, Labcd/fn;

    invoke-direct {v1, p1, p2, p3, p4}, Labcd/fn;-><init>(Labcd/jn;IILabcd/xn;)V

    sget-object p1, Labcd/Ir;->j6:Labcd/Ir;

    invoke-virtual {v1, p1}, Labcd/fn;->DW(Labcd/Ir;)Labcd/Kr;

    move-result-object p1

    invoke-direct {v0, p1, p3}, Labcd/vm;-><init>(Labcd/Kr;I)V

    return-object v0

    :cond_14
    invoke-static {}, Labcd/nn;->j6()Labcd/on;

    const/4 p1, 0x0

    throw p1
.end method

.method private XL(Labcd/jn;IILabcd/xn;)Labcd/on;
    .registers 9

    const/4 v0, 0x2

    if-ne p3, v0, :cond_31

    invoke-virtual {p1}, Labcd/jn;->Hw()Labcd/Pt;

    move-result-object p3

    invoke-virtual {p1}, Labcd/jn;->v5()Labcd/ns;

    move-result-object p1

    invoke-virtual {p3, p2}, Labcd/Pt;->Zo(I)I

    move-result v1

    invoke-interface {p1, v1}, Labcd/ns;->get(I)Labcd/ms;

    move-result-object p1

    check-cast p1, Labcd/Js;

    new-instance v1, Labcd/xm;

    invoke-direct {v1, p1}, Labcd/xm;-><init>(Labcd/Js;)V

    if-eqz p4, :cond_30

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "source: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p4, p3, p2, v0, p1}, Labcd/xn;->j6(Labcd/Pt;IILjava/lang/String;)V

    :cond_30
    return-object v1

    :cond_31
    invoke-static {v0}, Labcd/nn;->j6(I)Labcd/on;

    const/4 p1, 0x0

    throw p1
.end method

.method private Zo(Labcd/jn;IILabcd/xn;)Labcd/on;
    .registers 10

    const/4 v0, 0x4

    if-ne p3, v0, :cond_56

    invoke-virtual {p1}, Labcd/jn;->Hw()Labcd/Pt;

    move-result-object p3

    invoke-virtual {p1}, Labcd/jn;->v5()Labcd/ns;

    move-result-object p1

    invoke-virtual {p3, p2}, Labcd/Pt;->Zo(I)I

    move-result v0

    invoke-interface {p1, v0}, Labcd/ns;->get(I)Labcd/ms;

    move-result-object v0

    check-cast v0, Labcd/Ks;

    add-int/lit8 v1, p2, 0x2

    invoke-virtual {p3, v1}, Labcd/Pt;->Zo(I)I

    move-result v2

    invoke-interface {p1, v2}, Labcd/ns;->j6(I)Labcd/ms;

    move-result-object p1

    check-cast p1, Labcd/Hs;

    new-instance v2, Labcd/mm;

    invoke-direct {v2, v0, p1}, Labcd/mm;-><init>(Labcd/Ks;Labcd/Hs;)V

    if-eqz p4, :cond_55

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "class: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x2

    invoke-interface {p4, p3, p2, v3, v0}, Labcd/xn;->j6(Labcd/Pt;IILjava/lang/String;)V

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "method: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Labcd/jn;->j6(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p4, p3, v1, v3, p1}, Labcd/xn;->j6(Labcd/Pt;IILjava/lang/String;)V

    :cond_55
    return-object v2

    :cond_56
    invoke-static {v0}, Labcd/nn;->j6(I)Labcd/on;

    const/4 p1, 0x0

    throw p1
.end method

.method private aM(Labcd/jn;IILabcd/xn;)Labcd/on;
    .registers 5

    if-nez p3, :cond_8

    new-instance p1, Labcd/ym;

    invoke-direct {p1}, Labcd/ym;-><init>()V

    return-object p1

    :cond_8
    const/4 p1, 0x0

    invoke-static {p1}, Labcd/nn;->j6(I)Labcd/on;

    const/4 p1, 0x0

    throw p1
.end method

.method private gn(Labcd/jn;IILabcd/xn;)Labcd/on;
    .registers 26

    move/from16 v0, p2

    move/from16 v1, p3

    move-object/from16 v2, p4

    const/4 v3, 0x0

    const/4 v4, 0x2

    if-lt v1, v4, :cond_f4

    invoke-virtual/range {p1 .. p1}, Labcd/jn;->Hw()Labcd/Pt;

    move-result-object v5

    invoke-virtual/range {p1 .. p1}, Labcd/jn;->v5()Labcd/ns;

    move-result-object v6

    invoke-virtual {v5, v0}, Labcd/Pt;->Zo(I)I

    move-result v7

    if-eqz v2, :cond_30

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "number_of_classes: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v7}, Labcd/Yt;->v5(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v2, v5, v0, v4, v8}, Labcd/xn;->j6(Labcd/Pt;IILjava/lang/String;)V

    :cond_30
    add-int/2addr v0, v4

    mul-int/lit8 v8, v7, 0x8

    sub-int/2addr v1, v4

    if-ne v1, v8, :cond_ef

    new-instance v1, Labcd/Dm;

    invoke-direct {v1, v7}, Labcd/Dm;-><init>(I)V

    const/4 v3, 0x0

    :goto_3c
    if-ge v3, v7, :cond_e6

    invoke-virtual {v5, v0}, Labcd/Pt;->Zo(I)I

    move-result v8

    add-int/lit8 v15, v0, 0x2

    invoke-virtual {v5, v15}, Labcd/Pt;->Zo(I)I

    move-result v9

    add-int/lit8 v14, v0, 0x4

    invoke-virtual {v5, v14}, Labcd/Pt;->Zo(I)I

    move-result v10

    add-int/lit8 v13, v0, 0x6

    invoke-virtual {v5, v13}, Labcd/Pt;->Zo(I)I

    move-result v16

    invoke-interface {v6, v8}, Labcd/ns;->get(I)Labcd/ms;

    move-result-object v8

    check-cast v8, Labcd/Ks;

    invoke-interface {v6, v9}, Labcd/ns;->j6(I)Labcd/ms;

    move-result-object v9

    move-object/from16 v17, v9

    check-cast v17, Labcd/Ks;

    invoke-interface {v6, v10}, Labcd/ns;->j6(I)Labcd/ms;

    move-result-object v9

    move-object/from16 v18, v9

    check-cast v18, Labcd/Js;

    move-object v9, v1

    move v10, v3

    move-object v11, v8

    move-object/from16 v12, v17

    move/from16 v19, v13

    move-object/from16 v13, v18

    move/from16 v20, v14

    move/from16 v14, v16

    invoke-virtual/range {v9 .. v14}, Labcd/Dm;->j6(ILabcd/Ks;Labcd/Ks;Labcd/Js;I)V

    if-eqz v2, :cond_e0

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "inner_class: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v8}, Labcd/jn;->j6(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v2, v5, v0, v4, v8}, Labcd/xn;->j6(Labcd/Pt;IILjava/lang/String;)V

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "  outer_class: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {v17 .. v17}, Labcd/jn;->j6(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v2, v5, v15, v4, v8}, Labcd/xn;->j6(Labcd/Pt;IILjava/lang/String;)V

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "  name: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {v18 .. v18}, Labcd/jn;->j6(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    move/from16 v9, v20

    invoke-interface {v2, v5, v9, v4, v8}, Labcd/xn;->j6(Labcd/Pt;IILjava/lang/String;)V

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "  access_flags: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {v16 .. v16}, Labcd/Mr;->FH(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    move/from16 v9, v19

    invoke-interface {v2, v5, v9, v4, v8}, Labcd/xn;->j6(Labcd/Pt;IILjava/lang/String;)V

    :cond_e0
    add-int/lit8 v0, v0, 0x8

    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_3c

    :cond_e6
    invoke-virtual {v1}, Labcd/hu;->we()V

    new-instance v0, Labcd/om;

    invoke-direct {v0, v1}, Labcd/om;-><init>(Labcd/Dm;)V

    return-object v0

    :cond_ef
    add-int/2addr v8, v4

    invoke-static {v8}, Labcd/nn;->j6(I)Labcd/on;

    throw v3

    :cond_f4
    invoke-static {}, Labcd/nn;->j6()Labcd/on;

    goto :goto_f9

    :goto_f8
    throw v3

    :goto_f9
    goto :goto_f8
.end method

.method private j6(Labcd/Pt;Labcd/ns;Labcd/xn;IZ)Labcd/Qm;
    .registers 27

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    move/from16 v2, p4

    const-string v3, " "

    invoke-virtual/range {p1 .. p1}, Labcd/Pt;->FH()I

    move-result v4

    mul-int/lit8 v5, v2, 0xa

    const/4 v6, 0x0

    if-ne v4, v5, :cond_b3

    invoke-virtual/range {p1 .. p1}, Labcd/Pt;->j6()Labcd/Pt$a;

    move-result-object v4

    new-instance v5, Labcd/Qm;

    invoke-direct {v5, v2}, Labcd/Qm;-><init>(I)V

    const/4 v7, 0x0

    const/4 v15, 0x0

    :goto_1c
    if-ge v15, v2, :cond_af

    :try_start_1e
    invoke-virtual {v4}, Ljava/io/DataInputStream;->readUnsignedShort()I

    move-result v16

    invoke-virtual {v4}, Ljava/io/DataInputStream;->readUnsignedShort()I

    move-result v17

    invoke-virtual {v4}, Ljava/io/DataInputStream;->readUnsignedShort()I

    move-result v7

    invoke-virtual {v4}, Ljava/io/DataInputStream;->readUnsignedShort()I

    move-result v8

    invoke-virtual {v4}, Ljava/io/DataInputStream;->readUnsignedShort()I

    move-result v18

    invoke-interface {v0, v7}, Labcd/ns;->get(I)Labcd/ms;

    move-result-object v7

    move-object/from16 v19, v7

    check-cast v19, Labcd/Js;

    invoke-interface {v0, v8}, Labcd/ns;->get(I)Labcd/ms;

    move-result-object v7

    move-object/from16 v20, v7

    check-cast v20, Labcd/Js;

    if-eqz p5, :cond_48

    move-object v12, v6

    move-object/from16 v13, v20

    goto :goto_4b

    :cond_48
    move-object v13, v6

    move-object/from16 v12, v20

    :goto_4b
    move-object v7, v5

    move v8, v15

    move/from16 v9, v16

    move/from16 v10, v17

    move-object/from16 v11, v19

    move/from16 v14, v18

    invoke-virtual/range {v7 .. v14}, Labcd/Qm;->j6(IIILabcd/Js;Labcd/Js;Labcd/Js;I)V

    if-eqz v1, :cond_a0

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static/range {v16 .. v16}, Labcd/Yt;->v5(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ".."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int v16, v16, v17

    invoke-static/range {v16 .. v16}, Labcd/Yt;->v5(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {v18 .. v18}, Labcd/Yt;->v5(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {v19 .. v19}, Labcd/Js;->aM()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {v20 .. v20}, Labcd/Js;->aM()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    mul-int/lit8 v8, v15, 0xa

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/16 v9, 0xa

    move-object/from16 v10, p1

    invoke-interface {v1, v10, v8, v9, v7}, Labcd/xn;->j6(Labcd/Pt;IILjava/lang/String;)V
    :try_end_9f
    .catch Ljava/io/IOException; {:try_start_1e .. :try_end_9f} :catch_a6

    goto :goto_a2

    :cond_a0
    move-object/from16 v10, p1

    :goto_a2
    add-int/lit8 v15, v15, 0x1

    goto/16 :goto_1c

    :catch_a6
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "shouldn\'t happen"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_af
    invoke-virtual {v5}, Labcd/hu;->we()V

    return-object v5

    :cond_b3
    add-int/lit8 v5, v5, 0x2

    invoke-static {v5}, Labcd/nn;->j6(I)Labcd/on;

    goto :goto_ba

    :goto_b9
    throw v6

    :goto_ba
    goto :goto_b9
.end method

.method private static j6()Labcd/on;
    .registers 2

    new-instance v0, Labcd/wn;

    const-string v1, "severely truncated attribute"

    invoke-direct {v0, v1}, Labcd/wn;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static j6(I)Labcd/on;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "bad attribute length; expected length "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Labcd/Yt;->gn(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance p0, Labcd/wn;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Labcd/wn;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private tp(Labcd/jn;IILabcd/xn;)Labcd/on;
    .registers 13

    const/4 v0, 0x2

    if-lt p3, v0, :cond_3d

    invoke-virtual {p1}, Labcd/jn;->Hw()Labcd/Pt;

    move-result-object v1

    invoke-virtual {v1, p2}, Labcd/Pt;->Zo(I)I

    move-result v6

    if-eqz p4, :cond_25

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "local_variable_table_length: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v6}, Labcd/Yt;->v5(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p4, v1, p2, v0, v2}, Labcd/xn;->j6(Labcd/Pt;IILjava/lang/String;)V

    :cond_25
    new-instance v0, Labcd/qm;

    add-int/lit8 v2, p2, 0x2

    add-int/2addr p2, p3

    invoke-virtual {v1, v2, p2}, Labcd/Pt;->j6(II)Labcd/Pt;

    move-result-object v3

    invoke-virtual {p1}, Labcd/jn;->v5()Labcd/ns;

    move-result-object v4

    const/4 v7, 0x0

    move-object v2, p0

    move-object v5, p4

    invoke-direct/range {v2 .. v7}, Labcd/nn;->j6(Labcd/Pt;Labcd/ns;Labcd/xn;IZ)Labcd/Qm;

    move-result-object p1

    invoke-direct {v0, p1}, Labcd/qm;-><init>(Labcd/Qm;)V

    return-object v0

    :cond_3d
    invoke-static {}, Labcd/nn;->j6()Labcd/on;

    const/4 p1, 0x0

    throw p1
.end method

.method private u7(Labcd/jn;IILabcd/xn;)Labcd/on;
    .registers 10

    const/4 v0, 0x0

    const/4 v1, 0x2

    if-lt p3, v1, :cond_72

    invoke-virtual {p1}, Labcd/jn;->Hw()Labcd/Pt;

    move-result-object p1

    invoke-virtual {p1, p2}, Labcd/Pt;->Zo(I)I

    move-result v2

    if-eqz p4, :cond_26

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "line_number_table_length: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Labcd/Yt;->v5(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p4, p1, p2, v1, v3}, Labcd/xn;->j6(Labcd/Pt;IILjava/lang/String;)V

    :cond_26
    add-int/2addr p2, v1

    mul-int/lit8 v3, v2, 0x4

    sub-int/2addr p3, v1

    if-ne p3, v3, :cond_6d

    new-instance p3, Labcd/Pm;

    invoke-direct {p3, v2}, Labcd/Pm;-><init>(I)V

    const/4 v0, 0x0

    :goto_32
    if-ge v0, v2, :cond_64

    invoke-virtual {p1, p2}, Labcd/Pt;->Zo(I)I

    move-result v1

    add-int/lit8 v3, p2, 0x2

    invoke-virtual {p1, v3}, Labcd/Pt;->Zo(I)I

    move-result v3

    invoke-virtual {p3, v0, v1, v3}, Labcd/Pm;->j6(III)V

    if-eqz p4, :cond_5f

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v1}, Labcd/Yt;->v5(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x4

    invoke-interface {p4, p1, p2, v3, v1}, Labcd/xn;->j6(Labcd/Pt;IILjava/lang/String;)V

    :cond_5f
    add-int/lit8 p2, p2, 0x4

    add-int/lit8 v0, v0, 0x1

    goto :goto_32

    :cond_64
    invoke-virtual {p3}, Labcd/hu;->we()V

    new-instance p1, Labcd/pm;

    invoke-direct {p1, p3}, Labcd/pm;-><init>(Labcd/Pm;)V

    return-object p1

    :cond_6d
    add-int/2addr v3, v1

    invoke-static {v3}, Labcd/nn;->j6(I)Labcd/on;

    throw v0

    :cond_72
    invoke-static {}, Labcd/nn;->j6()Labcd/on;

    goto :goto_77

    :goto_76
    throw v0

    :goto_77
    goto :goto_76
.end method

.method private v5(Labcd/jn;IILabcd/xn;)Labcd/on;
    .registers 5

    if-nez p3, :cond_8

    new-instance p1, Labcd/lm;

    invoke-direct {p1}, Labcd/lm;-><init>()V

    return-object p1

    :cond_8
    const/4 p1, 0x0

    invoke-static {p1}, Labcd/nn;->j6(I)Labcd/on;

    const/4 p1, 0x0

    throw p1
.end method

.method private we(Labcd/jn;IILabcd/xn;)Labcd/on;
    .registers 7

    const/4 v0, 0x2

    if-lt p3, v0, :cond_14

    new-instance v0, Labcd/sm;

    new-instance v1, Labcd/fn;

    invoke-direct {v1, p1, p2, p3, p4}, Labcd/fn;-><init>(Labcd/jn;IILabcd/xn;)V

    sget-object p1, Labcd/Ir;->DW:Labcd/Ir;

    invoke-virtual {v1, p1}, Labcd/fn;->j6(Labcd/Ir;)Labcd/Jr;

    move-result-object p1

    invoke-direct {v0, p1, p3}, Labcd/sm;-><init>(Labcd/Jr;I)V

    return-object v0

    :cond_14
    invoke-static {}, Labcd/nn;->j6()Labcd/on;

    const/4 p1, 0x0

    throw p1
.end method


# virtual methods
.method protected j6(Labcd/jn;ILjava/lang/String;IILabcd/xn;)Labcd/on;
    .registers 13

    const-string v0, "Signature"

    const-string v1, "Synthetic"

    const-string v2, "RuntimeVisibleAnnotations"

    const-string v3, "RuntimeInvisibleAnnotations"

    const-string v4, "Deprecated"

    if-eqz p2, :cond_ae

    const/4 v5, 0x1

    if-eq p2, v5, :cond_82

    const/4 v5, 0x2

    if-eq p2, v5, :cond_32

    const/4 v0, 0x3

    if-eq p2, v0, :cond_17

    goto/16 :goto_ec

    :cond_17
    const-string v0, "LineNumberTable"

    if-ne p3, v0, :cond_20

    invoke-direct {p0, p1, p4, p5, p6}, Labcd/nn;->u7(Labcd/jn;IILabcd/xn;)Labcd/on;

    move-result-object p1

    return-object p1

    :cond_20
    const-string v0, "LocalVariableTable"

    if-ne p3, v0, :cond_29

    invoke-direct {p0, p1, p4, p5, p6}, Labcd/nn;->tp(Labcd/jn;IILabcd/xn;)Labcd/on;

    move-result-object p1

    return-object p1

    :cond_29
    const-string v0, "LocalVariableTypeTable"

    if-ne p3, v0, :cond_ec

    invoke-direct {p0, p1, p4, p5, p6}, Labcd/nn;->EQ(Labcd/jn;IILabcd/xn;)Labcd/on;

    move-result-object p1

    return-object p1

    :cond_32
    const-string v5, "AnnotationDefault"

    if-ne p3, v5, :cond_3b

    invoke-direct {p0, p1, p4, p5, p6}, Labcd/nn;->DW(Labcd/jn;IILabcd/xn;)Labcd/on;

    move-result-object p1

    return-object p1

    :cond_3b
    const-string v5, "Code"

    if-ne p3, v5, :cond_44

    invoke-direct {p0, p1, p4, p5, p6}, Labcd/nn;->FH(Labcd/jn;IILabcd/xn;)Labcd/on;

    move-result-object p1

    return-object p1

    :cond_44
    if-ne p3, v4, :cond_4b

    invoke-direct {p0, p1, p4, p5, p6}, Labcd/nn;->v5(Labcd/jn;IILabcd/xn;)Labcd/on;

    move-result-object p1

    return-object p1

    :cond_4b
    const-string v4, "Exceptions"

    if-ne p3, v4, :cond_54

    invoke-direct {p0, p1, p4, p5, p6}, Labcd/nn;->VH(Labcd/jn;IILabcd/xn;)Labcd/on;

    move-result-object p1

    return-object p1

    :cond_54
    if-ne p3, v3, :cond_5b

    invoke-direct {p0, p1, p4, p5, p6}, Labcd/nn;->we(Labcd/jn;IILabcd/xn;)Labcd/on;

    move-result-object p1

    return-object p1

    :cond_5b
    if-ne p3, v2, :cond_62

    invoke-direct {p0, p1, p4, p5, p6}, Labcd/nn;->J8(Labcd/jn;IILabcd/xn;)Labcd/on;

    move-result-object p1

    return-object p1

    :cond_62
    const-string v2, "RuntimeInvisibleParameterAnnotations"

    if-ne p3, v2, :cond_6b

    invoke-direct {p0, p1, p4, p5, p6}, Labcd/nn;->J0(Labcd/jn;IILabcd/xn;)Labcd/on;

    move-result-object p1

    return-object p1

    :cond_6b
    const-string v2, "RuntimeVisibleParameterAnnotations"

    if-ne p3, v2, :cond_74

    invoke-direct {p0, p1, p4, p5, p6}, Labcd/nn;->Ws(Labcd/jn;IILabcd/xn;)Labcd/on;

    move-result-object p1

    return-object p1

    :cond_74
    if-ne p3, v0, :cond_7b

    invoke-direct {p0, p1, p4, p5, p6}, Labcd/nn;->QX(Labcd/jn;IILabcd/xn;)Labcd/on;

    move-result-object p1

    return-object p1

    :cond_7b
    if-ne p3, v1, :cond_ec

    invoke-direct {p0, p1, p4, p5, p6}, Labcd/nn;->aM(Labcd/jn;IILabcd/xn;)Labcd/on;

    move-result-object p1

    return-object p1

    :cond_82
    const-string v5, "ConstantValue"

    if-ne p3, v5, :cond_8b

    invoke-direct {p0, p1, p4, p5, p6}, Labcd/nn;->Hw(Labcd/jn;IILabcd/xn;)Labcd/on;

    move-result-object p1

    return-object p1

    :cond_8b
    if-ne p3, v4, :cond_92

    invoke-direct {p0, p1, p4, p5, p6}, Labcd/nn;->v5(Labcd/jn;IILabcd/xn;)Labcd/on;

    move-result-object p1

    return-object p1

    :cond_92
    if-ne p3, v3, :cond_99

    invoke-direct {p0, p1, p4, p5, p6}, Labcd/nn;->we(Labcd/jn;IILabcd/xn;)Labcd/on;

    move-result-object p1

    return-object p1

    :cond_99
    if-ne p3, v2, :cond_a0

    invoke-direct {p0, p1, p4, p5, p6}, Labcd/nn;->J8(Labcd/jn;IILabcd/xn;)Labcd/on;

    move-result-object p1

    return-object p1

    :cond_a0
    if-ne p3, v0, :cond_a7

    invoke-direct {p0, p1, p4, p5, p6}, Labcd/nn;->QX(Labcd/jn;IILabcd/xn;)Labcd/on;

    move-result-object p1

    return-object p1

    :cond_a7
    if-ne p3, v1, :cond_ec

    invoke-direct {p0, p1, p4, p5, p6}, Labcd/nn;->aM(Labcd/jn;IILabcd/xn;)Labcd/on;

    move-result-object p1

    return-object p1

    :cond_ae
    if-ne p3, v4, :cond_b5

    invoke-direct {p0, p1, p4, p5, p6}, Labcd/nn;->v5(Labcd/jn;IILabcd/xn;)Labcd/on;

    move-result-object p1

    return-object p1

    :cond_b5
    const-string v4, "EnclosingMethod"

    if-ne p3, v4, :cond_be

    invoke-direct {p0, p1, p4, p5, p6}, Labcd/nn;->Zo(Labcd/jn;IILabcd/xn;)Labcd/on;

    move-result-object p1

    return-object p1

    :cond_be
    const-string v4, "InnerClasses"

    if-ne p3, v4, :cond_c7

    invoke-direct {p0, p1, p4, p5, p6}, Labcd/nn;->gn(Labcd/jn;IILabcd/xn;)Labcd/on;

    move-result-object p1

    return-object p1

    :cond_c7
    if-ne p3, v3, :cond_ce

    invoke-direct {p0, p1, p4, p5, p6}, Labcd/nn;->we(Labcd/jn;IILabcd/xn;)Labcd/on;

    move-result-object p1

    return-object p1

    :cond_ce
    if-ne p3, v2, :cond_d5

    invoke-direct {p0, p1, p4, p5, p6}, Labcd/nn;->J8(Labcd/jn;IILabcd/xn;)Labcd/on;

    move-result-object p1

    return-object p1

    :cond_d5
    if-ne p3, v1, :cond_dc

    invoke-direct {p0, p1, p4, p5, p6}, Labcd/nn;->aM(Labcd/jn;IILabcd/xn;)Labcd/on;

    move-result-object p1

    return-object p1

    :cond_dc
    if-ne p3, v0, :cond_e3

    invoke-direct {p0, p1, p4, p5, p6}, Labcd/nn;->QX(Labcd/jn;IILabcd/xn;)Labcd/on;

    move-result-object p1

    return-object p1

    :cond_e3
    const-string v0, "SourceFile"

    if-ne p3, v0, :cond_ec

    invoke-direct {p0, p1, p4, p5, p6}, Labcd/nn;->XL(Labcd/jn;IILabcd/xn;)Labcd/on;

    move-result-object p1

    return-object p1

    :cond_ec
    :goto_ec
    invoke-super/range {p0 .. p6}, Labcd/gn;->j6(Labcd/jn;ILjava/lang/String;IILabcd/xn;)Labcd/on;

    move-result-object p1

    return-object p1
.end method
