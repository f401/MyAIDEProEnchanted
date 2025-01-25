.class public Labcd/vc;
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
.field private final FH:Labcd/na;
    .annotation runtime Labcd/ru;
        field = 0x21f0f52f187e1b38L
    .end annotation
.end field

.field private final Hw:Labcd/Ga;
    .annotation runtime Labcd/ru;
        field = 0x5b9d734e8b8c53cL
    .end annotation
.end field

.field private final VH:Labcd/wc;
    .annotation runtime Labcd/ru;
        field = 0x413bec1ff6b9a41L
    .end annotation
.end field

.field private final Zo:Labcd/uc;
    .annotation runtime Labcd/ru;
        field = -0x2bbbedb8cf682c80L
    .end annotation
.end field

.field private gn:Z
    .annotation runtime Labcd/ru;
        field = 0x2b30076c120870c7L
    .end annotation
.end field

.field private u7:Labcd/Da;
    .annotation runtime Labcd/ru;
        field = -0x23db6c404f8a2820L
    .end annotation
.end field

.field private final v5:Labcd/Ca;
    .annotation runtime Labcd/ru;
        field = 0xe9c99ac946d6c10L
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const-class v0, Labcd/vc;

    const-wide v1, -0x15233f815e080a81L  # -5.7693127108617505E206

    invoke-static {v0, v1, v2, v1, v2}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method public constructor <init>(Labcd/Ga;Labcd/Ca;Labcd/na;Labcd/uc;)V
    .registers 14

    :try_start_0
    sget-boolean v0, Labcd/vc;->j6:Z

    if-eqz v0, :cond_11

    const-wide v1, 0x1e235b8a21a6fdf9L

    const/4 v3, 0x0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    invoke-static/range {v1 .. v7}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Labcd/vc;->Hw:Labcd/Ga;

    iput-object p2, p0, Labcd/vc;->v5:Labcd/Ca;

    iput-object p4, p0, Labcd/vc;->Zo:Labcd/uc;

    iput-object p3, p0, Labcd/vc;->FH:Labcd/na;

    new-instance v0, Labcd/wc;

    invoke-direct {v0}, Labcd/wc;-><init>()V

    iput-object v0, p0, Labcd/vc;->VH:Labcd/wc;
    :try_end_23
    .catchall {:try_start_0 .. :try_end_23} :catchall_24

    return-void

    :catchall_24
    move-exception v0

    sget-boolean v1, Labcd/vc;->DW:Z

    if-eqz v1, :cond_37

    const-wide v2, 0x1e235b8a21a6fdf9L

    const/4 v4, 0x0

    move-object v1, v0

    move-object v5, p1

    move-object v6, p2

    move-object v7, p3

    move-object v8, p4

    invoke-static/range {v1 .. v8}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_37
    throw v0
.end method

.method private j6(III)V
    .registers 22
    .annotation runtime Labcd/su;
        method = 0x1476aee8b37470c8L
    .end annotation

    move-object/from16 v8, p0

    move/from16 v7, p1

    move/from16 v15, p2

    move/from16 v14, p3

    :try_start_8
    sget-boolean v0, Labcd/vc;->j6:Z

    if-eqz v0, :cond_25

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, v7}, Ljava/lang/Integer;-><init>(I)V

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, v15}, Ljava/lang/Integer;-><init>(I)V

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, v14}, Ljava/lang/Integer;-><init>(I)V

    const-wide v1, -0x78d7e37b347a605L  # -1.564340339089594E272

    move-object/from16 v3, p0

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_25
    iget-boolean v0, v8, Labcd/vc;->gn:Z

    if-eqz v0, :cond_88

    iget-object v10, v8, Labcd/vc;->u7:Labcd/Da;

    if-eqz v10, :cond_88

    const/4 v0, -0x1

    if-ne v14, v0, :cond_4b

    iget-object v9, v8, Labcd/vc;->v5:Labcd/Ca;

    iget-object v11, v8, Labcd/vc;->FH:Labcd/na;

    add-int/lit8 v0, v15, 0x1

    const-string v16, "Unexpected end of file"
    :try_end_38
    .catchall {:try_start_8 .. :try_end_38} :catchall_47

    const/16 v17, 0x0

    move/from16 v12, p1

    move/from16 v13, p2

    move v1, v14

    move/from16 v14, p1

    move v2, v15

    move v15, v0

    :try_start_43
    invoke-virtual/range {v9 .. v17}, Labcd/Ca;->DW(Labcd/Da;Labcd/na;IIIILjava/lang/String;I)V

    goto :goto_88

    :catchall_47
    move-exception v0

    move v1, v14

    move v2, v15

    goto :goto_89

    :cond_4b
    move v1, v14

    move v2, v15

    iget-object v9, v8, Labcd/vc;->v5:Labcd/Ca;

    iget-object v11, v8, Labcd/vc;->FH:Labcd/na;

    add-int/lit8 v0, v2, 0x1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unexpected "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    int-to-char v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    const/16 v17, 0x0

    move/from16 v12, p1

    move/from16 v13, p2

    move/from16 v14, p1

    move v15, v0

    invoke-virtual/range {v9 .. v17}, Labcd/Ca;->DW(Labcd/Da;Labcd/na;IIIILjava/lang/String;I)V

    iget-object v9, v8, Labcd/vc;->v5:Labcd/Ca;

    iget-object v10, v8, Labcd/vc;->u7:Labcd/Da;

    iget-object v11, v8, Labcd/vc;->FH:Labcd/na;

    const-string v16, ""

    const-string v17, "Delete"

    move/from16 v12, p1

    move/from16 v13, p2

    move/from16 v14, p1

    move v15, v0

    invoke-virtual/range {v9 .. v17}, Labcd/Ca;->j6(Labcd/Da;Labcd/na;IIIILjava/lang/String;Ljava/lang/String;)V
    :try_end_85
    .catchall {:try_start_43 .. :try_end_85} :catchall_86

    goto :goto_88

    :catchall_86
    move-exception v0

    goto :goto_89

    :cond_88
    :goto_88
    return-void

    :goto_89
    sget-boolean v3, Labcd/vc;->DW:Z

    if-eqz v3, :cond_a8

    const-wide v3, -0x78d7e37b347a605L  # -1.564340339089594E272

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, v7}, Ljava/lang/Integer;-><init>(I)V

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, v2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, v1}, Ljava/lang/Integer;-><init>(I)V

    move-object v1, v0

    move-wide v2, v3

    move-object/from16 v4, p0

    invoke-static/range {v1 .. v7}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_a8
    throw v0
.end method


# virtual methods
.method public j6(Labcd/Da;Ljava/io/Reader;ZZLabcd/Wa;)V
    .registers 16

    :try_start_0
    sget-boolean v0, Labcd/vc;->j6:Z

    if-eqz v0, :cond_1a

    new-instance v6, Ljava/lang/Boolean;

    invoke-direct {v6, p3}, Ljava/lang/Boolean;-><init>(Z)V

    new-instance v7, Ljava/lang/Boolean;

    invoke-direct {v7, p4}, Ljava/lang/Boolean;-><init>(Z)V

    const-wide v1, 0x1749156f241de71L

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    move-object v8, p5

    invoke-static/range {v1 .. v8}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1a
    const/4 v7, 0x0

    const v8, 0x7fffffff

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    move-object v6, p5

    invoke-virtual/range {v1 .. v8}, Labcd/vc;->j6(Labcd/Da;Ljava/io/Reader;ZZLabcd/Wa;ZI)V
    :try_end_27
    .catchall {:try_start_0 .. :try_end_27} :catchall_28

    return-void

    :catchall_28
    move-exception v0

    sget-boolean v1, Labcd/vc;->DW:Z

    if-eqz v1, :cond_44

    const-wide v2, 0x1749156f241de71L

    new-instance v7, Ljava/lang/Boolean;

    invoke-direct {v7, p3}, Ljava/lang/Boolean;-><init>(Z)V

    new-instance v8, Ljava/lang/Boolean;

    invoke-direct {v8, p4}, Ljava/lang/Boolean;-><init>(Z)V

    move-object v1, v0

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    move-object v9, p5

    invoke-static/range {v1 .. v9}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_44
    throw v0
.end method

.method public j6(Labcd/Da;Ljava/io/Reader;ZZLabcd/Wa;ZI)V
    .registers 24

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move-object/from16 v12, p5

    move/from16 v5, p6

    move/from16 v13, p7

    sget-boolean v6, Labcd/vc;->j6:Z

    const/4 v14, 0x1

    const/4 v15, 0x0

    if-eqz v6, :cond_48

    const/4 v6, 0x7

    new-array v6, v6, [Ljava/lang/Object;

    aput-object v1, v6, v15

    aput-object v2, v6, v14

    new-instance v7, Ljava/lang/Boolean;

    invoke-direct {v7, v3}, Ljava/lang/Boolean;-><init>(Z)V

    const/4 v8, 0x2

    aput-object v7, v6, v8

    new-instance v7, Ljava/lang/Boolean;

    invoke-direct {v7, v4}, Ljava/lang/Boolean;-><init>(Z)V

    const/4 v8, 0x3

    aput-object v7, v6, v8

    const/4 v7, 0x4

    aput-object v12, v6, v7

    new-instance v7, Ljava/lang/Boolean;

    invoke-direct {v7, v5}, Ljava/lang/Boolean;-><init>(Z)V

    const/4 v8, 0x5

    aput-object v7, v6, v8

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, v13}, Ljava/lang/Integer;-><init>(I)V

    const/4 v8, 0x6

    aput-object v7, v6, v8

    const-wide v7, 0x3a63069fc140771L

    invoke-static {v7, v8, v0, v6}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;[Ljava/lang/Object;)V

    :cond_48
    iput-boolean v3, v0, Labcd/vc;->gn:Z

    iput-object v1, v0, Labcd/vc;->u7:Labcd/Da;

    iget-object v1, v0, Labcd/vc;->VH:Labcd/wc;

    invoke-virtual {v1, v2}, Labcd/wc;->j6(Ljava/io/Reader;)V

    iget-object v1, v0, Labcd/vc;->Zo:Labcd/uc;

    iget-object v2, v0, Labcd/vc;->VH:Labcd/wc;

    invoke-interface {v1, v2}, Labcd/uc;->j6(Ljava/io/Reader;)V

    iget-object v1, v0, Labcd/vc;->VH:Labcd/wc;

    if-eqz v5, :cond_5f

    invoke-virtual {v1}, Labcd/wc;->j6()V

    :cond_5f
    invoke-virtual/range {p5 .. p5}, Labcd/Wa;->j6()V

    iget-object v2, v0, Labcd/vc;->FH:Labcd/na;

    invoke-interface {v2}, Labcd/na;->v5()Labcd/pa;

    move-result-object v2

    :cond_68
    :goto_68
    iget-object v3, v0, Labcd/vc;->Zo:Labcd/uc;

    invoke-interface {v3}, Labcd/uc;->j6()I

    move-result v6

    iget-object v3, v0, Labcd/vc;->Zo:Labcd/uc;

    invoke-interface {v3}, Labcd/uc;->FH()I

    move-result v3

    invoke-virtual {v1, v3, v14}, Labcd/wc;->DW(IZ)I

    move-result v8

    invoke-virtual {v1, v3, v14}, Labcd/wc;->j6(IZ)I

    move-result v9

    if-eqz v6, :cond_e8

    if-eq v6, v14, :cond_de

    if-ge v6, v13, :cond_68

    invoke-interface {v2, v6}, Labcd/pa;->u7(I)Z

    move-result v5

    if-eqz v5, :cond_a1

    iget-object v5, v0, Labcd/vc;->Hw:Labcd/Ga;

    iget-object v7, v0, Labcd/vc;->Zo:Labcd/uc;

    invoke-interface {v7}, Labcd/uc;->getBuffer()[C

    move-result-object v7

    iget-object v10, v0, Labcd/vc;->Zo:Labcd/uc;

    invoke-interface {v10}, Labcd/uc;->Hw()I

    move-result v10

    iget-object v11, v0, Labcd/vc;->Zo:Labcd/uc;

    invoke-interface {v11}, Labcd/uc;->DW()I

    move-result v11

    invoke-virtual {v5, v7, v10, v11}, Labcd/Ga;->j6([CII)I

    move-result v5

    goto :goto_bf

    :cond_a1
    invoke-interface {v2, v6}, Labcd/pa;->Zo(I)Z

    move-result v5

    if-eqz v5, :cond_c1

    if-eqz v4, :cond_c1

    iget-object v5, v0, Labcd/vc;->Zo:Labcd/uc;

    invoke-interface {v5}, Labcd/uc;->getBuffer()[C

    move-result-object v5

    iget-object v7, v0, Labcd/vc;->Zo:Labcd/uc;

    invoke-interface {v7}, Labcd/uc;->Hw()I

    move-result v7

    iget-object v10, v0, Labcd/vc;->Zo:Labcd/uc;

    invoke-interface {v10}, Labcd/uc;->DW()I

    move-result v10

    invoke-virtual {v12, v5, v7, v10}, Labcd/Wa;->j6([CII)I

    move-result v5

    :goto_bf
    move v7, v5

    goto :goto_c2

    :cond_c1
    const/4 v7, 0x0

    :goto_c2
    iget-object v5, v0, Labcd/vc;->Zo:Labcd/uc;

    invoke-interface {v5}, Labcd/uc;->DW()I

    move-result v5

    add-int/2addr v5, v3

    invoke-virtual {v1, v5, v15}, Labcd/wc;->DW(IZ)I

    move-result v10

    iget-object v5, v0, Labcd/vc;->Zo:Labcd/uc;

    invoke-interface {v5}, Labcd/uc;->DW()I

    move-result v5

    add-int/2addr v3, v5

    invoke-virtual {v1, v3, v15}, Labcd/wc;->j6(IZ)I

    move-result v11

    move-object/from16 v5, p5

    invoke-virtual/range {v5 .. v11}, Labcd/Wa;->j6(IIIIII)V

    goto :goto_68

    :cond_de
    iget-object v3, v0, Labcd/vc;->Zo:Labcd/uc;

    invoke-interface {v3, v15}, Labcd/uc;->j6(I)C

    move-result v3

    invoke-direct {v0, v8, v9, v3}, Labcd/vc;->j6(III)V

    goto :goto_68

    :cond_e8
    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object/from16 p1, p5

    move/from16 p2, v2

    move/from16 p3, v3

    move/from16 p4, v8

    move/from16 p5, v9

    move/from16 p6, v8

    move/from16 p7, v9

    invoke-virtual/range {p1 .. p7}, Labcd/Wa;->j6(IIIIII)V

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Labcd/wc;->j6(Ljava/io/Reader;)V

    iput-object v2, v0, Labcd/vc;->u7:Labcd/Da;

    return-void
.end method
