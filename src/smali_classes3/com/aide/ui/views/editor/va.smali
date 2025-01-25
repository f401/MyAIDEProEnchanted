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
            "Ljava/util/Vector<",
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
            "Ljava/util/List<",
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
    .registers 3

    const-class v0, Lcom/aide/ui/views/editor/va;

    const-wide v1, 0x470db739f1800L

    invoke-static {v0, v1, v2, v1, v2}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method public constructor <init>(Lcom/aide/ui/views/editor/g;I)V
    .registers 10

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/views/editor/va;->j6:Z

    if-eqz v0, :cond_12

    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, p2}, Ljava/lang/Integer;-><init>(I)V

    const-wide v1, 0x707aaedbdec767fL

    const/4 v3, 0x0

    invoke-static {v1, v2, v3, p1, v0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_12
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

    iput v0, p0, Lcom/aide/ui/views/editor/va;->Zo:I

    invoke-virtual {p0, p2}, Lcom/aide/ui/views/editor/va;->j6(I)V
    :try_end_2e
    .catchall {:try_start_0 .. :try_end_2e} :catchall_2f

    return-void

    :catchall_2f
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/views/editor/va;->DW:Z

    if-eqz v1, :cond_44

    const-wide v2, 0x707aaedbdec767fL

    const/4 v4, 0x0

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    move-object v1, v0

    move-object v5, p1

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_44
    throw v0
.end method

.method private DW(I)V
    .registers 10
    .annotation runtime Labcd/su;
        method = 0x27f0c6701bf70521L
    .end annotation

    const-wide v0, -0xefda14cf4988305L  # -2.336328284774179E236

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/views/editor/va;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;I)V

    :cond_c
    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_e
    if-ge v3, p1, :cond_2b

    const/4 v4, 0x0

    :goto_11
    iget-object v5, p0, Lcom/aide/ui/views/editor/va;->Hw:Ljava/util/Vector;

    invoke-virtual {v5}, Ljava/util/Vector;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    if-ge v4, v5, :cond_28

    iget-object v5, p0, Lcom/aide/ui/views/editor/va;->Hw:Ljava/util/Vector;

    add-int/lit8 v6, v4, 0x1

    invoke-virtual {v5, v6}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v5, v7, v4}, Ljava/util/Vector;->setElementAt(Ljava/lang/Object;I)V

    move v4, v6

    goto :goto_11

    :cond_28
    add-int/lit8 v3, v3, 0x1

    goto :goto_e

    :cond_2b
    iget-object v3, p0, Lcom/aide/ui/views/editor/va;->Hw:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v4

    sub-int/2addr v4, p1

    invoke-virtual {v3, v4}, Ljava/util/Vector;->setSize(I)V

    iget v3, p0, Lcom/aide/ui/views/editor/va;->Zo:I

    sub-int/2addr v3, p1

    iput v3, p0, Lcom/aide/ui/views/editor/va;->Zo:I

    if-gez v3, :cond_3f

    const/4 v3, -0x1

    iput v3, p0, Lcom/aide/ui/views/editor/va;->Zo:I

    :cond_3f
    :goto_3f
    iget-object v3, p0, Lcom/aide/ui/views/editor/va;->VH:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_62

    iget-object v3, p0, Lcom/aide/ui/views/editor/va;->VH:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/aide/ui/views/editor/va$g;

    iget v4, v3, Lcom/aide/ui/views/editor/va$g;->FH:I

    sub-int/2addr v4, p1

    iput v4, v3, Lcom/aide/ui/views/editor/va$g;->FH:I

    iget v4, v3, Lcom/aide/ui/views/editor/va$g;->FH:I

    if-gez v4, :cond_5f

    iget-object v4, p0, Lcom/aide/ui/views/editor/va;->VH:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->remove(Ljava/lang/Object;)Z
    :try_end_5d
    .catchall {:try_start_5 .. :try_end_5d} :catchall_63

    add-int/lit8 v2, v2, -0x1

    :cond_5f
    add-int/lit8 v2, v2, 0x1

    goto :goto_3f

    :cond_62
    return-void

    :catchall_63
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/views/editor/va;->DW:Z

    if-eqz v3, :cond_70

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-static {v2, v0, v1, p0, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_70
    goto :goto_72

    :goto_71
    throw v2

    :goto_72
    goto :goto_71
.end method

.method private VH()V
    .registers 7
    .annotation runtime Labcd/su;
        method = 0x172e5ec86c8e6518L
    .end annotation

    const-wide v0, 0x116cc930e448934L

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/views/editor/va;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    iget v2, p0, Lcom/aide/ui/views/editor/va;->v5:I

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-lez v2, :cond_14

    const/4 v2, 0x1

    goto :goto_15

    :cond_14
    const/4 v2, 0x0

    :goto_15
    iget-boolean v5, p0, Lcom/aide/ui/views/editor/va;->tp:Z

    if-eq v5, v2, :cond_20

    iput-boolean v2, p0, Lcom/aide/ui/views/editor/va;->tp:Z

    iget-object v5, p0, Lcom/aide/ui/views/editor/va;->we:Lcom/aide/ui/views/editor/g;

    invoke-virtual {v5, v2}, Lcom/aide/ui/views/editor/g;->FH(Z)V

    :cond_20
    iget v2, p0, Lcom/aide/ui/views/editor/va;->v5:I

    iget-object v5, p0, Lcom/aide/ui/views/editor/va;->Hw:Ljava/util/Vector;

    invoke-virtual {v5}, Ljava/util/Vector;->size()I

    move-result v5

    if-eq v2, v5, :cond_2b

    const/4 v3, 0x1

    :cond_2b
    iget-boolean v2, p0, Lcom/aide/ui/views/editor/va;->EQ:Z

    if-eq v2, v3, :cond_36

    iput-boolean v3, p0, Lcom/aide/ui/views/editor/va;->EQ:Z

    iget-object v2, p0, Lcom/aide/ui/views/editor/va;->we:Lcom/aide/ui/views/editor/g;

    invoke-virtual {v2, v3}, Lcom/aide/ui/views/editor/g;->DW(Z)V
    :try_end_36
    .catchall {:try_start_5 .. :try_end_36} :catchall_37

    :cond_36
    return-void

    :catchall_37
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/views/editor/va;->DW:Z

    if-eqz v3, :cond_3f

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_3f
    throw v2
.end method

.method private gn()V
    .registers 7
    .annotation runtime Labcd/su;
        method = -0x409e6b879618beb1L
    .end annotation

    const-wide v0, -0x13e6da4b8da9363L

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/views/editor/va;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    iget v2, p0, Lcom/aide/ui/views/editor/va;->v5:I

    iget-object v3, p0, Lcom/aide/ui/views/editor/va;->Hw:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v3

    if-eq v2, v3, :cond_47

    iget-object v2, p0, Lcom/aide/ui/views/editor/va;->Hw:Ljava/util/Vector;

    iget v3, p0, Lcom/aide/ui/views/editor/va;->v5:I

    invoke-virtual {v2, v3}, Ljava/util/Vector;->setSize(I)V

    iget v2, p0, Lcom/aide/ui/views/editor/va;->Zo:I

    iget v3, p0, Lcom/aide/ui/views/editor/va;->v5:I

    if-le v2, v3, :cond_26

    const/4 v2, -0x1

    iput v2, p0, Lcom/aide/ui/views/editor/va;->Zo:I

    :cond_26
    const/4 v2, 0x0

    :goto_27
    iget-object v3, p0, Lcom/aide/ui/views/editor/va;->VH:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_47

    iget-object v3, p0, Lcom/aide/ui/views/editor/va;->VH:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/aide/ui/views/editor/va$g;

    iget v4, v3, Lcom/aide/ui/views/editor/va$g;->FH:I

    iget v5, p0, Lcom/aide/ui/views/editor/va;->v5:I

    if-le v4, v5, :cond_44

    iget-object v4, p0, Lcom/aide/ui/views/editor/va;->VH:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->remove(Ljava/lang/Object;)Z
    :try_end_42
    .catchall {:try_start_5 .. :try_end_42} :catchall_48

    add-int/lit8 v2, v2, -0x1

    :cond_44
    add-int/lit8 v2, v2, 0x1

    goto :goto_27

    :cond_47
    return-void

    :catchall_48
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/views/editor/va;->DW:Z

    if-eqz v3, :cond_50

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_50
    goto :goto_52

    :goto_51
    throw v2

    :goto_52
    goto :goto_51
.end method

.method private j6(Ljava/lang/Object;)Labcd/fm;
    .registers 6
    .annotation runtime Labcd/su;
        method = 0x41730da35a0a220L
    .end annotation

    const-wide v0, -0xdd75bed91ce2c40L

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/views/editor/va;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    instance-of v2, p1, Lcom/aide/ui/views/editor/OConsole;

    if-eqz v2, :cond_18

    move-object v2, p1

    check-cast v2, Lcom/aide/ui/views/editor/OConsole;

    invoke-virtual {v2}, Lcom/aide/ui/views/editor/OConsole;->getCaretPosition()Labcd/fm;

    move-result-object p1
    :try_end_17
    .catchall {:try_start_5 .. :try_end_17} :catchall_1a

    return-object p1

    :cond_18
    const/4 p1, 0x0

    return-object p1

    :catchall_1a
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/views/editor/va;->DW:Z

    if-eqz v3, :cond_22

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_22
    throw v2
.end method

.method private j6(Lcom/aide/ui/views/editor/va$b;)V
    .registers 8
    .annotation runtime Labcd/su;
        method = -0x133ba4782e347b08L
    .end annotation

    const-wide v0, -0x10d9a417563ff480L  # -2.6483750441857308E227

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/views/editor/va;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    iget-boolean v2, p0, Lcom/aide/ui/views/editor/va;->u7:Z

    if-nez v2, :cond_3e

    iget-object v2, p0, Lcom/aide/ui/views/editor/va;->Hw:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    if-nez v2, :cond_19

    goto :goto_3e

    :cond_19
    iget-object v2, p0, Lcom/aide/ui/views/editor/va;->Hw:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->lastElement()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/aide/ui/views/editor/va$b;

    invoke-virtual {v2, p1}, Lcom/aide/ui/views/editor/va$b;->j6(Lcom/aide/ui/views/editor/va$b;)Z

    move-result v3

    if-nez v3, :cond_69

    iget-object v3, p0, Lcom/aide/ui/views/editor/va;->Hw:Ljava/util/Vector;

    new-instance v4, Lcom/aide/ui/views/editor/va$a;

    invoke-virtual {v2}, Lcom/aide/ui/views/editor/va$b;->j6()Labcd/fm;

    move-result-object v5

    invoke-direct {v4, p0, v5, v2, p1}, Lcom/aide/ui/views/editor/va$a;-><init>(Lcom/aide/ui/views/editor/va;Labcd/fm;Lcom/aide/ui/views/editor/va$b;Lcom/aide/ui/views/editor/va$b;)V

    iget-object v2, p0, Lcom/aide/ui/views/editor/va;->Hw:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v3, v4, v2}, Ljava/util/Vector;->setElementAt(Ljava/lang/Object;I)V

    goto :goto_69

    :cond_3e
    :goto_3e
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/aide/ui/views/editor/va;->u7:Z

    iget-object v2, p0, Lcom/aide/ui/views/editor/va;->Hw:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    iget v3, p0, Lcom/aide/ui/views/editor/va;->FH:I

    if-lt v2, v3, :cond_59

    iget-object v2, p0, Lcom/aide/ui/views/editor/va;->Hw:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    iget v3, p0, Lcom/aide/ui/views/editor/va;->FH:I

    sub-int/2addr v2, v3

    add-int/lit8 v2, v2, 0x1

    invoke-direct {p0, v2}, Lcom/aide/ui/views/editor/va;->DW(I)V

    :cond_59
    iget-object v2, p0, Lcom/aide/ui/views/editor/va;->Hw:Ljava/util/Vector;

    invoke-virtual {v2, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    iget-object v2, p0, Lcom/aide/ui/views/editor/va;->Hw:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    iput v2, p0, Lcom/aide/ui/views/editor/va;->v5:I

    invoke-direct {p0}, Lcom/aide/ui/views/editor/va;->VH()V
    :try_end_69
    .catchall {:try_start_5 .. :try_end_69} :catchall_6a

    :cond_69
    :goto_69
    return-void

    :catchall_6a
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/views/editor/va;->DW:Z

    if-eqz v3, :cond_72

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_72
    throw v2
.end method


# virtual methods
.method public DW(IICLcom/aide/ui/views/editor/g;Ljava/lang/Object;)V
    .registers 16

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/views/editor/va;->j6:Z

    if-eqz v0, :cond_1e

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v6, Ljava/lang/Character;

    invoke-direct {v6, p3}, Ljava/lang/Character;-><init>(C)V

    const-wide v1, 0x59b1c9e020ef3968L  # 1.17592444612572E124

    move-object v3, p0

    move-object v7, p4

    move-object v8, p5

    invoke-static/range {v1 .. v8}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1e
    if-eq p5, p0, :cond_34

    invoke-direct {p0}, Lcom/aide/ui/views/editor/va;->gn()V

    new-instance v0, Labcd/hm;

    invoke-direct {v0, p1, p2, p1, p2}, Labcd/hm;-><init>(IIII)V

    invoke-direct {p0, p5}, Lcom/aide/ui/views/editor/va;->j6(Ljava/lang/Object;)Labcd/fm;

    move-result-object v1

    new-instance v2, Lcom/aide/ui/views/editor/va$h;

    invoke-direct {v2, p0, v1, v0, p3}, Lcom/aide/ui/views/editor/va$h;-><init>(Lcom/aide/ui/views/editor/va;Labcd/fm;Labcd/hm;C)V

    invoke-direct {p0, v2}, Lcom/aide/ui/views/editor/va;->j6(Lcom/aide/ui/views/editor/va$b;)V
    :try_end_34
    .catchall {:try_start_0 .. :try_end_34} :catchall_35

    :cond_34
    return-void

    :catchall_35
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/views/editor/va;->DW:Z

    if-eqz v1, :cond_55

    const-wide v2, 0x59b1c9e020ef3968L  # 1.17592444612572E124

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v7, Ljava/lang/Character;

    invoke-direct {v7, p3}, Ljava/lang/Character;-><init>(C)V

    move-object v1, v0

    move-object v4, p0

    move-object v8, p4

    move-object v9, p5

    invoke-static/range {v1 .. v9}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_55
    throw v0
.end method

.method public DW(IIIILcom/aide/ui/views/editor/g;Ljava/lang/Object;)V
    .registers 10

    sget-boolean v0, Lcom/aide/ui/views/editor/va;->j6:Z

    if-eqz v0, :cond_35

    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/Object;

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p1}, Ljava/lang/Integer;-><init>(I)V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p2}, Ljava/lang/Integer;-><init>(I)V

    const/4 v2, 0x1

    aput-object v1, v0, v2

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p3}, Ljava/lang/Integer;-><init>(I)V

    const/4 v2, 0x2

    aput-object v1, v0, v2

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p4}, Ljava/lang/Integer;-><init>(I)V

    const/4 v2, 0x3

    aput-object v1, v0, v2

    const/4 v1, 0x4

    aput-object p5, v0, v1

    const/4 v1, 0x5

    aput-object p6, v0, v1

    const-wide v1, 0x574fbb27a7ab6b9L

    invoke-static {v1, v2, p0, v0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;[Ljava/lang/Object;)V

    :cond_35
    if-eq p6, p0, :cond_63

    invoke-direct {p0}, Lcom/aide/ui/views/editor/va;->gn()V

    new-instance v0, Labcd/hm;

    invoke-direct {v0, p1, p2, p3, p4}, Labcd/hm;-><init>(IIII)V

    invoke-direct {p0, p6}, Lcom/aide/ui/views/editor/va;->j6(Ljava/lang/Object;)Labcd/fm;

    move-result-object p1

    invoke-virtual {p5, v0}, Lcom/aide/ui/views/editor/b;->j6(Labcd/hm;)Ljava/io/Reader;

    move-result-object p2

    new-instance p3, Ljava/io/StringWriter;

    invoke-direct {p3}, Ljava/io/StringWriter;-><init>()V

    :try_start_4c
    invoke-static {p2, p3}, Lcom/aide/common/Xa;->j6(Ljava/io/Reader;Ljava/io/Writer;)V
    :try_end_4f
    .catch Ljava/io/IOException; {:try_start_4c .. :try_end_4f} :catch_5c

    new-instance p2, Lcom/aide/ui/views/editor/va$h;

    invoke-virtual {p3}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p2, p0, p1, v0, p3}, Lcom/aide/ui/views/editor/va$h;-><init>(Lcom/aide/ui/views/editor/va;Labcd/fm;Labcd/hm;Ljava/lang/String;)V

    invoke-direct {p0, p2}, Lcom/aide/ui/views/editor/va;->j6(Lcom/aide/ui/views/editor/va$b;)V

    goto :goto_63

    :catch_5c
    move-exception p1

    new-instance p1, Ljava/lang/InternalError;

    invoke-direct {p1}, Ljava/lang/InternalError;-><init>()V

    throw p1

    :cond_63
    :goto_63
    return-void
.end method

.method public DW(IILcom/aide/ui/views/editor/g;Ljava/lang/Object;)V
    .registers 14

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/views/editor/va;->j6:Z

    if-eqz v0, :cond_19

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p2}, Ljava/lang/Integer;-><init>(I)V

    const-wide v1, 0x1459803a71c1c830L  # 1.211988257884289E-210

    move-object v3, p0

    move-object v6, p3

    move-object v7, p4

    invoke-static/range {v1 .. v7}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_19
    if-eq p4, p0, :cond_2a

    invoke-direct {p0}, Lcom/aide/ui/views/editor/va;->gn()V

    invoke-direct {p0, p4}, Lcom/aide/ui/views/editor/va;->j6(Ljava/lang/Object;)Labcd/fm;

    move-result-object v0

    new-instance v1, Lcom/aide/ui/views/editor/va$f;

    invoke-direct {v1, p0, v0, p2, p1}, Lcom/aide/ui/views/editor/va$f;-><init>(Lcom/aide/ui/views/editor/va;Labcd/fm;II)V

    invoke-direct {p0, v1}, Lcom/aide/ui/views/editor/va;->j6(Lcom/aide/ui/views/editor/va$b;)V
    :try_end_2a
    .catchall {:try_start_0 .. :try_end_2a} :catchall_2b

    :cond_2a
    return-void

    :catchall_2b
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/views/editor/va;->DW:Z

    if-eqz v1, :cond_46

    const-wide v2, 0x1459803a71c1c830L  # 1.211988257884289E-210

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    move-object v1, v0

    move-object v4, p0

    move-object v7, p3

    move-object v8, p4

    invoke-static/range {v1 .. v8}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_46
    throw v0
.end method

.method public DW()Z
    .registers 5

    const-wide v0, 0x5d45130d2c7c555L

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/views/editor/va;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    iget-boolean v0, p0, Lcom/aide/ui/views/editor/va;->EQ:Z
    :try_end_e
    .catchall {:try_start_5 .. :try_end_e} :catchall_f

    return v0

    :catchall_f
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/views/editor/va;->DW:Z

    if-eqz v3, :cond_17

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_17
    throw v2
.end method

.method public FH()Z
    .registers 5

    const-wide v0, 0x5e4ba7dc27f878bL

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/views/editor/va;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    iget-boolean v0, p0, Lcom/aide/ui/views/editor/va;->tp:Z
    :try_end_e
    .catchall {:try_start_5 .. :try_end_e} :catchall_f

    return v0

    :catchall_f
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/views/editor/va;->DW:Z

    if-eqz v3, :cond_17

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_17
    throw v2
.end method

.method public Hw()Ljava/util/List;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/aide/ui/views/editor/va$j;",
            ">;"
        }
    .end annotation

    const-wide v0, 0x3ddd830b9feb2e69L  # 1.0736365267285007E-10

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/views/editor/va;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    new-instance v2, Ljava/util/ArrayList;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v3, 0x0

    :goto_13
    iget-object v4, p0, Lcom/aide/ui/views/editor/va;->VH:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_31

    iget-object v4, p0, Lcom/aide/ui/views/editor/va;->VH:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/aide/ui/views/editor/va$g;

    iget v5, v4, Lcom/aide/ui/views/editor/va$g;->FH:I

    iget v6, p0, Lcom/aide/ui/views/editor/va;->v5:I

    if-ne v5, v6, :cond_2e

    iget-object v4, v4, Lcom/aide/ui/views/editor/va$g;->Hw:Lcom/aide/ui/views/editor/va$j;

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2e
    .catchall {:try_start_5 .. :try_end_2e} :catchall_32

    :cond_2e
    add-int/lit8 v3, v3, 0x1

    goto :goto_13

    :cond_31
    return-object v2

    :catchall_32
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/views/editor/va;->DW:Z

    if-eqz v3, :cond_3a

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_3a
    goto :goto_3c

    :goto_3b
    throw v2

    :goto_3c
    goto :goto_3b
.end method

.method public Zo()V
    .registers 5

    const-wide v0, -0x596257b0ee1091b0L

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/views/editor/va;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/aide/ui/views/editor/va;->u7:Z
    :try_end_f
    .catchall {:try_start_5 .. :try_end_f} :catchall_10

    return-void

    :catchall_10
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/views/editor/va;->DW:Z

    if-eqz v3, :cond_18

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_18
    throw v2
.end method

.method public j6(Lcom/aide/ui/views/editor/g;)Labcd/fm;
    .registers 7

    const-wide v0, -0x141b936ae0e82c3L

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/views/editor/va;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    iget-boolean v2, p0, Lcom/aide/ui/views/editor/va;->EQ:Z

    if-eqz v2, :cond_40

    iget-object v2, p0, Lcom/aide/ui/views/editor/va;->Hw:Ljava/util/Vector;

    iget v3, p0, Lcom/aide/ui/views/editor/va;->v5:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/aide/ui/views/editor/va;->v5:I

    invoke-virtual {v2, v3}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/aide/ui/views/editor/va$b;

    invoke-virtual {v2, p1}, Lcom/aide/ui/views/editor/va$b;->j6(Lcom/aide/ui/views/editor/g;)V

    invoke-direct {p0}, Lcom/aide/ui/views/editor/va;->VH()V

    iget v2, p0, Lcom/aide/ui/views/editor/va;->v5:I

    iget-object v3, p0, Lcom/aide/ui/views/editor/va;->Hw:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v3

    if-ge v2, v3, :cond_3d

    iget-object v2, p0, Lcom/aide/ui/views/editor/va;->Hw:Ljava/util/Vector;

    iget v3, p0, Lcom/aide/ui/views/editor/va;->v5:I

    invoke-virtual {v2, v3}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/aide/ui/views/editor/va$b;

    invoke-virtual {v2}, Lcom/aide/ui/views/editor/va$b;->j6()Labcd/fm;

    move-result-object p1

    return-object p1

    :cond_3d
    iget-object p1, p0, Lcom/aide/ui/views/editor/va;->gn:Labcd/fm;
    :try_end_3f
    .catchall {:try_start_5 .. :try_end_3f} :catchall_42

    return-object p1

    :cond_40
    const/4 p1, 0x0

    return-object p1

    :catchall_42
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/views/editor/va;->DW:Z

    if-eqz v3, :cond_4a

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_4a
    throw v2
.end method

.method public j6(Lcom/aide/ui/views/editor/g;Ljava/lang/Object;)Labcd/fm;
    .registers 10

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/views/editor/va;->j6:Z

    if-eqz v0, :cond_c

    const-wide v0, 0x33802e025c274850L

    invoke-static {v0, v1, p0, p1, p2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    iget-boolean v0, p0, Lcom/aide/ui/views/editor/va;->tp:Z

    if-eqz v0, :cond_40

    iget v0, p0, Lcom/aide/ui/views/editor/va;->v5:I

    iget-object v1, p0, Lcom/aide/ui/views/editor/va;->Hw:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    if-ne v0, v1, :cond_20

    invoke-direct {p0, p2}, Lcom/aide/ui/views/editor/va;->j6(Ljava/lang/Object;)Labcd/fm;

    move-result-object v0

    iput-object v0, p0, Lcom/aide/ui/views/editor/va;->gn:Labcd/fm;

    :cond_20
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

    move-result-object p1
    :try_end_3f
    .catchall {:try_start_0 .. :try_end_3f} :catchall_42

    return-object p1

    :cond_40
    const/4 p1, 0x0

    return-object p1

    :catchall_42
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/views/editor/va;->DW:Z

    if-eqz v1, :cond_53

    const-wide v2, 0x33802e025c274850L

    move-object v1, v0

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_53
    throw v0
.end method

.method public j6(I)V
    .registers 6

    const-wide v0, 0x1b85db2638ea6eecL  # 4.31483566741212E-176

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/views/editor/va;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;I)V

    :cond_c
    iget v2, p0, Lcom/aide/ui/views/editor/va;->FH:I

    if-eq v2, p1, :cond_3b

    iput p1, p0, Lcom/aide/ui/views/editor/va;->FH:I

    iget-object v2, p0, Lcom/aide/ui/views/editor/va;->Hw:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    if-le v2, p1, :cond_3b

    iget-object v2, p0, Lcom/aide/ui/views/editor/va;->Hw:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    sub-int/2addr v2, p1

    iget v3, p0, Lcom/aide/ui/views/editor/va;->v5:I

    if-le v2, v3, :cond_26

    move v2, v3

    :cond_26
    invoke-direct {p0, v2}, Lcom/aide/ui/views/editor/va;->DW(I)V

    iget v3, p0, Lcom/aide/ui/views/editor/va;->v5:I

    sub-int/2addr v3, v2

    iput v3, p0, Lcom/aide/ui/views/editor/va;->v5:I

    iget-object v2, p0, Lcom/aide/ui/views/editor/va;->Hw:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    if-le v2, p1, :cond_3b

    iget-object v2, p0, Lcom/aide/ui/views/editor/va;->Hw:Ljava/util/Vector;

    invoke-virtual {v2, p1}, Ljava/util/Vector;->setSize(I)V

    :cond_3b
    invoke-direct {p0}, Lcom/aide/ui/views/editor/va;->VH()V
    :try_end_3e
    .catchall {:try_start_5 .. :try_end_3e} :catchall_3f

    return-void

    :catchall_3f
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/views/editor/va;->DW:Z

    if-eqz v3, :cond_4c

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-static {v2, v0, v1, p0, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_4c
    throw v2
.end method

.method public j6(IICLcom/aide/ui/views/editor/g;Ljava/lang/Object;)V
    .registers 16

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/views/editor/va;->j6:Z

    if-eqz v0, :cond_1e

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v6, Ljava/lang/Character;

    invoke-direct {v6, p3}, Ljava/lang/Character;-><init>(C)V

    const-wide v1, 0x125f07ffe7a8a007L  # 3.433858795812611E-220

    move-object v3, p0

    move-object v7, p4

    move-object v8, p5

    invoke-static/range {v1 .. v8}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1e
    if-eq p5, p0, :cond_34

    invoke-direct {p0}, Lcom/aide/ui/views/editor/va;->gn()V

    new-instance v0, Labcd/hm;

    invoke-direct {v0, p1, p2, p1, p2}, Labcd/hm;-><init>(IIII)V

    invoke-direct {p0, p5}, Lcom/aide/ui/views/editor/va;->j6(Ljava/lang/Object;)Labcd/fm;

    move-result-object v1

    new-instance v2, Lcom/aide/ui/views/editor/va$c;

    invoke-direct {v2, p0, v1, v0, p3}, Lcom/aide/ui/views/editor/va$c;-><init>(Lcom/aide/ui/views/editor/va;Labcd/fm;Labcd/hm;C)V

    invoke-direct {p0, v2}, Lcom/aide/ui/views/editor/va;->j6(Lcom/aide/ui/views/editor/va$b;)V
    :try_end_34
    .catchall {:try_start_0 .. :try_end_34} :catchall_35

    :cond_34
    return-void

    :catchall_35
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/views/editor/va;->DW:Z

    if-eqz v1, :cond_55

    const-wide v2, 0x125f07ffe7a8a007L  # 3.433858795812611E-220

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v7, Ljava/lang/Character;

    invoke-direct {v7, p3}, Ljava/lang/Character;-><init>(C)V

    move-object v1, v0

    move-object v4, p0

    move-object v8, p4

    move-object v9, p5

    invoke-static/range {v1 .. v9}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_55
    throw v0
.end method

.method public j6(IIIILcom/aide/ui/views/editor/g;Ljava/lang/Object;)V
    .registers 10

    sget-boolean v0, Lcom/aide/ui/views/editor/va;->j6:Z

    if-eqz v0, :cond_35

    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/Object;

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p1}, Ljava/lang/Integer;-><init>(I)V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p2}, Ljava/lang/Integer;-><init>(I)V

    const/4 v2, 0x1

    aput-object v1, v0, v2

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p3}, Ljava/lang/Integer;-><init>(I)V

    const/4 v2, 0x2

    aput-object v1, v0, v2

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p4}, Ljava/lang/Integer;-><init>(I)V

    const/4 v2, 0x3

    aput-object v1, v0, v2

    const/4 v1, 0x4

    aput-object p5, v0, v1

    const/4 v1, 0x5

    aput-object p6, v0, v1

    const-wide v1, 0x3294e201c96a0348L  # 4.957360492574066E-65

    invoke-static {v1, v2, p0, v0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;[Ljava/lang/Object;)V

    :cond_35
    if-eq p6, p0, :cond_63

    invoke-direct {p0}, Lcom/aide/ui/views/editor/va;->gn()V

    new-instance v0, Labcd/hm;

    invoke-direct {v0, p1, p2, p3, p4}, Labcd/hm;-><init>(IIII)V

    invoke-direct {p0, p6}, Lcom/aide/ui/views/editor/va;->j6(Ljava/lang/Object;)Labcd/fm;

    move-result-object p1

    invoke-virtual {p5, v0}, Lcom/aide/ui/views/editor/b;->j6(Labcd/hm;)Ljava/io/Reader;

    move-result-object p2

    new-instance p3, Ljava/io/StringWriter;

    invoke-direct {p3}, Ljava/io/StringWriter;-><init>()V

    :try_start_4c
    invoke-static {p2, p3}, Lcom/aide/common/Xa;->j6(Ljava/io/Reader;Ljava/io/Writer;)V
    :try_end_4f
    .catch Ljava/io/IOException; {:try_start_4c .. :try_end_4f} :catch_5c

    new-instance p2, Lcom/aide/ui/views/editor/va$c;

    invoke-virtual {p3}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p2, p0, p1, v0, p3}, Lcom/aide/ui/views/editor/va$c;-><init>(Lcom/aide/ui/views/editor/va;Labcd/fm;Labcd/hm;Ljava/lang/String;)V

    invoke-direct {p0, p2}, Lcom/aide/ui/views/editor/va;->j6(Lcom/aide/ui/views/editor/va$b;)V

    goto :goto_63

    :catch_5c
    move-exception p1

    new-instance p1, Ljava/lang/InternalError;

    invoke-direct {p1}, Ljava/lang/InternalError;-><init>()V

    throw p1

    :cond_63
    :goto_63
    return-void
.end method

.method public j6(IILcom/aide/ui/views/editor/g;Ljava/lang/Object;)V
    .registers 14

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/views/editor/va;->j6:Z

    if-eqz v0, :cond_19

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p2}, Ljava/lang/Integer;-><init>(I)V

    const-wide v1, 0x44df22ce482dbf97L  # 5.881416577933446E23

    move-object v3, p0

    move-object v6, p3

    move-object v7, p4

    invoke-static/range {v1 .. v7}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_19
    if-eq p4, p0, :cond_2a

    invoke-direct {p0}, Lcom/aide/ui/views/editor/va;->gn()V

    invoke-direct {p0, p4}, Lcom/aide/ui/views/editor/va;->j6(Ljava/lang/Object;)Labcd/fm;

    move-result-object v0

    new-instance v1, Lcom/aide/ui/views/editor/va$e;

    invoke-direct {v1, p0, v0, p2, p1}, Lcom/aide/ui/views/editor/va$e;-><init>(Lcom/aide/ui/views/editor/va;Labcd/fm;II)V

    invoke-direct {p0, v1}, Lcom/aide/ui/views/editor/va;->j6(Lcom/aide/ui/views/editor/va$b;)V
    :try_end_2a
    .catchall {:try_start_0 .. :try_end_2a} :catchall_2b

    :cond_2a
    return-void

    :catchall_2b
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/views/editor/va;->DW:Z

    if-eqz v1, :cond_46

    const-wide v2, 0x44df22ce482dbf97L  # 5.881416577933446E23

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    move-object v1, v0

    move-object v4, p0

    move-object v7, p3

    move-object v8, p4

    invoke-static/range {v1 .. v8}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_46
    throw v0
.end method

.method public j6(II[C[CLcom/aide/ui/views/editor/g;Ljava/lang/Object;)V
    .registers 15

    sget-boolean v1, Lcom/aide/ui/views/editor/va;->j6:Z

    if-eqz v1, :cond_2b

    const/4 v1, 0x6

    new-array v1, v1, [Ljava/lang/Object;

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, p1}, Ljava/lang/Integer;-><init>(I)V

    const/4 v4, 0x0

    aput-object v2, v1, v4

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, p2}, Ljava/lang/Integer;-><init>(I)V

    const/4 v5, 0x1

    aput-object v2, v1, v5

    const/4 v2, 0x2

    aput-object p3, v1, v2

    const/4 v2, 0x3

    aput-object p4, v1, v2

    const/4 v2, 0x4

    aput-object p5, v1, v2

    const/4 v2, 0x5

    aput-object p6, v1, v2

    const-wide v5, 0x6f8cc1d673501a60L

    invoke-static {v5, v6, p0, v1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;[Ljava/lang/Object;)V

    :cond_2b
    if-eq p6, p0, :cond_42

    invoke-direct {p0}, Lcom/aide/ui/views/editor/va;->gn()V

    new-instance v7, Lcom/aide/ui/views/editor/va$k;

    invoke-direct {p0, p6}, Lcom/aide/ui/views/editor/va;->j6(Ljava/lang/Object;)Labcd/fm;

    move-result-object v2

    move-object v0, v7

    move-object v1, p0

    move v3, p1

    move v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/aide/ui/views/editor/va$k;-><init>(Lcom/aide/ui/views/editor/va;Labcd/fm;II[C[C)V

    invoke-direct {p0, v7}, Lcom/aide/ui/views/editor/va;->j6(Lcom/aide/ui/views/editor/va$b;)V

    :cond_42
    return-void
.end method

.method public j6(Lcom/aide/ui/views/editor/va$j;)V
    .registers 7

    const-wide v0, 0x5de98966a4c825d5L  # 2.4912258232834632E144

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/views/editor/va;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    iget-object v2, p0, Lcom/aide/ui/views/editor/va;->VH:Ljava/util/List;

    new-instance v3, Lcom/aide/ui/views/editor/va$g;

    iget v4, p0, Lcom/aide/ui/views/editor/va;->v5:I

    invoke-direct {v3, v4, p1}, Lcom/aide/ui/views/editor/va$g;-><init>(ILcom/aide/ui/views/editor/va$j;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/aide/ui/views/editor/va;->u7:Z
    :try_end_1b
    .catchall {:try_start_5 .. :try_end_1b} :catchall_1c

    return-void

    :catchall_1c
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/views/editor/va;->DW:Z

    if-eqz v3, :cond_24

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_24
    throw v2
.end method

.method public j6()Z
    .registers 5

    const-wide v0, 0x4dc2480cb2825929L  # 3.850521471685163E66

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/views/editor/va;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    iget v2, p0, Lcom/aide/ui/views/editor/va;->v5:I

    iget v0, p0, Lcom/aide/ui/views/editor/va;->Zo:I
    :try_end_10
    .catchall {:try_start_5 .. :try_end_10} :catchall_16

    if-ne v2, v0, :cond_14

    const/4 v0, 0x1

    goto :goto_15

    :cond_14
    const/4 v0, 0x0

    :goto_15
    return v0

    :catchall_16
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/views/editor/va;->DW:Z

    if-eqz v3, :cond_1e

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1e
    throw v2
.end method

.method public v5()V
    .registers 5

    const-wide v0, 0x140ccf983238b03cL

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/views/editor/va;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    iget v2, p0, Lcom/aide/ui/views/editor/va;->v5:I

    iput v2, p0, Lcom/aide/ui/views/editor/va;->Zo:I

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/aide/ui/views/editor/va;->u7:Z
    :try_end_13
    .catchall {:try_start_5 .. :try_end_13} :catchall_14

    return-void

    :catchall_14
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/views/editor/va;->DW:Z

    if-eqz v3, :cond_1c

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1c
    throw v2
.end method
