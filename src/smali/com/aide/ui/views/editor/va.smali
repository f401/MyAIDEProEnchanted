.class public Lcom/aide/ui/views/editor/va;
.super Ljava/lang/Object;


# annotations
.annotation runtime Labcd/xu;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/aide/ui/views/editor/va$a;,
        Lcom/aide/ui/views/editor/va$b;,
        Lcom/aide/ui/views/editor/va$c;,
        Lcom/aide/ui/views/editor/va$d;,
        Lcom/aide/ui/views/editor/va$e;,
        Lcom/aide/ui/views/editor/va$f;,
        Lcom/aide/ui/views/editor/va$g;,
        Lcom/aide/ui/views/editor/va$h;,
        Lcom/aide/ui/views/editor/va$i;,
        Lcom/aide/ui/views/editor/va$j;,
        Lcom/aide/ui/views/editor/va$k;
    }
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
.field private EQ:Z
    .annotation runtime Labcd/ru;
        field = 0x25cf1346d56da5a8L
    .end annotation
.end field

.field private FH:I
    .annotation runtime Labcd/ru;
        field = 0x425fa5013647e254L
    .end annotation
.end field

.field private Hw:Ljava/util/Vector;
    .annotation runtime Labcd/ru;
        field = 0x2c9d859635050a87L
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lcom/aide/ui/views/editor/va$b;",
            ">;"
        }
    .end annotation
.end field

.field private VH:Ljava/util/List;
    .annotation runtime Labcd/ru;
        field = -0x7a6c0ea3c54b7b8L
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/aide/ui/views/editor/va$g;",
            ">;"
        }
    .end annotation
.end field

.field private Zo:I
    .annotation runtime Labcd/ru;
        field = 0x9262fc76cc45bc0L
    .end annotation
.end field

.field private gn:Labcd/fm;
    .annotation runtime Labcd/ru;
        field = 0x7ed29e2f35caae0L
    .end annotation
.end field

.field private tp:Z
    .annotation runtime Labcd/ru;
        field = 0x25f02e6f3ca354c4L
    .end annotation
.end field

.field private u7:Z
    .annotation runtime Labcd/ru;
        field = 0x3ceaa65b9df1dd2dL
    .end annotation
.end field

.field private v5:I
    .annotation runtime Labcd/ru;
        field = -0x3ff260c278406850L
    .end annotation
.end field

.field private we:Lcom/aide/ui/views/editor/g;
    .annotation runtime Labcd/ru;
        field = -0x3d769205195e7ccL
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 4

    const-wide v2, 0x470db739f1800L

    const-class v0, Lcom/aide/ui/views/editor/va;

    invoke-static {v0, v2, v3, v2, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method public constructor <init>(Lcom/aide/ui/views/editor/g;I)V
    .registers 11

    const-wide v2, 0x707aaedbdec767fL

    const/4 v4, 0x0

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/views/editor/va;->j6:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, p2}, Ljava/lang/Integer;-><init>(I)V

    const-wide v6, 0x707aaedbdec767fL

    const/4 v1, 0x0

    invoke-static {v6, v7, v1, p1, v0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/aide/ui/views/editor/va;->we:Lcom/aide/ui/views/editor/g;

    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/aide/ui/views/editor/va;->VH:Ljava/util/List;

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/aide/ui/views/editor/va;->Hw:Ljava/util/Vector;

    const/4 v0, 0x0

    iput v0, p0, Lcom/aide/ui/views/editor/va;->v5:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/aide/ui/views/editor/va;->Zo:I

    invoke-virtual {p0, p2}, Lcom/aide/ui/views/editor/va;->j6(I)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v1

    sget-boolean v0, Lcom/aide/ui/views/editor/va;->DW:Z

    if-eqz v0, :cond_1

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    move-object v5, p1

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v1
.end method

.method private DW(I)V
    .registers 10
    .annotation runtime Labcd/su;
        method = 0x27f0c6701bf70521L
    .end annotation

    const-wide v6, -0xefda14cf4988305L    # -2.336328284774179E236

    const/4 v1, 0x0

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/views/editor/va;->j6:Z

    if-eqz v0, :cond_0

    const-wide v2, -0xefda14cf4988305L    # -2.336328284774179E236

    invoke-static {v2, v3, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;I)V

    :cond_0
    move v3, v1

    :goto_0
    if-ge v3, p1, :cond_2

    move v0, v1

    :goto_1
    iget-object v2, p0, Lcom/aide/ui/views/editor/va;->Hw:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ge v0, v2, :cond_1

    iget-object v4, p0, Lcom/aide/ui/views/editor/va;->Hw:Ljava/util/Vector;

    iget-object v5, p0, Lcom/aide/ui/views/editor/va;->Hw:Ljava/util/Vector;

    add-int/lit8 v2, v0, 0x1

    invoke-virtual {v5, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5, v0}, Ljava/util/Vector;->setElementAt(Ljava/lang/Object;I)V

    move v0, v2

    goto :goto_1

    :cond_1
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/aide/ui/views/editor/va;->Hw:Ljava/util/Vector;

    iget-object v2, p0, Lcom/aide/ui/views/editor/va;->Hw:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    sub-int/2addr v2, p1

    invoke-virtual {v0, v2}, Ljava/util/Vector;->setSize(I)V

    iget v0, p0, Lcom/aide/ui/views/editor/va;->Zo:I

    sub-int/2addr v0, p1

    iput v0, p0, Lcom/aide/ui/views/editor/va;->Zo:I

    iget v0, p0, Lcom/aide/ui/views/editor/va;->Zo:I

    if-gez v0, :cond_3

    const/4 v0, -0x1

    iput v0, p0, Lcom/aide/ui/views/editor/va;->Zo:I

    :cond_3
    :goto_2
    iget-object v0, p0, Lcom/aide/ui/views/editor/va;->VH:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_5

    iget-object v0, p0, Lcom/aide/ui/views/editor/va;->VH:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/aide/ui/views/editor/va$g;

    iget v2, v0, Lcom/aide/ui/views/editor/va$g;->FH:I

    sub-int/2addr v2, p1

    iput v2, v0, Lcom/aide/ui/views/editor/va$g;->FH:I

    iget v2, v0, Lcom/aide/ui/views/editor/va$g;->FH:I

    if-gez v2, :cond_6

    iget-object v2, p0, Lcom/aide/ui/views/editor/va;->VH:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v0, v1, -0x1

    :goto_3
    add-int/lit8 v1, v0, 0x1

    goto :goto_2

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/views/editor/va;->DW:Z

    if-eqz v1, :cond_4

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-static {v0, v6, v7, p0, v1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_4
    throw v0

    :cond_5
    return-void

    :cond_6
    move v0, v1

    goto :goto_3
.end method

.method private VH()V
    .registers 7
    .annotation runtime Labcd/su;
        method = 0x172e5ec86c8e6518L
    .end annotation

    const-wide v4, 0x116cc930e448934L

    const/4 v0, 0x1

    const/4 v1, 0x0

    :try_start_0
    sget-boolean v2, Lcom/aide/ui/views/editor/va;->j6:Z

    if-eqz v2, :cond_0

    const-wide v2, 0x116cc930e448934L

    invoke-static {v2, v3, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    iget v2, p0, Lcom/aide/ui/views/editor/va;->v5:I

    if-lez v2, :cond_3

    move v2, v0

    :goto_0
    iget-boolean v3, p0, Lcom/aide/ui/views/editor/va;->tp:Z

    if-eq v3, v2, :cond_1

    iput-boolean v2, p0, Lcom/aide/ui/views/editor/va;->tp:Z

    iget-object v3, p0, Lcom/aide/ui/views/editor/va;->we:Lcom/aide/ui/views/editor/g;

    invoke-virtual {v3, v2}, Lcom/aide/ui/views/editor/g;->FH(Z)V

    :cond_1
    iget v2, p0, Lcom/aide/ui/views/editor/va;->v5:I

    iget-object v3, p0, Lcom/aide/ui/views/editor/va;->Hw:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v3

    if-eq v2, v3, :cond_4

    :goto_1
    iget-boolean v1, p0, Lcom/aide/ui/views/editor/va;->EQ:Z

    if-eq v1, v0, :cond_2

    iput-boolean v0, p0, Lcom/aide/ui/views/editor/va;->EQ:Z

    iget-object v1, p0, Lcom/aide/ui/views/editor/va;->we:Lcom/aide/ui/views/editor/g;

    invoke-virtual {v1, v0}, Lcom/aide/ui/views/editor/g;->DW(Z)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    return-void

    :cond_3
    move v2, v1

    goto :goto_0

    :cond_4
    move v0, v1

    goto :goto_1

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/views/editor/va;->DW:Z

    if-eqz v1, :cond_5

    invoke-static {v0, v4, v5, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_5
    throw v0
.end method

.method private gn()V
    .registers 7
    .annotation runtime Labcd/su;
        method = -0x409e6b879618beb1L
    .end annotation

    const-wide v4, -0x13e6da4b8da9363L

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/views/editor/va;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x13e6da4b8da9363L

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    iget v0, p0, Lcom/aide/ui/views/editor/va;->v5:I

    iget-object v1, p0, Lcom/aide/ui/views/editor/va;->Hw:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    if-eq v0, v1, :cond_3

    iget-object v0, p0, Lcom/aide/ui/views/editor/va;->Hw:Ljava/util/Vector;

    iget v1, p0, Lcom/aide/ui/views/editor/va;->v5:I

    invoke-virtual {v0, v1}, Ljava/util/Vector;->setSize(I)V

    iget v0, p0, Lcom/aide/ui/views/editor/va;->Zo:I

    iget v1, p0, Lcom/aide/ui/views/editor/va;->v5:I

    if-le v0, v1, :cond_1

    const/4 v0, -0x1

    iput v0, p0, Lcom/aide/ui/views/editor/va;->Zo:I

    :cond_1
    const/4 v1, 0x0

    :goto_0
    iget-object v0, p0, Lcom/aide/ui/views/editor/va;->VH:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_3

    iget-object v0, p0, Lcom/aide/ui/views/editor/va;->VH:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/aide/ui/views/editor/va$g;

    iget v2, v0, Lcom/aide/ui/views/editor/va$g;->FH:I

    iget v3, p0, Lcom/aide/ui/views/editor/va;->v5:I

    if-le v2, v3, :cond_4

    iget-object v2, p0, Lcom/aide/ui/views/editor/va;->VH:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v0, v1, -0x1

    :goto_1
    add-int/lit8 v1, v0, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/views/editor/va;->DW:Z

    if-eqz v1, :cond_2

    invoke-static {v0, v4, v5, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_2
    throw v0

    :cond_3
    return-void

    :cond_4
    move v0, v1

    goto :goto_1
.end method

.method private j6(Ljava/lang/Object;)Labcd/fm;
    .registers 8
    .annotation runtime Labcd/su;
        method = 0x41730da35a0a220L
    .end annotation

    const-wide v4, -0xdd75bed91ce2c40L

    :try_start_0
    sget-boolean v2, Lcom/aide/ui/views/editor/va;->j6:Z

    if-eqz v2, :cond_0

    const-wide v2, -0xdd75bed91ce2c40L

    invoke-static {v2, v3, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    instance-of v2, p1, Lcom/aide/ui/views/editor/OConsole;

    if-eqz v2, :cond_1

    move-object v0, p1

    check-cast v0, Lcom/aide/ui/views/editor/OConsole;

    move-object v2, v0

    invoke-virtual {v2}, Lcom/aide/ui/views/editor/OConsole;->getCaretPosition()Labcd/fm;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    :goto_0
    return-object v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0

    :catch_0
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/views/editor/va;->DW:Z

    if-eqz v3, :cond_2

    invoke-static {v2, v4, v5, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_2
    throw v2
.end method

.method private j6(Lcom/aide/ui/views/editor/va$b;)V
    .registers 8
    .annotation runtime Labcd/su;
        method = -0x133ba4782e347b08L
    .end annotation

    const-wide v4, -0x10d9a417563ff480L    # -2.6483750441857308E227

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/views/editor/va;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x10d9a417563ff480L    # -2.6483750441857308E227

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    iget-boolean v0, p0, Lcom/aide/ui/views/editor/va;->u7:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/aide/ui/views/editor/va;->Hw:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-nez v0, :cond_4

    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/aide/ui/views/editor/va;->u7:Z

    iget-object v0, p0, Lcom/aide/ui/views/editor/va;->Hw:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    iget v1, p0, Lcom/aide/ui/views/editor/va;->FH:I

    if-lt v0, v1, :cond_2

    iget-object v0, p0, Lcom/aide/ui/views/editor/va;->Hw:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    iget v1, p0, Lcom/aide/ui/views/editor/va;->FH:I

    sub-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0}, Lcom/aide/ui/views/editor/va;->DW(I)V

    :cond_2
    iget-object v0, p0, Lcom/aide/ui/views/editor/va;->Hw:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/aide/ui/views/editor/va;->Hw:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    iput v0, p0, Lcom/aide/ui/views/editor/va;->v5:I

    invoke-direct {p0}, Lcom/aide/ui/views/editor/va;->VH()V

    :cond_3
    :goto_0
    return-void

    :cond_4
    iget-object v0, p0, Lcom/aide/ui/views/editor/va;->Hw:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->lastElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/aide/ui/views/editor/va$b;

    invoke-virtual {v0, p1}, Lcom/aide/ui/views/editor/va$b;->j6(Lcom/aide/ui/views/editor/va$b;)Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/aide/ui/views/editor/va;->Hw:Ljava/util/Vector;

    new-instance v2, Lcom/aide/ui/views/editor/va$a;

    invoke-virtual {v0}, Lcom/aide/ui/views/editor/va$b;->j6()Labcd/fm;

    move-result-object v3

    invoke-direct {v2, p0, v3, v0, p1}, Lcom/aide/ui/views/editor/va$a;-><init>(Lcom/aide/ui/views/editor/va;Labcd/fm;Lcom/aide/ui/views/editor/va$b;Lcom/aide/ui/views/editor/va$b;)V

    iget-object v0, p0, Lcom/aide/ui/views/editor/va;->Hw:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v1, v2, v0}, Ljava/util/Vector;->setElementAt(Ljava/lang/Object;I)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/views/editor/va;->DW:Z

    if-eqz v1, :cond_5

    invoke-static {v0, v4, v5, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_5
    throw v0
.end method


# virtual methods
.method public DW(IICLcom/aide/ui/views/editor/g;Ljava/lang/Object;)V
    .registers 16

    const-wide v8, 0x59b1c9e020ef3968L    # 1.17592444612572E124

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/views/editor/va;->j6:Z

    if-eqz v0, :cond_0

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, p2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v5, Ljava/lang/Character;

    invoke-direct {v5, p3}, Ljava/lang/Character;-><init>(C)V

    const-wide v0, 0x59b1c9e020ef3968L    # 1.17592444612572E124

    move-object v2, p0

    move-object v6, p4

    move-object v7, p5

    invoke-static/range {v0 .. v7}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    if-eq p5, p0, :cond_1

    invoke-direct {p0}, Lcom/aide/ui/views/editor/va;->gn()V

    new-instance v0, Labcd/hm;

    invoke-direct {v0, p1, p2, p1, p2}, Labcd/hm;-><init>(IIII)V

    invoke-direct {p0, p5}, Lcom/aide/ui/views/editor/va;->j6(Ljava/lang/Object;)Labcd/fm;

    move-result-object v1

    new-instance v2, Lcom/aide/ui/views/editor/va$h;

    invoke-direct {v2, p0, v1, v0, p3}, Lcom/aide/ui/views/editor/va$h;-><init>(Lcom/aide/ui/views/editor/va;Labcd/fm;Labcd/hm;C)V

    invoke-direct {p0, v2}, Lcom/aide/ui/views/editor/va;->j6(Lcom/aide/ui/views/editor/va$b;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    return-void

    :catch_0
    move-exception v1

    sget-boolean v0, Lcom/aide/ui/views/editor/va;->DW:Z

    if-eqz v0, :cond_2

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v7, Ljava/lang/Character;

    invoke-direct {v7, p3}, Ljava/lang/Character;-><init>(C)V

    move-wide v2, v8

    move-object v4, p0

    move-object v8, p4

    move-object v9, p5

    invoke-static/range {v1 .. v9}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_2
    throw v1
.end method

.method public DW(IIIILcom/aide/ui/views/editor/g;Ljava/lang/Object;)V
    .registers 12

    sget-boolean v0, Lcom/aide/ui/views/editor/va;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x574fbb27a7ab6b9L

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, p1}, Ljava/lang/Integer;-><init>(I)V

    aput-object v4, v2, v3

    const/4 v3, 0x1

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, p2}, Ljava/lang/Integer;-><init>(I)V

    aput-object v4, v2, v3

    const/4 v3, 0x2

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, p3}, Ljava/lang/Integer;-><init>(I)V

    aput-object v4, v2, v3

    const/4 v3, 0x3

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, p4}, Ljava/lang/Integer;-><init>(I)V

    aput-object v4, v2, v3

    const/4 v3, 0x4

    aput-object p5, v2, v3

    const/4 v3, 0x5

    aput-object p6, v2, v3

    invoke-static {v0, v1, p0, v2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;[Ljava/lang/Object;)V

    :cond_0
    if-eq p6, p0, :cond_1

    invoke-direct {p0}, Lcom/aide/ui/views/editor/va;->gn()V

    new-instance v0, Labcd/hm;

    invoke-direct {v0, p1, p2, p3, p4}, Labcd/hm;-><init>(IIII)V

    invoke-direct {p0, p6}, Lcom/aide/ui/views/editor/va;->j6(Ljava/lang/Object;)Labcd/fm;

    move-result-object v1

    invoke-virtual {p5, v0}, Lcom/aide/ui/views/editor/b;->j6(Labcd/hm;)Ljava/io/Reader;

    move-result-object v2

    new-instance v3, Ljava/io/StringWriter;

    invoke-direct {v3}, Ljava/io/StringWriter;-><init>()V

    :try_start_0
    invoke-static {v2, v3}, Lcom/aide/common/Xa;->j6(Ljava/io/Reader;Ljava/io/Writer;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    new-instance v2, Lcom/aide/ui/views/editor/va$h;

    invoke-virtual {v3}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, p0, v1, v0, v3}, Lcom/aide/ui/views/editor/va$h;-><init>(Lcom/aide/ui/views/editor/va;Labcd/fm;Labcd/hm;Ljava/lang/String;)V

    invoke-direct {p0, v2}, Lcom/aide/ui/views/editor/va;->j6(Lcom/aide/ui/views/editor/va$b;)V

    :cond_1
    return-void

    :catch_0
    move-exception v0

    new-instance v0, Ljava/lang/InternalError;

    invoke-direct {v0}, Ljava/lang/InternalError;-><init>()V

    throw v0
.end method

.method public DW(IILcom/aide/ui/views/editor/g;Ljava/lang/Object;)V
    .registers 15

    const-wide v8, 0x1459803a71c1c830L    # 1.211988257884289E-210

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/views/editor/va;->j6:Z

    if-eqz v0, :cond_0

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, p2}, Ljava/lang/Integer;-><init>(I)V

    const-wide v0, 0x1459803a71c1c830L    # 1.211988257884289E-210

    move-object v2, p0

    move-object v5, p3

    move-object v6, p4

    invoke-static/range {v0 .. v6}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    if-eq p4, p0, :cond_1

    invoke-direct {p0}, Lcom/aide/ui/views/editor/va;->gn()V

    invoke-direct {p0, p4}, Lcom/aide/ui/views/editor/va;->j6(Ljava/lang/Object;)Labcd/fm;

    move-result-object v0

    new-instance v1, Lcom/aide/ui/views/editor/va$f;

    invoke-direct {v1, p0, v0, p2, p1}, Lcom/aide/ui/views/editor/va$f;-><init>(Lcom/aide/ui/views/editor/va;Labcd/fm;II)V

    invoke-direct {p0, v1}, Lcom/aide/ui/views/editor/va;->j6(Lcom/aide/ui/views/editor/va$b;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    return-void

    :catch_0
    move-exception v1

    sget-boolean v0, Lcom/aide/ui/views/editor/va;->DW:Z

    if-eqz v0, :cond_2

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    move-wide v2, v8

    move-object v4, p0

    move-object v7, p3

    move-object v8, p4

    invoke-static/range {v1 .. v8}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_2
    throw v1
.end method

.method public DW()Z
    .registers 5

    const-wide v2, 0x5d45130d2c7c555L

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/views/editor/va;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x5d45130d2c7c555L

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    iget-boolean v0, p0, Lcom/aide/ui/views/editor/va;->EQ:Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/views/editor/va;->DW:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public FH()Z
    .registers 5

    const-wide v2, 0x5e4ba7dc27f878bL

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/views/editor/va;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x5e4ba7dc27f878bL

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    iget-boolean v0, p0, Lcom/aide/ui/views/editor/va;->tp:Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/views/editor/va;->DW:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public Hw()Ljava/util/List;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/aide/ui/views/editor/va$j;",
            ">;"
        }
    .end annotation

    const-wide v6, 0x3ddd830b9feb2e69L    # 1.0736365267285007E-10

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/views/editor/va;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x3ddd830b9feb2e69L    # 1.0736365267285007E-10

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    const/4 v0, 0x1

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/aide/ui/views/editor/va;->VH:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_3

    iget-object v0, p0, Lcom/aide/ui/views/editor/va;->VH:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/aide/ui/views/editor/va$g;

    iget v3, v0, Lcom/aide/ui/views/editor/va$g;->FH:I

    iget v4, p0, Lcom/aide/ui/views/editor/va;->v5:I

    if-ne v3, v4, :cond_1

    iget-object v0, v0, Lcom/aide/ui/views/editor/va$g;->Hw:Lcom/aide/ui/views/editor/va$j;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/views/editor/va;->DW:Z

    if-eqz v1, :cond_2

    invoke-static {v0, v6, v7, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_2
    throw v0

    :cond_3
    return-object v2
.end method

.method public Zo()V
    .registers 5

    const-wide v2, -0x596257b0ee1091b0L

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/views/editor/va;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x596257b0ee1091b0L

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/aide/ui/views/editor/va;->u7:Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/views/editor/va;->DW:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public j6(Lcom/aide/ui/views/editor/g;)Labcd/fm;
    .registers 8

    const-wide v4, -0x141b936ae0e82c3L

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/views/editor/va;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x141b936ae0e82c3L

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    iget-boolean v0, p0, Lcom/aide/ui/views/editor/va;->EQ:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/aide/ui/views/editor/va;->Hw:Ljava/util/Vector;

    iget v1, p0, Lcom/aide/ui/views/editor/va;->v5:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/aide/ui/views/editor/va;->v5:I

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/aide/ui/views/editor/va$b;

    invoke-virtual {v0, p1}, Lcom/aide/ui/views/editor/va$b;->j6(Lcom/aide/ui/views/editor/g;)V

    invoke-direct {p0}, Lcom/aide/ui/views/editor/va;->VH()V

    iget v0, p0, Lcom/aide/ui/views/editor/va;->v5:I

    iget-object v1, p0, Lcom/aide/ui/views/editor/va;->Hw:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v0, p0, Lcom/aide/ui/views/editor/va;->Hw:Ljava/util/Vector;

    iget v1, p0, Lcom/aide/ui/views/editor/va;->v5:I

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/aide/ui/views/editor/va$b;

    invoke-virtual {v0}, Lcom/aide/ui/views/editor/va$b;->j6()Labcd/fm;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/aide/ui/views/editor/va;->gn:Labcd/fm;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/views/editor/va;->DW:Z

    if-eqz v1, :cond_3

    invoke-static {v0, v4, v5, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_3
    throw v0
.end method

.method public j6(Lcom/aide/ui/views/editor/g;Ljava/lang/Object;)Labcd/fm;
    .registers 10

    const-wide v2, 0x33802e025c274850L

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/views/editor/va;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x33802e025c274850L

    invoke-static {v0, v1, p0, p1, p2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    iget-boolean v0, p0, Lcom/aide/ui/views/editor/va;->tp:Z

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/aide/ui/views/editor/va;->v5:I

    iget-object v1, p0, Lcom/aide/ui/views/editor/va;->Hw:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    if-ne v0, v1, :cond_1

    invoke-direct {p0, p2}, Lcom/aide/ui/views/editor/va;->j6(Ljava/lang/Object;)Labcd/fm;

    move-result-object v0

    iput-object v0, p0, Lcom/aide/ui/views/editor/va;->gn:Labcd/fm;

    :cond_1
    invoke-virtual {p0}, Lcom/aide/ui/views/editor/va;->Zo()V

    iget-object v0, p0, Lcom/aide/ui/views/editor/va;->Hw:Ljava/util/Vector;

    iget v1, p0, Lcom/aide/ui/views/editor/va;->v5:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/aide/ui/views/editor/va;->v5:I

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/aide/ui/views/editor/va$b;

    invoke-virtual {v0}, Lcom/aide/ui/views/editor/va$b;->DW()Lcom/aide/ui/views/editor/va$b;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/aide/ui/views/editor/va$b;->j6(Lcom/aide/ui/views/editor/g;)V

    invoke-direct {p0}, Lcom/aide/ui/views/editor/va;->VH()V

    invoke-virtual {v0}, Lcom/aide/ui/views/editor/va$b;->j6()Labcd/fm;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    :catch_0
    move-exception v1

    sget-boolean v0, Lcom/aide/ui/views/editor/va;->DW:Z

    if-eqz v0, :cond_3

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_3
    throw v1
.end method

.method public j6(I)V
    .registers 6

    const-wide v2, 0x1b85db2638ea6eecL    # 4.31483566741212E-176

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/views/editor/va;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x1b85db2638ea6eecL    # 4.31483566741212E-176

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;I)V

    :cond_0
    iget v0, p0, Lcom/aide/ui/views/editor/va;->FH:I

    if-eq v0, p1, :cond_2

    iput p1, p0, Lcom/aide/ui/views/editor/va;->FH:I

    iget-object v0, p0, Lcom/aide/ui/views/editor/va;->Hw:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-le v0, p1, :cond_2

    iget-object v0, p0, Lcom/aide/ui/views/editor/va;->Hw:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    sub-int/2addr v0, p1

    iget v1, p0, Lcom/aide/ui/views/editor/va;->v5:I

    if-le v0, v1, :cond_1

    iget v0, p0, Lcom/aide/ui/views/editor/va;->v5:I

    :cond_1
    invoke-direct {p0, v0}, Lcom/aide/ui/views/editor/va;->DW(I)V

    iget v1, p0, Lcom/aide/ui/views/editor/va;->v5:I

    sub-int v0, v1, v0

    iput v0, p0, Lcom/aide/ui/views/editor/va;->v5:I

    iget-object v0, p0, Lcom/aide/ui/views/editor/va;->Hw:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-le v0, p1, :cond_2

    iget-object v0, p0, Lcom/aide/ui/views/editor/va;->Hw:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->setSize(I)V

    :cond_2
    invoke-direct {p0}, Lcom/aide/ui/views/editor/va;->VH()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/views/editor/va;->DW:Z

    if-eqz v1, :cond_3

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-static {v0, v2, v3, p0, v1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_3
    throw v0
.end method

.method public j6(IICLcom/aide/ui/views/editor/g;Ljava/lang/Object;)V
    .registers 16

    const-wide v8, 0x125f07ffe7a8a007L    # 3.433858795812611E-220

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/views/editor/va;->j6:Z

    if-eqz v0, :cond_0

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, p2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v5, Ljava/lang/Character;

    invoke-direct {v5, p3}, Ljava/lang/Character;-><init>(C)V

    const-wide v0, 0x125f07ffe7a8a007L    # 3.433858795812611E-220

    move-object v2, p0

    move-object v6, p4

    move-object v7, p5

    invoke-static/range {v0 .. v7}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    if-eq p5, p0, :cond_1

    invoke-direct {p0}, Lcom/aide/ui/views/editor/va;->gn()V

    new-instance v0, Labcd/hm;

    invoke-direct {v0, p1, p2, p1, p2}, Labcd/hm;-><init>(IIII)V

    invoke-direct {p0, p5}, Lcom/aide/ui/views/editor/va;->j6(Ljava/lang/Object;)Labcd/fm;

    move-result-object v1

    new-instance v2, Lcom/aide/ui/views/editor/va$c;

    invoke-direct {v2, p0, v1, v0, p3}, Lcom/aide/ui/views/editor/va$c;-><init>(Lcom/aide/ui/views/editor/va;Labcd/fm;Labcd/hm;C)V

    invoke-direct {p0, v2}, Lcom/aide/ui/views/editor/va;->j6(Lcom/aide/ui/views/editor/va$b;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    return-void

    :catch_0
    move-exception v1

    sget-boolean v0, Lcom/aide/ui/views/editor/va;->DW:Z

    if-eqz v0, :cond_2

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v7, Ljava/lang/Character;

    invoke-direct {v7, p3}, Ljava/lang/Character;-><init>(C)V

    move-wide v2, v8

    move-object v4, p0

    move-object v8, p4

    move-object v9, p5

    invoke-static/range {v1 .. v9}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_2
    throw v1
.end method

.method public j6(IIIILcom/aide/ui/views/editor/g;Ljava/lang/Object;)V
    .registers 12

    sget-boolean v0, Lcom/aide/ui/views/editor/va;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x3294e201c96a0348L    # 4.957360492574066E-65

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, p1}, Ljava/lang/Integer;-><init>(I)V

    aput-object v4, v2, v3

    const/4 v3, 0x1

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, p2}, Ljava/lang/Integer;-><init>(I)V

    aput-object v4, v2, v3

    const/4 v3, 0x2

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, p3}, Ljava/lang/Integer;-><init>(I)V

    aput-object v4, v2, v3

    const/4 v3, 0x3

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, p4}, Ljava/lang/Integer;-><init>(I)V

    aput-object v4, v2, v3

    const/4 v3, 0x4

    aput-object p5, v2, v3

    const/4 v3, 0x5

    aput-object p6, v2, v3

    invoke-static {v0, v1, p0, v2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;[Ljava/lang/Object;)V

    :cond_0
    if-eq p6, p0, :cond_1

    invoke-direct {p0}, Lcom/aide/ui/views/editor/va;->gn()V

    new-instance v0, Labcd/hm;

    invoke-direct {v0, p1, p2, p3, p4}, Labcd/hm;-><init>(IIII)V

    invoke-direct {p0, p6}, Lcom/aide/ui/views/editor/va;->j6(Ljava/lang/Object;)Labcd/fm;

    move-result-object v1

    invoke-virtual {p5, v0}, Lcom/aide/ui/views/editor/b;->j6(Labcd/hm;)Ljava/io/Reader;

    move-result-object v2

    new-instance v3, Ljava/io/StringWriter;

    invoke-direct {v3}, Ljava/io/StringWriter;-><init>()V

    :try_start_0
    invoke-static {v2, v3}, Lcom/aide/common/Xa;->j6(Ljava/io/Reader;Ljava/io/Writer;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    new-instance v2, Lcom/aide/ui/views/editor/va$c;

    invoke-virtual {v3}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, p0, v1, v0, v3}, Lcom/aide/ui/views/editor/va$c;-><init>(Lcom/aide/ui/views/editor/va;Labcd/fm;Labcd/hm;Ljava/lang/String;)V

    invoke-direct {p0, v2}, Lcom/aide/ui/views/editor/va;->j6(Lcom/aide/ui/views/editor/va$b;)V

    :cond_1
    return-void

    :catch_0
    move-exception v0

    new-instance v0, Ljava/lang/InternalError;

    invoke-direct {v0}, Ljava/lang/InternalError;-><init>()V

    throw v0
.end method

.method public j6(IILcom/aide/ui/views/editor/g;Ljava/lang/Object;)V
    .registers 15

    const-wide v8, 0x44df22ce482dbf97L    # 5.881416577933446E23

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/views/editor/va;->j6:Z

    if-eqz v0, :cond_0

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, p2}, Ljava/lang/Integer;-><init>(I)V

    const-wide v0, 0x44df22ce482dbf97L    # 5.881416577933446E23

    move-object v2, p0

    move-object v5, p3

    move-object v6, p4

    invoke-static/range {v0 .. v6}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    if-eq p4, p0, :cond_1

    invoke-direct {p0}, Lcom/aide/ui/views/editor/va;->gn()V

    invoke-direct {p0, p4}, Lcom/aide/ui/views/editor/va;->j6(Ljava/lang/Object;)Labcd/fm;

    move-result-object v0

    new-instance v1, Lcom/aide/ui/views/editor/va$e;

    invoke-direct {v1, p0, v0, p2, p1}, Lcom/aide/ui/views/editor/va$e;-><init>(Lcom/aide/ui/views/editor/va;Labcd/fm;II)V

    invoke-direct {p0, v1}, Lcom/aide/ui/views/editor/va;->j6(Lcom/aide/ui/views/editor/va$b;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    return-void

    :catch_0
    move-exception v1

    sget-boolean v0, Lcom/aide/ui/views/editor/va;->DW:Z

    if-eqz v0, :cond_2

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    move-wide v2, v8

    move-object v4, p0

    move-object v7, p3

    move-object v8, p4

    invoke-static/range {v1 .. v8}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_2
    throw v1
.end method

.method public j6(II[C[CLcom/aide/ui/views/editor/g;Ljava/lang/Object;)V
    .registers 14

    sget-boolean v0, Lcom/aide/ui/views/editor/va;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x6f8cc1d673501a60L

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, p1}, Ljava/lang/Integer;-><init>(I)V

    aput-object v4, v2, v3

    const/4 v3, 0x1

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, p2}, Ljava/lang/Integer;-><init>(I)V

    aput-object v4, v2, v3

    const/4 v3, 0x2

    aput-object p3, v2, v3

    const/4 v3, 0x3

    aput-object p4, v2, v3

    const/4 v3, 0x4

    aput-object p5, v2, v3

    const/4 v3, 0x5

    aput-object p6, v2, v3

    invoke-static {v0, v1, p0, v2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;[Ljava/lang/Object;)V

    :cond_0
    if-eq p6, p0, :cond_1

    invoke-direct {p0}, Lcom/aide/ui/views/editor/va;->gn()V

    new-instance v0, Lcom/aide/ui/views/editor/va$k;

    invoke-direct {p0, p6}, Lcom/aide/ui/views/editor/va;->j6(Ljava/lang/Object;)Labcd/fm;

    move-result-object v2

    move-object v1, p0

    move v3, p1

    move v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/aide/ui/views/editor/va$k;-><init>(Lcom/aide/ui/views/editor/va;Labcd/fm;II[C[C)V

    invoke-direct {p0, v0}, Lcom/aide/ui/views/editor/va;->j6(Lcom/aide/ui/views/editor/va$b;)V

    :cond_1
    return-void
.end method

.method public j6(Lcom/aide/ui/views/editor/va$j;)V
    .registers 8

    const-wide v4, 0x5de98966a4c825d5L    # 2.4912258232834632E144

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/views/editor/va;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x5de98966a4c825d5L    # 2.4912258232834632E144

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/aide/ui/views/editor/va;->VH:Ljava/util/List;

    new-instance v1, Lcom/aide/ui/views/editor/va$g;

    iget v2, p0, Lcom/aide/ui/views/editor/va;->v5:I

    invoke-direct {v1, v2, p1}, Lcom/aide/ui/views/editor/va$g;-><init>(ILcom/aide/ui/views/editor/va$j;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/aide/ui/views/editor/va;->u7:Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/views/editor/va;->DW:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v4, v5, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public j6()Z
    .registers 5

    const-wide v2, 0x4dc2480cb2825929L    # 3.850521471685163E66

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/views/editor/va;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x4dc2480cb2825929L    # 3.850521471685163E66

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    iget v0, p0, Lcom/aide/ui/views/editor/va;->v5:I

    iget v1, p0, Lcom/aide/ui/views/editor/va;->Zo:I
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

    sget-boolean v1, Lcom/aide/ui/views/editor/va;->DW:Z

    if-eqz v1, :cond_2

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_2
    throw v0
.end method

.method public v5()V
    .registers 5

    const-wide v2, 0x140ccf983238b03cL

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/views/editor/va;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x140ccf983238b03cL

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    iget v0, p0, Lcom/aide/ui/views/editor/va;->v5:I

    iput v0, p0, Lcom/aide/ui/views/editor/va;->Zo:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/aide/ui/views/editor/va;->u7:Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/views/editor/va;->DW:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method
