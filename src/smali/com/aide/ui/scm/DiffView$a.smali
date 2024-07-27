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
            "Ljava/util/List",
            "<",
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
            "Ljava/util/ArrayList",
            "<",
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
            "Ljava/util/ArrayList",
            "<",
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
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 4

    const-wide v2, -0xbeb7729f2285038L    # -1.470215091585579E251

    const-class v0, Lcom/aide/ui/scm/DiffView$a;

    invoke-static {v0, v2, v3, v2, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method public constructor <init>(Lcom/aide/ui/scm/DiffView;)V
    .registers 8

    const-wide v4, -0x1a5c8618b0f55c6fL    # -4.040836797842232E181

    const/4 v3, 0x0

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/scm/DiffView$a;->nw:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x1a5c8618b0f55c6fL    # -4.040836797842232E181

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    iput-object p1, p0, Lcom/aide/ui/scm/DiffView$a;->sG:Lcom/aide/ui/scm/DiffView;

    invoke-direct {p0, p1}, Lcom/aide/ui/views/CodeEditText$b;-><init>(Lcom/aide/ui/views/CodeEditText;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/aide/ui/scm/DiffView$a;->KD:Ljava/util/List;

    invoke-virtual {p0}, Lcom/aide/ui/views/editor/g;->j3()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/scm/DiffView$a;->SI:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v4, v5, v3, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method private DW(Ljava/lang/String;)V
    .registers 10
    .annotation runtime Labcd/su;
        method = 0x2401ec321c77eb2dL
    .end annotation

    const-wide v6, -0x1bbfcf803aed5700L    # -8.00828614466084E174

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/scm/DiffView$a;->nw:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x1bbfcf803aed5700L    # -8.00828614466084E174

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    invoke-virtual {p0}, Lcom/aide/ui/views/editor/g;->v5()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lcom/aide/ui/views/editor/g;->EQ(I)I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    if-eqz v0, :cond_2

    :cond_1
    new-instance v2, Labcd/hm;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4, v0, v1}, Labcd/hm;-><init>(IIII)V

    invoke-virtual {p0, v2, p0}, Lcom/aide/ui/views/editor/g;->j6(Labcd/hm;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    :try_start_1
    new-instance v0, Lcom/aide/ui/scm/DiffView$b;

    invoke-direct {v0, p1}, Lcom/aide/ui/scm/DiffView$b;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2, v0, p0}, Lcom/aide/ui/views/editor/g;->j6(IILjava/io/Reader;Ljava/lang/Object;)Labcd/fm;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/scm/DiffView$a;->SI:Z

    if-eqz v1, :cond_3

    invoke-static {v0, v6, v7, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_3
    throw v0

    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method private FH(Ljava/lang/String;)V
    .registers 6
    .annotation runtime Labcd/su;
        method = 0x12baf385b23a06e8L
    .end annotation

    const-wide v2, 0x1194e081347a08abL    # 5.640151026479198E-224

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/scm/DiffView$a;->nw:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x1194e081347a08abL    # 5.640151026479198E-224

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/aide/ui/scm/DiffView$a;->KD:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    invoke-direct {p0, p1}, Lcom/aide/ui/scm/DiffView$a;->DW(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/scm/DiffView$a;->SI:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v0
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
    .registers 3

    invoke-super {p0, p1}, Lcom/aide/ui/views/CodeEditText$b;->FH(I)Lcom/aide/ui/views/editor/s;

    move-result-object v0

    return-object v0
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
    .registers 4

    invoke-super {p0, p1, p2}, Lcom/aide/ui/views/CodeEditText$b;->VH(II)I

    move-result v0

    return v0
.end method

.method public bridge synthetic Ws(II)Z
    .registers 4

    invoke-super {p0, p1, p2}, Lcom/aide/ui/views/CodeEditText$a;->Ws(II)Z

    move-result v0

    return v0
.end method

.method public gn(II)Z
    .registers 10

    const-wide v2, 0xa2e7a957f090aa1L

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/scm/DiffView$a;->nw:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p2}, Ljava/lang/Integer;-><init>(I)V

    const-wide v4, 0xa2e7a957f090aa1L

    invoke-static {v4, v5, p0, v0, v1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/aide/ui/scm/DiffView$a;->KD:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, p2, :cond_1

    iget-object v0, p0, Lcom/aide/ui/scm/DiffView$a;->KD:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/aide/ui/scm/DiffView$c;->DW:Lcom/aide/ui/scm/DiffView$c;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    if-ne v0, v1, :cond_1

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :catch_0
    move-exception v1

    sget-boolean v0, Lcom/aide/ui/scm/DiffView$a;->SI:Z

    if-eqz v0, :cond_2

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    move-object v4, p0

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_2
    throw v1
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
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/aide/ui/scm/b$a;",
            ">;)V"
        }
    .end annotation

    const-wide v10, -0x4dd0416504f3be98L

    const/4 v6, 0x0

    const/4 v7, -0x1

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/scm/DiffView$a;->nw:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x4dd0416504f3be98L

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-static/range {v0 .. v5}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/aide/ui/scm/DiffView$a;->cb:Lcom/aide/engine/o;

    const/4 v0, 0x0

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

    new-instance v8, Ljava/io/StringWriter;

    invoke-direct {v8}, Ljava/io/StringWriter;-><init>()V

    new-instance v9, Ljava/io/PrintWriter;

    invoke-direct {v9, v8}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    move v3, v7

    move v4, v6

    :goto_0
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v0

    if-ge v4, v0, :cond_7

    invoke-interface {p3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/aide/ui/scm/b$a;

    invoke-virtual {v0}, Lcom/aide/ui/scm/b$a;->j6()I

    move-result v1

    add-int/lit8 v1, v1, -0x3

    move v2, v1

    :goto_1
    invoke-virtual {v0}, Lcom/aide/ui/scm/b$a;->j6()I

    move-result v1

    if-ge v2, v1, :cond_2

    if-lt v2, v3, :cond_1

    if-ltz v2, :cond_1

    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v9, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/aide/ui/scm/DiffView$a;->cn:Ljava/util/ArrayList;

    const/4 v5, -0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/aide/ui/scm/DiffView$a;->sh:Ljava/util/ArrayList;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/aide/ui/scm/DiffView$a;->KD:Ljava/util/List;

    sget-object v5, Lcom/aide/ui/scm/DiffView$c;->FH:Lcom/aide/ui/scm/DiffView$c;

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/aide/ui/scm/DiffView$a;->ro:Ljava/util/ArrayList;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_1

    :cond_2
    move v2, v6

    :goto_2
    invoke-virtual {v0}, Lcom/aide/ui/scm/b$a;->Hw()I

    move-result v1

    if-ge v2, v1, :cond_3

    invoke-virtual {v0}, Lcom/aide/ui/scm/b$a;->FH()I

    move-result v1

    add-int/2addr v1, v2

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v9, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/aide/ui/scm/DiffView$a;->cn:Ljava/util/ArrayList;

    invoke-virtual {v0}, Lcom/aide/ui/scm/b$a;->FH()I

    move-result v3

    add-int/2addr v3, v2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/aide/ui/scm/DiffView$a;->sh:Ljava/util/ArrayList;

    const/4 v3, -0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/aide/ui/scm/DiffView$a;->KD:Ljava/util/List;

    sget-object v3, Lcom/aide/ui/scm/DiffView$c;->j6:Lcom/aide/ui/scm/DiffView$c;

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/aide/ui/scm/DiffView$a;->ro:Ljava/util/ArrayList;

    invoke-virtual {v0}, Lcom/aide/ui/scm/b$a;->j6()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_2

    :cond_3
    move v2, v6

    :goto_3
    invoke-virtual {v0}, Lcom/aide/ui/scm/b$a;->DW()I

    move-result v1

    if-ge v2, v1, :cond_4

    invoke-virtual {v0}, Lcom/aide/ui/scm/b$a;->j6()I

    move-result v1

    add-int/2addr v1, v2

    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v9, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/aide/ui/scm/DiffView$a;->cn:Ljava/util/ArrayList;

    const/4 v3, -0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/aide/ui/scm/DiffView$a;->sh:Ljava/util/ArrayList;

    invoke-virtual {v0}, Lcom/aide/ui/scm/b$a;->j6()I

    move-result v3

    add-int/2addr v3, v2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/aide/ui/scm/DiffView$a;->KD:Ljava/util/List;

    sget-object v3, Lcom/aide/ui/scm/DiffView$c;->DW:Lcom/aide/ui/scm/DiffView$c;

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/aide/ui/scm/DiffView$a;->ro:Ljava/util/ArrayList;

    invoke-virtual {v0}, Lcom/aide/ui/scm/b$a;->j6()I

    move-result v3

    add-int/2addr v3, v2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_3

    :cond_4
    const v1, 0x7fffffff

    add-int/lit8 v5, v4, 0x1

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v2

    if-ge v5, v2, :cond_9

    invoke-interface {p3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/aide/ui/scm/b$a;

    invoke-virtual {v1}, Lcom/aide/ui/scm/b$a;->j6()I

    move-result v1

    move v2, v1

    :goto_4
    invoke-virtual {v0}, Lcom/aide/ui/scm/b$a;->j6()I

    move-result v1

    invoke-virtual {v0}, Lcom/aide/ui/scm/b$a;->DW()I

    move-result v0

    add-int/2addr v0, v1

    add-int/lit8 v3, v0, 0x3

    move v1, v0

    :goto_5
    if-ge v1, v3, :cond_5

    if-ge v1, v2, :cond_5

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_5

    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v9, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/aide/ui/scm/DiffView$a;->cn:Ljava/util/ArrayList;

    const/4 v7, -0x1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/aide/ui/scm/DiffView$a;->sh:Ljava/util/ArrayList;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/aide/ui/scm/DiffView$a;->KD:Ljava/util/List;

    sget-object v7, Lcom/aide/ui/scm/DiffView$c;->FH:Lcom/aide/ui/scm/DiffView$c;

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/aide/ui/scm/DiffView$a;->ro:Ljava/util/ArrayList;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_5

    :cond_5
    add-int/lit8 v0, v2, -0x3

    if-ge v3, v0, :cond_6

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-eq v4, v0, :cond_6

    const-string v0, ""

    invoke-virtual {v9, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/aide/ui/scm/DiffView$a;->cn:Ljava/util/ArrayList;

    const/4 v1, -0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/aide/ui/scm/DiffView$a;->sh:Ljava/util/ArrayList;

    const/4 v1, -0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/aide/ui/scm/DiffView$a;->KD:Ljava/util/List;

    sget-object v1, Lcom/aide/ui/scm/DiffView$c;->Hw:Lcom/aide/ui/scm/DiffView$c;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/aide/ui/scm/DiffView$a;->ro:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_6
    move v4, v5

    goto/16 :goto_0

    :cond_7
    invoke-virtual {v9}, Ljava/io/PrintWriter;->flush()V

    invoke-virtual {v8}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/aide/ui/scm/DiffView$a;->DW(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v1

    sget-boolean v0, Lcom/aide/ui/scm/DiffView$a;->SI:Z

    if-eqz v0, :cond_8

    move-wide v2, v10

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    move-object v7, p3

    invoke-static/range {v1 .. v7}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_8
    throw v1

    :cond_9
    move v2, v1

    goto/16 :goto_4
.end method

.method public j6(Z[Lcom/aide/engine/m;[I[I[I[II)V
    .registers 16

    sget-boolean v0, Lcom/aide/ui/scm/DiffView$a;->nw:Z

    const/4 v7, 0x0

    if-eqz v0, :cond_0

    const-wide v0, -0x3b8eb5425272b098L    # -5.103684812878425E21

    const/4 v2, 0x7

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    new-instance v4, Ljava/lang/Boolean;

    invoke-direct {v4, p1}, Ljava/lang/Boolean;-><init>(Z)V

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p2, v2, v3

    const/4 v3, 0x2

    aput-object p3, v2, v3

    const/4 v3, 0x3

    aput-object p4, v2, v3

    const/4 v3, 0x4

    aput-object p5, v2, v3

    const/4 v3, 0x5

    aput-object p6, v2, v3

    const/4 v3, 0x6

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, p7}, Ljava/lang/Integer;-><init>(I)V

    aput-object v4, v2, v3

    invoke-static {v0, v1, p0, v2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;[Ljava/lang/Object;)V

    :cond_0
    if-eqz p1, :cond_2

    new-instance v0, Lcom/aide/engine/o;

    invoke-direct {v0}, Lcom/aide/engine/o;-><init>()V

    iput-object v0, p0, Lcom/aide/ui/scm/DiffView$a;->dx:Lcom/aide/engine/o;

    iget-object v0, p0, Lcom/aide/ui/scm/DiffView$a;->dx:Lcom/aide/engine/o;

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    move-object v5, p6

    move v6, p7

    invoke-virtual/range {v0 .. v6}, Lcom/aide/engine/o;->j6([Lcom/aide/engine/m;[I[I[I[II)V

    :goto_0
    iget-object v0, p0, Lcom/aide/ui/scm/DiffView$a;->dx:Lcom/aide/engine/o;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/aide/ui/scm/DiffView$a;->cb:Lcom/aide/engine/o;

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Lcom/aide/ui/views/CodeEditText$b;->ei()Lcom/aide/engine/o;

    move-result-object v2

    invoke-virtual {v2}, Lcom/aide/engine/o;->j6()V

    const/4 v0, 0x0

    move v1, v0

    :goto_1
    iget-object v0, p0, Lcom/aide/ui/scm/DiffView$a;->cn:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_6

    iget-object v0, p0, Lcom/aide/ui/scm/DiffView$a;->cn:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v3, -0x1

    if-eq v0, v3, :cond_1

    iget-object v3, p0, Lcom/aide/ui/scm/DiffView$a;->dx:Lcom/aide/engine/o;

    invoke-virtual {v2, v1, v3, v0}, Lcom/aide/engine/o;->j6(ILcom/aide/engine/o;I)V

    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :cond_2
    new-instance v0, Lcom/aide/engine/o;

    invoke-direct {v0}, Lcom/aide/engine/o;-><init>()V

    iput-object v0, p0, Lcom/aide/ui/scm/DiffView$a;->cb:Lcom/aide/engine/o;

    iget-object v0, p0, Lcom/aide/ui/scm/DiffView$a;->cb:Lcom/aide/engine/o;

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    move-object v5, p6

    move v6, p7

    invoke-virtual/range {v0 .. v6}, Lcom/aide/engine/o;->j6([Lcom/aide/engine/m;[I[I[I[II)V

    goto :goto_0

    :goto_2
    iget-object v0, p0, Lcom/aide/ui/scm/DiffView$a;->sh:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_4

    iget-object v0, p0, Lcom/aide/ui/scm/DiffView$a;->sh:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v3, -0x1

    if-eq v0, v3, :cond_3

    iget-object v3, p0, Lcom/aide/ui/scm/DiffView$a;->cb:Lcom/aide/engine/o;

    invoke-virtual {v2, v1, v3, v0}, Lcom/aide/engine/o;->j6(ILcom/aide/engine/o;I)V

    :cond_3
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    :cond_4
    invoke-virtual {p0}, Lcom/aide/ui/views/CodeEditText$b;->P8()V

    :cond_5
    return-void

    :cond_6
    move v1, v7

    goto :goto_2
.end method

.method public bridge synthetic j6([Lcom/aide/engine/m;[I[I[I[II)V
    .registers 7

    invoke-super/range {p0 .. p6}, Lcom/aide/ui/views/CodeEditText$b;->j6([Lcom/aide/engine/m;[I[I[I[II)V

    return-void
.end method

.method public j6(I)Z
    .registers 6

    const-wide v2, 0x2c16c097186fcd8fL    # 2.6629732707953483E-96

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/scm/DiffView$a;->nw:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x2c16c097186fcd8fL    # 2.6629732707953483E-96

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;I)V

    :cond_0
    if-lez p1, :cond_1

    iget-object v0, p0, Lcom/aide/ui/scm/DiffView$a;->KD:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v1, p1, -0x1

    if-le v0, v1, :cond_1

    iget-object v0, p0, Lcom/aide/ui/scm/DiffView$a;->KD:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/aide/ui/scm/DiffView$c;->Hw:Lcom/aide/ui/scm/DiffView$c;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    if-ne v0, v1, :cond_1

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/scm/DiffView$a;->SI:Z

    if-eqz v1, :cond_2

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-static {v0, v2, v3, p0, v1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_2
    throw v0
.end method

.method public bridge synthetic tp()I
    .registers 2

    invoke-super {p0}, Lcom/aide/ui/views/CodeEditText$b;->tp()I

    move-result v0

    return v0
.end method

.method public tp(I)Z
    .registers 6

    const-wide v2, -0x1557ffb1ec098b33L    # -6.020046636284246E205

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/scm/DiffView$a;->nw:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x1557ffb1ec098b33L    # -6.020046636284246E205

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;I)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/scm/DiffView$a;->SI:Z

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-static {v0, v2, v3, p0, v1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public u7(II)Z
    .registers 10

    const-wide v2, 0x4859cce0efbd9c8L

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/scm/DiffView$a;->nw:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p2}, Ljava/lang/Integer;-><init>(I)V

    const-wide v4, 0x4859cce0efbd9c8L

    invoke-static {v4, v5, p0, v0, v1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/aide/ui/scm/DiffView$a;->KD:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, p2, :cond_1

    iget-object v0, p0, Lcom/aide/ui/scm/DiffView$a;->KD:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/aide/ui/scm/DiffView$c;->j6:Lcom/aide/ui/scm/DiffView$c;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    if-ne v0, v1, :cond_1

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :catch_0
    move-exception v1

    sget-boolean v0, Lcom/aide/ui/scm/DiffView$a;->SI:Z

    if-eqz v0, :cond_2

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    move-object v4, p0

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_2
    throw v1
.end method

.method public bridge synthetic vy()V
    .registers 1

    invoke-super {p0}, Lcom/aide/ui/views/CodeEditText$a;->vy()V

    return-void
.end method
