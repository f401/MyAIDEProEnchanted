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

    if-lt p3, v0, :cond_0

    new-instance v0, Labcd/im;

    new-instance v1, Labcd/fn;

    invoke-direct {v1, p1, p2, p3, p4}, Labcd/fn;-><init>(Labcd/jn;IILabcd/xn;)V

    invoke-virtual {v1}, Labcd/fn;->j6()Labcd/ms;

    move-result-object v1

    invoke-direct {v0, v1, p3}, Labcd/im;-><init>(Labcd/ms;I)V

    return-object v0

    :cond_0
    invoke-static {}, Labcd/nn;->j6()Labcd/on;

    const/4 v0, 0x0

    throw v0
.end method

.method private EQ(Labcd/jn;IILabcd/xn;)Labcd/on;
    .registers 12

    const/4 v3, 0x2

    if-lt p3, v3, :cond_1

    invoke-virtual {p1}, Labcd/jn;->Hw()Labcd/Pt;

    move-result-object v0

    invoke-virtual {v0, p2}, Labcd/Pt;->Zo(I)I

    move-result v4

    if-eqz p4, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "local_variable_type_table_length: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v4}, Labcd/Yt;->v5(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p4, v0, p2, v3, v1}, Labcd/xn;->j6(Labcd/Pt;IILjava/lang/String;)V

    :cond_0
    new-instance v6, Labcd/rm;

    add-int/lit8 v1, p2, 0x2

    add-int v2, p2, p3

    invoke-virtual {v0, v1, v2}, Labcd/Pt;->j6(II)Labcd/Pt;

    move-result-object v1

    invoke-virtual {p1}, Labcd/jn;->v5()Labcd/ns;

    move-result-object v2

    const/4 v5, 0x1

    move-object v0, p0

    move-object v3, p4

    invoke-direct/range {v0 .. v5}, Labcd/nn;->j6(Labcd/Pt;Labcd/ns;Labcd/xn;IZ)Labcd/Qm;

    move-result-object v0

    invoke-direct {v6, v0}, Labcd/rm;-><init>(Labcd/Qm;)V

    return-object v6

    :cond_1
    invoke-static {}, Labcd/nn;->j6()Labcd/on;

    const/4 v0, 0x0

    throw v0
.end method

.method private FH(Labcd/jn;IILabcd/xn;)Labcd/on;
    .registers 22

    const/16 v2, 0xc

    move/from16 v0, p3

    if-lt v0, v2, :cond_c

    invoke-virtual/range {p1 .. p1}, Labcd/jn;->Hw()Labcd/Pt;

    move-result-object v8

    invoke-virtual/range {p1 .. p1}, Labcd/jn;->v5()Labcd/ns;

    move-result-object v11

    move/from16 v0, p2

    invoke-virtual {v8, v0}, Labcd/Pt;->Zo(I)I

    move-result v12

    add-int/lit8 v2, p2, 0x2

    invoke-virtual {v8, v2}, Labcd/Pt;->Zo(I)I

    move-result v13

    add-int/lit8 v3, p2, 0x4

    invoke-virtual {v8, v3}, Labcd/Pt;->DW(I)I

    move-result v4

    if-eqz p4, :cond_0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "max_stack: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v12}, Labcd/Yt;->v5(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v6, 0x2

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p4

    move/from16 v1, p2

    invoke-interface {v0, v8, v1, v6, v5}, Labcd/xn;->j6(Labcd/Pt;IILjava/lang/String;)V

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "max_locals: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v13}, Labcd/Yt;->v5(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v6, 0x2

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p4

    invoke-interface {v0, v8, v2, v6, v5}, Labcd/xn;->j6(Labcd/Pt;IILjava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "code_length: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v4}, Labcd/Yt;->gn(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v5, 0x4

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p4

    invoke-interface {v0, v8, v3, v5, v2}, Labcd/xn;->j6(Labcd/Pt;IILjava/lang/String;)V

    :cond_0
    add-int/lit8 v2, p2, 0x8

    add-int/lit8 v3, p3, -0x8

    add-int/lit8 v5, v4, 0x4

    if-lt v3, v5, :cond_b

    add-int v5, v2, v4

    new-instance v14, Labcd/Lm;

    invoke-virtual {v8, v2, v5}, Labcd/Pt;->j6(II)Labcd/Pt;

    move-result-object v2

    invoke-direct {v14, v2, v11}, Labcd/Lm;-><init>(Labcd/Pt;Labcd/ns;)V

    if-eqz p4, :cond_1

    new-instance v2, Labcd/in;

    invoke-virtual {v14}, Labcd/Lm;->DW()Labcd/Pt;

    move-result-object v6

    move-object/from16 v0, p4

    invoke-direct {v2, v6, v0}, Labcd/in;-><init>(Labcd/Pt;Labcd/xn;)V

    invoke-virtual {v14, v2}, Labcd/Lm;->j6(Labcd/Lm$c;)V

    :cond_1
    invoke-virtual {v8, v5}, Labcd/Pt;->Zo(I)I

    move-result v15

    if-nez v15, :cond_6

    sget-object v2, Labcd/Jm;->FH:Labcd/Jm;

    :goto_0
    if-eqz p4, :cond_2

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "exception_table_length: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v15}, Labcd/Yt;->v5(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v7, 0x2

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p4

    invoke-interface {v0, v8, v5, v7, v6}, Labcd/xn;->j6(Labcd/Pt;IILjava/lang/String;)V

    :cond_2
    add-int/lit8 v5, v5, 0x2

    sub-int/2addr v3, v4

    add-int/lit8 v4, v3, -0x2

    mul-int/lit8 v3, v15, 0x8

    add-int/lit8 v3, v3, 0x2

    if-lt v4, v3, :cond_a

    const/4 v3, 0x0

    move v9, v4

    move v10, v5

    :goto_1
    if-ge v3, v15, :cond_8

    if-eqz p4, :cond_3

    const/4 v4, 0x1

    move-object/from16 v0, p4

    invoke-interface {v0, v4}, Labcd/xn;->j6(I)V

    :cond_3
    invoke-virtual {v8, v10}, Labcd/Pt;->Zo(I)I

    move-result v4

    add-int/lit8 v5, v10, 0x2

    invoke-virtual {v8, v5}, Labcd/Pt;->Zo(I)I

    move-result v5

    add-int/lit8 v6, v10, 0x4

    invoke-virtual {v8, v6}, Labcd/Pt;->Zo(I)I

    move-result v6

    add-int/lit8 v7, v10, 0x6

    invoke-virtual {v8, v7}, Labcd/Pt;->Zo(I)I

    move-result v7

    invoke-interface {v11, v7}, Labcd/ns;->j6(I)Labcd/ms;

    move-result-object v7

    check-cast v7, Labcd/Ks;

    invoke-virtual/range {v2 .. v7}, Labcd/Jm;->j6(IIIILabcd/Ks;)V

    if-eqz p4, :cond_4

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v4}, Labcd/Yt;->v5(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ".."

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v5}, Labcd/Yt;->v5(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " -> "

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v6}, Labcd/Yt;->v5(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " "

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez v7, :cond_7

    const-string v4, "<any>"

    :goto_2
    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v4, 0x8

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p4

    invoke-interface {v0, v8, v10, v4, v5}, Labcd/xn;->j6(Labcd/Pt;IILjava/lang/String;)V

    :cond_4
    add-int/lit8 v5, v10, 0x8

    add-int/lit8 v4, v9, -0x8

    if-eqz p4, :cond_5

    const/4 v6, -0x1

    move-object/from16 v0, p4

    invoke-interface {v0, v6}, Labcd/xn;->j6(I)V

    :cond_5
    add-int/lit8 v3, v3, 0x1

    move v9, v4

    move v10, v5

    goto/16 :goto_1

    :cond_6
    new-instance v2, Labcd/Jm;

    invoke-direct {v2, v15}, Labcd/Jm;-><init>(I)V

    goto/16 :goto_0

    :cond_7
    invoke-virtual {v7}, Labcd/Ks;->aM()Ljava/lang/String;

    move-result-object v4

    goto :goto_2

    :cond_8
    invoke-virtual {v2}, Labcd/hu;->we()V

    new-instance v3, Labcd/hn;

    const/4 v4, 0x3

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    invoke-direct {v3, v0, v4, v10, v1}, Labcd/hn;-><init>(Labcd/jn;IILabcd/gn;)V

    move-object/from16 v0, p4

    invoke-virtual {v3, v0}, Labcd/hn;->j6(Labcd/xn;)V

    invoke-virtual {v3}, Labcd/hn;->DW()Labcd/yn;

    move-result-object v8

    invoke-virtual {v8}, Labcd/hu;->we()V

    invoke-virtual {v3}, Labcd/hn;->j6()I

    move-result v3

    sub-int/2addr v3, v10

    if-ne v3, v9, :cond_9

    new-instance v3, Labcd/jm;

    move v4, v12

    move v5, v13

    move-object v6, v14

    move-object v7, v2

    invoke-direct/range {v3 .. v8}, Labcd/jm;-><init>(IILabcd/Lm;Labcd/Jm;Labcd/pn;)V

    return-object v3

    :cond_9
    sub-int v2, v10, p2

    add-int/2addr v2, v3

    invoke-static {v2}, Labcd/nn;->j6(I)Labcd/on;

    const/4 v2, 0x0

    throw v2

    :cond_a
    invoke-static {}, Labcd/nn;->DW()Labcd/on;

    const/4 v2, 0x0

    throw v2

    :cond_b
    invoke-static {}, Labcd/nn;->DW()Labcd/on;

    const/4 v2, 0x0

    throw v2

    :cond_c
    invoke-static {}, Labcd/nn;->j6()Labcd/on;

    const/4 v2, 0x0

    throw v2
.end method

.method private Hw(Labcd/jn;IILabcd/xn;)Labcd/on;
    .registers 11

    const/4 v5, 0x2

    if-ne p3, v5, :cond_1

    invoke-virtual {p1}, Labcd/jn;->Hw()Labcd/Pt;

    move-result-object v1

    invoke-virtual {p1}, Labcd/jn;->v5()Labcd/ns;

    move-result-object v0

    invoke-virtual {v1, p2}, Labcd/Pt;->Zo(I)I

    move-result v2

    invoke-interface {v0, v2}, Labcd/ns;->get(I)Labcd/ms;

    move-result-object v0

    check-cast v0, Labcd/Ms;

    new-instance v2, Labcd/km;

    invoke-direct {v2, v0}, Labcd/km;-><init>(Labcd/Ms;)V

    if-eqz p4, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "value: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p4, v1, p2, v5, v0}, Labcd/xn;->j6(Labcd/Pt;IILjava/lang/String;)V

    :cond_0
    return-object v2

    :cond_1
    invoke-static {v5}, Labcd/nn;->j6(I)Labcd/on;

    const/4 v0, 0x0

    throw v0
.end method

.method private J0(Labcd/jn;IILabcd/xn;)Labcd/on;
    .registers 8

    const/4 v0, 0x2

    if-lt p3, v0, :cond_0

    new-instance v0, Labcd/tm;

    new-instance v1, Labcd/fn;

    invoke-direct {v1, p1, p2, p3, p4}, Labcd/fn;-><init>(Labcd/jn;IILabcd/xn;)V

    sget-object v2, Labcd/Ir;->DW:Labcd/Ir;

    invoke-virtual {v1, v2}, Labcd/fn;->DW(Labcd/Ir;)Labcd/Kr;

    move-result-object v1

    invoke-direct {v0, v1, p3}, Labcd/tm;-><init>(Labcd/Kr;I)V

    return-object v0

    :cond_0
    invoke-static {}, Labcd/nn;->j6()Labcd/on;

    const/4 v0, 0x0

    throw v0
.end method

.method private J8(Labcd/jn;IILabcd/xn;)Labcd/on;
    .registers 8

    const/4 v0, 0x2

    if-lt p3, v0, :cond_0

    new-instance v0, Labcd/um;

    new-instance v1, Labcd/fn;

    invoke-direct {v1, p1, p2, p3, p4}, Labcd/fn;-><init>(Labcd/jn;IILabcd/xn;)V

    sget-object v2, Labcd/Ir;->j6:Labcd/Ir;

    invoke-virtual {v1, v2}, Labcd/fn;->j6(Labcd/Ir;)Labcd/Jr;

    move-result-object v1

    invoke-direct {v0, v1, p3}, Labcd/um;-><init>(Labcd/Jr;I)V

    return-object v0

    :cond_0
    invoke-static {}, Labcd/nn;->j6()Labcd/on;

    const/4 v0, 0x0

    throw v0
.end method

.method private QX(Labcd/jn;IILabcd/xn;)Labcd/on;
    .registers 11

    const/4 v5, 0x2

    if-ne p3, v5, :cond_1

    invoke-virtual {p1}, Labcd/jn;->Hw()Labcd/Pt;

    move-result-object v1

    invoke-virtual {p1}, Labcd/jn;->v5()Labcd/ns;

    move-result-object v0

    invoke-virtual {v1, p2}, Labcd/Pt;->Zo(I)I

    move-result v2

    invoke-interface {v0, v2}, Labcd/ns;->get(I)Labcd/ms;

    move-result-object v0

    check-cast v0, Labcd/Js;

    new-instance v2, Labcd/wm;

    invoke-direct {v2, v0}, Labcd/wm;-><init>(Labcd/Js;)V

    if-eqz p4, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "signature: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p4, v1, p2, v5, v0}, Labcd/xn;->j6(Labcd/Pt;IILjava/lang/String;)V

    :cond_0
    return-object v2

    :cond_1
    invoke-static {v5}, Labcd/nn;->j6(I)Labcd/on;

    const/4 v0, 0x0

    throw v0
.end method

.method private VH(Labcd/jn;IILabcd/xn;)Labcd/on;
    .registers 11

    const/4 v5, 0x0

    const/4 v4, 0x2

    if-lt p3, v4, :cond_2

    invoke-virtual {p1}, Labcd/jn;->Hw()Labcd/Pt;

    move-result-object v0

    invoke-virtual {v0, p2}, Labcd/Pt;->Zo(I)I

    move-result v1

    if-eqz p4, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "number_of_exceptions: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Labcd/Yt;->v5(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p4, v0, p2, v4, v2}, Labcd/xn;->j6(Labcd/Pt;IILjava/lang/String;)V

    :cond_0
    mul-int/lit8 v0, v1, 0x2

    add-int/lit8 v2, p3, -0x2

    if-ne v2, v0, :cond_1

    new-instance v0, Labcd/nm;

    add-int/lit8 v2, p2, 0x2

    invoke-virtual {p1, v2, v1}, Labcd/jn;->j6(II)Labcd/Ss;

    move-result-object v1

    invoke-direct {v0, v1}, Labcd/nm;-><init>(Labcd/Ss;)V

    return-object v0

    :cond_1
    add-int/lit8 v0, v0, 0x2

    invoke-static {v0}, Labcd/nn;->j6(I)Labcd/on;

    throw v5

    :cond_2
    invoke-static {}, Labcd/nn;->j6()Labcd/on;

    throw v5
.end method

.method private Ws(Labcd/jn;IILabcd/xn;)Labcd/on;
    .registers 8

    const/4 v0, 0x2

    if-lt p3, v0, :cond_0

    new-instance v0, Labcd/vm;

    new-instance v1, Labcd/fn;

    invoke-direct {v1, p1, p2, p3, p4}, Labcd/fn;-><init>(Labcd/jn;IILabcd/xn;)V

    sget-object v2, Labcd/Ir;->j6:Labcd/Ir;

    invoke-virtual {v1, v2}, Labcd/fn;->DW(Labcd/Ir;)Labcd/Kr;

    move-result-object v1

    invoke-direct {v0, v1, p3}, Labcd/vm;-><init>(Labcd/Kr;I)V

    return-object v0

    :cond_0
    invoke-static {}, Labcd/nn;->j6()Labcd/on;

    const/4 v0, 0x0

    throw v0
.end method

.method private XL(Labcd/jn;IILabcd/xn;)Labcd/on;
    .registers 11

    const/4 v5, 0x2

    if-ne p3, v5, :cond_1

    invoke-virtual {p1}, Labcd/jn;->Hw()Labcd/Pt;

    move-result-object v1

    invoke-virtual {p1}, Labcd/jn;->v5()Labcd/ns;

    move-result-object v0

    invoke-virtual {v1, p2}, Labcd/Pt;->Zo(I)I

    move-result v2

    invoke-interface {v0, v2}, Labcd/ns;->get(I)Labcd/ms;

    move-result-object v0

    check-cast v0, Labcd/Js;

    new-instance v2, Labcd/xm;

    invoke-direct {v2, v0}, Labcd/xm;-><init>(Labcd/Js;)V

    if-eqz p4, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "source: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p4, v1, p2, v5, v0}, Labcd/xn;->j6(Labcd/Pt;IILjava/lang/String;)V

    :cond_0
    return-object v2

    :cond_1
    invoke-static {v5}, Labcd/nn;->j6(I)Labcd/on;

    const/4 v0, 0x0

    throw v0
.end method

.method private Zo(Labcd/jn;IILabcd/xn;)Labcd/on;
    .registers 13

    const/4 v0, 0x4

    const/4 v7, 0x2

    if-ne p3, v0, :cond_1

    invoke-virtual {p1}, Labcd/jn;->Hw()Labcd/Pt;

    move-result-object v2

    invoke-virtual {p1}, Labcd/jn;->v5()Labcd/ns;

    move-result-object v1

    invoke-virtual {v2, p2}, Labcd/Pt;->Zo(I)I

    move-result v0

    invoke-interface {v1, v0}, Labcd/ns;->get(I)Labcd/ms;

    move-result-object v0

    check-cast v0, Labcd/Ks;

    add-int/lit8 v3, p2, 0x2

    invoke-virtual {v2, v3}, Labcd/Pt;->Zo(I)I

    move-result v4

    invoke-interface {v1, v4}, Labcd/ns;->j6(I)Labcd/ms;

    move-result-object v1

    check-cast v1, Labcd/Hs;

    new-instance v4, Labcd/mm;

    invoke-direct {v4, v0, v1}, Labcd/mm;-><init>(Labcd/Ks;Labcd/Hs;)V

    if-eqz p4, :cond_0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "class: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p4, v2, p2, v7, v0}, Labcd/xn;->j6(Labcd/Pt;IILjava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "method: "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Labcd/jn;->j6(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p4, v2, v3, v7, v0}, Labcd/xn;->j6(Labcd/Pt;IILjava/lang/String;)V

    :cond_0
    return-object v4

    :cond_1
    invoke-static {v0}, Labcd/nn;->j6(I)Labcd/on;

    const/4 v0, 0x0

    throw v0
.end method

.method private aM(Labcd/jn;IILabcd/xn;)Labcd/on;
    .registers 6

    if-nez p3, :cond_0

    new-instance v0, Labcd/ym;

    invoke-direct {v0}, Labcd/ym;-><init>()V

    return-object v0

    :cond_0
    const/4 v0, 0x0

    invoke-static {v0}, Labcd/nn;->j6(I)Labcd/on;

    const/4 v0, 0x0

    throw v0
.end method

.method private gn(Labcd/jn;IILabcd/xn;)Labcd/on;
    .registers 22

    const/4 v2, 0x2

    move/from16 v0, p3

    if-lt v0, v2, :cond_4

    invoke-virtual/range {p1 .. p1}, Labcd/jn;->Hw()Labcd/Pt;

    move-result-object v9

    invoke-virtual/range {p1 .. p1}, Labcd/jn;->v5()Labcd/ns;

    move-result-object v10

    move/from16 v0, p2

    invoke-virtual {v9, v0}, Labcd/Pt;->Zo(I)I

    move-result v11

    if-eqz p4, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "number_of_classes: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v11}, Labcd/Yt;->v5(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v3, 0x2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p4

    move/from16 v1, p2

    invoke-interface {v0, v9, v1, v3, v2}, Labcd/xn;->j6(Labcd/Pt;IILjava/lang/String;)V

    :cond_0
    add-int/lit8 v4, p2, 0x2

    mul-int/lit8 v2, v11, 0x8

    add-int/lit8 v3, p3, -0x2

    if-ne v3, v2, :cond_3

    new-instance v2, Labcd/Dm;

    invoke-direct {v2, v11}, Labcd/Dm;-><init>(I)V

    const/4 v3, 0x0

    move v8, v4

    :goto_0
    if-ge v3, v11, :cond_2

    invoke-virtual {v9, v8}, Labcd/Pt;->Zo(I)I

    move-result v4

    add-int/lit8 v12, v8, 0x2

    invoke-virtual {v9, v12}, Labcd/Pt;->Zo(I)I

    move-result v5

    add-int/lit8 v13, v8, 0x4

    invoke-virtual {v9, v13}, Labcd/Pt;->Zo(I)I

    move-result v6

    add-int/lit8 v14, v8, 0x6

    invoke-virtual {v9, v14}, Labcd/Pt;->Zo(I)I

    move-result v7

    invoke-interface {v10, v4}, Labcd/ns;->get(I)Labcd/ms;

    move-result-object v4

    check-cast v4, Labcd/Ks;

    invoke-interface {v10, v5}, Labcd/ns;->j6(I)Labcd/ms;

    move-result-object v5

    check-cast v5, Labcd/Ks;

    invoke-interface {v10, v6}, Labcd/ns;->j6(I)Labcd/ms;

    move-result-object v6

    check-cast v6, Labcd/Js;

    invoke-virtual/range {v2 .. v7}, Labcd/Dm;->j6(ILabcd/Ks;Labcd/Ks;Labcd/Js;I)V

    if-eqz p4, :cond_1

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "inner_class: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v4}, Labcd/jn;->j6(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v4, 0x2

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p4

    invoke-interface {v0, v9, v8, v4, v15}, Labcd/xn;->j6(Labcd/Pt;IILjava/lang/String;)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "  outer_class: "

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v5}, Labcd/jn;->j6(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v5, 0x2

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p4

    invoke-interface {v0, v9, v12, v5, v4}, Labcd/xn;->j6(Labcd/Pt;IILjava/lang/String;)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  name: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v6}, Labcd/jn;->j6(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v5, 0x2

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p4

    invoke-interface {v0, v9, v13, v5, v4}, Labcd/xn;->j6(Labcd/Pt;IILjava/lang/String;)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  access_flags: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v7}, Labcd/Mr;->FH(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v5, 0x2

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p4

    invoke-interface {v0, v9, v14, v5, v4}, Labcd/xn;->j6(Labcd/Pt;IILjava/lang/String;)V

    :cond_1
    add-int/lit8 v4, v8, 0x8

    add-int/lit8 v3, v3, 0x1

    move v8, v4

    goto/16 :goto_0

    :cond_2
    invoke-virtual {v2}, Labcd/hu;->we()V

    new-instance v3, Labcd/om;

    invoke-direct {v3, v2}, Labcd/om;-><init>(Labcd/Dm;)V

    return-object v3

    :cond_3
    add-int/lit8 v2, v2, 0x2

    invoke-static {v2}, Labcd/nn;->j6(I)Labcd/on;

    const/4 v2, 0x0

    throw v2

    :cond_4
    invoke-static {}, Labcd/nn;->j6()Labcd/on;

    const/4 v2, 0x0

    throw v2
.end method

.method private j6(Labcd/Pt;Labcd/ns;Labcd/xn;IZ)Labcd/Qm;
    .registers 17

    invoke-virtual {p1}, Labcd/Pt;->FH()I

    move-result v1

    mul-int/lit8 v2, p4, 0xa

    if-ne v1, v2, :cond_3

    invoke-virtual {p1}, Labcd/Pt;->j6()Labcd/Pt$a;

    move-result-object v10

    new-instance v1, Labcd/Qm;

    invoke-direct {v1, p4}, Labcd/Qm;-><init>(I)V

    const/4 v2, 0x0

    :goto_0
    if-ge v2, p4, :cond_2

    :try_start_0
    invoke-virtual {v10}, Ljava/io/DataInputStream;->readUnsignedShort()I

    move-result v3

    invoke-virtual {v10}, Ljava/io/DataInputStream;->readUnsignedShort()I

    move-result v4

    invoke-virtual {v10}, Ljava/io/DataInputStream;->readUnsignedShort()I

    move-result v5

    invoke-virtual {v10}, Ljava/io/DataInputStream;->readUnsignedShort()I

    move-result v6

    invoke-virtual {v10}, Ljava/io/DataInputStream;->readUnsignedShort()I

    move-result v8

    invoke-interface {p2, v5}, Labcd/ns;->get(I)Labcd/ms;

    move-result-object v5

    check-cast v5, Labcd/Js;

    invoke-interface {p2, v6}, Labcd/ns;->get(I)Labcd/ms;

    move-result-object v6

    move-object v0, v6

    check-cast v0, Labcd/Js;

    move-object v9, v0

    if-eqz p5, :cond_1

    const/4 v6, 0x0

    move-object v7, v9

    :goto_1
    invoke-virtual/range {v1 .. v8}, Labcd/Qm;->j6(IIILabcd/Js;Labcd/Js;Labcd/Js;I)V

    if-eqz p3, :cond_0

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v3}, Labcd/Yt;->v5(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ".."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/2addr v3, v4

    invoke-static {v3}, Labcd/Yt;->v5(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v8}, Labcd/Yt;->v5(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Labcd/Js;->aM()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Labcd/Js;->aM()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    mul-int/lit8 v3, v2, 0xa

    const/16 v4, 0xa

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {p3, p1, v3, v4, v5}, Labcd/xn;->j6(Labcd/Pt;IILjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v7, 0x0

    move-object v6, v9

    goto :goto_1

    :catch_0
    move-exception v1

    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "shouldn\'t happen"

    invoke-direct {v2, v3, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    :cond_2
    invoke-virtual {v1}, Labcd/hu;->we()V

    return-object v1

    :cond_3
    add-int/lit8 v1, v2, 0x2

    invoke-static {v1}, Labcd/nn;->j6(I)Labcd/on;

    const/4 v1, 0x0

    throw v1
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

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Labcd/wn;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Labcd/wn;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private tp(Labcd/jn;IILabcd/xn;)Labcd/on;
    .registers 12

    const/4 v3, 0x2

    if-lt p3, v3, :cond_1

    invoke-virtual {p1}, Labcd/jn;->Hw()Labcd/Pt;

    move-result-object v0

    invoke-virtual {v0, p2}, Labcd/Pt;->Zo(I)I

    move-result v4

    if-eqz p4, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "local_variable_table_length: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v4}, Labcd/Yt;->v5(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p4, v0, p2, v3, v1}, Labcd/xn;->j6(Labcd/Pt;IILjava/lang/String;)V

    :cond_0
    new-instance v6, Labcd/qm;

    add-int/lit8 v1, p2, 0x2

    add-int v2, p2, p3

    invoke-virtual {v0, v1, v2}, Labcd/Pt;->j6(II)Labcd/Pt;

    move-result-object v1

    invoke-virtual {p1}, Labcd/jn;->v5()Labcd/ns;

    move-result-object v2

    const/4 v5, 0x0

    move-object v0, p0

    move-object v3, p4

    invoke-direct/range {v0 .. v5}, Labcd/nn;->j6(Labcd/Pt;Labcd/ns;Labcd/xn;IZ)Labcd/Qm;

    move-result-object v0

    invoke-direct {v6, v0}, Labcd/qm;-><init>(Labcd/Qm;)V

    return-object v6

    :cond_1
    invoke-static {}, Labcd/nn;->j6()Labcd/on;

    const/4 v0, 0x0

    throw v0
.end method

.method private u7(Labcd/jn;IILabcd/xn;)Labcd/on;
    .registers 13

    const/4 v5, 0x0

    const/4 v4, 0x2

    if-lt p3, v4, :cond_4

    invoke-virtual {p1}, Labcd/jn;->Hw()Labcd/Pt;

    move-result-object v2

    invoke-virtual {v2, p2}, Labcd/Pt;->Zo(I)I

    move-result v3

    if-eqz p4, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "line_number_table_length: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v3}, Labcd/Yt;->v5(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p4, v2, p2, v4, v0}, Labcd/xn;->j6(Labcd/Pt;IILjava/lang/String;)V

    :cond_0
    add-int/lit8 v0, p2, 0x2

    mul-int/lit8 v1, v3, 0x4

    add-int/lit8 v4, p3, -0x2

    if-ne v4, v1, :cond_3

    new-instance v4, Labcd/Pm;

    invoke-direct {v4, v3}, Labcd/Pm;-><init>(I)V

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v3, :cond_2

    invoke-virtual {v2, v0}, Labcd/Pt;->Zo(I)I

    move-result v5

    add-int/lit8 v6, v0, 0x2

    invoke-virtual {v2, v6}, Labcd/Pt;->Zo(I)I

    move-result v6

    invoke-virtual {v4, v1, v5, v6}, Labcd/Pm;->j6(III)V

    if-eqz p4, :cond_1

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v5}, Labcd/Yt;->v5(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " "

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/4 v5, 0x4

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {p4, v2, v0, v5, v6}, Labcd/xn;->j6(Labcd/Pt;IILjava/lang/String;)V

    :cond_1
    add-int/lit8 v0, v0, 0x4

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {v4}, Labcd/hu;->we()V

    new-instance v0, Labcd/pm;

    invoke-direct {v0, v4}, Labcd/pm;-><init>(Labcd/Pm;)V

    return-object v0

    :cond_3
    add-int/lit8 v0, v1, 0x2

    invoke-static {v0}, Labcd/nn;->j6(I)Labcd/on;

    throw v5

    :cond_4
    invoke-static {}, Labcd/nn;->j6()Labcd/on;

    throw v5
.end method

.method private v5(Labcd/jn;IILabcd/xn;)Labcd/on;
    .registers 6

    if-nez p3, :cond_0

    new-instance v0, Labcd/lm;

    invoke-direct {v0}, Labcd/lm;-><init>()V

    return-object v0

    :cond_0
    const/4 v0, 0x0

    invoke-static {v0}, Labcd/nn;->j6(I)Labcd/on;

    const/4 v0, 0x0

    throw v0
.end method

.method private we(Labcd/jn;IILabcd/xn;)Labcd/on;
    .registers 8

    const/4 v0, 0x2

    if-lt p3, v0, :cond_0

    new-instance v0, Labcd/sm;

    new-instance v1, Labcd/fn;

    invoke-direct {v1, p1, p2, p3, p4}, Labcd/fn;-><init>(Labcd/jn;IILabcd/xn;)V

    sget-object v2, Labcd/Ir;->DW:Labcd/Ir;

    invoke-virtual {v1, v2}, Labcd/fn;->j6(Labcd/Ir;)Labcd/Jr;

    move-result-object v1

    invoke-direct {v0, v1, p3}, Labcd/sm;-><init>(Labcd/Jr;I)V

    return-object v0

    :cond_0
    invoke-static {}, Labcd/nn;->j6()Labcd/on;

    const/4 v0, 0x0

    throw v0
.end method


# virtual methods
.method protected j6(Labcd/jn;ILjava/lang/String;IILabcd/xn;)Labcd/on;
    .registers 8

    if-eqz p2, :cond_14

    const/4 v0, 0x1

    if-eq p2, v0, :cond_e

    const/4 v0, 0x2

    if-eq p2, v0, :cond_4

    const/4 v0, 0x3

    if-eq p2, v0, :cond_1

    :cond_0
    invoke-super/range {p0 .. p6}, Labcd/gn;->j6(Labcd/jn;ILjava/lang/String;IILabcd/xn;)Labcd/on;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_1
    const-string v0, "LineNumberTable"

    if-ne p3, v0, :cond_2

    invoke-direct {p0, p1, p4, p5, p6}, Labcd/nn;->u7(Labcd/jn;IILabcd/xn;)Labcd/on;

    move-result-object v0

    goto :goto_0

    :cond_2
    const-string v0, "LocalVariableTable"

    if-ne p3, v0, :cond_3

    invoke-direct {p0, p1, p4, p5, p6}, Labcd/nn;->tp(Labcd/jn;IILabcd/xn;)Labcd/on;

    move-result-object v0

    goto :goto_0

    :cond_3
    const-string v0, "LocalVariableTypeTable"

    if-ne p3, v0, :cond_0

    invoke-direct {p0, p1, p4, p5, p6}, Labcd/nn;->EQ(Labcd/jn;IILabcd/xn;)Labcd/on;

    move-result-object v0

    goto :goto_0

    :cond_4
    const-string v0, "AnnotationDefault"

    if-ne p3, v0, :cond_5

    invoke-direct {p0, p1, p4, p5, p6}, Labcd/nn;->DW(Labcd/jn;IILabcd/xn;)Labcd/on;

    move-result-object v0

    goto :goto_0

    :cond_5
    const-string v0, "Code"

    if-ne p3, v0, :cond_6

    invoke-direct {p0, p1, p4, p5, p6}, Labcd/nn;->FH(Labcd/jn;IILabcd/xn;)Labcd/on;

    move-result-object v0

    goto :goto_0

    :cond_6
    const-string v0, "Deprecated"

    if-ne p3, v0, :cond_7

    invoke-direct {p0, p1, p4, p5, p6}, Labcd/nn;->v5(Labcd/jn;IILabcd/xn;)Labcd/on;

    move-result-object v0

    goto :goto_0

    :cond_7
    const-string v0, "Exceptions"

    if-ne p3, v0, :cond_8

    invoke-direct {p0, p1, p4, p5, p6}, Labcd/nn;->VH(Labcd/jn;IILabcd/xn;)Labcd/on;

    move-result-object v0

    goto :goto_0

    :cond_8
    const-string v0, "RuntimeInvisibleAnnotations"

    if-ne p3, v0, :cond_9

    invoke-direct {p0, p1, p4, p5, p6}, Labcd/nn;->we(Labcd/jn;IILabcd/xn;)Labcd/on;

    move-result-object v0

    goto :goto_0

    :cond_9
    const-string v0, "RuntimeVisibleAnnotations"

    if-ne p3, v0, :cond_a

    invoke-direct {p0, p1, p4, p5, p6}, Labcd/nn;->J8(Labcd/jn;IILabcd/xn;)Labcd/on;

    move-result-object v0

    goto :goto_0

    :cond_a
    const-string v0, "RuntimeInvisibleParameterAnnotations"

    if-ne p3, v0, :cond_b

    invoke-direct {p0, p1, p4, p5, p6}, Labcd/nn;->J0(Labcd/jn;IILabcd/xn;)Labcd/on;

    move-result-object v0

    goto :goto_0

    :cond_b
    const-string v0, "RuntimeVisibleParameterAnnotations"

    if-ne p3, v0, :cond_c

    invoke-direct {p0, p1, p4, p5, p6}, Labcd/nn;->Ws(Labcd/jn;IILabcd/xn;)Labcd/on;

    move-result-object v0

    goto :goto_0

    :cond_c
    const-string v0, "Signature"

    if-ne p3, v0, :cond_d

    invoke-direct {p0, p1, p4, p5, p6}, Labcd/nn;->QX(Labcd/jn;IILabcd/xn;)Labcd/on;

    move-result-object v0

    goto :goto_0

    :cond_d
    const-string v0, "Synthetic"

    if-ne p3, v0, :cond_0

    invoke-direct {p0, p1, p4, p5, p6}, Labcd/nn;->aM(Labcd/jn;IILabcd/xn;)Labcd/on;

    move-result-object v0

    goto :goto_0

    :cond_e
    const-string v0, "ConstantValue"

    if-ne p3, v0, :cond_f

    invoke-direct {p0, p1, p4, p5, p6}, Labcd/nn;->Hw(Labcd/jn;IILabcd/xn;)Labcd/on;

    move-result-object v0

    goto :goto_0

    :cond_f
    const-string v0, "Deprecated"

    if-ne p3, v0, :cond_10

    invoke-direct {p0, p1, p4, p5, p6}, Labcd/nn;->v5(Labcd/jn;IILabcd/xn;)Labcd/on;

    move-result-object v0

    goto/16 :goto_0

    :cond_10
    const-string v0, "RuntimeInvisibleAnnotations"

    if-ne p3, v0, :cond_11

    invoke-direct {p0, p1, p4, p5, p6}, Labcd/nn;->we(Labcd/jn;IILabcd/xn;)Labcd/on;

    move-result-object v0

    goto/16 :goto_0

    :cond_11
    const-string v0, "RuntimeVisibleAnnotations"

    if-ne p3, v0, :cond_12

    invoke-direct {p0, p1, p4, p5, p6}, Labcd/nn;->J8(Labcd/jn;IILabcd/xn;)Labcd/on;

    move-result-object v0

    goto/16 :goto_0

    :cond_12
    const-string v0, "Signature"

    if-ne p3, v0, :cond_13

    invoke-direct {p0, p1, p4, p5, p6}, Labcd/nn;->QX(Labcd/jn;IILabcd/xn;)Labcd/on;

    move-result-object v0

    goto/16 :goto_0

    :cond_13
    const-string v0, "Synthetic"

    if-ne p3, v0, :cond_0

    invoke-direct {p0, p1, p4, p5, p6}, Labcd/nn;->aM(Labcd/jn;IILabcd/xn;)Labcd/on;

    move-result-object v0

    goto/16 :goto_0

    :cond_14
    const-string v0, "Deprecated"

    if-ne p3, v0, :cond_15

    invoke-direct {p0, p1, p4, p5, p6}, Labcd/nn;->v5(Labcd/jn;IILabcd/xn;)Labcd/on;

    move-result-object v0

    goto/16 :goto_0

    :cond_15
    const-string v0, "EnclosingMethod"

    if-ne p3, v0, :cond_16

    invoke-direct {p0, p1, p4, p5, p6}, Labcd/nn;->Zo(Labcd/jn;IILabcd/xn;)Labcd/on;

    move-result-object v0

    goto/16 :goto_0

    :cond_16
    const-string v0, "InnerClasses"

    if-ne p3, v0, :cond_17

    invoke-direct {p0, p1, p4, p5, p6}, Labcd/nn;->gn(Labcd/jn;IILabcd/xn;)Labcd/on;

    move-result-object v0

    goto/16 :goto_0

    :cond_17
    const-string v0, "RuntimeInvisibleAnnotations"

    if-ne p3, v0, :cond_18

    invoke-direct {p0, p1, p4, p5, p6}, Labcd/nn;->we(Labcd/jn;IILabcd/xn;)Labcd/on;

    move-result-object v0

    goto/16 :goto_0

    :cond_18
    const-string v0, "RuntimeVisibleAnnotations"

    if-ne p3, v0, :cond_19

    invoke-direct {p0, p1, p4, p5, p6}, Labcd/nn;->J8(Labcd/jn;IILabcd/xn;)Labcd/on;

    move-result-object v0

    goto/16 :goto_0

    :cond_19
    const-string v0, "Synthetic"

    if-ne p3, v0, :cond_1a

    invoke-direct {p0, p1, p4, p5, p6}, Labcd/nn;->aM(Labcd/jn;IILabcd/xn;)Labcd/on;

    move-result-object v0

    goto/16 :goto_0

    :cond_1a
    const-string v0, "Signature"

    if-ne p3, v0, :cond_1b

    invoke-direct {p0, p1, p4, p5, p6}, Labcd/nn;->QX(Labcd/jn;IILabcd/xn;)Labcd/on;

    move-result-object v0

    goto/16 :goto_0

    :cond_1b
    const-string v0, "SourceFile"

    if-ne p3, v0, :cond_0

    invoke-direct {p0, p1, p4, p5, p6}, Labcd/nn;->XL(Labcd/jn;IILabcd/xn;)Labcd/on;

    move-result-object v0

    goto/16 :goto_0
.end method
