.class public Lcom/aide/ui/scm/DiffView$a;
.super Lcom/aide/ui/views/CodeEditText$b;


# annotations
.annotation runtime Labcd/xu;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/aide/ui/scm/DiffView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# static fields
.field private static SI:Z
    .annotation runtime Labcd/uu;
    .end annotation
.end field

.field private static nw:Z
    .annotation runtime Labcd/tu;
    .end annotation
.end field


# instance fields
.field private KD:Ljava/util/List;
    .annotation runtime Labcd/ru;
        field = 0x12b5c8ec73866208L
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/aide/ui/scm/DiffView$c;",
            ">;"
        }
    .end annotation
.end field

.field private cb:Lcom/aide/engine/o;
    .annotation runtime Labcd/ru;
        field = 0x819ce959ac656d1L
    .end annotation
.end field

.field private cn:Ljava/util/ArrayList;
    .annotation runtime Labcd/ru;
        field = 0x2355344106bc0030L
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private dx:Lcom/aide/engine/o;
    .annotation runtime Labcd/ru;
        field = 0x819b17f917459a8L
    .end annotation
.end field

.field private ro:Ljava/util/ArrayList;
    .annotation runtime Labcd/ru;
        field = -0xc3948f73d25d4ebL
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field final sG:Lcom/aide/ui/scm/DiffView;
    .annotation runtime Labcd/vu;
    .end annotation
.end field

.field private sh:Ljava/util/ArrayList;
    .annotation runtime Labcd/ru;
        field = 0x23558f225383ca61L
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const-class v0, Lcom/aide/ui/scm/DiffView$a;

    const-wide v1, -0xbeb7729f2285038L  # -1.470215091585579E251

    invoke-static {v0, v1, v2, v1, v2}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method public constructor <init>(Lcom/aide/ui/scm/DiffView;)V
    .registers 7

    const/4 v0, 0x0

    const-wide v1, -0x1a5c8618b0f55c6fL  # -4.040836797842232E181

    :try_start_6
    sget-boolean v3, Lcom/aide/ui/scm/DiffView$a;->nw:Z

    if-eqz v3, :cond_d

    invoke-static {v1, v2, v0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_d
    iput-object p1, p0, Lcom/aide/ui/scm/DiffView$a;->sG:Lcom/aide/ui/scm/DiffView;

    invoke-direct {p0, p1}, Lcom/aide/ui/views/CodeEditText$b;-><init>(Lcom/aide/ui/views/CodeEditText;)V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/aide/ui/scm/DiffView$a;->KD:Ljava/util/List;

    invoke-virtual {p0}, Lcom/aide/ui/views/editor/g;->j3()V
    :try_end_1c
    .catchall {:try_start_6 .. :try_end_1c} :catchall_1d

    return-void

    :catchall_1d
    move-exception v3

    sget-boolean v4, Lcom/aide/ui/scm/DiffView$a;->SI:Z

    if-eqz v4, :cond_25

    invoke-static {v3, v1, v2, v0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_25
    throw v3
.end method

.method private DW(Ljava/lang/String;)V
    .registers 8
    .annotation runtime Labcd/su;
        method = 0x2401ec321c77eb2dL
    .end annotation

    const-wide v0, -0x1bbfcf803aed5700L  # -8.00828614466084E174

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/scm/DiffView$a;->nw:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    invoke-virtual {p0}, Lcom/aide/ui/views/editor/g;->v5()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {p0, v2}, Lcom/aide/ui/views/editor/g;->EQ(I)I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    const/4 v4, -0x1

    const/4 v5, 0x0

    if-ne v3, v4, :cond_1e

    if-eqz v2, :cond_26

    :cond_1e
    new-instance v4, Labcd/hm;

    invoke-direct {v4, v5, v5, v2, v3}, Labcd/hm;-><init>(IIII)V

    invoke-virtual {p0, v4, p0}, Lcom/aide/ui/views/editor/g;->j6(Labcd/hm;Ljava/lang/Object;)V
    :try_end_26
    .catchall {:try_start_5 .. :try_end_26} :catchall_31

    :cond_26
    :try_start_26
    new-instance v2, Lcom/aide/ui/scm/DiffView$b;

    invoke-direct {v2, p1}, Lcom/aide/ui/scm/DiffView$b;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v5, v5, v2, p0}, Lcom/aide/ui/views/editor/g;->j6(IILjava/io/Reader;Ljava/lang/Object;)Labcd/fm;
    :try_end_2e
    .catch Ljava/io/IOException; {:try_start_26 .. :try_end_2e} :catch_2f
    .catchall {:try_start_26 .. :try_end_2e} :catchall_31

    goto :goto_30

    :catch_2f
    move-exception p1

    :goto_30
    return-void

    :catchall_31
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/scm/DiffView$a;->SI:Z

    if-eqz v3, :cond_39

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_39
    throw v2
.end method

.method private FH(Ljava/lang/String;)V
    .registers 6
    .annotation runtime Labcd/su;
        method = 0x12baf385b23a06e8L
    .end annotation

    const-wide v0, 0x1194e081347a08abL  # 5.640151026479198E-224

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/scm/DiffView$a;->nw:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    iget-object v2, p0, Lcom/aide/ui/scm/DiffView$a;->KD:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    invoke-direct {p0, p1}, Lcom/aide/ui/scm/DiffView$a;->DW(Ljava/lang/String;)V
    :try_end_14
    .catchall {:try_start_5 .. :try_end_14} :catchall_15

    return-void

    :catchall_15
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/scm/DiffView$a;->SI:Z

    if-eqz v3, :cond_1d

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1d
    throw v2
.end method

.method static synthetic j6(Lcom/aide/ui/scm/DiffView$a;Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/aide/ui/scm/DiffView$a;->FH(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic DW(CII)V
    .registers 4

    invoke-super {p0, p1, p2, p3}, Lcom/aide/ui/views/CodeEditText$a;->DW(CII)V

    return-void
.end method

.method public bridge synthetic DW(III)V
    .registers 4

    invoke-super {p0, p1, p2, p3}, Lcom/aide/ui/views/CodeEditText$a;->DW(III)V

    return-void
.end method

.method public bridge synthetic DW([Lcom/aide/engine/m;[I[I[I[II)V
    .registers 7

    invoke-super/range {p0 .. p6}, Lcom/aide/ui/views/CodeEditText$b;->DW([Lcom/aide/engine/m;[I[I[I[II)V

    return-void
.end method

.method public bridge synthetic FH(I)Lcom/aide/ui/views/editor/s;
    .registers 2

    invoke-super {p0, p1}, Lcom/aide/ui/views/CodeEditText$b;->FH(I)Lcom/aide/ui/views/editor/s;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic J8(II)V
    .registers 3

    invoke-super {p0, p1, p2}, Lcom/aide/ui/views/CodeEditText$a;->J8(II)V

    return-void
.end method

.method public bridge synthetic QX(II)V
    .registers 3

    invoke-super {p0, p1, p2}, Lcom/aide/ui/views/CodeEditText$a;->QX(II)V

    return-void
.end method

.method public bridge synthetic VH(II)I
    .registers 3

    invoke-super {p0, p1, p2}, Lcom/aide/ui/views/CodeEditText$b;->VH(II)I

    move-result p1

    return p1
.end method

.method public bridge synthetic Ws(II)Z
    .registers 3

    invoke-super {p0, p1, p2}, Lcom/aide/ui/views/CodeEditText$a;->Ws(II)Z

    move-result p1

    return p1
.end method

.method public gn(II)Z
    .registers 10

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/scm/DiffView$a;->nw:Z

    if-eqz v0, :cond_16

    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p2}, Ljava/lang/Integer;-><init>(I)V

    const-wide v2, 0xa2e7a957f090aa1L

    invoke-static {v2, v3, p0, v0, v1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_16
    iget-object v0, p0, Lcom/aide/ui/scm/DiffView$a;->KD:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, p2, :cond_2a

    iget-object v0, p0, Lcom/aide/ui/scm/DiffView$a;->KD:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    sget-object p1, Lcom/aide/ui/scm/DiffView$c;->DW:Lcom/aide/ui/scm/DiffView$c;
    :try_end_26
    .catchall {:try_start_0 .. :try_end_26} :catchall_2c

    if-ne v0, p1, :cond_2a

    const/4 p1, 0x1

    goto :goto_2b

    :cond_2a
    const/4 p1, 0x0

    :goto_2b
    return p1

    :catchall_2c
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/scm/DiffView$a;->SI:Z

    if-eqz v1, :cond_45

    const-wide v2, 0xa2e7a957f090aa1L

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    move-object v1, v0

    move-object v4, p0

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_45
    throw v0
.end method

.method public bridge synthetic j6(CII)V
    .registers 4

    invoke-super {p0, p1, p2, p3}, Lcom/aide/ui/views/CodeEditText$a;->j6(CII)V

    return-void
.end method

.method public bridge synthetic j6(IIIILjava/lang/String;)V
    .registers 6

    invoke-super/range {p0 .. p5}, Lcom/aide/ui/views/CodeEditText$a;->j6(IIIILjava/lang/String;)V

    return-void
.end method

.method public j6(Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Lcom/aide/ui/scm/b$a;",
            ">;)V"
        }
    .end annotation

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/scm/DiffView$a;->nw:Z

    if-eqz v0, :cond_10

    const-wide v1, -0x4dd0416504f3be98L

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_10
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/aide/ui/scm/DiffView$a;->cb:Lcom/aide/engine/o;

    iput-object v0, p0, Lcom/aide/ui/scm/DiffView$a;->dx:Lcom/aide/engine/o;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/aide/ui/scm/DiffView$a;->KD:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/aide/ui/scm/DiffView$a;->ro:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/aide/ui/scm/DiffView$a;->cn:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/aide/ui/scm/DiffView$a;->sh:Ljava/util/ArrayList;

    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    new-instance v1, Ljava/io/PrintWriter;

    invoke-direct {v1, v0}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    const/4 v2, 0x0

    const/4 v3, -0x1

    const/4 v4, 0x0

    const/4 v5, -0x1

    :goto_3f
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v6

    if-ge v4, v6, :cond_1a0

    invoke-interface {p3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/aide/ui/scm/b$a;

    invoke-virtual {v6}, Lcom/aide/ui/scm/b$a;->j6()I

    move-result v7

    add-int/lit8 v7, v7, -0x3

    :goto_51
    invoke-virtual {v6}, Lcom/aide/ui/scm/b$a;->j6()I

    move-result v8

    if-ge v7, v8, :cond_89

    if-lt v7, v5, :cond_86

    if-ltz v7, :cond_86

    invoke-interface {p2, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v8, p0, Lcom/aide/ui/scm/DiffView$a;->cn:Ljava/util/ArrayList;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v8, p0, Lcom/aide/ui/scm/DiffView$a;->sh:Ljava/util/ArrayList;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v8, p0, Lcom/aide/ui/scm/DiffView$a;->KD:Ljava/util/List;

    sget-object v9, Lcom/aide/ui/scm/DiffView$c;->FH:Lcom/aide/ui/scm/DiffView$c;

    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v8, p0, Lcom/aide/ui/scm/DiffView$a;->ro:Ljava/util/ArrayList;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_86
    add-int/lit8 v7, v7, 0x1

    goto :goto_51

    :cond_89
    const/4 v5, 0x0

    :goto_8a
    invoke-virtual {v6}, Lcom/aide/ui/scm/b$a;->Hw()I

    move-result v7

    if-ge v5, v7, :cond_cc

    invoke-virtual {v6}, Lcom/aide/ui/scm/b$a;->FH()I

    move-result v7

    add-int/2addr v7, v5

    invoke-interface {p1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v1, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/aide/ui/scm/DiffView$a;->cn:Ljava/util/ArrayList;

    invoke-virtual {v6}, Lcom/aide/ui/scm/b$a;->FH()I

    move-result v8

    add-int/2addr v8, v5

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v7, p0, Lcom/aide/ui/scm/DiffView$a;->sh:Ljava/util/ArrayList;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v7, p0, Lcom/aide/ui/scm/DiffView$a;->KD:Ljava/util/List;

    sget-object v8, Lcom/aide/ui/scm/DiffView$c;->j6:Lcom/aide/ui/scm/DiffView$c;

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v7, p0, Lcom/aide/ui/scm/DiffView$a;->ro:Ljava/util/ArrayList;

    invoke-virtual {v6}, Lcom/aide/ui/scm/b$a;->j6()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_8a

    :cond_cc
    const/4 v5, 0x0

    :goto_cd
    invoke-virtual {v6}, Lcom/aide/ui/scm/b$a;->DW()I

    move-result v7

    if-ge v5, v7, :cond_110

    invoke-virtual {v6}, Lcom/aide/ui/scm/b$a;->j6()I

    move-result v7

    add-int/2addr v7, v5

    invoke-interface {p2, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v1, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/aide/ui/scm/DiffView$a;->cn:Ljava/util/ArrayList;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v7, p0, Lcom/aide/ui/scm/DiffView$a;->sh:Ljava/util/ArrayList;

    invoke-virtual {v6}, Lcom/aide/ui/scm/b$a;->j6()I

    move-result v8

    add-int/2addr v8, v5

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v7, p0, Lcom/aide/ui/scm/DiffView$a;->KD:Ljava/util/List;

    sget-object v8, Lcom/aide/ui/scm/DiffView$c;->DW:Lcom/aide/ui/scm/DiffView$c;

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v7, p0, Lcom/aide/ui/scm/DiffView$a;->ro:Ljava/util/ArrayList;

    invoke-virtual {v6}, Lcom/aide/ui/scm/b$a;->j6()I

    move-result v8

    add-int/2addr v8, v5

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_cd

    :cond_110
    add-int/lit8 v5, v4, 0x1

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v7

    if-ge v5, v7, :cond_123

    invoke-interface {p3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/aide/ui/scm/b$a;

    invoke-virtual {v7}, Lcom/aide/ui/scm/b$a;->j6()I

    move-result v7

    goto :goto_126

    :cond_123
    const v7, 0x7fffffff

    :goto_126
    invoke-virtual {v6}, Lcom/aide/ui/scm/b$a;->j6()I

    move-result v8

    invoke-virtual {v6}, Lcom/aide/ui/scm/b$a;->DW()I

    move-result v6

    add-int/2addr v8, v6

    add-int/lit8 v6, v8, 0x3

    :goto_131
    if-ge v8, v6, :cond_169

    if-ge v8, v7, :cond_169

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v9

    if-ge v8, v9, :cond_169

    invoke-interface {p2, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-virtual {v1, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v9, p0, Lcom/aide/ui/scm/DiffView$a;->cn:Ljava/util/ArrayList;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v9, p0, Lcom/aide/ui/scm/DiffView$a;->sh:Ljava/util/ArrayList;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v9, p0, Lcom/aide/ui/scm/DiffView$a;->KD:Ljava/util/List;

    sget-object v10, Lcom/aide/ui/scm/DiffView$c;->FH:Lcom/aide/ui/scm/DiffView$c;

    invoke-interface {v9, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v9, p0, Lcom/aide/ui/scm/DiffView$a;->ro:Ljava/util/ArrayList;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v8, v8, 0x1

    goto :goto_131

    :cond_169
    add-int/lit8 v7, v7, -0x3

    if-ge v6, v7, :cond_19c

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    if-eq v4, v7, :cond_19c

    const-string v4, ""

    invoke-virtual {v1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/aide/ui/scm/DiffView$a;->cn:Ljava/util/ArrayList;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v4, p0, Lcom/aide/ui/scm/DiffView$a;->sh:Ljava/util/ArrayList;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v4, p0, Lcom/aide/ui/scm/DiffView$a;->KD:Ljava/util/List;

    sget-object v7, Lcom/aide/ui/scm/DiffView$c;->Hw:Lcom/aide/ui/scm/DiffView$c;

    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v4, p0, Lcom/aide/ui/scm/DiffView$a;->ro:Ljava/util/ArrayList;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_19c
    move v4, v5

    move v5, v6

    goto/16 :goto_3f

    :cond_1a0
    invoke-virtual {v1}, Ljava/io/PrintWriter;->flush()V

    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/aide/ui/scm/DiffView$a;->DW(Ljava/lang/String;)V
    :try_end_1aa
    .catchall {:try_start_0 .. :try_end_1aa} :catchall_1ab

    return-void

    :catchall_1ab
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/scm/DiffView$a;->SI:Z

    if-eqz v1, :cond_1bd

    const-wide v2, -0x4dd0416504f3be98L

    move-object v1, v0

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    move-object v7, p3

    invoke-static/range {v1 .. v7}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1bd
    goto :goto_1bf

    :goto_1be
    throw v0

    :goto_1bf
    goto :goto_1be
.end method

.method public j6(Z[Lcom/aide/engine/m;[I[I[I[II)V
    .registers 20

    move-object v0, p0

    move v1, p1

    sget-boolean v2, Lcom/aide/ui/scm/DiffView$a;->nw:Z

    const/4 v3, 0x0

    if-eqz v2, :cond_33

    const/4 v2, 0x7

    new-array v2, v2, [Ljava/lang/Object;

    new-instance v4, Ljava/lang/Boolean;

    invoke-direct {v4, p1}, Ljava/lang/Boolean;-><init>(Z)V

    aput-object v4, v2, v3

    const/4 v4, 0x1

    aput-object p2, v2, v4

    const/4 v4, 0x2

    aput-object p3, v2, v4

    const/4 v4, 0x3

    aput-object p4, v2, v4

    const/4 v4, 0x4

    aput-object p5, v2, v4

    const/4 v4, 0x5

    aput-object p6, v2, v4

    new-instance v4, Ljava/lang/Integer;

    move/from16 v11, p7

    invoke-direct {v4, v11}, Ljava/lang/Integer;-><init>(I)V

    const/4 v5, 0x6

    aput-object v4, v2, v5

    const-wide v4, -0x3b8eb5425272b098L  # -5.103684812878425E21

    invoke-static {v4, v5, p0, v2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;[Ljava/lang/Object;)V

    goto :goto_35

    :cond_33
    move/from16 v11, p7

    :goto_35
    new-instance v5, Lcom/aide/engine/o;

    if-eqz v1, :cond_4c

    invoke-direct {v5}, Lcom/aide/engine/o;-><init>()V

    iput-object v5, v0, Lcom/aide/ui/scm/DiffView$a;->dx:Lcom/aide/engine/o;

    move-object v6, p2

    move-object v7, p3

    move-object/from16 v8, p4

    move-object/from16 v9, p5

    move-object/from16 v10, p6

    move/from16 v11, p7

    invoke-virtual/range {v5 .. v11}, Lcom/aide/engine/o;->j6([Lcom/aide/engine/m;[I[I[I[II)V

    goto :goto_5e

    :cond_4c
    invoke-direct {v5}, Lcom/aide/engine/o;-><init>()V

    iput-object v5, v0, Lcom/aide/ui/scm/DiffView$a;->cb:Lcom/aide/engine/o;

    move-object v6, p2

    move-object v7, p3

    move-object/from16 v8, p4

    move-object/from16 v9, p5

    move-object/from16 v10, p6

    move/from16 v11, p7

    invoke-virtual/range {v5 .. v11}, Lcom/aide/engine/o;->j6([Lcom/aide/engine/m;[I[I[I[II)V

    :goto_5e
    iget-object v1, v0, Lcom/aide/ui/scm/DiffView$a;->dx:Lcom/aide/engine/o;

    if-eqz v1, :cond_ae

    iget-object v1, v0, Lcom/aide/ui/scm/DiffView$a;->cb:Lcom/aide/engine/o;

    if-eqz v1, :cond_ae

    invoke-virtual {p0}, Lcom/aide/ui/views/CodeEditText$b;->ei()Lcom/aide/engine/o;

    move-result-object v1

    invoke-virtual {v1}, Lcom/aide/engine/o;->j6()V

    const/4 v2, 0x0

    :goto_6e
    iget-object v4, v0, Lcom/aide/ui/scm/DiffView$a;->cn:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v5, -0x1

    if-ge v2, v4, :cond_8d

    iget-object v4, v0, Lcom/aide/ui/scm/DiffView$a;->cn:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-eq v4, v5, :cond_8a

    iget-object v5, v0, Lcom/aide/ui/scm/DiffView$a;->dx:Lcom/aide/engine/o;

    invoke-virtual {v1, v2, v5, v4}, Lcom/aide/engine/o;->j6(ILcom/aide/engine/o;I)V

    :cond_8a
    add-int/lit8 v2, v2, 0x1

    goto :goto_6e

    :cond_8d
    :goto_8d
    iget-object v2, v0, Lcom/aide/ui/scm/DiffView$a;->sh:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v3, v2, :cond_ab

    iget-object v2, v0, Lcom/aide/ui/scm/DiffView$a;->sh:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-eq v2, v5, :cond_a8

    iget-object v4, v0, Lcom/aide/ui/scm/DiffView$a;->cb:Lcom/aide/engine/o;

    invoke-virtual {v1, v3, v4, v2}, Lcom/aide/engine/o;->j6(ILcom/aide/engine/o;I)V

    :cond_a8
    add-int/lit8 v3, v3, 0x1

    goto :goto_8d

    :cond_ab
    invoke-virtual {p0}, Lcom/aide/ui/views/CodeEditText$b;->P8()V

    :cond_ae
    return-void
.end method

.method public bridge synthetic j6([Lcom/aide/engine/m;[I[I[I[II)V
    .registers 7

    invoke-super/range {p0 .. p6}, Lcom/aide/ui/views/CodeEditText$b;->j6([Lcom/aide/engine/m;[I[I[I[II)V

    return-void
.end method

.method public j6(I)Z
    .registers 6

    const-wide v0, 0x2c16c097186fcd8fL  # 2.6629732707953483E-96

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/scm/DiffView$a;->nw:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;I)V

    :cond_c
    if-lez p1, :cond_24

    iget-object v2, p0, Lcom/aide/ui/scm/DiffView$a;->KD:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v3, p1, -0x1

    if-le v2, v3, :cond_24

    iget-object v2, p0, Lcom/aide/ui/scm/DiffView$a;->KD:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    sget-object p1, Lcom/aide/ui/scm/DiffView$c;->Hw:Lcom/aide/ui/scm/DiffView$c;
    :try_end_20
    .catchall {:try_start_5 .. :try_end_20} :catchall_26

    if-ne v2, p1, :cond_24

    const/4 p1, 0x1

    goto :goto_25

    :cond_24
    const/4 p1, 0x0

    :goto_25
    return p1

    :catchall_26
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/scm/DiffView$a;->SI:Z

    if-eqz v3, :cond_33

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-static {v2, v0, v1, p0, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_33
    throw v2
.end method

.method public bridge synthetic tp()I
    .registers 2

    invoke-super {p0}, Lcom/aide/ui/views/CodeEditText$b;->tp()I

    move-result v0

    return v0
.end method

.method public tp(I)Z
    .registers 6

    const-wide v0, -0x1557ffb1ec098b33L  # -6.020046636284246E205

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/scm/DiffView$a;->nw:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;I)V
    :try_end_c
    .catchall {:try_start_5 .. :try_end_c} :catchall_e

    :cond_c
    const/4 p1, 0x0

    return p1

    :catchall_e
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/scm/DiffView$a;->SI:Z

    if-eqz v3, :cond_1b

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-static {v2, v0, v1, p0, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1b
    throw v2
.end method

.method public u7(II)Z
    .registers 10

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/scm/DiffView$a;->nw:Z

    if-eqz v0, :cond_16

    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p2}, Ljava/lang/Integer;-><init>(I)V

    const-wide v2, 0x4859cce0efbd9c8L

    invoke-static {v2, v3, p0, v0, v1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_16
    iget-object v0, p0, Lcom/aide/ui/scm/DiffView$a;->KD:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, p2, :cond_2a

    iget-object v0, p0, Lcom/aide/ui/scm/DiffView$a;->KD:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    sget-object p1, Lcom/aide/ui/scm/DiffView$c;->j6:Lcom/aide/ui/scm/DiffView$c;
    :try_end_26
    .catchall {:try_start_0 .. :try_end_26} :catchall_2c

    if-ne v0, p1, :cond_2a

    const/4 p1, 0x1

    goto :goto_2b

    :cond_2a
    const/4 p1, 0x0

    :goto_2b
    return p1

    :catchall_2c
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/scm/DiffView$a;->SI:Z

    if-eqz v1, :cond_45

    const-wide v2, 0x4859cce0efbd9c8L

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    move-object v1, v0

    move-object v4, p0

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_45
    throw v0
.end method

.method public bridge synthetic vy()V
    .registers 1

    invoke-super {p0}, Lcom/aide/ui/views/CodeEditText$a;->vy()V

    return-void
.end method
