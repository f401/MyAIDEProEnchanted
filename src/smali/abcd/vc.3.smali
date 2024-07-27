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
    .registers 4

    const-wide v2, -0x15233f815e080a81L    # -5.7693127108617505E206

    const-class v0, Labcd/vc;

    invoke-static {v0, v2, v3, v2, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method public constructor <init>(Labcd/Ga;Labcd/Ca;Labcd/na;Labcd/uc;)V
    .registers 15

    const-wide v8, 0x1e235b8a21a6fdf9L

    const/4 v7, 0x0

    :try_start_0
    sget-boolean v0, Labcd/vc;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x1e235b8a21a6fdf9L

    const/4 v2, 0x0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-static/range {v0 .. v6}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Labcd/vc;->Hw:Labcd/Ga;

    iput-object p2, p0, Labcd/vc;->v5:Labcd/Ca;

    iput-object p4, p0, Labcd/vc;->Zo:Labcd/uc;

    iput-object p3, p0, Labcd/vc;->FH:Labcd/na;

    new-instance v0, Labcd/wc;

    invoke-direct {v0}, Labcd/wc;-><init>()V

    iput-object v0, p0, Labcd/vc;->VH:Labcd/wc;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v1

    sget-boolean v0, Labcd/vc;->DW:Z

    if-eqz v0, :cond_1

    move-wide v2, v8

    move-object v4, v7

    move-object v5, p1

    move-object v6, p2

    move-object v7, p3

    move-object v8, p4

    invoke-static/range {v1 .. v8}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v1
.end method

.method private j6(III)V
    .registers 16
    .annotation runtime Labcd/su;
        method = 0x1476aee8b37470c8L
    .end annotation

    const-wide v10, -0x78d7e37b347a605L    # -1.564340339089594E272

    :try_start_0
    sget-boolean v0, Labcd/vc;->j6:Z

    if-eqz v0, :cond_0

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, p2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p3}, Ljava/lang/Integer;-><init>(I)V

    const-wide v0, -0x78d7e37b347a605L    # -1.564340339089594E272

    move-object v2, p0

    invoke-static/range {v0 .. v5}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    iget-boolean v0, p0, Labcd/vc;->gn:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Labcd/vc;->u7:Labcd/Da;

    if-eqz v0, :cond_1

    const/4 v0, -0x1

    if-ne p3, v0, :cond_2

    iget-object v0, p0, Labcd/vc;->v5:Labcd/Ca;

    iget-object v1, p0, Labcd/vc;->u7:Labcd/Da;

    iget-object v2, p0, Labcd/vc;->FH:Labcd/na;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    add-int/lit8 v6, p2, 0x1

    :try_start_1
    const-string v7, "Unexpected end of file"

    const/4 v8, 0x0

    move v3, p1

    move v4, p2

    move v5, p1

    invoke-virtual/range {v0 .. v8}, Labcd/Ca;->DW(Labcd/Da;Labcd/na;IIIILjava/lang/String;I)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v0, p0, Labcd/vc;->v5:Labcd/Ca;

    iget-object v1, p0, Labcd/vc;->u7:Labcd/Da;

    iget-object v2, p0, Labcd/vc;->FH:Labcd/na;

    add-int/lit8 v6, p2, 0x1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unexpected "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    int-to-char v4, p3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    move v3, p1

    move v4, p2

    move v5, p1

    invoke-virtual/range {v0 .. v8}, Labcd/Ca;->DW(Labcd/Da;Labcd/na;IIIILjava/lang/String;I)V

    iget-object v0, p0, Labcd/vc;->v5:Labcd/Ca;

    iget-object v1, p0, Labcd/vc;->u7:Labcd/Da;

    iget-object v2, p0, Labcd/vc;->FH:Labcd/na;

    const-string v7, ""

    const-string v8, "Delete"

    move v3, p1

    move v4, p2

    move v5, p1

    invoke-virtual/range {v0 .. v8}, Labcd/Ca;->j6(Labcd/Da;Labcd/na;IIIILjava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    :goto_1
    sget-boolean v0, Labcd/vc;->DW:Z

    if-eqz v0, :cond_3

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, p3}, Ljava/lang/Integer;-><init>(I)V

    move-wide v2, v10

    move-object v4, p0

    invoke-static/range {v1 .. v7}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_3
    throw v1

    :catch_1
    move-exception v1

    goto :goto_1
.end method


# virtual methods
.method public j6(Labcd/Da;Ljava/io/Reader;ZZLabcd/Wa;)V
    .registers 16

    :try_start_0
    sget-boolean v0, Labcd/vc;->j6:Z

    if-eqz v0, :cond_0

    new-instance v5, Ljava/lang/Boolean;

    invoke-direct {v5, p3}, Ljava/lang/Boolean;-><init>(Z)V

    new-instance v6, Ljava/lang/Boolean;

    invoke-direct {v6, p4}, Ljava/lang/Boolean;-><init>(Z)V

    const-wide v0, 0x1749156f241de71L

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v7, p5

    invoke-static/range {v0 .. v7}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    const/4 v6, 0x0

    const v7, 0x7fffffff

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v7}, Labcd/vc;->j6(Labcd/Da;Ljava/io/Reader;ZZLabcd/Wa;ZI)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v1

    sget-boolean v0, Labcd/vc;->DW:Z

    if-eqz v0, :cond_1

    const-wide v2, 0x1749156f241de71L

    new-instance v7, Ljava/lang/Boolean;

    invoke-direct {v7, p3}, Ljava/lang/Boolean;-><init>(Z)V

    new-instance v8, Ljava/lang/Boolean;

    invoke-direct {v8, p4}, Ljava/lang/Boolean;-><init>(Z)V

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    move-object v9, p5

    invoke-static/range {v1 .. v9}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v1
.end method

.method public j6(Labcd/Da;Ljava/io/Reader;ZZLabcd/Wa;ZI)V
    .registers 20

    sget-boolean v2, Labcd/vc;->j6:Z

    if-eqz v2, :cond_0

    const-wide v2, 0x3a63069fc140771L

    const/4 v4, 0x7

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const/4 v5, 0x1

    aput-object p2, v4, v5

    const/4 v5, 0x2

    new-instance v6, Ljava/lang/Boolean;

    invoke-direct {v6, p3}, Ljava/lang/Boolean;-><init>(Z)V

    aput-object v6, v4, v5

    const/4 v5, 0x3

    new-instance v6, Ljava/lang/Boolean;

    move/from16 v0, p4

    invoke-direct {v6, v0}, Ljava/lang/Boolean;-><init>(Z)V

    aput-object v6, v4, v5

    const/4 v5, 0x4

    aput-object p5, v4, v5

    const/4 v5, 0x5

    new-instance v6, Ljava/lang/Boolean;

    move/from16 v0, p6

    invoke-direct {v6, v0}, Ljava/lang/Boolean;-><init>(Z)V

    aput-object v6, v4, v5

    const/4 v5, 0x6

    new-instance v6, Ljava/lang/Integer;

    move/from16 v0, p7

    invoke-direct {v6, v0}, Ljava/lang/Integer;-><init>(I)V

    aput-object v6, v4, v5

    invoke-static {v2, v3, p0, v4}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;[Ljava/lang/Object;)V

    :cond_0
    iput-boolean p3, p0, Labcd/vc;->gn:Z

    iput-object p1, p0, Labcd/vc;->u7:Labcd/Da;

    iget-object v2, p0, Labcd/vc;->VH:Labcd/wc;

    invoke-virtual {v2, p2}, Labcd/wc;->j6(Ljava/io/Reader;)V

    iget-object v2, p0, Labcd/vc;->Zo:Labcd/uc;

    iget-object v3, p0, Labcd/vc;->VH:Labcd/wc;

    invoke-interface {v2, v3}, Labcd/uc;->j6(Ljava/io/Reader;)V

    iget-object v9, p0, Labcd/vc;->VH:Labcd/wc;

    if-eqz p6, :cond_1

    invoke-virtual {v9}, Labcd/wc;->j6()V

    :cond_1
    invoke-virtual/range {p5 .. p5}, Labcd/Wa;->j6()V

    iget-object v2, p0, Labcd/vc;->FH:Labcd/na;

    invoke-interface {v2}, Labcd/na;->v5()Labcd/pa;

    move-result-object v10

    :cond_2
    :goto_0
    iget-object v2, p0, Labcd/vc;->Zo:Labcd/uc;

    invoke-interface {v2}, Labcd/uc;->j6()I

    move-result v3

    iget-object v2, p0, Labcd/vc;->Zo:Labcd/uc;

    invoke-interface {v2}, Labcd/uc;->FH()I

    move-result v8

    const/4 v2, 0x1

    invoke-virtual {v9, v8, v2}, Labcd/wc;->DW(IZ)I

    move-result v5

    const/4 v2, 0x1

    invoke-virtual {v9, v8, v2}, Labcd/wc;->j6(IZ)I

    move-result v6

    if-eqz v3, :cond_6

    const/4 v2, 0x1

    if-eq v3, v2, :cond_5

    move/from16 v0, p7

    if-ge v3, v0, :cond_2

    invoke-interface {v10, v3}, Labcd/pa;->u7(I)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Labcd/vc;->Hw:Labcd/Ga;

    iget-object v4, p0, Labcd/vc;->Zo:Labcd/uc;

    invoke-interface {v4}, Labcd/uc;->getBuffer()[C

    move-result-object v4

    iget-object v7, p0, Labcd/vc;->Zo:Labcd/uc;

    invoke-interface {v7}, Labcd/uc;->Hw()I

    move-result v7

    iget-object v11, p0, Labcd/vc;->Zo:Labcd/uc;

    invoke-interface {v11}, Labcd/uc;->DW()I

    move-result v11

    invoke-virtual {v2, v4, v7, v11}, Labcd/Ga;->j6([CII)I

    move-result v2

    :goto_1
    move v4, v2

    :goto_2
    iget-object v2, p0, Labcd/vc;->Zo:Labcd/uc;

    invoke-interface {v2}, Labcd/uc;->DW()I

    move-result v2

    add-int/2addr v2, v8

    const/4 v7, 0x0

    invoke-virtual {v9, v2, v7}, Labcd/wc;->DW(IZ)I

    move-result v7

    iget-object v2, p0, Labcd/vc;->Zo:Labcd/uc;

    invoke-interface {v2}, Labcd/uc;->DW()I

    move-result v2

    add-int/2addr v2, v8

    const/4 v8, 0x0

    invoke-virtual {v9, v2, v8}, Labcd/wc;->j6(IZ)I

    move-result v8

    move-object/from16 v2, p5

    invoke-virtual/range {v2 .. v8}, Labcd/Wa;->j6(IIIIII)V

    goto :goto_0

    :cond_3
    invoke-interface {v10, v3}, Labcd/pa;->Zo(I)Z

    move-result v2

    if-eqz v2, :cond_4

    if-eqz p4, :cond_4

    iget-object v2, p0, Labcd/vc;->Zo:Labcd/uc;

    invoke-interface {v2}, Labcd/uc;->getBuffer()[C

    move-result-object v2

    iget-object v4, p0, Labcd/vc;->Zo:Labcd/uc;

    invoke-interface {v4}, Labcd/uc;->Hw()I

    move-result v4

    iget-object v7, p0, Labcd/vc;->Zo:Labcd/uc;

    invoke-interface {v7}, Labcd/uc;->DW()I

    move-result v7

    move-object/from16 v0, p5

    invoke-virtual {v0, v2, v4, v7}, Labcd/Wa;->j6([CII)I

    move-result v2

    goto :goto_1

    :cond_4
    const/4 v4, 0x0

    goto :goto_2

    :cond_5
    iget-object v2, p0, Labcd/vc;->Zo:Labcd/uc;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Labcd/uc;->j6(I)C

    move-result v2

    invoke-direct {p0, v5, v6, v2}, Labcd/vc;->j6(III)V

    goto/16 :goto_0

    :cond_6
    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v2, p5

    move v7, v5

    move v8, v6

    invoke-virtual/range {v2 .. v8}, Labcd/Wa;->j6(IIIIII)V

    const/4 v2, 0x0

    invoke-virtual {v9, v2}, Labcd/wc;->j6(Ljava/io/Reader;)V

    const/4 v2, 0x0

    iput-object v2, p0, Labcd/vc;->u7:Labcd/Da;

    return-void
.end method
