.class public Labcd/gd;
.super Ljava/lang/Object;


# annotations
.annotation runtime Labcd/xu;
.end annotation


# static fields
.field private static DW:Z
    .annotation runtime Labcd/uu;
    .end annotation
.end field

.field private static j6:Z
    .annotation runtime Labcd/tu;
    .end annotation
.end field


# instance fields
.field private final FH:Labcd/La;
    .annotation runtime Labcd/ru;
        field = -0x22a2d85d3c0eed00L
    .end annotation
.end field

.field private final Hw:Labcd/Va;
    .annotation runtime Labcd/ru;
        field = -0x1f04293837c77f3cL
    .end annotation
.end field

.field private final VH:Labcd/Ea;
    .annotation runtime Labcd/ru;
        field = 0xd37dd92deb3ef2fL
    .end annotation
.end field

.field private final Zo:Labcd/Ga;
    .annotation runtime Labcd/ru;
        field = -0x5e27f00aa79056fL
    .end annotation
.end field

.field private final gn:Labcd/yd;
    .annotation runtime Labcd/ru;
        field = 0x4af1ce1efaf66f9L
    .end annotation
.end field

.field private final v5:Labcd/Ba;
    .annotation runtime Labcd/ru;
        field = -0x1f8236be34991685L
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const-class v0, Labcd/gd;

    const-wide v1, -0x41e031d7867c2573L  # -1.8513124141856157E-9

    invoke-static {v0, v1, v2, v1, v2}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method public constructor <init>(Labcd/La;Labcd/yd;)V
    .registers 10

    :try_start_0
    sget-boolean v0, Labcd/gd;->j6:Z

    if-eqz v0, :cond_d

    const-wide v0, -0x2ebfca38e2afa940L  # -2.460218574313146E83

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, p1, p2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_d
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Labcd/gd;->FH:Labcd/La;

    iget-object v0, p1, Labcd/La;->U2:Labcd/Va;

    iput-object v0, p0, Labcd/gd;->Hw:Labcd/Va;

    iget-object v0, p1, Labcd/La;->a8:Labcd/Ba;

    iput-object v0, p0, Labcd/gd;->v5:Labcd/Ba;

    iget-object v0, p1, Labcd/La;->j3:Labcd/Ga;

    iput-object v0, p0, Labcd/gd;->Zo:Labcd/Ga;

    iget-object v0, p1, Labcd/La;->Mr:Labcd/Ea;

    iput-object v0, p0, Labcd/gd;->VH:Labcd/Ea;

    iput-object p2, p0, Labcd/gd;->gn:Labcd/yd;
    :try_end_24
    .catchall {:try_start_0 .. :try_end_24} :catchall_25

    return-void

    :catchall_25
    move-exception v0

    sget-boolean v1, Labcd/gd;->DW:Z

    if-eqz v1, :cond_36

    const-wide v2, -0x2ebfca38e2afa940L  # -2.460218574313146E83

    const/4 v4, 0x0

    move-object v1, v0

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_36
    throw v0
.end method

.method private DW(Labcd/Sa;IZ)Ljava/lang/String;
    .registers 20
    .annotation runtime Labcd/su;
        method = -0x24afd93a69881d27L
    .end annotation

    move-object/from16 v7, p1

    move/from16 v8, p2

    move/from16 v9, p3

    const-string v0, "/"

    :try_start_8
    sget-boolean v1, Labcd/gd;->j6:Z

    if-eqz v1, :cond_22

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, v8}, Ljava/lang/Integer;-><init>(I)V

    new-instance v6, Ljava/lang/Boolean;

    invoke-direct {v6, v9}, Ljava/lang/Boolean;-><init>(Z)V

    const-wide v1, -0xde2f22473842bd5L  # -4.843334170793949E241

    move-object/from16 v3, p0

    move-object/from16 v4, p1

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_22
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "/**\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " * Method "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v3, 0x4

    invoke-virtual {v7, v8, v3}, Labcd/Sa;->Zo(II)I

    move-result v4

    invoke-virtual {v7, v4}, Labcd/Sa;->aM(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\n *\n"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/4 v2, 0x5

    invoke-virtual {v7, v8, v2}, Labcd/Sa;->Zo(II)I

    move-result v4

    invoke-virtual {v7, v4}, Labcd/Sa;->we(I)I

    move-result v4
    :try_end_57
    .catchall {:try_start_8 .. :try_end_57} :catchall_210

    const-string v5, "an "

    const-string v10, "AEIOUaeiou"

    const/4 v11, 0x3

    const-string v12, " *\n"

    const-string v13, "\n"

    const/4 v14, 0x0

    const/4 v15, 0x1

    const/4 v3, 0x2

    if-le v4, v3, :cond_107

    const/4 v4, 0x1

    :goto_66
    :try_start_66
    invoke-virtual {v7, v8, v2}, Labcd/Sa;->Zo(II)I

    move-result v3

    invoke-virtual {v7, v3}, Labcd/Sa;->we(I)I

    move-result v3

    if-ge v4, v3, :cond_104

    invoke-virtual {v7, v8, v2}, Labcd/Sa;->Zo(II)I

    move-result v3

    invoke-virtual {v7, v3, v4}, Labcd/Sa;->Zo(II)I

    move-result v3

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " * @param    "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3, v11}, Labcd/Sa;->Zo(II)I

    move-result v6

    invoke-virtual {v7, v6}, Labcd/Sa;->aM(I)Ljava/lang/String;

    move-result-object v6

    const/16 v11, 0x14

    invoke-static {v6, v11}, Labcd/gd;->j6(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual/range {p1 .. p1}, Labcd/Sa;->J8()Labcd/na;

    move-result-object v2

    invoke-interface {v2}, Labcd/na;->v5()Labcd/pa;

    move-result-object v2

    check-cast v2, Labcd/Fd;

    invoke-virtual {v7, v3, v15}, Labcd/Sa;->Zo(II)I

    move-result v6

    invoke-virtual {v2, v7, v6}, Labcd/Fd;->rN(Labcd/Sa;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v14}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-virtual {v10, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v6

    const/4 v11, -0x1

    if-eq v6, v11, :cond_bb

    invoke-virtual {v1, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_c0

    :cond_bb
    const-string v6, "a  "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :goto_c0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual/range {p1 .. p1}, Labcd/Sa;->J8()Labcd/na;

    move-result-object v2

    invoke-interface {v2}, Labcd/na;->v5()Labcd/pa;

    move-result-object v2

    check-cast v2, Labcd/Fd;

    const/4 v6, 0x2

    invoke-virtual {v7, v3, v6}, Labcd/Sa;->Zo(II)I

    move-result v11

    invoke-virtual {v2, v7, v11}, Labcd/Fd;->Mr(Labcd/Sa;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p1 .. p1}, Labcd/Sa;->J8()Labcd/na;

    move-result-object v6

    invoke-interface {v6}, Labcd/na;->v5()Labcd/pa;

    move-result-object v6

    check-cast v6, Labcd/Fd;

    const/4 v11, 0x4

    invoke-virtual {v7, v3, v11}, Labcd/Sa;->Zo(II)I

    move-result v3

    invoke-virtual {v6, v7, v3}, Labcd/Fd;->Mr(Labcd/Sa;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v4, v4, 0x2

    const/4 v2, 0x5

    const/4 v11, 0x3

    goto/16 :goto_66

    :cond_104
    invoke-virtual {v1, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_107
    const/4 v2, 0x2

    invoke-virtual {v7, v8, v2}, Labcd/Sa;->Zo(II)I

    move-result v3

    invoke-virtual {v7, v3, v14}, Labcd/Sa;->Zo(II)I

    move-result v2

    invoke-virtual {v7, v2}, Labcd/Sa;->P8(I)I

    move-result v2

    const/16 v3, 0x45

    if-eq v2, v3, :cond_184

    const-string v2, " * @return   "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual/range {p1 .. p1}, Labcd/Sa;->J8()Labcd/na;

    move-result-object v2

    invoke-interface {v2}, Labcd/na;->v5()Labcd/pa;

    move-result-object v2

    check-cast v2, Labcd/Fd;

    const/4 v3, 0x2

    invoke-virtual {v7, v8, v3}, Labcd/Sa;->Zo(II)I

    move-result v3

    invoke-virtual {v2, v7, v3}, Labcd/Fd;->rN(Labcd/Sa;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v14}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-virtual {v10, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_13f

    invoke-virtual {v1, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_144

    :cond_13f
    const-string v3, "a "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :goto_144
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual/range {p1 .. p1}, Labcd/Sa;->J8()Labcd/na;

    move-result-object v2

    invoke-interface {v2}, Labcd/na;->v5()Labcd/pa;

    move-result-object v2

    check-cast v2, Labcd/Fd;

    const/4 v3, 0x3

    invoke-virtual {v7, v8, v3}, Labcd/Sa;->Zo(II)I

    move-result v3

    invoke-virtual {v2, v7, v3}, Labcd/Fd;->Mr(Labcd/Sa;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p1 .. p1}, Labcd/Sa;->J8()Labcd/na;

    move-result-object v3

    invoke-interface {v3}, Labcd/na;->v5()Labcd/pa;

    move-result-object v3

    check-cast v3, Labcd/Fd;

    const/4 v4, 0x6

    invoke-virtual {v7, v8, v4}, Labcd/Sa;->Zo(II)I

    move-result v4

    invoke-virtual {v3, v7, v4}, Labcd/Fd;->Mr(Labcd/Sa;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\n * \n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_184
    const/4 v2, 0x7

    invoke-virtual {v7, v8, v2}, Labcd/Sa;->Zo(II)I

    move-result v3

    invoke-virtual {v7, v3}, Labcd/Sa;->we(I)I

    move-result v3

    if-lez v3, :cond_1cd

    const/4 v3, 0x1

    :goto_190
    invoke-virtual {v7, v8, v2}, Labcd/Sa;->Zo(II)I

    move-result v4

    invoke-virtual {v7, v4}, Labcd/Sa;->we(I)I

    move-result v4

    if-ge v3, v4, :cond_1ca

    invoke-virtual {v7, v8, v2}, Labcd/Sa;->Zo(II)I

    move-result v4

    invoke-virtual {v7, v4, v3}, Labcd/Sa;->Zo(II)I

    move-result v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " * @exception   "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Labcd/Sa;->J8()Labcd/na;

    move-result-object v6

    invoke-interface {v6}, Labcd/na;->v5()Labcd/pa;

    move-result-object v6

    check-cast v6, Labcd/Fd;

    invoke-virtual {v6, v7, v4}, Labcd/Fd;->rN(Labcd/Sa;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v3, v3, 0x2

    goto :goto_190

    :cond_1ca
    invoke-virtual {v1, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_1cd
    if-eqz v9, :cond_206

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " * @version  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/util/Date;->getMonth()I

    move-result v4

    add-int/2addr v4, v15

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/util/Date;->getDate()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/util/Date;->getYear()I

    move-result v0

    add-int/lit16 v0, v0, 0x76c

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_206
    const-string v0, " */"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_20f
    .catchall {:try_start_66 .. :try_end_20f} :catchall_210

    return-object v0

    :catchall_210
    move-exception v0

    sget-boolean v1, Labcd/gd;->DW:Z

    if-eqz v1, :cond_22d

    const-wide v2, -0xde2f22473842bd5L  # -4.843334170793949E241

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, v8}, Ljava/lang/Integer;-><init>(I)V

    new-instance v8, Ljava/lang/Boolean;

    invoke-direct {v8, v9}, Ljava/lang/Boolean;-><init>(Z)V

    move-object v1, v0

    move-object/from16 v4, p0

    move-object/from16 v5, p1

    move-object v7, v8

    invoke-static/range {v1 .. v7}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_22d
    goto :goto_22f

    :goto_22e
    throw v0

    :goto_22f
    goto :goto_22e
.end method

.method private DW(Labcd/Sa;I)Z
    .registers 10
    .annotation runtime Labcd/su;
        method = -0x22edfc9edf72868L
    .end annotation

    :try_start_0
    sget-boolean v0, Labcd/gd;->j6:Z

    if-eqz v0, :cond_11

    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, p2}, Ljava/lang/Integer;-><init>(I)V

    const-wide v1, 0x59d47154bc98764L

    invoke-static {v1, v2, p0, p1, v0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_11
    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Labcd/Sa;->Zo(II)I

    move-result v1

    invoke-virtual {p1, v1}, Labcd/Sa;->we(I)I

    move-result v2

    const/4 v3, 0x0

    :goto_1b
    if-ge v3, v2, :cond_2e

    invoke-virtual {p1, v1, v3}, Labcd/Sa;->Zo(II)I

    move-result v4

    invoke-virtual {p1, v4}, Labcd/Sa;->P8(I)I

    move-result v4
    :try_end_25
    .catchall {:try_start_0 .. :try_end_25} :catchall_2f

    const/16 v5, 0x4b

    if-ne v4, v5, :cond_2b

    const/4 p1, 0x1

    return p1

    :cond_2b
    add-int/lit8 v3, v3, 0x1

    goto :goto_1b

    :cond_2e
    return v0

    :catchall_2f
    move-exception v0

    sget-boolean v1, Labcd/gd;->DW:Z

    if-eqz v1, :cond_44

    const-wide v2, 0x59d47154bc98764L

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    move-object v1, v0

    move-object v4, p0

    move-object v5, p1

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_44
    goto :goto_46

    :goto_45
    throw v0

    :goto_46
    goto :goto_45
.end method

.method private FH(Labcd/Sa;IZ)V
    .registers 12
    .annotation runtime Labcd/su;
        method = -0xdc22ef6e68c5b0dL
    .end annotation

    :try_start_0
    sget-boolean v0, Labcd/gd;->j6:Z

    if-eqz v0, :cond_18

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v6, Ljava/lang/Boolean;

    invoke-direct {v6, p3}, Ljava/lang/Boolean;-><init>(Z)V

    const-wide v1, -0x2737cfb610dbad5bL  # -4.879772037498783E119

    move-object v3, p0

    move-object v4, p1

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_18
    invoke-virtual {p1, p2}, Labcd/Sa;->we(I)I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_1e
    if-ltz v0, :cond_2a

    invoke-virtual {p1, p2, v0}, Labcd/Sa;->Zo(II)I

    move-result v1

    invoke-direct {p0, p1, v1, p3}, Labcd/gd;->FH(Labcd/Sa;IZ)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_1e

    :cond_2a
    invoke-virtual {p1, p2}, Labcd/Sa;->P8(I)I

    move-result v0
    :try_end_2e
    .catchall {:try_start_0 .. :try_end_2e} :catchall_78

    const/16 v1, 0x7c

    if-ne v0, v1, :cond_52

    :try_start_32
    iget-object v0, p0, Labcd/gd;->FH:Labcd/La;

    iget-object v0, v0, Labcd/La;->a8:Labcd/Ba;

    invoke-virtual {p1}, Labcd/Sa;->VH()Labcd/Da;

    move-result-object v1

    invoke-virtual {p1}, Labcd/Sa;->J8()Labcd/na;

    move-result-object v2

    invoke-virtual {p1, p2}, Labcd/Sa;->J8(I)I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Labcd/Ba;->DW(Labcd/Da;Labcd/na;I)Labcd/Ia;

    move-result-object v0

    invoke-virtual {v0}, Labcd/Aa;->DW()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_77

    invoke-direct {p0, p1, p2, p3}, Labcd/gd;->v5(Labcd/Sa;IZ)V
    :try_end_4f
    .catch Labcd/jc; {:try_start_32 .. :try_end_4f} :catch_50
    .catchall {:try_start_32 .. :try_end_4f} :catchall_78

    goto :goto_77

    :catch_50
    move-exception p1

    goto :goto_77

    :cond_52
    :try_start_52
    invoke-virtual {p1, p2}, Labcd/Sa;->P8(I)I

    move-result v0
    :try_end_56
    .catchall {:try_start_52 .. :try_end_56} :catchall_78

    const/16 v1, 0x7b

    if-ne v0, v1, :cond_77

    :try_start_5a
    iget-object v0, p0, Labcd/gd;->FH:Labcd/La;

    iget-object v0, v0, Labcd/La;->a8:Labcd/Ba;

    invoke-virtual {p1}, Labcd/Sa;->VH()Labcd/Da;

    move-result-object v1

    invoke-virtual {p1}, Labcd/Sa;->J8()Labcd/na;

    move-result-object v2

    invoke-virtual {p1, p2}, Labcd/Sa;->J8(I)I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Labcd/Ba;->DW(Labcd/Da;Labcd/na;I)Labcd/Ia;

    move-result-object v0

    invoke-virtual {v0}, Labcd/Aa;->DW()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_77

    invoke-direct {p0, p1, p2, p3}, Labcd/gd;->Hw(Labcd/Sa;IZ)V
    :try_end_77
    .catch Labcd/jc; {:try_start_5a .. :try_end_77} :catch_50
    .catchall {:try_start_5a .. :try_end_77} :catchall_78

    :cond_77
    :goto_77
    return-void

    :catchall_78
    move-exception v0

    sget-boolean v1, Labcd/gd;->DW:Z

    if-eqz v1, :cond_92

    const-wide v2, -0x2737cfb610dbad5bL  # -4.879772037498783E119

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v7, Ljava/lang/Boolean;

    invoke-direct {v7, p3}, Ljava/lang/Boolean;-><init>(Z)V

    move-object v1, v0

    move-object v4, p0

    move-object v5, p1

    invoke-static/range {v1 .. v7}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_92
    goto :goto_94

    :goto_93
    throw v0

    :goto_94
    goto :goto_93
.end method

.method private FH(Labcd/Sa;I)Z
    .registers 10
    .annotation runtime Labcd/su;
        method = -0x82d85df6309ca50L
    .end annotation

    :try_start_0
    sget-boolean v0, Labcd/gd;->j6:Z

    if-eqz v0, :cond_11

    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, p2}, Ljava/lang/Integer;-><init>(I)V

    const-wide v1, -0x10161eec390edc00L

    invoke-static {v1, v2, p0, p1, v0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_11
    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Labcd/Sa;->Zo(II)I

    move-result v1

    invoke-virtual {p1, v1}, Labcd/Sa;->we(I)I

    move-result v2

    const/4 v3, 0x0

    :goto_1b
    if-ge v3, v2, :cond_2e

    invoke-virtual {p1, v1, v3}, Labcd/Sa;->Zo(II)I

    move-result v4

    invoke-virtual {p1, v4}, Labcd/Sa;->P8(I)I

    move-result v4
    :try_end_25
    .catchall {:try_start_0 .. :try_end_25} :catchall_2f

    const/16 v5, 0x56

    if-ne v4, v5, :cond_2b

    const/4 p1, 0x1

    return p1

    :cond_2b
    add-int/lit8 v3, v3, 0x1

    goto :goto_1b

    :cond_2e
    return v0

    :catchall_2f
    move-exception v0

    sget-boolean v1, Labcd/gd;->DW:Z

    if-eqz v1, :cond_44

    const-wide v2, -0x10161eec390edc00L

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    move-object v1, v0

    move-object v4, p0

    move-object v5, p1

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_44
    goto :goto_46

    :goto_45
    throw v0

    :goto_46
    goto :goto_45
.end method

.method private Hw(Labcd/Sa;IZ)V
    .registers 12
    .annotation runtime Labcd/su;
        method = 0x23c96770b7aba88L
    .end annotation

    :try_start_0
    sget-boolean v0, Labcd/gd;->j6:Z

    if-eqz v0, :cond_18

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v6, Ljava/lang/Boolean;

    invoke-direct {v6, p3}, Ljava/lang/Boolean;-><init>(Z)V

    const-wide v1, -0x348d77b1b673f70L  # -5.777528037983039E292

    move-object v3, p0

    move-object v4, p1

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_18
    invoke-direct {p0, p1, p2, p3}, Labcd/gd;->j6(Labcd/Sa;IZ)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Labcd/gd;->j6(Labcd/Sa;ILjava/lang/String;)V
    :try_end_1f
    .catchall {:try_start_0 .. :try_end_1f} :catchall_20

    return-void

    :catchall_20
    move-exception v0

    sget-boolean v1, Labcd/gd;->DW:Z

    if-eqz v1, :cond_3a

    const-wide v2, -0x348d77b1b673f70L  # -5.777528037983039E292

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v7, Ljava/lang/Boolean;

    invoke-direct {v7, p3}, Ljava/lang/Boolean;-><init>(Z)V

    move-object v1, v0

    move-object v4, p0

    move-object v5, p1

    invoke-static/range {v1 .. v7}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_3a
    throw v0
.end method

.method private j6(Ljava/lang/String;)I
    .registers 8
    .annotation runtime Labcd/su;
        method = -0x2c885df4c90fc671L
    .end annotation

    const-wide v0, 0x299b1a9ad377acadL  # 2.885185599439661E-108

    :try_start_5
    sget-boolean v2, Labcd/gd;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_e
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v2, v4, :cond_21

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4
    :try_end_18
    .catchall {:try_start_5 .. :try_end_18} :catchall_22

    const/16 v5, 0xa

    if-ne v4, v5, :cond_1e

    add-int/lit8 v3, v3, 0x1

    :cond_1e
    add-int/lit8 v2, v2, 0x1

    goto :goto_e

    :cond_21
    return v3

    :catchall_22
    move-exception v2

    sget-boolean v3, Labcd/gd;->DW:Z

    if-eqz v3, :cond_2a

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_2a
    goto :goto_2c

    :goto_2b
    throw v2

    :goto_2c
    goto :goto_2b
.end method

.method private static j6(I)Ljava/lang/String;
    .registers 7
    .annotation runtime Labcd/su;
        method = -0xd019d75fa525814L
    .end annotation

    const/4 v0, 0x0

    const-wide v1, -0x23d3ba8db4cb338L

    :try_start_6
    sget-boolean v3, Labcd/gd;->j6:Z

    if-eqz v3, :cond_d

    invoke-static {v1, v2, v0, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;I)V

    :cond_d
    new-array v3, p0, [C
    :try_end_f
    .catchall {:try_start_6 .. :try_end_f} :catchall_1f

    const/4 v4, 0x0

    :goto_10
    if-ge v4, p0, :cond_19

    const/16 v5, 0x20

    aput-char v5, v3, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_10

    :cond_19
    :try_start_19
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v3}, Ljava/lang/String;-><init>([C)V
    :try_end_1e
    .catchall {:try_start_19 .. :try_end_1e} :catchall_1f

    return-object v4

    :catchall_1f
    move-exception v3

    sget-boolean v4, Labcd/gd;->DW:Z

    if-eqz v4, :cond_2c

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, p0}, Ljava/lang/Integer;-><init>(I)V

    invoke-static {v3, v1, v2, v0, v4}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_2c
    goto :goto_2e

    :goto_2d
    throw v3

    :goto_2e
    goto :goto_2d
.end method

.method private j6(Labcd/Ia;Z)Ljava/lang/String;
    .registers 10
    .annotation runtime Labcd/su;
        method = -0x7e2f3da2f205989L
    .end annotation

    :try_start_0
    sget-boolean v0, Labcd/gd;->j6:Z

    if-eqz v0, :cond_11

    new-instance v0, Ljava/lang/Boolean;

    invoke-direct {v0, p2}, Ljava/lang/Boolean;-><init>(Z)V

    const-wide v1, 0xd3e879568f4e569L

    invoke-static {v1, v2, p0, p1, v0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_11
    invoke-virtual {p1}, Labcd/Aa;->QX()Labcd/na;

    move-result-object v0

    instance-of v0, v0, Labcd/yd;

    if-eqz v0, :cond_45

    invoke-virtual {p1}, Labcd/Ia;->Zo()Labcd/Da;

    move-result-object v0

    iget-object v1, p0, Labcd/gd;->Hw:Labcd/Va;

    invoke-virtual {p1}, Labcd/Aa;->QX()Labcd/na;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Labcd/Va;->DW(Labcd/Da;Labcd/na;)Labcd/Sa;

    move-result-object v0

    invoke-virtual {p1}, Labcd/Ia;->j6()I

    move-result v1

    invoke-virtual {v0, v1}, Labcd/Sa;->rN(I)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_45

    invoke-virtual {v0, v1}, Labcd/Sa;->P8(I)I

    move-result v2

    const/16 v3, 0x7c

    if-eq v2, v3, :cond_3b

    goto :goto_45

    :cond_3b
    invoke-direct {p0, v0, v1, p2}, Labcd/gd;->DW(Labcd/Sa;IZ)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Labcd/gd;->Hw:Labcd/Va;

    invoke-virtual {v2, v0}, Labcd/Va;->j6(Labcd/Sa;)V
    :try_end_44
    .catchall {:try_start_0 .. :try_end_44} :catchall_48

    goto :goto_47

    :cond_45
    :goto_45
    const-string v1, ""

    :goto_47
    return-object v1

    :catchall_48
    move-exception v0

    sget-boolean v1, Labcd/gd;->DW:Z

    if-eqz v1, :cond_5d

    const-wide v2, 0xd3e879568f4e569L

    new-instance v6, Ljava/lang/Boolean;

    invoke-direct {v6, p2}, Ljava/lang/Boolean;-><init>(Z)V

    move-object v1, v0

    move-object v4, p0

    move-object v5, p1

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_5d
    throw v0
.end method

.method private j6(Labcd/Sa;IILabcd/Ya;Labcd/Ia;Labcd/ua;)Ljava/lang/String;
    .registers 28
    .annotation runtime Labcd/su;
        method = -0x131b395eeefa5a08L
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    const-string v6, ""

    sget-boolean v7, Labcd/gd;->j6:Z

    const/4 v8, 0x5

    const/4 v9, 0x3

    const/4 v10, 0x0

    const/4 v11, 0x1

    if-eqz v7, :cond_39

    const/4 v7, 0x6

    new-array v7, v7, [Ljava/lang/Object;

    aput-object v0, v7, v10

    new-instance v12, Ljava/lang/Integer;

    invoke-direct {v12, v2}, Ljava/lang/Integer;-><init>(I)V

    aput-object v12, v7, v11

    new-instance v12, Ljava/lang/Integer;

    invoke-direct {v12, v3}, Ljava/lang/Integer;-><init>(I)V

    const/4 v13, 0x2

    aput-object v12, v7, v13

    aput-object v4, v7, v9

    const/4 v12, 0x4

    aput-object v5, v7, v12

    aput-object p6, v7, v8

    const-wide v12, -0x33b18701b3773a0L

    invoke-static {v12, v13, v1, v7}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;[Ljava/lang/Object;)V

    :cond_39
    :try_start_39
    invoke-virtual/range {p5 .. p5}, Labcd/Ia;->XL()I

    move-result v7

    invoke-virtual/range {p5 .. p5}, Labcd/Ia;->XG()Z

    move-result v12

    if-nez v12, :cond_48

    invoke-virtual {v5, v4}, Labcd/Ia;->FH(Labcd/Ya;)Labcd/Ya;

    move-result-object v12

    goto :goto_49

    :cond_48
    const/4 v12, 0x0

    :goto_49
    invoke-static {v7}, Labcd/Ma;->J8(I)Z

    move-result v13
    :try_end_4d
    .catch Labcd/jc; {:try_start_39 .. :try_end_4d} :catch_35f

    const-string v14, "@Override\n"

    if-eqz v13, :cond_62

    :try_start_51
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, "public "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    :cond_62
    invoke-static {v7}, Labcd/Ma;->J0(I)Z

    move-result v7

    if-eqz v7, :cond_79

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, "protected "

    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    :cond_79
    invoke-virtual/range {p5 .. p5}, Labcd/Ia;->XG()Z

    move-result v7

    if-nez v7, :cond_8a

    iget-object v7, v1, Labcd/gd;->Zo:Labcd/Ga;

    invoke-virtual/range {p5 .. p5}, Labcd/Ia;->we()I

    move-result v13

    invoke-virtual {v7, v13}, Labcd/Ga;->j6(I)Ljava/lang/String;

    move-result-object v7

    goto :goto_8e

    :cond_8a
    invoke-virtual/range {p6 .. p6}, Labcd/ua;->ye()Ljava/lang/String;

    move-result-object v7

    :goto_8e
    invoke-virtual {v5, v4}, Labcd/Ia;->DW(Labcd/Ya;)I

    move-result v13
    :try_end_92
    .catch Labcd/jc; {:try_start_51 .. :try_end_92} :catch_35f

    const-string v15, ", "

    if-lez v13, :cond_14a

    :try_start_96
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "<"

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v10, 0x0

    :goto_a8
    if-ge v10, v13, :cond_138

    if-lez v10, :cond_bb

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    :cond_bb
    invoke-virtual {v5, v10}, Labcd/Ia;->Zo(I)Labcd/Ja;

    move-result-object v9

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Labcd/Aa;->a8()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v9}, Labcd/Ja;->x9()I

    move-result v11

    if-lez v11, :cond_12e

    move/from16 v16, v13

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " extends "

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v13, 0x0

    :goto_ec
    if-ge v13, v11, :cond_130

    if-lez v13, :cond_104

    move/from16 v17, v11

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " & "

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    goto :goto_106

    :cond_104
    move/from16 v17, v11

    :goto_106
    invoke-virtual {v9, v4, v13}, Labcd/Ja;->j6(Labcd/Ya;I)Labcd/Ya;

    move-result-object v11

    move-object/from16 v18, v9

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Labcd/Sa;->J8()Labcd/na;

    move-result-object v8

    invoke-interface {v8}, Labcd/na;->u7()Labcd/qa;

    move-result-object v8

    invoke-interface {v8, v0, v2, v3, v11}, Labcd/qa;->j6(Labcd/Sa;IILabcd/Ya;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    add-int/lit8 v13, v13, 0x1

    move/from16 v11, v17

    move-object/from16 v9, v18

    goto :goto_ec

    :cond_12e
    move/from16 v16, v13

    :cond_130
    add-int/lit8 v10, v10, 0x1

    move/from16 v13, v16

    const/4 v9, 0x3

    const/4 v11, 0x1

    goto/16 :goto_a8

    :cond_138
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "> "

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    goto :goto_14b

    :cond_14a
    move-object v8, v6

    :goto_14b
    invoke-virtual/range {p5 .. p5}, Labcd/Ia;->XG()Z

    move-result v9
    :try_end_14f
    .catch Labcd/jc; {:try_start_96 .. :try_end_14f} :catch_35f

    const-string v10, " "

    if-nez v9, :cond_16f

    :try_start_153
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p1 .. p1}, Labcd/Sa;->J8()Labcd/na;

    move-result-object v11

    invoke-interface {v11}, Labcd/na;->u7()Labcd/qa;

    move-result-object v11

    invoke-interface {v11, v0, v2, v3, v12}, Labcd/qa;->j6(Labcd/Sa;IILabcd/Ya;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    goto :goto_170

    :cond_16f
    move-object v9, v6

    :goto_170
    invoke-virtual/range {p5 .. p5}, Labcd/Ia;->vJ()I

    move-result v11
    :try_end_174
    .catch Labcd/jc; {:try_start_153 .. :try_end_174} :catch_35f

    const-string v13, "("

    move-object/from16 v16, v6

    move-object/from16 v17, v9

    move-object v9, v13

    const/4 v6, 0x0

    :goto_17c
    if-ge v6, v11, :cond_1d1

    move/from16 v18, v11

    :try_start_180
    iget-object v11, v1, Labcd/gd;->Zo:Labcd/Ga;

    move-object/from16 v19, v8

    invoke-virtual {v5, v6}, Labcd/Ia;->v5(I)I

    move-result v8

    invoke-virtual {v11, v8}, Labcd/Ga;->j6(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual/range {p1 .. p1}, Labcd/Sa;->J8()Labcd/na;

    move-result-object v11

    invoke-interface {v11}, Labcd/na;->u7()Labcd/qa;

    move-result-object v11

    move-object/from16 v20, v14

    invoke-virtual {v5, v4, v6}, Labcd/Ia;->FH(Labcd/Ya;I)Labcd/Ya;

    move-result-object v14

    invoke-interface {v11, v0, v2, v3, v14}, Labcd/qa;->j6(Labcd/Sa;IILabcd/Ya;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v13}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v14

    if-nez v14, :cond_1b3

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    :cond_1b3
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    add-int/lit8 v6, v6, 0x1

    move/from16 v11, v18

    move-object/from16 v8, v19

    move-object/from16 v14, v20

    goto :goto_17c

    :cond_1d1
    move-object/from16 v19, v8

    move-object/from16 v20, v14

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ")"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual/range {p5 .. p5}, Labcd/Ia;->cb()I

    move-result v8

    move-object/from16 v11, v16

    const/4 v9, 0x0

    :goto_1ed
    if-ge v9, v8, :cond_22b

    invoke-virtual {v5, v9, v4}, Labcd/Ia;->j6(ILabcd/Ya;)Labcd/Ya;

    move-result-object v14

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v18

    if-eqz v18, :cond_209

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4
    :try_end_208
    .catch Labcd/jc; {:try_start_180 .. :try_end_208} :catch_35d

    goto :goto_20b

    :cond_209
    const-string v4, " throws "

    :goto_20b
    :try_start_20b
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Labcd/Sa;->J8()Labcd/na;

    move-result-object v4

    invoke-interface {v4}, Labcd/na;->u7()Labcd/qa;

    move-result-object v4

    invoke-interface {v4, v0, v2, v3, v14}, Labcd/qa;->j6(Labcd/Sa;IILabcd/Ya;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    add-int/lit8 v9, v9, 0x1

    move-object/from16 v4, p4

    goto :goto_1ed

    :cond_22b
    iget-object v0, v1, Labcd/gd;->FH:Labcd/La;

    invoke-virtual {v0}, Labcd/La;->Hw()Labcd/va;

    move-result-object v0

    iget-boolean v0, v0, Labcd/va;->gn:Z

    if-eqz v0, :cond_245

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_240
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_253

    :cond_245
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_240

    :goto_253
    invoke-virtual/range {p6 .. p6}, Labcd/ua;->g3()Z

    move-result v2
    :try_end_257
    .catch Labcd/jc; {:try_start_20b .. :try_end_257} :catch_35d

    if-eqz v2, :cond_25d

    const-string v2, ";\n"

    goto/16 :goto_338

    :cond_25d
    :try_start_25d
    invoke-virtual/range {p5 .. p5}, Labcd/Ia;->XG()Z

    move-result v2

    if-eqz v2, :cond_2ac

    invoke-virtual/range {p5 .. p5}, Labcd/Ia;->vJ()I

    move-result v2
    :try_end_267
    .catch Labcd/jc; {:try_start_25d .. :try_end_267} :catch_35d

    const-string v3, "{\nsuper("

    const/4 v10, 0x0

    :goto_26a
    if-ge v10, v2, :cond_299

    if-eqz v10, :cond_27d

    :try_start_26e
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :cond_27d
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v1, Labcd/gd;->Zo:Labcd/Ga;

    invoke-virtual {v5, v10}, Labcd/Ia;->v5(I)I

    move-result v8

    invoke-virtual {v3, v8}, Labcd/Ga;->j6(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    add-int/lit8 v10, v10, 0x1

    goto :goto_26a

    :cond_299
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ");\n}\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_338

    :cond_2ac
    invoke-virtual/range {p5 .. p5}, Labcd/Ia;->XX()Z

    move-result v2

    if-eqz v2, :cond_2d5

    invoke-virtual {v12}, Labcd/Ya;->dx()I

    move-result v2
    :try_end_2b6
    .catch Labcd/jc; {:try_start_26e .. :try_end_2b6} :catch_35d

    const/4 v3, 0x1

    if-eq v2, v3, :cond_2d2

    const/4 v3, 0x3

    if-eq v2, v3, :cond_2cf

    const/4 v3, 0x5

    if-eq v2, v3, :cond_2cf

    const/4 v3, 0x7

    if-eq v2, v3, :cond_2cf

    const/16 v3, 0x9

    if-eq v2, v3, :cond_2cf

    packed-switch v2, :pswitch_data_364

    const-string v2, "{\nreturn null;\n}\n"

    goto :goto_338

    :pswitch_2cc  #0xb
    const-string v2, "{\nreturn false;\n}\n"

    goto :goto_338

    :cond_2cf
    :pswitch_2cf  #0xc, 0xd, 0xe
    const-string v2, "{\nreturn 0;\n}\n"

    goto :goto_338

    :cond_2d2
    const-string v2, "{\n}\n"

    goto :goto_338

    :cond_2d5
    :try_start_2d5
    invoke-virtual {v12}, Labcd/Ya;->dx()I

    move-result v2
    :try_end_2d9
    .catch Labcd/jc; {:try_start_2d5 .. :try_end_2d9} :catch_35d

    const/4 v3, 0x1

    if-eq v2, v3, :cond_2df

    const-string v2, "{\nreturn super."

    goto :goto_2e1

    :cond_2df
    const-string v2, "{\nsuper."

    :goto_2e1
    :try_start_2e1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {p5 .. p5}, Labcd/Ia;->vJ()I

    move-result v3

    const/4 v10, 0x0

    :goto_2f8
    if-ge v10, v3, :cond_327

    if-eqz v10, :cond_30b

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :cond_30b
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v1, Labcd/gd;->Zo:Labcd/Ga;

    invoke-virtual {v5, v10}, Labcd/Ia;->v5(I)I

    move-result v8

    invoke-virtual {v2, v8}, Labcd/Ga;->j6(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    add-int/lit8 v10, v10, 0x1

    goto :goto_2f8

    :cond_327
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ");\n}"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_338
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v14, v20

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v8, v19

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v9, v17

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_35c
    .catch Labcd/jc; {:try_start_2e1 .. :try_end_35c} :catch_35d

    return-object v0

    :catch_35d
    move-exception v0

    goto :goto_362

    :catch_35f
    move-exception v0

    move-object/from16 v16, v6

    :goto_362
    return-object v16

    nop

    :pswitch_data_364
    .packed-switch 0xb
        :pswitch_2cc  #0000000b
        :pswitch_2cf  #0000000c
        :pswitch_2cf  #0000000d
        :pswitch_2cf  #0000000e
    .end packed-switch
.end method

.method private j6(Labcd/Sa;IZ)Ljava/lang/String;
    .registers 20
    .annotation runtime Labcd/su;
        method = 0x19bfd9bc374b9278L
    .end annotation

    move-object/from16 v7, p1

    move/from16 v8, p2

    move/from16 v9, p3

    const-string v0, "/"

    :try_start_8
    sget-boolean v1, Labcd/gd;->j6:Z

    if-eqz v1, :cond_22

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, v8}, Ljava/lang/Integer;-><init>(I)V

    new-instance v6, Ljava/lang/Boolean;

    invoke-direct {v6, v9}, Ljava/lang/Boolean;-><init>(Z)V

    const-wide v1, 0x1945006d4a26f72cL  # 6.033460619042034E-187

    move-object/from16 v3, p0

    move-object/from16 v4, p1

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_22
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "/**\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, " * Constructor\n *\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/4 v2, 0x3

    invoke-virtual {v7, v8, v2}, Labcd/Sa;->Zo(II)I

    move-result v3

    invoke-virtual {v7, v3}, Labcd/Sa;->we(I)I

    move-result v3
    :try_end_3a
    .catchall {:try_start_8 .. :try_end_3a} :catchall_180

    const-string v4, " *\n"

    const/4 v5, 0x0

    const-string v6, "\n"

    const/4 v10, 0x4

    const/4 v11, 0x1

    const/4 v12, 0x2

    if-le v3, v12, :cond_e5

    const/4 v3, 0x1

    :goto_45
    :try_start_45
    invoke-virtual {v7, v8, v2}, Labcd/Sa;->Zo(II)I

    move-result v13

    invoke-virtual {v7, v13}, Labcd/Sa;->we(I)I

    move-result v13

    if-ge v3, v13, :cond_e2

    invoke-virtual {v7, v8, v2}, Labcd/Sa;->Zo(II)I

    move-result v13

    invoke-virtual {v7, v13, v3}, Labcd/Sa;->Zo(II)I

    move-result v13

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, " * @param    "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v13, v2}, Labcd/Sa;->Zo(II)I

    move-result v15

    invoke-virtual {v7, v15}, Labcd/Sa;->aM(I)Ljava/lang/String;

    move-result-object v15

    const/16 v2, 0x14

    invoke-static {v15, v2}, Labcd/gd;->j6(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual/range {p1 .. p1}, Labcd/Sa;->J8()Labcd/na;

    move-result-object v2

    invoke-interface {v2}, Labcd/na;->v5()Labcd/pa;

    move-result-object v2

    check-cast v2, Labcd/Fd;

    invoke-virtual {v7, v13, v11}, Labcd/Sa;->Zo(II)I

    move-result v14

    invoke-virtual {v2, v7, v14}, Labcd/Fd;->rN(Labcd/Sa;I)Ljava/lang/String;

    move-result-object v2

    const-string v14, "AEIOUaeiou"

    invoke-virtual {v2, v5}, Ljava/lang/String;->charAt(I)C

    move-result v15

    invoke-virtual {v14, v15}, Ljava/lang/String;->indexOf(I)I

    move-result v14

    const/4 v15, -0x1

    if-eq v14, v15, :cond_9e

    const-string v14, "an "

    :goto_9a
    invoke-virtual {v1, v14}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_a1

    :cond_9e
    const-string v14, "a  "

    goto :goto_9a

    :goto_a1
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual/range {p1 .. p1}, Labcd/Sa;->J8()Labcd/na;

    move-result-object v2

    invoke-interface {v2}, Labcd/na;->v5()Labcd/pa;

    move-result-object v2

    check-cast v2, Labcd/Fd;

    invoke-virtual {v7, v13, v12}, Labcd/Sa;->Zo(II)I

    move-result v14

    invoke-virtual {v2, v7, v14}, Labcd/Fd;->Mr(Labcd/Sa;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p1 .. p1}, Labcd/Sa;->J8()Labcd/na;

    move-result-object v14

    invoke-interface {v14}, Labcd/na;->v5()Labcd/pa;

    move-result-object v14

    check-cast v14, Labcd/Fd;

    invoke-virtual {v7, v13, v10}, Labcd/Sa;->Zo(II)I

    move-result v13

    invoke-virtual {v14, v7, v13}, Labcd/Fd;->Mr(Labcd/Sa;I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v3, v3, 0x2

    const/4 v2, 0x3

    goto/16 :goto_45

    :cond_e2
    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_e5
    invoke-virtual {v7, v8, v12}, Labcd/Sa;->Zo(II)I

    move-result v2

    invoke-virtual {v7, v2, v5}, Labcd/Sa;->Zo(II)I

    move-result v2

    invoke-virtual {v7, v2}, Labcd/Sa;->P8(I)I

    move-result v2

    const/16 v3, 0x45

    if-eq v2, v3, :cond_13d

    invoke-virtual {v7, v8, v10}, Labcd/Sa;->Zo(II)I

    move-result v2

    invoke-virtual {v7, v2}, Labcd/Sa;->we(I)I

    move-result v2

    if-lez v2, :cond_13d

    const/4 v2, 0x1

    :goto_100
    invoke-virtual {v7, v8, v10}, Labcd/Sa;->Zo(II)I

    move-result v3

    invoke-virtual {v7, v3}, Labcd/Sa;->we(I)I

    move-result v3

    if-ge v2, v3, :cond_13a

    invoke-virtual {v7, v8, v10}, Labcd/Sa;->Zo(II)I

    move-result v3

    invoke-virtual {v7, v3, v2}, Labcd/Sa;->Zo(II)I

    move-result v3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, " * @exception   "

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Labcd/Sa;->J8()Labcd/na;

    move-result-object v12

    invoke-interface {v12}, Labcd/na;->v5()Labcd/pa;

    move-result-object v12

    check-cast v12, Labcd/Fd;

    invoke-virtual {v12, v7, v3}, Labcd/Fd;->rN(Labcd/Sa;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v2, v2, 0x2

    goto :goto_100

    :cond_13a
    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_13d
    if-eqz v9, :cond_176

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " * @version  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/util/Date;->getMonth()I

    move-result v4

    add-int/2addr v4, v11

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/util/Date;->getDate()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/util/Date;->getYear()I

    move-result v0

    add-int/lit16 v0, v0, 0x76c

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_176
    const-string v0, " */"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_17f
    .catchall {:try_start_45 .. :try_end_17f} :catchall_180

    return-object v0

    :catchall_180
    move-exception v0

    sget-boolean v1, Labcd/gd;->DW:Z

    if-eqz v1, :cond_19d

    const-wide v2, 0x1945006d4a26f72cL  # 6.033460619042034E-187

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, v8}, Ljava/lang/Integer;-><init>(I)V

    new-instance v8, Ljava/lang/Boolean;

    invoke-direct {v8, v9}, Ljava/lang/Boolean;-><init>(Z)V

    move-object v1, v0

    move-object/from16 v4, p0

    move-object/from16 v5, p1

    move-object v7, v8

    invoke-static/range {v1 .. v7}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_19d
    goto :goto_19f

    :goto_19e
    throw v0

    :goto_19f
    goto :goto_19e
.end method

.method private static j6(Ljava/lang/String;I)Ljava/lang/String;
    .registers 9
    .annotation runtime Labcd/su;
        method = -0x2e092f2191bbe5e0L
    .end annotation

    :try_start_0
    sget-boolean v0, Labcd/gd;->j6:Z

    if-eqz v0, :cond_12

    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, p1}, Ljava/lang/Integer;-><init>(I)V

    const-wide v1, 0x2e8b019858c40080L

    const/4 v3, 0x0

    invoke-static {v1, v2, v3, p0, v0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_12
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, p1, :cond_19

    return-object p0

    :cond_19
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    sub-int v1, p1, v1

    invoke-static {v1}, Labcd/gd;->j6(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_32
    .catchall {:try_start_0 .. :try_end_32} :catchall_33

    return-object p0

    :catchall_33
    move-exception v0

    sget-boolean v1, Labcd/gd;->DW:Z

    if-eqz v1, :cond_48

    const-wide v2, 0x2e8b019858c40080L

    const/4 v4, 0x0

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p1}, Ljava/lang/Integer;-><init>(I)V

    move-object v1, v0

    move-object v5, p0

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_48
    throw v0
.end method

.method private j6(Labcd/Sa;ILjava/lang/String;)V
    .registers 12
    .annotation runtime Labcd/su;
        method = -0x153f5cf5e0593813L
    .end annotation

    :try_start_0
    sget-boolean v0, Labcd/gd;->j6:Z

    if-eqz v0, :cond_14

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p2}, Ljava/lang/Integer;-><init>(I)V

    const-wide v1, -0x3fb2e39fa01e5de1L  # -58.22169111745119

    move-object v3, p0

    move-object v4, p1

    move-object v6, p3

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_14
    iget-object v0, p0, Labcd/gd;->FH:Labcd/La;

    iget-object v1, v0, Labcd/La;->gn:Labcd/hb;

    invoke-virtual {p1}, Labcd/Sa;->VH()Labcd/Da;

    move-result-object v2

    invoke-virtual {p1, p2}, Labcd/Sa;->vy(I)I

    move-result v3

    const/4 v4, 0x1

    invoke-virtual {p1, p2}, Labcd/Sa;->vy(I)I

    move-result v5

    const/4 v6, 0x1

    const-string v7, "\n"

    invoke-interface/range {v1 .. v7}, Labcd/hb;->j6(Labcd/Da;IIIILjava/lang/String;)V

    iget-object v0, p0, Labcd/gd;->FH:Labcd/La;

    iget-object v1, v0, Labcd/La;->gn:Labcd/hb;

    invoke-virtual {p1}, Labcd/Sa;->VH()Labcd/Da;

    move-result-object v2

    invoke-virtual {p1, p2}, Labcd/Sa;->vy(I)I

    move-result v3

    const/4 v4, 0x1

    invoke-virtual {p1, p2}, Labcd/Sa;->vy(I)I

    move-result v5

    const/4 v6, 0x1

    move-object v7, p3

    invoke-interface/range {v1 .. v7}, Labcd/hb;->j6(Labcd/Da;IIIILjava/lang/String;)V

    iget-object v0, p0, Labcd/gd;->FH:Labcd/La;

    iget-object v0, v0, Labcd/La;->gn:Labcd/hb;

    invoke-virtual {p1}, Labcd/Sa;->VH()Labcd/Da;

    move-result-object v1

    invoke-virtual {p1, p2}, Labcd/Sa;->vy(I)I

    move-result v2

    invoke-virtual {p1, p2}, Labcd/Sa;->vy(I)I

    move-result v3

    invoke-direct {p0, p3}, Labcd/gd;->j6(Ljava/lang/String;)I

    move-result v4

    add-int/2addr v3, v4

    invoke-interface {v0, v1, v2, v3}, Labcd/hb;->j6(Labcd/Da;II)V
    :try_end_59
    .catchall {:try_start_0 .. :try_end_59} :catchall_5a

    return-void

    :catchall_5a
    move-exception v0

    sget-boolean v1, Labcd/gd;->DW:Z

    if-eqz v1, :cond_70

    const-wide v2, -0x3fb2e39fa01e5de1L  # -58.22169111745119

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    move-object v1, v0

    move-object v4, p0

    move-object v5, p1

    move-object v7, p3

    invoke-static/range {v1 .. v7}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_70
    throw v0
.end method

.method private j6(Labcd/Sa;I)Z
    .registers 10
    .annotation runtime Labcd/su;
        method = -0x15c97eec88015540L
    .end annotation

    :try_start_0
    sget-boolean v0, Labcd/gd;->j6:Z

    if-eqz v0, :cond_11

    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, p2}, Ljava/lang/Integer;-><init>(I)V

    const-wide v1, -0x13ca37e3424cab00L  # -1.8331942712742598E213

    invoke-static {v1, v2, p0, p1, v0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_11
    const/4 v0, 0x1

    invoke-virtual {p1, p2, v0}, Labcd/Sa;->Zo(II)I

    move-result v1

    invoke-virtual {p1, v1}, Labcd/Sa;->we(I)I

    move-result v2

    const/4 v3, 0x0

    if-ne v2, v0, :cond_35

    invoke-virtual {p1, v1, v3}, Labcd/Sa;->Zo(II)I

    move-result v1

    invoke-virtual {p1, v1}, Labcd/Sa;->P8(I)I

    move-result v1

    const/16 v2, 0x59

    if-ne v1, v2, :cond_35

    const/4 v1, 0x2

    invoke-virtual {p1, p2, v1}, Labcd/Sa;->Zo(II)I

    move-result v1

    invoke-virtual {p1, v1}, Labcd/Sa;->we(I)I

    move-result p1
    :try_end_32
    .catchall {:try_start_0 .. :try_end_32} :catchall_37

    if-nez p1, :cond_35

    goto :goto_36

    :cond_35
    const/4 v0, 0x0

    :goto_36
    return v0

    :catchall_37
    move-exception v0

    sget-boolean v1, Labcd/gd;->DW:Z

    if-eqz v1, :cond_4c

    const-wide v2, -0x13ca37e3424cab00L  # -1.8331942712742598E213

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    move-object v1, v0

    move-object v4, p0

    move-object v5, p1

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_4c
    throw v0
.end method

.method private v5(Labcd/Sa;IZ)V
    .registers 12
    .annotation runtime Labcd/su;
        method = 0x245994f81ca7f8ddL
    .end annotation

    :try_start_0
    sget-boolean v0, Labcd/gd;->j6:Z

    if-eqz v0, :cond_18

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v6, Ljava/lang/Boolean;

    invoke-direct {v6, p3}, Ljava/lang/Boolean;-><init>(Z)V

    const-wide v1, 0x802134193e979fbL

    move-object v3, p0

    move-object v4, p1

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_18
    invoke-direct {p0, p1, p2, p3}, Labcd/gd;->DW(Labcd/Sa;IZ)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Labcd/gd;->j6(Labcd/Sa;ILjava/lang/String;)V
    :try_end_1f
    .catchall {:try_start_0 .. :try_end_1f} :catchall_20

    return-void

    :catchall_20
    move-exception v0

    sget-boolean v1, Labcd/gd;->DW:Z

    if-eqz v1, :cond_3a

    const-wide v2, 0x802134193e979fbL

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v7, Ljava/lang/Boolean;

    invoke-direct {v7, p3}, Ljava/lang/Boolean;-><init>(Z)V

    move-object v1, v0

    move-object v4, p0

    move-object v5, p1

    invoke-static/range {v1 .. v7}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_3a
    throw v0
.end method


# virtual methods
.method public DW(Labcd/Da;II)V
    .registers 25

    move-object/from16 v8, p0

    move-object/from16 v9, p1

    move/from16 v10, p2

    move/from16 v11, p3

    :try_start_8
    sget-boolean v0, Labcd/gd;->j6:Z

    if-eqz v0, :cond_22

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, v10}, Ljava/lang/Integer;-><init>(I)V

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, v11}, Ljava/lang/Integer;-><init>(I)V

    const-wide v1, 0x31c55d4d617dacb3L  # 6.191030766468001E-69

    move-object/from16 v3, p0

    move-object/from16 v4, p1

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_22
    iget-object v0, v8, Labcd/gd;->FH:Labcd/La;

    iget-object v0, v0, Labcd/La;->gn:Labcd/hb;

    invoke-interface {v0}, Labcd/hb;->aM()V

    iget-object v0, v8, Labcd/gd;->Hw:Labcd/Va;

    iget-object v1, v8, Labcd/gd;->gn:Labcd/yd;

    invoke-virtual {v0, v9, v1}, Labcd/Va;->DW(Labcd/Da;Labcd/na;)Labcd/Sa;

    move-result-object v12

    invoke-virtual {v12, v10, v11, v10, v11}, Labcd/Sa;->v5(IIII)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_42

    iget-object v0, v8, Labcd/gd;->FH:Labcd/La;

    iget-object v0, v0, Labcd/La;->gn:Labcd/hb;

    const-string v1, "Select a place inside a class."

    invoke-interface {v0, v1}, Labcd/hb;->v5(Ljava/lang/String;)V

    return-void

    :cond_42
    const/4 v13, 0x0

    invoke-virtual {v12, v0, v13}, Labcd/Sa;->Zo(II)I

    move-result v1

    invoke-virtual {v12, v1}, Labcd/Sa;->QX(I)I

    move-result v1

    invoke-virtual {v12, v0, v13}, Labcd/Sa;->Zo(II)I

    move-result v2

    invoke-virtual {v12, v2}, Labcd/Sa;->Ws(I)I

    move-result v2

    invoke-virtual {v12, v0}, Labcd/Sa;->we(I)I

    move-result v3

    move v14, v1

    move v15, v2

    const/4 v1, 0x0

    :goto_5a
    if-ge v1, v3, :cond_7e

    invoke-virtual {v12, v0, v1}, Labcd/Sa;->Zo(II)I

    move-result v2

    invoke-virtual {v12, v2}, Labcd/Sa;->QX(I)I

    move-result v4

    if-lt v4, v10, :cond_72

    invoke-virtual {v12, v2}, Labcd/Sa;->QX(I)I

    move-result v4

    if-ne v4, v10, :cond_7b

    invoke-virtual {v12, v2}, Labcd/Sa;->Ws(I)I

    move-result v4

    if-ge v4, v11, :cond_7b

    :cond_72
    invoke-virtual {v12, v2}, Labcd/Sa;->QX(I)I

    move-result v4

    invoke-virtual {v12, v2}, Labcd/Sa;->Ws(I)I

    move-result v15
    :try_end_7a
    .catchall {:try_start_8 .. :try_end_7a} :catchall_25a

    move v14, v4

    :cond_7b
    add-int/lit8 v1, v1, 0x1

    goto :goto_5a

    :cond_7e
    :try_start_7e
    iget-object v1, v8, Labcd/gd;->v5:Labcd/Ba;

    invoke-virtual {v12}, Labcd/Sa;->VH()Labcd/Da;

    move-result-object v2

    iget-object v3, v8, Labcd/gd;->gn:Labcd/yd;

    invoke-virtual {v12, v0}, Labcd/Sa;->er(I)I

    move-result v0

    invoke-virtual {v12, v0}, Labcd/Sa;->J8(I)I

    move-result v0

    invoke-virtual {v1, v2, v3, v0}, Labcd/Ba;->j6(Labcd/Da;Labcd/na;I)Labcd/ua;

    move-result-object v7
    :try_end_92
    .catch Labcd/jc; {:try_start_7e .. :try_end_92} :catch_24f
    .catchall {:try_start_7e .. :try_end_92} :catchall_25a

    :try_start_92
    invoke-virtual {v12}, Labcd/Sa;->J8()Labcd/na;

    move-result-object v0

    invoke-interface {v0}, Labcd/na;->Hw()Labcd/ga;

    move-result-object v0

    invoke-interface {v0, v12}, Labcd/ga;->FH(Labcd/Sa;)V

    new-instance v6, Labcd/Yb;

    iget-object v0, v8, Labcd/gd;->v5:Labcd/Ba;

    invoke-direct {v6, v0}, Labcd/Yb;-><init>(Labcd/Ba;)V

    new-instance v5, Labcd/Ab;

    iget-object v0, v8, Labcd/gd;->v5:Labcd/Ba;

    invoke-direct {v5, v0}, Labcd/Ab;-><init>(Labcd/Ba;)V

    invoke-virtual {v7}, Labcd/ua;->XG()Labcd/Hb;

    move-result-object v0

    iget-object v1, v0, Labcd/Hb;->Hw:Labcd/Hb$a;

    invoke-virtual {v1}, Labcd/Hb$a;->DW()V

    :cond_b4
    :goto_b4
    iget-object v1, v0, Labcd/Hb;->Hw:Labcd/Hb$a;

    invoke-virtual {v1}, Labcd/Hb$a;->j6()Z

    move-result v1

    if-eqz v1, :cond_d8

    iget-object v1, v0, Labcd/Hb;->Hw:Labcd/Hb$a;

    invoke-virtual {v1}, Labcd/Hb$a;->Hw()Labcd/Aa;

    move-result-object v1

    check-cast v1, Labcd/Ia;

    invoke-virtual {v1}, Labcd/Ia;->XL()I

    move-result v2

    invoke-static {v2}, Labcd/Ma;->j6(I)Z

    move-result v2

    if-eqz v2, :cond_b4

    invoke-virtual {v1}, Labcd/Ia;->FH()Labcd/ua;

    move-result-object v2

    if-eq v2, v7, :cond_b4

    invoke-virtual {v5, v1}, Labcd/Ab;->j6(Labcd/Aa;)V

    goto :goto_b4

    :cond_d8
    invoke-virtual {v5}, Labcd/Ab;->Hw()I

    move-result v0

    if-nez v0, :cond_ed

    iget-object v0, v8, Labcd/gd;->FH:Labcd/La;

    iget-object v0, v0, Labcd/La;->gn:Labcd/hb;

    const-string v1, "This class has no unimplemented methods."

    invoke-interface {v0, v1}, Labcd/hb;->v5(Ljava/lang/String;)V

    iget-object v0, v8, Labcd/gd;->Hw:Labcd/Va;

    invoke-virtual {v0, v12}, Labcd/Va;->j6(Labcd/Sa;)V

    return-void

    :cond_ed
    new-instance v0, Labcd/fd;

    invoke-direct {v0, v8}, Labcd/fd;-><init>(Labcd/gd;)V

    invoke-virtual {v5, v0}, Labcd/Ab;->j6(Ljava/util/Comparator;)V
    :try_end_f5
    .catchall {:try_start_92 .. :try_end_f5} :catchall_25a

    const-string v16, ""

    move-object/from16 v0, v16

    const/4 v4, 0x0

    :goto_fa
    :try_start_fa
    invoke-virtual {v5}, Labcd/Ab;->Hw()I

    move-result v1
    :try_end_fe
    .catchall {:try_start_fa .. :try_end_fe} :catchall_25a

    if-ge v4, v1, :cond_1fb

    :try_start_100
    invoke-virtual {v5, v4}, Labcd/Ab;->j6(I)Labcd/Aa;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Labcd/Ia;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1
    :try_end_10b
    .catchall {:try_start_100 .. :try_end_10b} :catchall_24b

    const-string v2, "\n"

    if-nez v1, :cond_110

    move-object v0, v2

    :cond_110
    :try_start_110
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, v8, Labcd/gd;->FH:Labcd/La;

    invoke-virtual {v1}, Labcd/La;->Hw()Labcd/va;

    move-result-object v1

    iget-boolean v1, v1, Labcd/va;->Hw:Z
    :try_end_127
    .catchall {:try_start_110 .. :try_end_127} :catchall_24b

    if-eqz v1, :cond_17a

    :try_start_129
    invoke-virtual {v3}, Labcd/Aa;->DW()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v17

    if-lez v17, :cond_17a

    new-instance v13, Ljava/util/StringTokenizer;

    invoke-direct {v13, v1, v2}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_138
    .catchall {:try_start_129 .. :try_end_138} :catchall_25a

    const-string v1, "/**\n"

    :goto_13a
    :try_start_13a
    invoke-virtual {v13}, Ljava/util/StringTokenizer;->hasMoreElements()Z

    move-result v18

    if-eqz v18, :cond_164

    move/from16 v18, v4

    invoke-virtual {v13}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v19, v5

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " *"

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move/from16 v4, v18

    move-object/from16 v5, v19

    goto :goto_13a

    :cond_164
    move/from16 v18, v4

    move-object/from16 v19, v5

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "*/"

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1
    :try_end_179
    .catchall {:try_start_13a .. :try_end_179} :catchall_25a

    goto :goto_180

    :cond_17a
    move/from16 v18, v4

    move-object/from16 v19, v5

    move-object/from16 v1, v16

    :goto_180
    :try_start_180
    iget-object v4, v8, Labcd/gd;->FH:Labcd/La;

    invoke-virtual {v4}, Labcd/La;->Hw()Labcd/va;

    move-result-object v4

    iget-boolean v4, v4, Labcd/va;->v5:Z
    :try_end_188
    .catchall {:try_start_180 .. :try_end_188} :catchall_24b

    if-eqz v4, :cond_19c

    :try_start_18a
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_19c

    iget-object v1, v8, Labcd/gd;->FH:Labcd/La;

    invoke-virtual {v1}, Labcd/La;->Hw()Labcd/va;

    move-result-object v1

    iget-boolean v1, v1, Labcd/va;->Zo:Z

    invoke-direct {v8, v3, v1}, Labcd/gd;->j6(Labcd/Ia;Z)Ljava/lang/String;

    move-result-object v1
    :try_end_19c
    .catchall {:try_start_18a .. :try_end_19c} :catchall_25a

    :cond_19c
    :try_start_19c
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4
    :try_end_1a0
    .catchall {:try_start_19c .. :try_end_1a0} :catchall_24b

    if-lez v4, :cond_1b4

    :try_start_1a2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_1b4
    .catchall {:try_start_1a2 .. :try_end_1b4} :catchall_25a

    :cond_1b4
    :try_start_1b4
    invoke-virtual {v7}, Labcd/ua;->Gj()Labcd/Ya;

    move-result-object v5

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v1, p0

    move-object v2, v12

    move-object v0, v3

    move v3, v14

    move v4, v15

    move-object v10, v6

    move-object v6, v0

    move-object/from16 v20, v7

    invoke-direct/range {v1 .. v7}, Labcd/gd;->j6(Labcd/Sa;IILabcd/Ya;Labcd/Ia;Labcd/ua;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1
    :try_end_1d5
    .catchall {:try_start_1b4 .. :try_end_1d5} :catchall_24b

    :try_start_1d5
    invoke-virtual {v0}, Labcd/Ia;->ca()Labcd/Ya;

    move-result-object v2

    invoke-virtual {v10, v2}, Labcd/Yb;->DW(Labcd/Aa;)V

    invoke-virtual {v0}, Labcd/Ia;->vJ()I

    move-result v2

    const/4 v3, 0x0

    :goto_1e1
    if-ge v3, v2, :cond_1ee

    invoke-virtual {v0, v3}, Labcd/Ia;->gn(I)Labcd/Ya;

    move-result-object v4

    invoke-virtual {v10, v4}, Labcd/Yb;->DW(Labcd/Aa;)V
    :try_end_1ea
    .catch Labcd/jc; {:try_start_1d5 .. :try_end_1ea} :catch_1ed
    .catchall {:try_start_1d5 .. :try_end_1ea} :catchall_24b

    add-int/lit8 v3, v3, 0x1

    goto :goto_1e1

    :catch_1ed
    move-exception v0

    :cond_1ee
    add-int/lit8 v4, v18, 0x1

    move-object v0, v1

    move-object v6, v10

    move-object/from16 v5, v19

    move-object/from16 v7, v20

    const/4 v13, 0x0

    move/from16 v10, p2

    goto/16 :goto_fa

    :cond_1fb
    move-object v10, v6

    :try_start_1fc
    iget-object v1, v8, Labcd/gd;->FH:Labcd/La;

    iget-object v1, v1, Labcd/La;->gn:Labcd/hb;

    move-object/from16 v2, p1

    move v3, v14

    move v4, v15

    move v5, v14

    move v6, v15

    move-object v7, v0

    invoke-interface/range {v1 .. v7}, Labcd/hb;->j6(Labcd/Da;IIIILjava/lang/String;)V

    iget-object v1, v8, Labcd/gd;->FH:Labcd/La;

    iget-object v1, v1, Labcd/La;->gn:Labcd/hb;

    invoke-direct {v8, v0}, Labcd/gd;->j6(Ljava/lang/String;)I

    move-result v0

    add-int/2addr v0, v14

    invoke-interface {v1, v9, v14, v0}, Labcd/hb;->j6(Labcd/Da;II)V

    invoke-virtual {v12}, Labcd/Sa;->J8()Labcd/na;

    move-result-object v0

    invoke-interface {v0}, Labcd/na;->u7()Labcd/qa;

    move-result-object v0
    :try_end_21e
    .catchall {:try_start_1fc .. :try_end_21e} :catchall_24b

    move-object v1, v10

    move/from16 v10, p2

    :try_start_221
    invoke-interface {v0, v12, v10, v11, v1}, Labcd/qa;->j6(Labcd/Sa;IILabcd/Yb;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_23e

    invoke-virtual {v12}, Labcd/Sa;->tp()I

    move-result v5

    invoke-virtual {v12}, Labcd/Sa;->u7()I

    move-result v6

    iget-object v0, v8, Labcd/gd;->FH:Labcd/La;

    iget-object v1, v0, Labcd/La;->gn:Labcd/hb;

    move-object/from16 v2, p1

    move v3, v5

    move v4, v6

    invoke-interface/range {v1 .. v7}, Labcd/hb;->j6(Labcd/Da;IIIILjava/lang/String;)V

    :cond_23e
    iget-object v0, v8, Labcd/gd;->Hw:Labcd/Va;

    invoke-virtual {v0, v12}, Labcd/Va;->j6(Labcd/Sa;)V

    iget-object v0, v8, Labcd/gd;->FH:Labcd/La;

    iget-object v0, v0, Labcd/La;->gn:Labcd/hb;

    invoke-interface {v0}, Labcd/hb;->EQ()V

    return-void

    :catchall_24b
    move-exception v0

    move/from16 v10, p2

    goto :goto_25b

    :catch_24f
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_25a
    .catchall {:try_start_221 .. :try_end_25a} :catchall_25a

    :catchall_25a
    move-exception v0

    :goto_25b
    sget-boolean v1, Labcd/gd;->DW:Z

    if-eqz v1, :cond_276

    const-wide v2, 0x31c55d4d617dacb3L  # 6.191030766468001E-69

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, v10}, Ljava/lang/Integer;-><init>(I)V

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, v11}, Ljava/lang/Integer;-><init>(I)V

    move-object v1, v0

    move-object/from16 v4, p0

    move-object/from16 v5, p1

    invoke-static/range {v1 .. v7}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_276
    goto :goto_278

    :goto_277
    throw v0

    :goto_278
    goto :goto_277
.end method

.method public DW(Labcd/Da;IIII)V
    .registers 37

    move-object/from16 v10, p0

    move-object/from16 v9, p1

    move/from16 v11, p2

    move/from16 v12, p3

    move/from16 v13, p4

    move/from16 v14, p5

    :try_start_c
    sget-boolean v0, Labcd/gd;->j6:Z

    if-eqz v0, :cond_30

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, v11}, Ljava/lang/Integer;-><init>(I)V

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, v12}, Ljava/lang/Integer;-><init>(I)V

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, v13}, Ljava/lang/Integer;-><init>(I)V

    new-instance v8, Ljava/lang/Integer;

    invoke-direct {v8, v14}, Ljava/lang/Integer;-><init>(I)V

    const-wide v1, -0x1ac9b11e17a910L

    move-object/from16 v3, p0

    move-object/from16 v4, p1

    invoke-static/range {v1 .. v8}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_30
    iget-object v0, v10, Labcd/gd;->FH:Labcd/La;

    iget-object v0, v0, Labcd/La;->gn:Labcd/hb;

    invoke-interface {v0}, Labcd/hb;->aM()V

    iget-object v0, v10, Labcd/gd;->Hw:Labcd/Va;

    iget-object v1, v10, Labcd/gd;->gn:Labcd/yd;

    invoke-virtual {v0, v9, v1}, Labcd/Va;->DW(Labcd/Da;Labcd/na;)Labcd/Sa;

    move-result-object v0

    invoke-virtual {v0, v11, v12, v13, v14}, Labcd/Sa;->Zo(IIII)Labcd/Cb;

    move-result-object v1

    if-nez v1, :cond_5d

    iget-object v1, v10, Labcd/gd;->FH:Labcd/La;

    iget-object v1, v1, Labcd/La;->gn:Labcd/hb;

    invoke-static {}, Lcom/s1243808733/util/Utils;->getApp()Landroid/app/Application;

    move-result-object v2

    const v3, 0x7f0d0777

    invoke-virtual {v2, v3}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Labcd/hb;->Hw(Ljava/lang/String;)V

    iget-object v1, v10, Labcd/gd;->Hw:Labcd/Va;

    invoke-virtual {v1, v0}, Labcd/Va;->j6(Labcd/Sa;)V

    return-void

    :cond_5d
    invoke-virtual {v1}, Labcd/Cb;->Hw()I

    move-result v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    :goto_63
    const/16 v4, 0x7e

    const/4 v5, -0x1

    if-ltz v2, :cond_86

    invoke-virtual {v1, v2}, Labcd/Cb;->DW(I)I

    move-result v6

    invoke-virtual {v0, v6}, Labcd/Sa;->P8(I)I

    move-result v6

    if-ne v6, v4, :cond_83

    invoke-virtual {v1, v2}, Labcd/Cb;->DW(I)I

    move-result v6

    invoke-virtual {v0, v6}, Labcd/Sa;->QX(I)I

    move-result v6

    invoke-virtual {v1, v2}, Labcd/Cb;->DW(I)I

    move-result v2

    invoke-virtual {v0, v2}, Labcd/Sa;->Ws(I)I

    move-result v2

    goto :goto_88

    :cond_83
    add-int/lit8 v2, v2, -0x1

    goto :goto_63

    :cond_86
    const/4 v2, -0x1

    const/4 v6, -0x1

    :goto_88
    if-ne v6, v5, :cond_a2

    iget-object v1, v10, Labcd/gd;->FH:Labcd/La;

    iget-object v1, v1, Labcd/La;->gn:Labcd/hb;

    invoke-static {}, Lcom/s1243808733/util/Utils;->getApp()Landroid/app/Application;

    move-result-object v2

    const v3, 0x7f0d0778

    invoke-virtual {v2, v3}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Labcd/hb;->Hw(Ljava/lang/String;)V

    iget-object v1, v10, Labcd/gd;->Hw:Labcd/Va;

    invoke-virtual {v1, v0}, Labcd/Va;->j6(Labcd/Sa;)V

    return-void

    :cond_a2
    invoke-virtual {v0, v11, v12, v13, v14}, Labcd/Sa;->v5(IIII)I

    move-result v7

    invoke-virtual {v0, v7}, Labcd/Sa;->er(I)I

    move-result v8

    invoke-virtual {v0, v8}, Labcd/Sa;->P8(I)I

    const/4 v15, 0x2

    invoke-virtual {v0, v8, v15}, Labcd/Sa;->Zo(II)I

    move-result v8

    invoke-virtual {v0, v8}, Labcd/Sa;->aM(I)Ljava/lang/String;

    move-result-object v8

    move/from16 v16, v2

    const/4 v2, 0x0

    :goto_b9
    invoke-virtual {v0, v7}, Labcd/Sa;->we(I)I

    move-result v5

    if-ge v2, v5, :cond_f7

    invoke-virtual {v0, v7, v2}, Labcd/Sa;->Zo(II)I

    move-result v5

    invoke-virtual {v0, v5}, Labcd/Sa;->P8(I)I

    move-result v15

    const/16 v3, 0x8

    if-eq v15, v3, :cond_eb

    const/16 v3, 0x7b

    if-eq v15, v3, :cond_d2

    if-eq v15, v4, :cond_eb

    goto :goto_f7

    :cond_d2
    invoke-virtual {v0, v5}, Labcd/Sa;->QX(I)I

    move-result v3

    invoke-virtual {v0, v5}, Labcd/Sa;->vy(I)I

    move-result v15

    if-ne v3, v15, :cond_eb

    invoke-virtual {v0, v5}, Labcd/Sa;->Ws(I)I

    move-result v3

    invoke-virtual {v0, v5}, Labcd/Sa;->BT(I)I

    move-result v15

    const/16 v17, 0x1

    add-int/lit8 v15, v15, 0x1

    if-ne v3, v15, :cond_eb

    goto :goto_f7

    :cond_eb
    invoke-virtual {v0, v5}, Labcd/Sa;->QX(I)I

    move-result v6

    invoke-virtual {v0, v5}, Labcd/Sa;->Ws(I)I

    move-result v16
    :try_end_f3
    .catchall {:try_start_c .. :try_end_f3} :catchall_654

    add-int/lit8 v2, v2, 0x1

    const/4 v3, 0x1

    goto :goto_b9

    :cond_f7
    :goto_f7
    const-string v2, ""

    move-object v15, v2

    const/4 v3, 0x0

    :goto_fb
    :try_start_fb
    invoke-virtual {v1}, Labcd/Cb;->Hw()I

    move-result v5
    :try_end_ff
    .catchall {:try_start_fb .. :try_end_ff} :catchall_654

    if-ge v3, v5, :cond_61b

    :try_start_101
    invoke-virtual {v1, v3}, Labcd/Cb;->DW(I)I

    move-result v5

    invoke-virtual {v0, v5}, Labcd/Sa;->P8(I)I

    move-result v5

    if-ne v5, v4, :cond_5fa

    invoke-virtual {v1, v3}, Labcd/Cb;->DW(I)I

    move-result v5

    invoke-virtual {v0, v5}, Labcd/Sa;->we(I)I

    move-result v5

    const/4 v7, 0x3

    :goto_114
    if-ge v7, v5, :cond_5f0

    invoke-virtual {v1, v3}, Labcd/Cb;->DW(I)I

    move-result v4

    invoke-virtual {v0, v4, v7}, Labcd/Sa;->Zo(II)I

    move-result v4

    move/from16 v18, v5

    const/4 v5, 0x0

    invoke-virtual {v0, v4, v5}, Labcd/Sa;->Zo(II)I

    move-result v14

    invoke-virtual {v0, v14}, Labcd/Sa;->aM(I)Ljava/lang/String;

    move-result-object v5

    iget-object v14, v10, Labcd/gd;->FH:Labcd/La;

    invoke-virtual {v14}, Labcd/La;->Hw()Labcd/va;

    move-result-object v14

    iget-object v14, v14, Labcd/va;->FH:Ljava/lang/String;
    :try_end_131
    .catchall {:try_start_101 .. :try_end_131} :catchall_650

    if-eqz v14, :cond_156

    :try_start_133
    iget-object v14, v10, Labcd/gd;->FH:Labcd/La;

    invoke-virtual {v14}, Labcd/La;->Hw()Labcd/va;

    move-result-object v14

    iget-object v14, v14, Labcd/va;->FH:Ljava/lang/String;

    invoke-virtual {v5, v14}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_168

    iget-object v14, v10, Labcd/gd;->FH:Labcd/La;

    invoke-virtual {v14}, Labcd/La;->Hw()Labcd/va;

    move-result-object v14

    iget-object v14, v14, Labcd/va;->FH:Ljava/lang/String;

    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v14

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v13

    invoke-virtual {v5, v14, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5
    :try_end_155
    .catchall {:try_start_133 .. :try_end_155} :catchall_654

    goto :goto_168

    :cond_156
    :goto_156
    :try_start_156
    const-string v13, "_"

    invoke-virtual {v5, v13}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v13
    :try_end_15c
    .catchall {:try_start_156 .. :try_end_15c} :catchall_650

    if-eqz v13, :cond_168

    :try_start_15e
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v13

    const/4 v14, 0x1

    invoke-virtual {v5, v14, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5
    :try_end_167
    .catchall {:try_start_15e .. :try_end_167} :catchall_654

    goto :goto_156

    :cond_168
    :goto_168
    :try_start_168
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v12, 0x1

    const/4 v14, 0x0

    invoke-virtual {v5, v14, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v14

    invoke-virtual {v5, v12, v14}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v14, 0x0

    invoke-virtual {v5, v14, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v14

    invoke-virtual {v5, v12, v14}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x0

    invoke-virtual {v0, v4, v13}, Labcd/Sa;->Zo(II)I

    move-result v14

    invoke-virtual {v0, v14}, Labcd/Sa;->aM(I)Ljava/lang/String;

    move-result-object v13

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "set"

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "get"

    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v3}, Labcd/Cb;->DW(I)I

    move-result v14

    invoke-direct {v10, v0, v14}, Labcd/gd;->j6(Labcd/Sa;I)Z

    move-result v14

    if-eqz v14, :cond_20b

    move-object/from16 v19, v9

    const/4 v14, 0x1

    invoke-virtual {v0, v4, v14}, Labcd/Sa;->Zo(II)I

    move-result v9

    invoke-virtual {v0, v9}, Labcd/Sa;->we(I)I

    move-result v9

    if-nez v9, :cond_20d

    invoke-virtual {v12}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v9

    const-string v14, "IS"

    invoke-virtual {v9, v14}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_1f9

    move-object v9, v12

    goto :goto_20f

    :cond_1f9
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "is"

    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    goto :goto_20f

    :cond_20b
    move-object/from16 v19, v9

    :cond_20d
    move-object/from16 v9, v19

    :goto_20f
    invoke-virtual {v0}, Labcd/Sa;->J8()Labcd/na;

    move-result-object v14

    invoke-interface {v14}, Labcd/na;->v5()Labcd/pa;

    move-result-object v14

    check-cast v14, Labcd/Fd;

    invoke-virtual {v14, v0, v4}, Labcd/Fd;->U2(Labcd/Sa;I)Ljava/lang/String;

    move-result-object v4

    iget-object v14, v10, Labcd/gd;->FH:Labcd/La;

    invoke-virtual {v14}, Labcd/La;->Hw()Labcd/va;

    move-result-object v14

    iget-boolean v14, v14, Labcd/va;->v5:Z
    :try_end_225
    .catchall {:try_start_168 .. :try_end_225} :catchall_650

    move/from16 v19, v6

    const-string v6, "*\n* @version  "

    move/from16 v20, v7

    const-string v7, "*/\n"

    move-object/from16 v21, v9

    const-string v9, "an "

    move-object/from16 v22, v8

    const-string v8, "a  "

    move-object/from16 v23, v13

    const-string v13, "AEIOUaeiou"

    move-object/from16 v24, v12

    const-string v12, "*\n"

    move-object/from16 v25, v11

    const-string v11, "/**\n"

    move-object/from16 v26, v15

    const-string v15, "/"

    move-object/from16 v27, v0

    const-string v0, "\n"

    if-eqz v14, :cond_32a

    :try_start_24b
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v28, v1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, "* Sets "

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "* @param    "

    invoke-virtual {v14, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x14

    invoke-static {v5, v1}, Labcd/gd;->j6(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v14, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move/from16 v29, v3

    const/4 v14, 0x0

    invoke-virtual {v4, v14}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-virtual {v13, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    const/4 v14, -0x1

    if-eq v3, v14, :cond_2ba

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_2b5
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_2c6

    :cond_2ba
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2b5

    :goto_2c6
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v3, v10, Labcd/gd;->FH:Labcd/La;

    invoke-virtual {v3}, Labcd/La;->Hw()Labcd/va;

    move-result-object v3

    iget-boolean v3, v3, Labcd/va;->Zo:Z

    if-eqz v3, :cond_31a

    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/util/Date;->getMonth()I

    move-result v1

    const/16 v17, 0x1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v14, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/util/Date;->getDate()I

    move-result v1

    invoke-virtual {v14, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/util/Date;->getYear()I

    move-result v1

    add-int/lit16 v1, v1, 0x76c

    invoke-virtual {v14, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_31a
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_32f

    :cond_32a
    move-object/from16 v28, v1

    move/from16 v29, v3

    move-object v1, v2

    :goto_32f
    iget-object v3, v10, Labcd/gd;->FH:Labcd/La;

    invoke-virtual {v3}, Labcd/La;->Hw()Labcd/va;

    move-result-object v3

    iget-boolean v3, v3, Labcd/va;->v5:Z

    if-eqz v3, :cond_40e

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "* Returns "

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "* @return    "

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljava/lang/String;->charAt(I)C

    move-result v11

    invoke-virtual {v13, v11}, Ljava/lang/String;->indexOf(I)I

    move-result v11

    const/4 v12, -0x1

    if-eq v11, v12, :cond_39b

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_3aa

    :cond_39b
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_3aa
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v8, v10, Labcd/gd;->FH:Labcd/La;

    invoke-virtual {v8}, Labcd/La;->Hw()Labcd/va;

    move-result-object v8

    iget-boolean v8, v8, Labcd/va;->Zo:Z

    if-eqz v8, :cond_3fd

    new-instance v8, Ljava/util/Date;

    invoke-direct {v8}, Ljava/util/Date;-><init>()V

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/util/Date;->getMonth()I

    move-result v3

    const/4 v6, 0x1

    add-int/2addr v3, v6

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/util/Date;->getDate()I

    move-result v3

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/util/Date;->getYear()I

    move-result v3

    add-int/lit16 v3, v3, 0x76c

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_3fe

    :cond_3fd
    const/4 v6, 0x1

    :goto_3fe
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_412

    :cond_40e
    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v12, -0x1

    move-object v3, v2

    :goto_412
    move-object/from16 v7, v28

    move/from16 v8, v29

    invoke-virtual {v7, v8}, Labcd/Cb;->DW(I)I

    move-result v9

    move-object/from16 v11, v27

    invoke-direct {v10, v11, v9}, Labcd/gd;->DW(Labcd/Sa;I)Z

    move-result v9
    :try_end_420
    .catchall {:try_start_24b .. :try_end_420} :catchall_650

    const-string v13, "static "

    const-string v14, "public "

    const-string v15, "\n\n"

    const-string v5, ";\n}"

    const-string v6, " "

    if-nez v9, :cond_53c

    :try_start_42c
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v12, v26

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v8}, Labcd/Cb;->DW(I)I

    move-result v9

    invoke-direct {v10, v11, v9}, Labcd/gd;->FH(Labcd/Sa;I)Z

    move-result v9

    if-eqz v9, :cond_45c

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_45c
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "void "

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v1, v25

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "("

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v1, v24

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, ")"

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    iget-object v12, v10, Labcd/gd;->FH:Labcd/La;

    invoke-virtual {v12}, Labcd/La;->Hw()Labcd/va;

    move-result-object v12

    iget-boolean v12, v12, Labcd/va;->gn:Z

    if-eqz v12, :cond_49d

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4a8

    :cond_49d
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_4a8
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    move-object/from16 v12, v23

    invoke-virtual {v1, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23
    :try_end_4b2
    .catchall {:try_start_42c .. :try_end_4b2} :catchall_650

    move-object/from16 v24, v2

    const-string v2, " = "

    move-object/from16 v25, v0

    const-string v0, "{\n"

    if-eqz v23, :cond_519

    move-object/from16 v23, v6

    :try_start_4be
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v8}, Labcd/Cb;->DW(I)I

    move-result v6

    invoke-direct {v10, v11, v6}, Labcd/gd;->FH(Labcd/Sa;I)Z

    move-result v6

    if-eqz v6, :cond_4ee

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v9, v22

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "."

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_4e9
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_4fe

    :cond_4ee
    move-object/from16 v9, v22

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "this."

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4e9

    :goto_4fe
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object/from16 v22, v9

    goto :goto_536

    :cond_519
    move-object/from16 v23, v6

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_536
    move-object/from16 v30, v12

    move-object v12, v0

    move-object/from16 v0, v30

    goto :goto_546

    :cond_53c
    move-object/from16 v25, v0

    move-object/from16 v24, v2

    move-object/from16 v0, v23

    move-object/from16 v12, v26

    move-object/from16 v23, v6

    :goto_546
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v8}, Labcd/Cb;->DW(I)I

    move-result v2

    invoke-direct {v10, v11, v2}, Labcd/gd;->FH(Labcd/Sa;I)Z

    move-result v2

    if-eqz v2, :cond_574

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_574
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v1, v23

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v12, v21

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "()"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, v10, Labcd/gd;->FH:Labcd/La;

    invoke-virtual {v3}, Labcd/La;->Hw()Labcd/va;

    move-result-object v3

    iget-boolean v3, v3, Labcd/va;->gn:Z

    if-eqz v3, :cond_5ac

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_5bd

    :cond_5ac
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v2, v25

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_5bd
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "{\nreturn "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    add-int/lit8 v0, v20, 0x2

    move-object/from16 v9, p1

    move/from16 v12, p3

    move/from16 v13, p4

    move/from16 v14, p5

    move-object v1, v7

    move v3, v8

    move/from16 v5, v18

    move/from16 v6, v19

    move-object/from16 v8, v22

    move-object/from16 v2, v24

    const/16 v4, 0x7e

    move v7, v0

    move-object v0, v11

    move/from16 v11, p2

    goto/16 :goto_114

    :cond_5f0
    move-object v11, v0

    move-object v7, v1

    move-object/from16 v24, v2

    move/from16 v19, v6

    move-object/from16 v22, v8

    move-object v12, v15

    goto :goto_602

    :cond_5fa
    move-object v11, v0

    move-object v7, v1

    move-object/from16 v24, v2

    move/from16 v19, v6

    move-object/from16 v22, v8

    :goto_602
    move v8, v3

    add-int/lit8 v3, v8, 0x1

    move-object/from16 v9, p1

    move/from16 v12, p3

    move/from16 v13, p4

    move/from16 v14, p5

    move-object v1, v7

    move-object v0, v11

    move/from16 v6, v19

    move-object/from16 v8, v22

    move-object/from16 v2, v24

    const/16 v4, 0x7e

    move/from16 v11, p2

    goto/16 :goto_fb

    :cond_61b
    move-object v11, v0

    move/from16 v19, v6

    iget-object v0, v10, Labcd/gd;->FH:Labcd/La;

    iget-object v1, v0, Labcd/La;->gn:Labcd/hb;

    move-object/from16 v2, p1

    move/from16 v3, v19

    move/from16 v4, v16

    move/from16 v5, v19

    move/from16 v0, v19

    move/from16 v6, v16

    move-object v7, v15

    invoke-interface/range {v1 .. v7}, Labcd/hb;->j6(Labcd/Da;IIIILjava/lang/String;)V

    iget-object v1, v10, Labcd/gd;->FH:Labcd/La;

    iget-object v1, v1, Labcd/La;->gn:Labcd/hb;

    invoke-direct {v10, v15}, Labcd/gd;->j6(Ljava/lang/String;)I

    move-result v2
    :try_end_63a
    .catchall {:try_start_4be .. :try_end_63a} :catchall_650

    add-int v6, v0, v2

    move-object/from16 v5, p1

    :try_start_63e
    invoke-interface {v1, v5, v0, v6}, Labcd/hb;->j6(Labcd/Da;II)V

    iget-object v0, v10, Labcd/gd;->Hw:Labcd/Va;

    invoke-virtual {v0, v11}, Labcd/Va;->j6(Labcd/Sa;)V

    iget-object v0, v10, Labcd/gd;->FH:Labcd/La;

    iget-object v0, v0, Labcd/La;->gn:Labcd/hb;

    invoke-interface {v0}, Labcd/hb;->VH()V
    :try_end_64d
    .catchall {:try_start_63e .. :try_end_64d} :catchall_64e

    return-void

    :catchall_64e
    move-exception v0

    goto :goto_656

    :catchall_650
    move-exception v0

    move-object/from16 v5, p1

    goto :goto_656

    :catchall_654
    move-exception v0

    move-object v5, v9

    :goto_656
    sget-boolean v1, Labcd/gd;->DW:Z

    if-eqz v1, :cond_683

    const-wide v2, -0x1ac9b11e17a910L

    new-instance v6, Ljava/lang/Integer;

    move/from16 v1, p2

    invoke-direct {v6, v1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v7, Ljava/lang/Integer;

    move/from16 v1, p3

    invoke-direct {v7, v1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v8, Ljava/lang/Integer;

    move/from16 v1, p4

    invoke-direct {v8, v1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v9, Ljava/lang/Integer;

    move/from16 v1, p5

    invoke-direct {v9, v1}, Ljava/lang/Integer;-><init>(I)V

    move-object v1, v0

    move-object/from16 v4, p0

    move-object/from16 v5, p1

    invoke-static/range {v1 .. v9}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_683
    goto :goto_685

    :goto_684
    throw v0

    :goto_685
    goto :goto_684
.end method

.method public j6(Labcd/Da;)V
    .registers 7

    const-wide v0, 0x544abad7e6a11507L  # 1.1418925556198118E98

    :try_start_5
    sget-boolean v2, Labcd/gd;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    iget-object v2, p0, Labcd/gd;->FH:Labcd/La;

    iget-object v2, v2, Labcd/La;->gn:Labcd/hb;

    invoke-interface {v2}, Labcd/hb;->aM()V

    iget-object v2, p0, Labcd/gd;->Hw:Labcd/Va;

    iget-object v3, p0, Labcd/gd;->gn:Labcd/yd;

    invoke-virtual {v2, p1, v3}, Labcd/Va;->DW(Labcd/Da;Labcd/na;)Labcd/Sa;

    move-result-object v2

    invoke-virtual {v2}, Labcd/Sa;->aM()I

    move-result v3

    iget-object v4, p0, Labcd/gd;->FH:Labcd/La;

    invoke-virtual {v4}, Labcd/La;->Hw()Labcd/va;

    move-result-object v4

    iget-boolean v4, v4, Labcd/va;->Zo:Z

    invoke-direct {p0, v2, v3, v4}, Labcd/gd;->FH(Labcd/Sa;IZ)V

    iget-object v3, p0, Labcd/gd;->Hw:Labcd/Va;

    invoke-virtual {v3, v2}, Labcd/Va;->j6(Labcd/Sa;)V

    iget-object v2, p0, Labcd/gd;->FH:Labcd/La;

    iget-object v2, v2, Labcd/La;->gn:Labcd/hb;

    invoke-interface {v2}, Labcd/hb;->J8()V
    :try_end_36
    .catchall {:try_start_5 .. :try_end_36} :catchall_37

    return-void

    :catchall_37
    move-exception v2

    sget-boolean v3, Labcd/gd;->DW:Z

    if-eqz v3, :cond_3f

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_3f
    throw v2
.end method

.method public j6(Labcd/Da;II)V
    .registers 12

    :try_start_0
    sget-boolean v0, Labcd/gd;->j6:Z

    if-eqz v0, :cond_18

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p3}, Ljava/lang/Integer;-><init>(I)V

    const-wide v1, -0x1ca02349c6b48bfL  # -9.204671098072554E299

    move-object v3, p0

    move-object v4, p1

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_18
    iget-object v0, p0, Labcd/gd;->FH:Labcd/La;

    iget-object v0, v0, Labcd/La;->gn:Labcd/hb;

    invoke-interface {v0}, Labcd/hb;->aM()V

    iget-object v0, p0, Labcd/gd;->Hw:Labcd/Va;

    iget-object v1, p0, Labcd/gd;->gn:Labcd/yd;

    invoke-virtual {v0, p1, v1}, Labcd/Va;->DW(Labcd/Da;Labcd/na;)Labcd/Sa;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Labcd/Sa;->EQ(II)I

    move-result v1
    :try_end_2b
    .catchall {:try_start_0 .. :try_end_2b} :catchall_8a

    const/4 v2, -0x1

    const-string v3, "Select a method to documentize."

    if-ne v1, v2, :cond_3d

    :try_start_30
    iget-object v1, p0, Labcd/gd;->Hw:Labcd/Va;

    invoke-virtual {v1, v0}, Labcd/Va;->j6(Labcd/Sa;)V

    iget-object v0, p0, Labcd/gd;->FH:Labcd/La;

    iget-object v0, v0, Labcd/La;->gn:Labcd/hb;

    invoke-interface {v0, v3}, Labcd/hb;->u7(Ljava/lang/String;)V

    return-void

    :cond_3d
    invoke-virtual {v0, v1}, Labcd/Sa;->P8(I)I

    move-result v2

    const/16 v4, 0x7c

    if-ne v2, v4, :cond_5d

    iget-object v2, p0, Labcd/gd;->FH:Labcd/La;

    invoke-virtual {v2}, Labcd/La;->Hw()Labcd/va;

    move-result-object v2

    iget-boolean v2, v2, Labcd/va;->Zo:Z

    invoke-direct {p0, v0, v1, v2}, Labcd/gd;->v5(Labcd/Sa;IZ)V

    iget-object v1, p0, Labcd/gd;->Hw:Labcd/Va;

    invoke-virtual {v1, v0}, Labcd/Va;->j6(Labcd/Sa;)V

    iget-object v0, p0, Labcd/gd;->FH:Labcd/La;

    iget-object v0, v0, Labcd/La;->gn:Labcd/hb;

    invoke-interface {v0}, Labcd/hb;->J8()V

    return-void

    :cond_5d
    invoke-virtual {v0, v1}, Labcd/Sa;->P8(I)I

    move-result v2

    const/16 v4, 0x7b

    if-ne v2, v4, :cond_7d

    iget-object v2, p0, Labcd/gd;->FH:Labcd/La;

    invoke-virtual {v2}, Labcd/La;->Hw()Labcd/va;

    move-result-object v2

    iget-boolean v2, v2, Labcd/va;->Zo:Z

    invoke-direct {p0, v0, v1, v2}, Labcd/gd;->Hw(Labcd/Sa;IZ)V

    iget-object v1, p0, Labcd/gd;->Hw:Labcd/Va;

    invoke-virtual {v1, v0}, Labcd/Va;->j6(Labcd/Sa;)V

    iget-object v0, p0, Labcd/gd;->FH:Labcd/La;

    iget-object v0, v0, Labcd/La;->gn:Labcd/hb;

    invoke-interface {v0}, Labcd/hb;->J8()V

    return-void

    :cond_7d
    iget-object v1, p0, Labcd/gd;->Hw:Labcd/Va;

    invoke-virtual {v1, v0}, Labcd/Va;->j6(Labcd/Sa;)V

    iget-object v0, p0, Labcd/gd;->FH:Labcd/La;

    iget-object v0, v0, Labcd/La;->gn:Labcd/hb;

    invoke-interface {v0, v3}, Labcd/hb;->u7(Ljava/lang/String;)V
    :try_end_89
    .catchall {:try_start_30 .. :try_end_89} :catchall_8a

    return-void

    :catchall_8a
    move-exception v0

    sget-boolean v1, Labcd/gd;->DW:Z

    if-eqz v1, :cond_a4

    const-wide v2, -0x1ca02349c6b48bfL  # -9.204671098072554E299

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, p3}, Ljava/lang/Integer;-><init>(I)V

    move-object v1, v0

    move-object v4, p0

    move-object v5, p1

    invoke-static/range {v1 .. v7}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_a4
    throw v0
.end method

.method public j6(Labcd/Da;IIII)V
    .registers 29

    move-object/from16 v10, p0

    move-object/from16 v9, p1

    move/from16 v11, p2

    move/from16 v12, p3

    move/from16 v13, p4

    move/from16 v14, p5

    const-string v0, "/"

    const-string v15, "("

    :try_start_10
    sget-boolean v1, Labcd/gd;->j6:Z

    if-eqz v1, :cond_34

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, v11}, Ljava/lang/Integer;-><init>(I)V

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, v12}, Ljava/lang/Integer;-><init>(I)V

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, v13}, Ljava/lang/Integer;-><init>(I)V

    new-instance v8, Ljava/lang/Integer;

    invoke-direct {v8, v14}, Ljava/lang/Integer;-><init>(I)V

    const-wide v1, 0x4ad3eaa1dc15a817L  # 2.980663761071018E52

    move-object/from16 v3, p0

    move-object/from16 v4, p1

    invoke-static/range {v1 .. v8}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_34
    iget-object v1, v10, Labcd/gd;->FH:Labcd/La;

    iget-object v1, v1, Labcd/La;->gn:Labcd/hb;

    invoke-interface {v1}, Labcd/hb;->aM()V

    iget-object v1, v10, Labcd/gd;->Hw:Labcd/Va;

    iget-object v2, v10, Labcd/gd;->gn:Labcd/yd;

    invoke-virtual {v1, v9, v2}, Labcd/Va;->DW(Labcd/Da;Labcd/na;)Labcd/Sa;

    move-result-object v8

    invoke-virtual {v8, v11, v12, v13, v14}, Labcd/Sa;->Zo(IIII)Labcd/Cb;

    move-result-object v1
    :try_end_47
    .catchall {:try_start_10 .. :try_end_47} :catchall_3e3

    invoke-static {}, Lcom/s1243808733/util/Utils;->getApp()Landroid/app/Application;

    move-result-object v2

    const v3, 0x7f0d077a

    invoke-virtual {v2, v3}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v2

    if-nez v1, :cond_61

    :try_start_54
    iget-object v0, v10, Labcd/gd;->FH:Labcd/La;

    iget-object v0, v0, Labcd/La;->gn:Labcd/hb;

    invoke-interface {v0, v2}, Labcd/hb;->Hw(Ljava/lang/String;)V

    iget-object v0, v10, Labcd/gd;->Hw:Labcd/Va;

    invoke-virtual {v0, v8}, Labcd/Va;->j6(Labcd/Sa;)V

    return-void

    :cond_61
    invoke-virtual {v1}, Labcd/Cb;->Hw()I

    move-result v3

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    :goto_67
    const/16 v5, 0x7e

    const/4 v6, -0x1

    if-ltz v3, :cond_94

    invoke-virtual {v1, v3}, Labcd/Cb;->DW(I)I

    move-result v7

    invoke-virtual {v8, v7}, Labcd/Sa;->P8(I)I

    move-result v7

    if-ne v7, v5, :cond_91

    invoke-virtual {v1, v3}, Labcd/Cb;->DW(I)I

    move-result v7

    invoke-direct {v10, v8, v7}, Labcd/gd;->FH(Labcd/Sa;I)Z

    move-result v7

    if-nez v7, :cond_91

    invoke-virtual {v1, v3}, Labcd/Cb;->DW(I)I

    move-result v7

    invoke-virtual {v8, v7}, Labcd/Sa;->QX(I)I

    move-result v7

    invoke-virtual {v1, v3}, Labcd/Cb;->DW(I)I

    move-result v3

    invoke-virtual {v8, v3}, Labcd/Sa;->Ws(I)I

    move-result v3

    goto :goto_96

    :cond_91
    add-int/lit8 v3, v3, -0x1

    goto :goto_67

    :cond_94
    const/4 v3, -0x1

    const/4 v7, -0x1

    :goto_96
    if-ne v7, v6, :cond_a5

    iget-object v0, v10, Labcd/gd;->FH:Labcd/La;

    iget-object v0, v0, Labcd/La;->gn:Labcd/hb;

    invoke-interface {v0, v2}, Labcd/hb;->Hw(Ljava/lang/String;)V

    iget-object v0, v10, Labcd/gd;->Hw:Labcd/Va;

    invoke-virtual {v0, v8}, Labcd/Va;->j6(Labcd/Sa;)V

    return-void

    :cond_a5
    invoke-virtual {v8, v11, v12, v13, v14}, Labcd/Sa;->v5(IIII)I

    move-result v2

    invoke-virtual {v8, v2}, Labcd/Sa;->er(I)I

    move-result v6

    invoke-virtual {v8, v6}, Labcd/Sa;->P8(I)I

    move-result v4

    const/16 v5, 0x78

    if-eq v4, v5, :cond_e1

    const/16 v5, 0x79

    if-eq v4, v5, :cond_e1

    const/16 v5, 0xdc

    if-eq v4, v5, :cond_e1

    const/16 v5, 0xdd

    if-eq v4, v5, :cond_e1

    const/16 v5, 0xe3

    if-eq v4, v5, :cond_e1

    const/16 v5, 0xe4

    if-eq v4, v5, :cond_e1

    iget-object v0, v10, Labcd/gd;->FH:Labcd/La;

    iget-object v0, v0, Labcd/La;->gn:Labcd/hb;

    invoke-static {}, Lcom/s1243808733/util/Utils;->getApp()Landroid/app/Application;

    move-result-object v1

    const v2, 0x7f0d077b

    invoke-virtual {v1, v2}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Labcd/hb;->Hw(Ljava/lang/String;)V

    iget-object v0, v10, Labcd/gd;->Hw:Labcd/Va;

    invoke-virtual {v0, v8}, Labcd/Va;->j6(Labcd/Sa;)V

    return-void

    :cond_e1
    move v5, v7

    move v7, v3

    const/4 v3, 0x0

    :goto_e4
    invoke-virtual {v8, v2}, Labcd/Sa;->we(I)I

    move-result v4

    if-ge v3, v4, :cond_10c

    invoke-virtual {v8, v2, v3}, Labcd/Sa;->Zo(II)I

    move-result v4

    move/from16 v18, v2

    invoke-virtual {v8, v4}, Labcd/Sa;->P8(I)I

    move-result v2

    const/16 v14, 0x8

    if-eq v2, v14, :cond_fd

    const/16 v14, 0x7e

    if-eq v2, v14, :cond_fd

    goto :goto_10c

    :cond_fd
    invoke-virtual {v8, v4}, Labcd/Sa;->QX(I)I

    move-result v5

    invoke-virtual {v8, v4}, Labcd/Sa;->Ws(I)I

    move-result v7

    add-int/lit8 v3, v3, 0x1

    move/from16 v14, p5

    move/from16 v2, v18

    goto :goto_e4

    :cond_10c
    :goto_10c
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "public "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v3, 0x2

    invoke-virtual {v8, v6, v3}, Labcd/Sa;->Zo(II)I

    move-result v3

    invoke-virtual {v8, v3}, Labcd/Sa;->aM(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, v10, Labcd/gd;->FH:Labcd/La;

    invoke-virtual {v3}, Labcd/La;->Hw()Labcd/va;

    move-result-object v3

    iget-boolean v3, v3, Labcd/va;->v5:Z
    :try_end_131
    .catchall {:try_start_54 .. :try_end_131} :catchall_3e3

    const-string v4, ""

    if-eqz v3, :cond_146

    :try_start_135
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "/**\n* Constructor\n*\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4
    :try_end_146
    .catchall {:try_start_135 .. :try_end_146} :catchall_3e3

    :cond_146
    const-string v3, "\n{"

    const/4 v6, 0x0

    :goto_149
    :try_start_149
    invoke-virtual {v1}, Labcd/Cb;->Hw()I

    move-result v14
    :try_end_14d
    .catchall {:try_start_149 .. :try_end_14d} :catchall_3e3

    const-string v13, "\n"

    if-ge v6, v14, :cond_314

    :try_start_151
    invoke-virtual {v1, v6}, Labcd/Cb;->DW(I)I

    move-result v14

    invoke-virtual {v8, v14}, Labcd/Sa;->P8(I)I

    move-result v14

    const/16 v12, 0x7e

    if-ne v14, v12, :cond_2fa

    invoke-virtual {v1, v6}, Labcd/Cb;->DW(I)I

    move-result v14

    invoke-direct {v10, v8, v14}, Labcd/gd;->FH(Labcd/Sa;I)Z

    move-result v14

    if-nez v14, :cond_2fa

    invoke-virtual {v1, v6}, Labcd/Cb;->DW(I)I

    move-result v14

    invoke-virtual {v8, v14}, Labcd/Sa;->we(I)I

    move-result v14

    const/16 v17, 0x3

    const/4 v12, 0x3

    :goto_172
    if-ge v12, v14, :cond_2fa

    move/from16 v18, v14

    invoke-virtual {v1, v6}, Labcd/Cb;->DW(I)I

    move-result v14

    invoke-virtual {v8, v14, v12}, Labcd/Sa;->Zo(II)I

    move-result v14

    move-object/from16 v19, v1

    const/4 v1, 0x0

    invoke-virtual {v8, v14, v1}, Labcd/Sa;->Zo(II)I

    move-result v11

    invoke-virtual {v8, v11}, Labcd/Sa;->aM(I)Ljava/lang/String;

    move-result-object v1

    iget-object v9, v10, Labcd/gd;->FH:Labcd/La;

    invoke-virtual {v9}, Labcd/La;->Hw()Labcd/va;

    move-result-object v9

    iget-object v9, v9, Labcd/va;->FH:Ljava/lang/String;

    if-eqz v9, :cond_1bb

    iget-object v9, v10, Labcd/gd;->FH:Labcd/La;

    invoke-virtual {v9}, Labcd/La;->Hw()Labcd/va;

    move-result-object v9

    iget-object v9, v9, Labcd/va;->FH:Ljava/lang/String;

    invoke-virtual {v1, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_1b8

    iget-object v9, v10, Labcd/gd;->FH:Labcd/La;

    invoke-virtual {v9}, Labcd/La;->Hw()Labcd/va;

    move-result-object v9

    iget-object v9, v9, Labcd/va;->FH:Ljava/lang/String;

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    move/from16 v20, v7

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {v1, v9, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    goto :goto_1cf

    :cond_1b8
    move/from16 v20, v7

    goto :goto_1cf

    :cond_1bb
    move/from16 v20, v7

    :goto_1bd
    const-string v7, "_"

    invoke-virtual {v1, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1cf

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v7

    const/4 v9, 0x1

    invoke-virtual {v1, v9, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    goto :goto_1bd

    :cond_1cf
    :goto_1cf
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v21, v5

    const/4 v5, 0x1

    const/4 v9, 0x0

    invoke-virtual {v1, v9, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v9

    invoke-virtual {v1, v5, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v8, v11}, Labcd/Sa;->aM(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v8}, Labcd/Sa;->J8()Labcd/na;

    move-result-object v9

    invoke-interface {v9}, Labcd/na;->v5()Labcd/pa;

    move-result-object v9

    check-cast v9, Labcd/Fd;

    invoke-virtual {v9, v8, v14}, Labcd/Fd;->U2(Labcd/Sa;I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v15}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_21b

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :cond_21b
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11
    :try_end_245
    .catchall {:try_start_151 .. :try_end_245} :catchall_3df

    const-string v14, ";"

    move-object/from16 v22, v2

    const-string v2, " = "

    if-eqz v11, :cond_267

    :try_start_24d
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "this."

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_27b

    :cond_267
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_27b
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object v3, v2

    iget-object v2, v10, Labcd/gd;->FH:Labcd/La;

    invoke-virtual {v2}, Labcd/La;->Hw()Labcd/va;

    move-result-object v2

    iget-boolean v2, v2, Labcd/va;->v5:Z

    if-eqz v2, :cond_2e6

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "* @param    "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v4, 0x14

    invoke-static {v1, v4}, Labcd/gd;->j6(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "AEIOUaeiou"

    const/4 v5, 0x0

    invoke-virtual {v9, v5}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    const/4 v7, -0x1

    if-eq v2, v7, :cond_2c4

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "an "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_2bf
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_2d2

    :cond_2c4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "a  "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2bf

    :goto_2d2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object v4, v1

    goto :goto_2e8

    :cond_2e6
    const/4 v5, 0x0

    const/4 v7, -0x1

    :goto_2e8
    add-int/lit8 v12, v12, 0x2

    move-object/from16 v9, p1

    move/from16 v11, p2

    move/from16 v14, v18

    move-object/from16 v1, v19

    move/from16 v7, v20

    move/from16 v5, v21

    move-object/from16 v2, v22

    goto/16 :goto_172

    :cond_2fa
    move-object/from16 v19, v1

    move/from16 v21, v5

    move/from16 v20, v7

    const/4 v5, 0x0

    const/4 v7, -0x1

    add-int/lit8 v6, v6, 0x1

    move-object/from16 v9, p1

    move/from16 v11, p2

    move/from16 v12, p3

    move/from16 v13, p4

    move-object/from16 v1, v19

    move/from16 v7, v20

    move/from16 v5, v21

    goto/16 :goto_149

    :cond_314
    move/from16 v21, v5

    move/from16 v20, v7

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\n}"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, v10, Labcd/gd;->FH:Labcd/La;

    invoke-virtual {v3}, Labcd/La;->Hw()Labcd/va;

    move-result-object v3

    iget-boolean v3, v3, Labcd/va;->v5:Z

    if-eqz v3, :cond_397

    iget-object v3, v10, Labcd/gd;->FH:Labcd/La;

    invoke-virtual {v3}, Labcd/La;->Hw()Labcd/va;

    move-result-object v3

    iget-boolean v3, v3, Labcd/va;->Zo:Z

    if-eqz v3, :cond_386

    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "*\n* @version  "

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/util/Date;->getMonth()I

    move-result v4

    const/4 v6, 0x1

    add-int/2addr v4, v6

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/util/Date;->getDate()I

    move-result v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/util/Date;->getYear()I

    move-result v0

    add-int/lit16 v0, v0, 0x76c

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    :cond_386
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "*/\n"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    :cond_397
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\n\n"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, v10, Labcd/gd;->FH:Labcd/La;

    iget-object v1, v1, Labcd/La;->gn:Labcd/hb;

    move-object/from16 v2, p1

    move/from16 v3, v21

    move/from16 v4, v20

    move/from16 v9, v21

    move v5, v9

    move/from16 v6, v20

    move-object v7, v0

    invoke-interface/range {v1 .. v7}, Labcd/hb;->j6(Labcd/Da;IIIILjava/lang/String;)V

    iget-object v1, v10, Labcd/gd;->FH:Labcd/La;

    iget-object v1, v1, Labcd/La;->gn:Labcd/hb;

    invoke-direct {v10, v0}, Labcd/gd;->j6(Ljava/lang/String;)I

    move-result v0
    :try_end_3c9
    .catchall {:try_start_24d .. :try_end_3c9} :catchall_3df

    add-int v5, v9, v0

    move-object/from16 v6, p1

    :try_start_3cd
    invoke-interface {v1, v6, v9, v5}, Labcd/hb;->j6(Labcd/Da;II)V

    iget-object v0, v10, Labcd/gd;->Hw:Labcd/Va;

    invoke-virtual {v0, v8}, Labcd/Va;->j6(Labcd/Sa;)V

    iget-object v0, v10, Labcd/gd;->FH:Labcd/La;

    iget-object v0, v0, Labcd/La;->gn:Labcd/hb;

    invoke-interface {v0}, Labcd/hb;->VH()V
    :try_end_3dc
    .catchall {:try_start_3cd .. :try_end_3dc} :catchall_3dd

    return-void

    :catchall_3dd
    move-exception v0

    goto :goto_3e5

    :catchall_3df
    move-exception v0

    move-object/from16 v6, p1

    goto :goto_3e5

    :catchall_3e3
    move-exception v0

    move-object v6, v9

    :goto_3e5
    sget-boolean v1, Labcd/gd;->DW:Z

    if-eqz v1, :cond_416

    const-wide v2, 0x4ad3eaa1dc15a817L  # 2.980663761071018E52

    new-instance v7, Ljava/lang/Integer;

    move/from16 v1, p2

    invoke-direct {v7, v1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v8, Ljava/lang/Integer;

    move/from16 v1, p3

    invoke-direct {v8, v1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v9, Ljava/lang/Integer;

    move/from16 v1, p4

    invoke-direct {v9, v1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v11, Ljava/lang/Integer;

    move/from16 v1, p5

    invoke-direct {v11, v1}, Ljava/lang/Integer;-><init>(I)V

    move-object v1, v0

    move-object/from16 v4, p0

    move-object/from16 v5, p1

    move-object v6, v7

    move-object v7, v8

    move-object v8, v9

    move-object v9, v11

    invoke-static/range {v1 .. v9}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_416
    goto :goto_418

    :goto_417
    throw v0

    :goto_418
    goto :goto_417
.end method

.method public j6(Labcd/Da;IIIILabcd/Ya;)V
    .registers 20

    move-object v0, p0

    move-object v8, p1

    move v9, p2

    move/from16 v6, p3

    move/from16 v1, p4

    move/from16 v2, p5

    move-object/from16 v3, p6

    sget-boolean v4, Labcd/gd;->j6:Z

    if-eqz v4, :cond_40

    const/4 v4, 0x6

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v8, v4, v5

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p2}, Ljava/lang/Integer;-><init>(I)V

    const/4 v7, 0x1

    aput-object v5, v4, v7

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, v6}, Ljava/lang/Integer;-><init>(I)V

    const/4 v7, 0x2

    aput-object v5, v4, v7

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, v1}, Ljava/lang/Integer;-><init>(I)V

    const/4 v7, 0x3

    aput-object v5, v4, v7

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, v2}, Ljava/lang/Integer;-><init>(I)V

    const/4 v7, 0x4

    aput-object v5, v4, v7

    const/4 v5, 0x5

    aput-object v3, v4, v5

    const-wide v10, -0x43dd9cab2e32afL

    invoke-static {v10, v11, p0, v4}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;[Ljava/lang/Object;)V

    :cond_40
    iget-object v4, v0, Labcd/gd;->FH:Labcd/La;

    iget-object v4, v4, Labcd/La;->U2:Labcd/Va;

    iget-object v5, v0, Labcd/gd;->gn:Labcd/yd;

    invoke-virtual {v4, p1, v5}, Labcd/Va;->DW(Labcd/Da;Labcd/na;)Labcd/Sa;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "\n\n"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Labcd/Sa;->J8()Labcd/na;

    move-result-object v7

    invoke-interface {v7}, Labcd/na;->gn()Labcd/ia;

    move-result-object v7

    invoke-interface {v7, v1}, Labcd/ia;->j6(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4}, Labcd/Sa;->J8()Labcd/na;

    move-result-object v7

    invoke-interface {v7}, Labcd/na;->Hw()Labcd/ga;

    move-result-object v7

    invoke-interface {v7, v4}, Labcd/ga;->FH(Labcd/Sa;)V

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Labcd/Sa;->J8()Labcd/na;

    move-result-object v5

    invoke-interface {v5}, Labcd/na;->u7()Labcd/qa;

    move-result-object v5

    invoke-interface {v5, v4, p2, v6, v3}, Labcd/qa;->j6(Labcd/Sa;IILabcd/Ya;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " "

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v0, Labcd/gd;->FH:Labcd/La;

    iget-object v5, v5, Labcd/La;->j3:Labcd/Ga;

    invoke-virtual {v5, v2}, Labcd/Ga;->j6(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static/range {p4 .. p4}, Labcd/Ma;->Hw(I)Z

    move-result v1

    if-eqz v1, :cond_cf

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Labcd/Sa;->J8()Labcd/na;

    move-result-object v2

    invoke-interface {v2}, Labcd/na;->gn()Labcd/ia;

    move-result-object v2

    invoke-interface {v2, v3}, Labcd/ia;->j6(Labcd/Ya;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :cond_cf
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ";"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    new-instance v1, Labcd/Yb;

    iget-object v2, v0, Labcd/gd;->FH:Labcd/La;

    iget-object v2, v2, Labcd/La;->a8:Labcd/Ba;

    invoke-direct {v1, v2}, Labcd/Yb;-><init>(Labcd/Ba;)V

    invoke-virtual {v1, v3}, Labcd/Yb;->DW(Labcd/Aa;)V

    invoke-virtual {v4}, Labcd/Sa;->J8()Labcd/na;

    move-result-object v2

    invoke-interface {v2}, Labcd/na;->u7()Labcd/qa;

    move-result-object v2

    invoke-interface {v2, v4, p2, v6, v1}, Labcd/qa;->j6(Labcd/Sa;IILabcd/Yb;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v4}, Labcd/Sa;->tp()I

    move-result v11

    invoke-virtual {v4}, Labcd/Sa;->u7()I

    move-result v12

    iget-object v1, v0, Labcd/gd;->FH:Labcd/La;

    iget-object v1, v1, Labcd/La;->U2:Labcd/Va;

    invoke-virtual {v1, v4}, Labcd/Va;->j6(Labcd/Sa;)V

    iget-object v1, v0, Labcd/gd;->FH:Labcd/La;

    iget-object v1, v1, Labcd/La;->gn:Labcd/hb;

    invoke-interface {v1}, Labcd/hb;->aM()V

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_139

    iget-object v1, v0, Labcd/gd;->FH:Labcd/La;

    iget-object v1, v1, Labcd/La;->gn:Labcd/hb;

    move-object v2, p1

    move v3, p2

    move/from16 v4, p3

    move v5, p2

    move/from16 v6, p3

    invoke-interface/range {v1 .. v7}, Labcd/hb;->j6(Labcd/Da;IIIILjava/lang/String;)V

    iget-object v1, v0, Labcd/gd;->FH:Labcd/La;

    iget-object v1, v1, Labcd/La;->gn:Labcd/hb;

    add-int/lit8 v2, v9, 0x2

    invoke-interface {v1, p1, p2, v2}, Labcd/hb;->j6(Labcd/Da;II)V

    iget-object v1, v0, Labcd/gd;->FH:Labcd/La;

    iget-object v1, v1, Labcd/La;->gn:Labcd/hb;

    move-object v2, p1

    move v3, v11

    move v4, v12

    move v5, v11

    move v6, v12

    move-object v7, v10

    invoke-interface/range {v1 .. v7}, Labcd/hb;->j6(Labcd/Da;IIIILjava/lang/String;)V

    goto :goto_150

    :cond_139
    iget-object v1, v0, Labcd/gd;->FH:Labcd/La;

    iget-object v1, v1, Labcd/La;->gn:Labcd/hb;

    move-object v2, p1

    move v3, p2

    move/from16 v4, p3

    move v5, p2

    move/from16 v6, p3

    invoke-interface/range {v1 .. v7}, Labcd/hb;->j6(Labcd/Da;IIIILjava/lang/String;)V

    iget-object v1, v0, Labcd/gd;->FH:Labcd/La;

    iget-object v1, v1, Labcd/La;->gn:Labcd/hb;

    add-int/lit8 v2, v9, 0x2

    invoke-interface {v1, p1, p2, v2}, Labcd/hb;->j6(Labcd/Da;II)V

    :goto_150
    iget-object v1, v0, Labcd/gd;->FH:Labcd/La;

    iget-object v1, v1, Labcd/La;->gn:Labcd/hb;

    invoke-interface {v1}, Labcd/hb;->j3()V

    return-void
.end method

.method public j6(Labcd/Da;IIIILabcd/Ya;[I[Labcd/Ya;[I)V
    .registers 25

    move-object v0, p0

    move-object/from16 v8, p1

    move/from16 v9, p2

    move/from16 v6, p3

    move/from16 v1, p4

    move/from16 v2, p5

    move-object/from16 v3, p6

    move-object/from16 v4, p8

    sget-boolean v5, Labcd/gd;->j6:Z

    const/4 v7, 0x1

    const/4 v10, 0x0

    if-eqz v5, :cond_4f

    const/16 v5, 0x9

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v8, v5, v10

    new-instance v11, Ljava/lang/Integer;

    invoke-direct {v11, v9}, Ljava/lang/Integer;-><init>(I)V

    aput-object v11, v5, v7

    new-instance v11, Ljava/lang/Integer;

    invoke-direct {v11, v6}, Ljava/lang/Integer;-><init>(I)V

    const/4 v12, 0x2

    aput-object v11, v5, v12

    new-instance v11, Ljava/lang/Integer;

    invoke-direct {v11, v1}, Ljava/lang/Integer;-><init>(I)V

    const/4 v12, 0x3

    aput-object v11, v5, v12

    new-instance v11, Ljava/lang/Integer;

    invoke-direct {v11, v2}, Ljava/lang/Integer;-><init>(I)V

    const/4 v12, 0x4

    aput-object v11, v5, v12

    const/4 v11, 0x5

    aput-object v3, v5, v11

    const/4 v11, 0x6

    aput-object p7, v5, v11

    const/4 v11, 0x7

    aput-object v4, v5, v11

    const/16 v11, 0x8

    aput-object p9, v5, v11

    const-wide v11, -0x2a1cea566f214fedL  # -5.471318299035649E105

    invoke-static {v11, v12, p0, v5}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;[Ljava/lang/Object;)V

    :cond_4f
    iget-object v5, v0, Labcd/gd;->FH:Labcd/La;

    iget-object v5, v5, Labcd/La;->U2:Labcd/Va;

    iget-object v11, v0, Labcd/gd;->gn:Labcd/yd;

    invoke-virtual {v5, v8, v11}, Labcd/Va;->DW(Labcd/Da;Labcd/na;)Labcd/Sa;

    move-result-object v5

    iget-object v11, v0, Labcd/gd;->FH:Labcd/La;

    invoke-virtual {v11}, Labcd/La;->Hw()Labcd/va;

    move-result-object v11

    iget-boolean v11, v11, Labcd/va;->v5:Z

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "\n\n"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Labcd/Sa;->J8()Labcd/na;

    move-result-object v12

    invoke-interface {v12}, Labcd/na;->gn()Labcd/ia;

    move-result-object v12

    and-int/lit16 v13, v1, -0x4001

    invoke-interface {v12, v13}, Labcd/ia;->j6(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v5}, Labcd/Sa;->J8()Labcd/na;

    move-result-object v12

    invoke-interface {v12}, Labcd/na;->Hw()Labcd/ga;

    move-result-object v12

    invoke-interface {v12, v5}, Labcd/ga;->FH(Labcd/Sa;)V

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Labcd/Sa;->J8()Labcd/na;

    move-result-object v11

    invoke-interface {v11}, Labcd/na;->u7()Labcd/qa;

    move-result-object v11

    invoke-interface {v11, v5, v9, v6, v3}, Labcd/qa;->j6(Labcd/Sa;IILabcd/Ya;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, " "

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v12, v0, Labcd/gd;->FH:Labcd/La;

    iget-object v12, v12, Labcd/La;->j3:Labcd/Ga;

    invoke-virtual {v12, v2}, Labcd/Ga;->j6(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "("

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v12, 0x0

    :goto_d4
    array-length v13, v4

    if-ge v12, v13, :cond_143

    if-eqz v12, :cond_ea

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :cond_ea
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Labcd/Sa;->J8()Labcd/na;

    move-result-object v2

    invoke-interface {v2}, Labcd/na;->gn()Labcd/ia;

    move-result-object v2

    aget v14, p7, v12

    invoke-interface {v2, v14}, Labcd/ia;->j6(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Labcd/Sa;->J8()Labcd/na;

    move-result-object v2

    invoke-interface {v2}, Labcd/na;->u7()Labcd/qa;

    move-result-object v2

    aget-object v14, v4, v12

    invoke-interface {v2, v5, v9, v6, v14}, Labcd/qa;->j6(Labcd/Sa;IILabcd/Ya;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v0, Labcd/gd;->FH:Labcd/La;

    iget-object v2, v2, Labcd/La;->j3:Labcd/Ga;

    aget v14, p9, v12

    invoke-virtual {v2, v14}, Labcd/Ga;->j6(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    add-int/lit8 v12, v12, 0x1

    goto :goto_d4

    :cond_143
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static/range {p4 .. p4}, Labcd/Ma;->j6(I)Z

    move-result v1

    if-eqz v1, :cond_16d

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ";\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_16b
    move-object v11, v1

    goto :goto_1b5

    :cond_16d
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {p6 .. p6}, Labcd/Ya;->dx()I

    move-result v2

    if-ne v2, v7, :cond_18f

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "{\n}"

    goto :goto_1ad

    :cond_18f
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "{\nreturn "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Labcd/Sa;->J8()Labcd/na;

    move-result-object v1

    invoke-interface {v1}, Labcd/na;->gn()Labcd/ia;

    move-result-object v1

    invoke-interface {v1, v3}, Labcd/ia;->j6(Labcd/Ya;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ";\n}"

    :goto_1ad
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_16b

    :goto_1b5
    new-instance v1, Labcd/Yb;

    iget-object v2, v0, Labcd/gd;->FH:Labcd/La;

    iget-object v2, v2, Labcd/La;->a8:Labcd/Ba;

    invoke-direct {v1, v2}, Labcd/Yb;-><init>(Labcd/Ba;)V

    invoke-virtual {v1, v3}, Labcd/Yb;->DW(Labcd/Aa;)V

    :goto_1c1
    array-length v2, v4

    if-ge v10, v2, :cond_1cc

    aget-object v2, v4, v10

    invoke-virtual {v1, v2}, Labcd/Yb;->DW(Labcd/Aa;)V

    add-int/lit8 v10, v10, 0x1

    goto :goto_1c1

    :cond_1cc
    invoke-virtual {v5}, Labcd/Sa;->J8()Labcd/na;

    move-result-object v2

    invoke-interface {v2}, Labcd/na;->u7()Labcd/qa;

    move-result-object v2

    invoke-interface {v2, v5, v9, v6, v1}, Labcd/qa;->j6(Labcd/Sa;IILabcd/Yb;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5}, Labcd/Sa;->tp()I

    move-result v12

    invoke-virtual {v5}, Labcd/Sa;->u7()I

    move-result v13

    iget-object v1, v0, Labcd/gd;->FH:Labcd/La;

    iget-object v1, v1, Labcd/La;->U2:Labcd/Va;

    invoke-virtual {v1, v5}, Labcd/Va;->j6(Labcd/Sa;)V

    iget-object v1, v0, Labcd/gd;->FH:Labcd/La;

    iget-object v1, v1, Labcd/La;->gn:Labcd/hb;

    invoke-interface {v1}, Labcd/hb;->aM()V

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_228

    iget-object v1, v0, Labcd/gd;->FH:Labcd/La;

    iget-object v1, v1, Labcd/La;->gn:Labcd/hb;

    move-object/from16 v2, p1

    move/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p2

    move/from16 v6, p3

    move-object v7, v11

    invoke-interface/range {v1 .. v7}, Labcd/hb;->j6(Labcd/Da;IIIILjava/lang/String;)V

    iget-object v1, v0, Labcd/gd;->FH:Labcd/La;

    iget-object v1, v1, Labcd/La;->gn:Labcd/hb;

    invoke-direct {p0, v11}, Labcd/gd;->j6(Ljava/lang/String;)I

    move-result v2

    add-int/2addr v2, v9

    invoke-interface {v1, v8, v9, v2}, Labcd/hb;->j6(Labcd/Da;II)V

    iget-object v1, v0, Labcd/gd;->FH:Labcd/La;

    iget-object v1, v1, Labcd/La;->gn:Labcd/hb;

    move-object/from16 p2, v1

    move-object/from16 p3, p1

    move/from16 p4, v12

    move/from16 p5, v13

    move/from16 p6, v12

    move/from16 p7, v13

    move-object/from16 p8, v10

    invoke-interface/range {p2 .. p8}, Labcd/hb;->j6(Labcd/Da;IIIILjava/lang/String;)V

    goto :goto_246

    :cond_228
    iget-object v1, v0, Labcd/gd;->FH:Labcd/La;

    iget-object v1, v1, Labcd/La;->gn:Labcd/hb;

    move-object/from16 v2, p1

    move/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p2

    move/from16 v6, p3

    move-object v7, v11

    invoke-interface/range {v1 .. v7}, Labcd/hb;->j6(Labcd/Da;IIIILjava/lang/String;)V

    iget-object v1, v0, Labcd/gd;->FH:Labcd/La;

    iget-object v1, v1, Labcd/La;->gn:Labcd/hb;

    invoke-direct {p0, v11}, Labcd/gd;->j6(Ljava/lang/String;)I

    move-result v2

    add-int/2addr v2, v9

    invoke-interface {v1, v8, v9, v2}, Labcd/hb;->j6(Labcd/Da;II)V

    :goto_246
    iget-object v1, v0, Labcd/gd;->FH:Labcd/La;

    iget-object v1, v1, Labcd/La;->gn:Labcd/hb;

    invoke-interface {v1}, Labcd/hb;->j3()V

    return-void
.end method

.method public j6(Labcd/Da;IIILabcd/Ya;)V
    .registers 23

    move-object/from16 v10, p0

    move-object/from16 v9, p1

    move/from16 v11, p2

    move/from16 v12, p3

    move/from16 v13, p4

    move-object/from16 v14, p5

    :try_start_c
    sget-boolean v0, Labcd/gd;->j6:Z

    if-eqz v0, :cond_2d

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, v11}, Ljava/lang/Integer;-><init>(I)V

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, v12}, Ljava/lang/Integer;-><init>(I)V

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, v13}, Ljava/lang/Integer;-><init>(I)V

    const-wide v1, 0x1d077d17c753cd8L

    move-object/from16 v3, p0

    move-object/from16 v4, p1

    move-object/from16 v8, p5

    invoke-static/range {v1 .. v8}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_2d
    iget-object v0, v10, Labcd/gd;->FH:Labcd/La;

    iget-object v0, v0, Labcd/La;->U2:Labcd/Va;

    iget-object v1, v10, Labcd/gd;->gn:Labcd/yd;

    invoke-virtual {v0, v9, v1}, Labcd/Va;->DW(Labcd/Da;Labcd/na;)Labcd/Sa;

    move-result-object v0

    invoke-virtual {v0}, Labcd/Sa;->J8()Labcd/na;

    move-result-object v1

    invoke-interface {v1}, Labcd/na;->Hw()Labcd/ga;

    move-result-object v1

    invoke-interface {v1, v0}, Labcd/ga;->FH(Labcd/Sa;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Labcd/Sa;->J8()Labcd/na;

    move-result-object v2

    invoke-interface {v2}, Labcd/na;->u7()Labcd/qa;

    move-result-object v2

    invoke-interface {v2, v0, v11, v12, v14}, Labcd/qa;->j6(Labcd/Sa;IILabcd/Ya;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, -0x1

    if-eq v13, v2, :cond_92

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v10, Labcd/gd;->FH:Labcd/La;

    iget-object v1, v1, Labcd/La;->j3:Labcd/Ga;

    invoke-virtual {v1, v13}, Labcd/Ga;->j6(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " = "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Labcd/Sa;->J8()Labcd/na;

    move-result-object v1

    invoke-interface {v1}, Labcd/na;->gn()Labcd/ia;

    move-result-object v1

    invoke-interface {v1, v14}, Labcd/ia;->j6(Labcd/Ya;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ";\n"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_92
    move-object v7, v1

    new-instance v1, Labcd/Yb;

    iget-object v2, v10, Labcd/gd;->FH:Labcd/La;

    iget-object v2, v2, Labcd/La;->a8:Labcd/Ba;

    invoke-direct {v1, v2}, Labcd/Yb;-><init>(Labcd/Ba;)V

    invoke-virtual {v1, v14}, Labcd/Yb;->DW(Labcd/Aa;)V

    invoke-virtual {v0}, Labcd/Sa;->J8()Labcd/na;

    move-result-object v2

    invoke-interface {v2}, Labcd/na;->u7()Labcd/qa;

    move-result-object v2

    invoke-interface {v2, v0, v11, v12, v1}, Labcd/qa;->j6(Labcd/Sa;IILabcd/Yb;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0}, Labcd/Sa;->tp()I

    move-result v15

    invoke-virtual {v0}, Labcd/Sa;->u7()I

    move-result v16

    iget-object v1, v10, Labcd/gd;->FH:Labcd/La;

    iget-object v1, v1, Labcd/La;->U2:Labcd/Va;

    invoke-virtual {v1, v0}, Labcd/Va;->j6(Labcd/Sa;)V

    iget-object v0, v10, Labcd/gd;->FH:Labcd/La;

    iget-object v0, v0, Labcd/La;->gn:Labcd/hb;

    invoke-interface {v0}, Labcd/hb;->aM()V

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_f2

    iget-object v0, v10, Labcd/gd;->FH:Labcd/La;

    iget-object v1, v0, Labcd/La;->gn:Labcd/hb;

    move-object/from16 v2, p1

    move/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p2

    move/from16 v6, p3

    invoke-interface/range {v1 .. v7}, Labcd/hb;->j6(Labcd/Da;IIIILjava/lang/String;)V

    iget-object v0, v10, Labcd/gd;->FH:Labcd/La;

    iget-object v0, v0, Labcd/La;->gn:Labcd/hb;

    add-int/lit8 v1, v11, 0x2

    invoke-interface {v0, v9, v11, v1}, Labcd/hb;->j6(Labcd/Da;II)V

    iget-object v0, v10, Labcd/gd;->FH:Labcd/La;

    iget-object v1, v0, Labcd/La;->gn:Labcd/hb;

    move-object/from16 v2, p1

    move v3, v15

    move/from16 v4, v16

    move v5, v15

    move/from16 v6, v16

    move-object v7, v8

    invoke-interface/range {v1 .. v7}, Labcd/hb;->j6(Labcd/Da;IIIILjava/lang/String;)V

    goto :goto_10c

    :cond_f2
    iget-object v0, v10, Labcd/gd;->FH:Labcd/La;

    iget-object v1, v0, Labcd/La;->gn:Labcd/hb;

    move-object/from16 v2, p1

    move/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p2

    move/from16 v6, p3

    invoke-interface/range {v1 .. v7}, Labcd/hb;->j6(Labcd/Da;IIIILjava/lang/String;)V

    iget-object v0, v10, Labcd/gd;->FH:Labcd/La;

    iget-object v0, v0, Labcd/La;->gn:Labcd/hb;

    add-int/lit8 v1, v11, 0x2

    invoke-interface {v0, v9, v11, v1}, Labcd/hb;->j6(Labcd/Da;II)V

    :goto_10c
    iget-object v0, v10, Labcd/gd;->FH:Labcd/La;

    iget-object v0, v0, Labcd/La;->gn:Labcd/hb;

    invoke-interface {v0}, Labcd/hb;->j3()V
    :try_end_113
    .catchall {:try_start_c .. :try_end_113} :catchall_114

    return-void

    :catchall_114
    move-exception v0

    sget-boolean v1, Labcd/gd;->DW:Z

    if-eqz v1, :cond_137

    const-wide v2, 0x1d077d17c753cd8L

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, v11}, Ljava/lang/Integer;-><init>(I)V

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, v12}, Ljava/lang/Integer;-><init>(I)V

    new-instance v8, Ljava/lang/Integer;

    invoke-direct {v8, v13}, Ljava/lang/Integer;-><init>(I)V

    move-object v1, v0

    move-object/from16 v4, p0

    move-object/from16 v5, p1

    move-object/from16 v9, p5

    invoke-static/range {v1 .. v9}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_137
    throw v0
.end method

.method public j6(Labcd/Da;IILabcd/Ia;)V
    .registers 22

    move-object/from16 v9, p0

    move-object/from16 v8, p1

    move/from16 v10, p2

    move/from16 v11, p3

    move-object/from16 v12, p4

    :try_start_a
    sget-boolean v0, Labcd/gd;->j6:Z

    if-eqz v0, :cond_26

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, v10}, Ljava/lang/Integer;-><init>(I)V

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, v11}, Ljava/lang/Integer;-><init>(I)V

    const-wide v1, 0x6cb85cb2092a593L

    move-object/from16 v3, p0

    move-object/from16 v4, p1

    move-object/from16 v7, p4

    invoke-static/range {v1 .. v7}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_26
    iget-object v0, v9, Labcd/gd;->FH:Labcd/La;

    iget-object v0, v0, Labcd/La;->gn:Labcd/hb;

    invoke-interface {v0}, Labcd/hb;->aM()V

    iget-object v0, v9, Labcd/gd;->Hw:Labcd/Va;

    iget-object v1, v9, Labcd/gd;->gn:Labcd/yd;

    invoke-virtual {v0, v8, v1}, Labcd/Va;->DW(Labcd/Da;Labcd/na;)Labcd/Sa;

    move-result-object v13

    invoke-virtual {v13, v10, v11, v10, v11}, Labcd/Sa;->v5(IIII)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_46

    iget-object v0, v9, Labcd/gd;->FH:Labcd/La;

    iget-object v0, v0, Labcd/La;->gn:Labcd/hb;

    const-string v1, "Select a place inside a class."

    invoke-interface {v0, v1}, Labcd/hb;->v5(Ljava/lang/String;)V

    return-void

    :cond_46
    const/4 v14, 0x0

    invoke-virtual {v13, v0, v14}, Labcd/Sa;->Zo(II)I

    move-result v1

    invoke-virtual {v13, v1}, Labcd/Sa;->QX(I)I

    move-result v1

    invoke-virtual {v13, v0, v14}, Labcd/Sa;->Zo(II)I

    move-result v2

    invoke-virtual {v13, v2}, Labcd/Sa;->Ws(I)I

    move-result v2

    invoke-virtual {v13, v0}, Labcd/Sa;->we(I)I

    move-result v3

    move v15, v1

    move/from16 v16, v2

    const/4 v1, 0x0

    :goto_5f
    if-ge v1, v3, :cond_83

    invoke-virtual {v13, v0, v1}, Labcd/Sa;->Zo(II)I

    move-result v2

    invoke-virtual {v13, v2}, Labcd/Sa;->QX(I)I

    move-result v4

    if-lt v4, v10, :cond_77

    invoke-virtual {v13, v2}, Labcd/Sa;->QX(I)I

    move-result v4

    if-ne v4, v10, :cond_80

    invoke-virtual {v13, v2}, Labcd/Sa;->Ws(I)I

    move-result v4

    if-ge v4, v11, :cond_80

    :cond_77
    invoke-virtual {v13, v2}, Labcd/Sa;->QX(I)I

    move-result v4

    invoke-virtual {v13, v2}, Labcd/Sa;->Ws(I)I

    move-result v16
    :try_end_7f
    .catchall {:try_start_a .. :try_end_7f} :catchall_1c2

    move v15, v4

    :cond_80
    add-int/lit8 v1, v1, 0x1

    goto :goto_5f

    :cond_83
    :try_start_83
    iget-object v1, v9, Labcd/gd;->v5:Labcd/Ba;

    invoke-virtual {v13}, Labcd/Sa;->VH()Labcd/Da;

    move-result-object v2

    iget-object v3, v9, Labcd/gd;->gn:Labcd/yd;

    invoke-virtual {v13, v0}, Labcd/Sa;->er(I)I

    move-result v0

    invoke-virtual {v13, v0}, Labcd/Sa;->J8(I)I

    move-result v0

    invoke-virtual {v1, v2, v3, v0}, Labcd/Ba;->j6(Labcd/Da;Labcd/na;I)Labcd/ua;

    move-result-object v7
    :try_end_97
    .catch Labcd/jc; {:try_start_83 .. :try_end_97} :catch_1c4
    .catchall {:try_start_83 .. :try_end_97} :catchall_1c2

    :try_start_97
    invoke-virtual {v13}, Labcd/Sa;->J8()Labcd/na;

    move-result-object v0

    invoke-interface {v0}, Labcd/na;->Hw()Labcd/ga;

    move-result-object v0

    invoke-interface {v0, v13}, Labcd/ga;->FH(Labcd/Sa;)V

    new-instance v6, Labcd/Yb;

    iget-object v0, v9, Labcd/gd;->v5:Labcd/Ba;

    invoke-direct {v6, v0}, Labcd/Yb;-><init>(Labcd/Ba;)V

    iget-object v0, v9, Labcd/gd;->FH:Labcd/La;

    invoke-virtual {v0}, Labcd/La;->Hw()Labcd/va;

    move-result-object v0

    iget-boolean v0, v0, Labcd/va;->Hw:Z
    :try_end_b1
    .catchall {:try_start_97 .. :try_end_b1} :catchall_1c2

    const-string v1, "\n"

    if-eqz v0, :cond_fa

    :try_start_b5
    invoke-virtual/range {p4 .. p4}, Labcd/Aa;->DW()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_fa

    new-instance v2, Ljava/util/StringTokenizer;

    invoke-direct {v2, v0, v1}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_c4
    .catchall {:try_start_b5 .. :try_end_c4} :catchall_1c2

    const-string v0, "/**\n"

    :goto_c6
    :try_start_c6
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->hasMoreElements()Z

    move-result v3

    if-eqz v3, :cond_e8

    invoke-virtual {v2}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " *"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_c6

    :cond_e8
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "*/"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_f9
    .catchall {:try_start_c6 .. :try_end_f9} :catchall_1c2

    goto :goto_fc

    :cond_fa
    const-string v0, ""

    :goto_fc
    :try_start_fc
    iget-object v2, v9, Labcd/gd;->FH:Labcd/La;

    invoke-virtual {v2}, Labcd/La;->Hw()Labcd/va;

    move-result-object v2

    iget-boolean v2, v2, Labcd/va;->v5:Z

    if-eqz v2, :cond_118

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_118

    iget-object v0, v9, Labcd/gd;->FH:Labcd/La;

    invoke-virtual {v0}, Labcd/La;->Hw()Labcd/va;

    move-result-object v0

    iget-boolean v0, v0, Labcd/va;->Zo:Z

    invoke-direct {v9, v12, v0}, Labcd/gd;->j6(Labcd/Ia;Z)Ljava/lang/String;

    move-result-object v0

    :cond_118
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2
    :try_end_11c
    .catchall {:try_start_fc .. :try_end_11c} :catchall_1c2

    const-string v3, "\n\n"

    if-lez v2, :cond_132

    :try_start_120
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :cond_132
    invoke-virtual {v7}, Labcd/ua;->Gj()Labcd/Ya;

    move-result-object v5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v1, p0

    move-object v2, v13

    move v3, v15

    move/from16 v4, v16

    move-object v14, v6

    move-object/from16 v6, p4

    invoke-direct/range {v1 .. v7}, Labcd/gd;->j6(Labcd/Sa;IILabcd/Ya;Labcd/Ia;Labcd/ua;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7
    :try_end_152
    .catchall {:try_start_120 .. :try_end_152} :catchall_1c2

    :try_start_152
    invoke-virtual/range {p4 .. p4}, Labcd/Ia;->XG()Z

    move-result v0

    if-nez v0, :cond_15f

    invoke-virtual/range {p4 .. p4}, Labcd/Ia;->ca()Labcd/Ya;

    move-result-object v0

    invoke-virtual {v14, v0}, Labcd/Yb;->DW(Labcd/Aa;)V

    :cond_15f
    invoke-virtual/range {p4 .. p4}, Labcd/Ia;->vJ()I

    move-result v0

    const/4 v1, 0x0

    :goto_164
    if-ge v1, v0, :cond_171

    invoke-virtual {v12, v1}, Labcd/Ia;->gn(I)Labcd/Ya;

    move-result-object v2

    invoke-virtual {v14, v2}, Labcd/Yb;->DW(Labcd/Aa;)V
    :try_end_16d
    .catch Labcd/jc; {:try_start_152 .. :try_end_16d} :catch_170
    .catchall {:try_start_152 .. :try_end_16d} :catchall_1c2

    add-int/lit8 v1, v1, 0x1

    goto :goto_164

    :catch_170
    move-exception v0

    :cond_171
    :try_start_171
    iget-object v0, v9, Labcd/gd;->FH:Labcd/La;

    iget-object v1, v0, Labcd/La;->gn:Labcd/hb;

    move-object/from16 v2, p1

    move v3, v15

    move/from16 v4, v16

    move v5, v15

    move/from16 v6, v16

    move-object/from16 v16, v7

    invoke-interface/range {v1 .. v7}, Labcd/hb;->j6(Labcd/Da;IIIILjava/lang/String;)V

    iget-object v0, v9, Labcd/gd;->FH:Labcd/La;

    iget-object v0, v0, Labcd/La;->gn:Labcd/hb;

    move-object/from16 v1, v16

    invoke-direct {v9, v1}, Labcd/gd;->j6(Ljava/lang/String;)I

    move-result v1

    add-int/2addr v1, v15

    invoke-interface {v0, v8, v15, v1}, Labcd/hb;->j6(Labcd/Da;II)V

    invoke-virtual {v13}, Labcd/Sa;->J8()Labcd/na;

    move-result-object v0

    invoke-interface {v0}, Labcd/na;->u7()Labcd/qa;

    move-result-object v0

    invoke-interface {v0, v13, v10, v11, v14}, Labcd/qa;->j6(Labcd/Sa;IILabcd/Yb;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1b5

    invoke-virtual {v13}, Labcd/Sa;->tp()I

    move-result v5

    invoke-virtual {v13}, Labcd/Sa;->u7()I

    move-result v6

    iget-object v0, v9, Labcd/gd;->FH:Labcd/La;

    iget-object v1, v0, Labcd/La;->gn:Labcd/hb;

    move-object/from16 v2, p1

    move v3, v5

    move v4, v6

    invoke-interface/range {v1 .. v7}, Labcd/hb;->j6(Labcd/Da;IIIILjava/lang/String;)V

    :cond_1b5
    iget-object v0, v9, Labcd/gd;->Hw:Labcd/Va;

    invoke-virtual {v0, v13}, Labcd/Va;->j6(Labcd/Sa;)V

    iget-object v0, v9, Labcd/gd;->FH:Labcd/La;

    iget-object v0, v0, Labcd/La;->gn:Labcd/hb;

    invoke-interface {v0}, Labcd/hb;->EQ()V

    return-void

    :catchall_1c2
    move-exception v0

    goto :goto_1cf

    :catch_1c4
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_1cf
    .catchall {:try_start_171 .. :try_end_1cf} :catchall_1c2

    :goto_1cf
    sget-boolean v1, Labcd/gd;->DW:Z

    if-eqz v1, :cond_1ec

    const-wide v2, 0x6cb85cb2092a593L

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, v10}, Ljava/lang/Integer;-><init>(I)V

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, v11}, Ljava/lang/Integer;-><init>(I)V

    move-object v1, v0

    move-object/from16 v4, p0

    move-object/from16 v5, p1

    move-object/from16 v8, p4

    invoke-static/range {v1 .. v8}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1ec
    goto :goto_1ee

    :goto_1ed
    throw v0

    :goto_1ee
    goto :goto_1ed
.end method
