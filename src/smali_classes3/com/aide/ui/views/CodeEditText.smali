.class public Lcom/aide/ui/views/CodeEditText;
.super Landroid/view/ViewGroup;


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
.field private EQ:Ljava/util/List;
    .annotation runtime Labcd/ru;
        field = -0x1c189cfb18859b51L
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Labcd/Wl;",
            ">;"
        }
    .end annotation
.end field

.field private FH:Z
    .annotation runtime Labcd/ru;
        field = 0x94d8aed860af4fL
    .end annotation
.end field

.field private Hw:Ljava/util/List;
    .annotation runtime Labcd/ru;
        field = 0x1100aaba4e7f0d04L
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/aide/ui/views/CodeEditText$d;",
            ">;"
        }
    .end annotation
.end field

.field private VH:Ljava/util/List;
    .annotation runtime Labcd/ru;
        field = -0x1101712f63845988L
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/aide/ui/views/CodeEditText$d;",
            ">;"
        }
    .end annotation
.end field

.field private Zo:Ljava/util/List;
    .annotation runtime Labcd/ru;
        field = -0x2b7b9bbca1446f60L
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/aide/ui/views/CodeEditText$d;",
            ">;"
        }
    .end annotation
.end field

.field private gn:Ljava/util/List;
    .annotation runtime Labcd/ru;
        field = 0x138d6e73a697774L
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/aide/ui/views/CodeEditText$d;",
            ">;"
        }
    .end annotation
.end field

.field private tp:Ljava/util/List;
    .annotation runtime Labcd/ru;
        field = -0x93cc14513aee62bL
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/aide/ui/views/CodeEditText$d;",
            ">;"
        }
    .end annotation
.end field

.field private u7:Ljava/util/List;
    .annotation runtime Labcd/ru;
        field = -0x2aa70ee17ca001cfL
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/aide/ui/views/CodeEditText$d;",
            ">;"
        }
    .end annotation
.end field

.field private v5:Ljava/util/List;
    .annotation runtime Labcd/ru;
        field = -0x710c2feb0eb939fL
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/aide/ui/views/CodeEditText$d;",
            ">;"
        }
    .end annotation
.end field

.field private we:Z
    .annotation runtime Labcd/ru;
        field = 0x3e4d130fcc611c3L
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const-class v0, Lcom/aide/ui/views/CodeEditText;

    const-wide v1, 0x4df24704555f7f00L  # 3.0797374713181803E67

    invoke-static {v0, v1, v2, v1, v2}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 7

    const/4 v0, 0x0

    const-wide v1, 0x1084d5c9901dc537L  # 4.294464732602429E-229

    :try_start_6
    sget-boolean v3, Lcom/aide/ui/views/CodeEditText;->j6:Z

    if-eqz v3, :cond_d

    invoke-static {v1, v2, v0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_d
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/aide/ui/views/CodeEditText;->Hw:Ljava/util/List;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/aide/ui/views/CodeEditText;->v5:Ljava/util/List;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/aide/ui/views/CodeEditText;->Zo:Ljava/util/List;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/aide/ui/views/CodeEditText;->VH:Ljava/util/List;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/aide/ui/views/CodeEditText;->gn:Ljava/util/List;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/aide/ui/views/CodeEditText;->u7:Ljava/util/List;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/aide/ui/views/CodeEditText;->tp:Ljava/util/List;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/aide/ui/views/CodeEditText;->EQ:Ljava/util/List;

    invoke-direct {p0}, Lcom/aide/ui/views/CodeEditText;->a8()V
    :try_end_4b
    .catchall {:try_start_6 .. :try_end_4b} :catchall_4c

    return-void

    :catchall_4c
    move-exception v3

    sget-boolean v4, Lcom/aide/ui/views/CodeEditText;->DW:Z

    if-eqz v4, :cond_54

    invoke-static {v3, v1, v2, v0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_54
    throw v3
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 10

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/views/CodeEditText;->j6:Z

    if-eqz v0, :cond_d

    const-wide v0, -0x2d9e5a8c63eeff70L  # -7.020730156573315E88

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, p1, p2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_d
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/aide/ui/views/CodeEditText;->Hw:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/aide/ui/views/CodeEditText;->v5:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/aide/ui/views/CodeEditText;->Zo:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/aide/ui/views/CodeEditText;->VH:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/aide/ui/views/CodeEditText;->gn:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/aide/ui/views/CodeEditText;->u7:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/aide/ui/views/CodeEditText;->tp:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/aide/ui/views/CodeEditText;->EQ:Ljava/util/List;

    invoke-direct {p0}, Lcom/aide/ui/views/CodeEditText;->a8()V
    :try_end_4b
    .catchall {:try_start_0 .. :try_end_4b} :catchall_4c

    return-void

    :catchall_4c
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/views/CodeEditText;->DW:Z

    if-eqz v1, :cond_5d

    const-wide v2, -0x2d9e5a8c63eeff70L  # -7.020730156573315E88

    const/4 v4, 0x0

    move-object v1, v0

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_5d
    throw v0
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 12

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/views/CodeEditText;->j6:Z

    if-eqz v0, :cond_14

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p3}, Ljava/lang/Integer;-><init>(I)V

    const-wide v1, -0x2074d9d32051b033L  # -1.7773936336951235E152

    const/4 v3, 0x0

    move-object v4, p1

    move-object v5, p2

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_14
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/aide/ui/views/CodeEditText;->Hw:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/aide/ui/views/CodeEditText;->v5:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/aide/ui/views/CodeEditText;->Zo:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/aide/ui/views/CodeEditText;->VH:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/aide/ui/views/CodeEditText;->gn:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/aide/ui/views/CodeEditText;->u7:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/aide/ui/views/CodeEditText;->tp:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/aide/ui/views/CodeEditText;->EQ:Ljava/util/List;

    invoke-direct {p0}, Lcom/aide/ui/views/CodeEditText;->a8()V
    :try_end_52
    .catchall {:try_start_0 .. :try_end_52} :catchall_53

    return-void

    :catchall_53
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/views/CodeEditText;->DW:Z

    if-eqz v1, :cond_69

    const-wide v2, -0x2074d9d32051b033L  # -1.7773936336951235E152

    const/4 v4, 0x0

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, p3}, Ljava/lang/Integer;-><init>(I)V

    move-object v1, v0

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v1 .. v7}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_69
    throw v0
.end method

.method static synthetic DW(Lcom/aide/ui/views/CodeEditText;)Ljava/util/List;
    .registers 1

    iget-object p0, p0, Lcom/aide/ui/views/CodeEditText;->Zo:Ljava/util/List;

    return-object p0
.end method

.method static synthetic FH(Lcom/aide/ui/views/CodeEditText;)Ljava/util/List;
    .registers 1

    iget-object p0, p0, Lcom/aide/ui/views/CodeEditText;->u7:Ljava/util/List;

    return-object p0
.end method

.method static synthetic Hw(Lcom/aide/ui/views/CodeEditText;)Ljava/util/List;
    .registers 1

    iget-object p0, p0, Lcom/aide/ui/views/CodeEditText;->tp:Ljava/util/List;

    return-object p0
.end method

.method static synthetic VH(Lcom/aide/ui/views/CodeEditText;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/aide/ui/views/CodeEditText;->FH:Z

    return p0
.end method

.method static synthetic Zo(Lcom/aide/ui/views/CodeEditText;)Ljava/util/List;
    .registers 1

    iget-object p0, p0, Lcom/aide/ui/views/CodeEditText;->EQ:Ljava/util/List;

    return-object p0
.end method

.method private a8()V
    .registers 5
    .annotation runtime Labcd/su;
        method = 0x28f980395f566be9L
    .end annotation

    const-wide v0, 0xb6a048f081305d0L

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/views/CodeEditText;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    invoke-virtual {p0}, Landroid/view/ViewGroup;->removeAllViews()V

    new-instance v2, Lcom/aide/ui/views/CodeEditText$c;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, p0, v3}, Lcom/aide/ui/views/CodeEditText$c;-><init>(Lcom/aide/ui/views/CodeEditText;Landroid/content/Context;)V

    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V
    :try_end_1b
    .catchall {:try_start_5 .. :try_end_1b} :catchall_1c

    return-void

    :catchall_1c
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/views/CodeEditText;->DW:Z

    if-eqz v3, :cond_24

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_24
    throw v2
.end method

.method static synthetic gn(Lcom/aide/ui/views/CodeEditText;)Ljava/util/List;
    .registers 1

    iget-object p0, p0, Lcom/aide/ui/views/CodeEditText;->Hw:Ljava/util/List;

    return-object p0
.end method

.method static synthetic j6(Lcom/aide/ui/views/CodeEditText;)Ljava/util/List;
    .registers 1

    iget-object p0, p0, Lcom/aide/ui/views/CodeEditText;->VH:Ljava/util/List;

    return-object p0
.end method

.method private j6(IIIILjava/util/List;)V
    .registers 16
    .annotation runtime Labcd/su;
        method = 0x3491938fd7e8239cL
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIII",
            "Ljava/util/List<",
            "Lcom/aide/ui/views/CodeEditText$d;",
            ">;)V"
        }
    .end annotation

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/views/CodeEditText;->j6:Z

    if-eqz v0, :cond_22

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p3}, Ljava/lang/Integer;-><init>(I)V

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, p4}, Ljava/lang/Integer;-><init>(I)V

    const-wide v1, 0x23d082c40c6ab3dfL  # 3.549361134659841E-136

    move-object v3, p0

    move-object v8, p5

    invoke-static/range {v1 .. v8}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_22
    invoke-interface {p5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_26
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_36

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/aide/ui/views/CodeEditText$d;

    invoke-interface {v1, p1, p2, p3, p4}, Lcom/aide/ui/views/CodeEditText$d;->j6(IIII)V
    :try_end_35
    .catchall {:try_start_0 .. :try_end_35} :catchall_37

    goto :goto_26

    :cond_36
    return-void

    :catchall_37
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/views/CodeEditText;->DW:Z

    if-eqz v1, :cond_5b

    const-wide v2, 0x23d082c40c6ab3dfL  # 3.549361134659841E-136

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, p3}, Ljava/lang/Integer;-><init>(I)V

    new-instance v8, Ljava/lang/Integer;

    invoke-direct {v8, p4}, Ljava/lang/Integer;-><init>(I)V

    move-object v1, v0

    move-object v4, p0

    move-object v9, p5

    invoke-static/range {v1 .. v9}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_5b
    goto :goto_5d

    :goto_5c
    throw v0

    :goto_5d
    goto :goto_5c
.end method

.method static synthetic j6(Lcom/aide/ui/views/CodeEditText;IIIILjava/util/List;)V
    .registers 6

    invoke-direct/range {p0 .. p5}, Lcom/aide/ui/views/CodeEditText;->j6(IIIILjava/util/List;)V

    return-void
.end method

.method static synthetic v5(Lcom/aide/ui/views/CodeEditText;)Ljava/util/List;
    .registers 1

    iget-object p0, p0, Lcom/aide/ui/views/CodeEditText;->v5:Ljava/util/List;

    return-object p0
.end method


# virtual methods
.method public DW(II)C
    .registers 10

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/views/CodeEditText;->j6:Z

    if-eqz v0, :cond_16

    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p2}, Ljava/lang/Integer;-><init>(I)V

    const-wide v2, -0x3806bf791db2625L  # -4.923839961738246E291

    invoke-static {v2, v3, p0, v0, v1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_16
    invoke-virtual {p0}, Lcom/aide/ui/views/CodeEditText;->getOEditorView()Lcom/aide/ui/views/CodeEditText$c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aide/ui/views/editor/OEditor;->getEditorModel()Lcom/aide/ui/views/editor/g;

    move-result-object v0

    add-int/lit8 v1, p1, -0x1

    invoke-virtual {v0, v1}, Lcom/aide/ui/views/editor/g;->EQ(I)I

    move-result v0

    if-le p2, v0, :cond_2a

    const p1, 0xffff

    return p1

    :cond_2a
    invoke-virtual {p0}, Lcom/aide/ui/views/CodeEditText;->getOEditorView()Lcom/aide/ui/views/CodeEditText$c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aide/ui/views/editor/OEditor;->getEditorModel()Lcom/aide/ui/views/editor/g;

    move-result-object v0

    add-int/lit8 v2, p2, -0x1

    invoke-virtual {v0, v2, v1}, Lcom/aide/ui/views/editor/g;->FH(II)C

    move-result p1
    :try_end_38
    .catchall {:try_start_0 .. :try_end_38} :catchall_39

    return p1

    :catchall_39
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/views/CodeEditText;->DW:Z

    if-eqz v1, :cond_52

    const-wide v2, -0x3806bf791db2625L  # -4.923839961738246E291

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    move-object v1, v0

    move-object v4, p0

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_52
    throw v0
.end method

.method public DW(III)Landroid/graphics/Rect;
    .registers 12

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/views/CodeEditText;->j6:Z

    if-eqz v0, :cond_1c

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p3}, Ljava/lang/Integer;-><init>(I)V

    const-wide v1, -0x561bdfa88b2db7b3L  # -6.855769914625596E-107

    move-object v3, p0

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1c
    invoke-virtual {p0}, Lcom/aide/ui/views/CodeEditText;->getOEditorView()Lcom/aide/ui/views/CodeEditText$c;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/aide/ui/views/CodeEditText$c;->j6(III)Landroid/graphics/Rect;

    move-result-object p1
    :try_end_24
    .catchall {:try_start_0 .. :try_end_24} :catchall_25

    return-object p1

    :catchall_25
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/views/CodeEditText;->DW:Z

    if-eqz v1, :cond_43

    const-wide v2, -0x561bdfa88b2db7b3L  # -6.855769914625596E-107

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, p3}, Ljava/lang/Integer;-><init>(I)V

    move-object v1, v0

    move-object v4, p0

    invoke-static/range {v1 .. v7}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_43
    throw v0
.end method

.method public DW(I)V
    .registers 6

    const-wide v0, -0x34b7e902ee03ffe8L  # -4.6146887022143294E54

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/views/CodeEditText;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;I)V
    :try_end_c
    .catchall {:try_start_5 .. :try_end_c} :catchall_d

    :cond_c
    return-void

    :catchall_d
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/views/CodeEditText;->DW:Z

    if-eqz v3, :cond_1a

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-static {v2, v0, v1, p0, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1a
    throw v2
.end method

.method public DW(Lcom/aide/ui/views/CodeEditText$d;)V
    .registers 6

    const-wide v0, -0x617832cf184f5bcL

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/views/CodeEditText;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    iget-object v2, p0, Lcom/aide/ui/views/CodeEditText;->v5:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_11
    .catchall {:try_start_5 .. :try_end_11} :catchall_12

    return-void

    :catchall_12
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/views/CodeEditText;->DW:Z

    if-eqz v3, :cond_1a

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1a
    throw v2
.end method

.method protected DW()Z
    .registers 5
    .annotation runtime Labcd/su;
        method = 0x2cd264a71e045a0L
    .end annotation

    const-wide v0, 0x3e2475ec3d540b05L  # 2.3819315223570305E-9

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/views/CodeEditText;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V
    :try_end_c
    .catchall {:try_start_5 .. :try_end_c} :catchall_e

    :cond_c
    const/4 v0, 0x1

    return v0

    :catchall_e
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/views/CodeEditText;->DW:Z

    if-eqz v3, :cond_16

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_16
    throw v2
.end method

.method public DW(ILandroid/view/KeyEvent;)Z
    .registers 10

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/views/CodeEditText;->j6:Z

    if-eqz v0, :cond_11

    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, p1}, Ljava/lang/Integer;-><init>(I)V

    const-wide v1, -0x8c88d03a35e9803L

    invoke-static {v1, v2, p0, v0, p2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_11
    invoke-virtual {p0}, Lcom/aide/ui/views/CodeEditText;->getOEditorView()Lcom/aide/ui/views/CodeEditText$c;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/aide/ui/views/CodeEditText$c;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result p1
    :try_end_19
    .catchall {:try_start_0 .. :try_end_19} :catchall_1a

    return p1

    :catchall_1a
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/views/CodeEditText;->DW:Z

    if-eqz v1, :cond_2f

    const-wide v2, -0x8c88d03a35e9803L

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p1}, Ljava/lang/Integer;-><init>(I)V

    move-object v1, v0

    move-object v4, p0

    move-object v6, p2

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_2f
    throw v0
.end method

.method public EQ()V
    .registers 5

    const-wide v0, -0xbf3b87186312428L

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/views/CodeEditText;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    invoke-virtual {p0}, Lcom/aide/ui/views/CodeEditText;->getOEditorView()Lcom/aide/ui/views/CodeEditText$c;

    move-result-object v2

    invoke-virtual {v2}, Lcom/aide/ui/views/editor/OEditor;->a8()V
    :try_end_13
    .catchall {:try_start_5 .. :try_end_13} :catchall_14

    return-void

    :catchall_14
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/views/CodeEditText;->DW:Z

    if-eqz v3, :cond_1c

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1c
    throw v2
.end method

.method protected FH(II)I
    .registers 10
    .annotation runtime Labcd/su;
        method = -0x1162d2de0bbb2967L
    .end annotation

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/views/CodeEditText;->j6:Z

    if-eqz v0, :cond_16

    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p2}, Ljava/lang/Integer;-><init>(I)V

    const-wide v2, 0x9b4d2f325ba7e54L

    invoke-static {v2, v3, p0, v0, v1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_16
    invoke-virtual {p0, p1, p2}, Lcom/aide/ui/views/CodeEditText;->DW(II)C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->isJavaIdentifierPart(C)Z

    move-result v0

    if-eqz v0, :cond_2e

    :goto_20
    invoke-virtual {p0, p1, p2}, Lcom/aide/ui/views/CodeEditText;->DW(II)C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->isJavaIdentifierPart(C)Z

    move-result v0
    :try_end_28
    .catchall {:try_start_0 .. :try_end_28} :catchall_30

    if-eqz v0, :cond_2d

    add-int/lit8 p2, p2, 0x1

    goto :goto_20

    :cond_2d
    return p2

    :cond_2e
    const/4 p1, -0x1

    return p1

    :catchall_30
    move-exception v0

    move-object v6, v0

    sget-boolean v0, Lcom/aide/ui/views/CodeEditText;->DW:Z

    if-eqz v0, :cond_4a

    const-wide v1, 0x9b4d2f325ba7e54L

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p2}, Ljava/lang/Integer;-><init>(I)V

    move-object v0, v6

    move-object v3, p0

    invoke-static/range {v0 .. v5}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_4a
    goto :goto_4c

    :goto_4b
    throw v6

    :goto_4c
    goto :goto_4b
.end method

.method public FH(Lcom/aide/ui/views/CodeEditText$d;)V
    .registers 6

    const-wide v0, -0xb79c3bf0a66c2dbL

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/views/CodeEditText;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    iget-object v2, p0, Lcom/aide/ui/views/CodeEditText;->Zo:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_11
    .catchall {:try_start_5 .. :try_end_11} :catchall_12

    return-void

    :catchall_12
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/views/CodeEditText;->DW:Z

    if-eqz v3, :cond_1a

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1a
    throw v2
.end method

.method protected FH()Z
    .registers 5
    .annotation runtime Labcd/su;
        method = -0x123369a18d08bcf9L
    .end annotation

    const-wide v0, -0x6406a138bd7db48L

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/views/CodeEditText;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V
    :try_end_c
    .catchall {:try_start_5 .. :try_end_c} :catchall_e

    :cond_c
    const/4 v0, 0x0

    return v0

    :catchall_e
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/views/CodeEditText;->DW:Z

    if-eqz v3, :cond_16

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_16
    throw v2
.end method

.method protected Hw(II)I
    .registers 10
    .annotation runtime Labcd/su;
        method = -0x14d86c11979f11f0L
    .end annotation

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/views/CodeEditText;->j6:Z

    if-eqz v0, :cond_16

    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p2}, Ljava/lang/Integer;-><init>(I)V

    const-wide v2, -0xa9f8471a9851305L

    invoke-static {v2, v3, p0, v0, v1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_16
    invoke-virtual {p0, p1, p2}, Lcom/aide/ui/views/CodeEditText;->DW(II)C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->isJavaIdentifierPart(C)Z

    move-result v0

    if-eqz v0, :cond_32

    :goto_20
    const/4 v0, 0x1

    if-lt p2, v0, :cond_30

    invoke-virtual {p0, p1, p2}, Lcom/aide/ui/views/CodeEditText;->DW(II)C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->isJavaIdentifierPart(C)Z

    move-result v1
    :try_end_2b
    .catchall {:try_start_0 .. :try_end_2b} :catchall_34

    if-eqz v1, :cond_30

    add-int/lit8 p2, p2, -0x1

    goto :goto_20

    :cond_30
    add-int/2addr p2, v0

    return p2

    :cond_32
    const/4 p1, -0x1

    return p1

    :catchall_34
    move-exception v0

    move-object v6, v0

    sget-boolean v0, Lcom/aide/ui/views/CodeEditText;->DW:Z

    if-eqz v0, :cond_4e

    const-wide v1, -0xa9f8471a9851305L

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p2}, Ljava/lang/Integer;-><init>(I)V

    move-object v0, v6

    move-object v3, p0

    invoke-static/range {v0 .. v5}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_4e
    goto :goto_50

    :goto_4f
    throw v6

    :goto_50
    goto :goto_4f
.end method

.method public Hw(Lcom/aide/ui/views/CodeEditText$d;)V
    .registers 6

    const-wide v0, -0x1078f9c0574ba4efL  # -1.7454009432893807E229

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/views/CodeEditText;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    iget-object v2, p0, Lcom/aide/ui/views/CodeEditText;->gn:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_11
    .catchall {:try_start_5 .. :try_end_11} :catchall_12

    return-void

    :catchall_12
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/views/CodeEditText;->DW:Z

    if-eqz v3, :cond_1a

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1a
    throw v2
.end method

.method protected Hw()Z
    .registers 5
    .annotation runtime Labcd/su;
        method = -0x170079766bd1ee3fL
    .end annotation

    const-wide v0, 0x5b74bc1e1e9844f0L  # 3.679414238253789E132

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/views/CodeEditText;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V
    :try_end_c
    .catchall {:try_start_5 .. :try_end_c} :catchall_e

    :cond_c
    const/4 v0, 0x0

    return v0

    :catchall_e
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/views/CodeEditText;->DW:Z

    if-eqz v3, :cond_16

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_16
    throw v2
.end method

.method public J0()Z
    .registers 5

    const-wide v0, 0x3c4e52805205ed21L  # 3.2875471565929336E-18

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/views/CodeEditText;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    iget-boolean v0, p0, Lcom/aide/ui/views/CodeEditText;->we:Z
    :try_end_e
    .catchall {:try_start_5 .. :try_end_e} :catchall_f

    return v0

    :catchall_f
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/views/CodeEditText;->DW:Z

    if-eqz v3, :cond_17

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_17
    throw v2
.end method

.method public J8()Z
    .registers 5

    const-wide v0, -0x3a8acb3633675545L  # -4.101876449167416E26

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/views/CodeEditText;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    invoke-virtual {p0}, Lcom/aide/ui/views/CodeEditText;->getOEditorView()Lcom/aide/ui/views/CodeEditText$c;

    move-result-object v2

    invoke-virtual {v2}, Lcom/aide/ui/views/editor/OEditor;->rN()Z

    move-result v0
    :try_end_14
    .catchall {:try_start_5 .. :try_end_14} :catchall_15

    return v0

    :catchall_15
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/views/CodeEditText;->DW:Z

    if-eqz v3, :cond_1d

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1d
    throw v2
.end method

.method protected Mr()V
    .registers 5
    .annotation runtime Labcd/su;
        method = 0x14954a7af97a807cL
    .end annotation

    const-wide v0, -0x1677d8ec29e3e7f3L  # -2.3109569628687425E200

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/views/CodeEditText;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V
    :try_end_c
    .catchall {:try_start_5 .. :try_end_c} :catchall_d

    :cond_c
    return-void

    :catchall_d
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/views/CodeEditText;->DW:Z

    if-eqz v3, :cond_15

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_15
    throw v2
.end method

.method protected QX()V
    .registers 5
    .annotation runtime Labcd/su;
        method = 0x68b629df7dd2cc1L
    .end annotation

    const-wide v0, -0x17bf4c6e66ca5cb8L

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/views/CodeEditText;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V
    :try_end_c
    .catchall {:try_start_5 .. :try_end_c} :catchall_d

    :cond_c
    return-void

    :catchall_d
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/views/CodeEditText;->DW:Z

    if-eqz v3, :cond_15

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_15
    throw v2
.end method

.method public U2()V
    .registers 5

    const-wide v0, 0xb9d7a942f6b9860L

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/views/CodeEditText;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    invoke-virtual {p0}, Lcom/aide/ui/views/CodeEditText;->getKeyStrokeDetector()Lcom/aide/common/KeyStrokeDetector;

    move-result-object v2

    invoke-virtual {v2}, Lcom/aide/common/KeyStrokeDetector;->DW()V

    invoke-virtual {p0}, Lcom/aide/ui/views/CodeEditText;->getOEditorView()Lcom/aide/ui/views/CodeEditText$c;

    move-result-object v2

    invoke-virtual {v2}, Lcom/aide/ui/views/editor/OEditor;->P8()V
    :try_end_1a
    .catchall {:try_start_5 .. :try_end_1a} :catchall_1b

    return-void

    :catchall_1b
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/views/CodeEditText;->DW:Z

    if-eqz v3, :cond_23

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_23
    throw v2
.end method

.method public VH()V
    .registers 5

    const-wide v0, 0x1e8bf632a21cfe37L

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/views/CodeEditText;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    invoke-virtual {p0}, Lcom/aide/ui/views/CodeEditText;->getOEditorView()Lcom/aide/ui/views/CodeEditText$c;

    move-result-object v2

    invoke-virtual {v2}, Lcom/aide/ui/views/editor/OEditor;->U2()V
    :try_end_13
    .catchall {:try_start_5 .. :try_end_13} :catchall_14

    return-void

    :catchall_14
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/views/CodeEditText;->DW:Z

    if-eqz v3, :cond_1c

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1c
    throw v2
.end method

.method public VH(Lcom/aide/ui/views/CodeEditText$d;)V
    .registers 6

    const-wide v0, -0x35e06ea9ad6ac29L

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/views/CodeEditText;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    iget-object v2, p0, Lcom/aide/ui/views/CodeEditText;->tp:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_11
    .catchall {:try_start_5 .. :try_end_11} :catchall_12

    return-void

    :catchall_12
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/views/CodeEditText;->DW:Z

    if-eqz v3, :cond_1a

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1a
    throw v2
.end method

.method public Ws()Z
    .registers 5

    const-wide v0, -0x3595cae36f5dac17L  # -3.064180488138332E50

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/views/CodeEditText;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    invoke-virtual {p0}, Lcom/aide/ui/views/CodeEditText;->getOEditorView()Lcom/aide/ui/views/CodeEditText$c;

    move-result-object v2

    invoke-virtual {v2}, Lcom/aide/ui/views/editor/OEditor;->er()Z

    move-result v0
    :try_end_14
    .catchall {:try_start_5 .. :try_end_14} :catchall_15

    return v0

    :catchall_15
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/views/CodeEditText;->DW:Z

    if-eqz v3, :cond_1d

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1d
    throw v2
.end method

.method public XL()V
    .registers 5

    const-wide v0, 0x9a2c9d96cf785cfL

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/views/CodeEditText;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    invoke-virtual {p0}, Lcom/aide/ui/views/CodeEditText;->getOEditorView()Lcom/aide/ui/views/CodeEditText$c;

    move-result-object v2

    invoke-virtual {v2}, Lcom/aide/ui/views/editor/OEditor;->yS()V
    :try_end_13
    .catchall {:try_start_5 .. :try_end_13} :catchall_14

    return-void

    :catchall_14
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/views/CodeEditText;->DW:Z

    if-eqz v3, :cond_1c

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1c
    throw v2
.end method

.method public Zo()V
    .registers 5

    const-wide v0, -0x3c47507bcec6070L

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/views/CodeEditText;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    invoke-virtual {p0}, Lcom/aide/ui/views/CodeEditText;->getOEditorView()Lcom/aide/ui/views/CodeEditText$c;

    move-result-object v2

    invoke-virtual {v2}, Lcom/aide/ui/views/editor/OEditor;->Mr()V
    :try_end_13
    .catchall {:try_start_5 .. :try_end_13} :catchall_14

    return-void

    :catchall_14
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/views/CodeEditText;->DW:Z

    if-eqz v3, :cond_1c

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1c
    throw v2
.end method

.method public Zo(Lcom/aide/ui/views/CodeEditText$d;)V
    .registers 6

    const-wide v0, 0x44394d381532427fL  # 4.667328224879632E20

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/views/CodeEditText;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    iget-object v2, p0, Lcom/aide/ui/views/CodeEditText;->VH:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_11
    .catchall {:try_start_5 .. :try_end_11} :catchall_12

    return-void

    :catchall_12
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/views/CodeEditText;->DW:Z

    if-eqz v3, :cond_1a

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1a
    throw v2
.end method

.method public Zo(II)Z
    .registers 10

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/views/CodeEditText;->j6:Z

    if-eqz v0, :cond_16

    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p2}, Ljava/lang/Integer;-><init>(I)V

    const-wide v2, -0x202370861e9154bL  # -7.791727108309179E298

    invoke-static {v2, v3, p0, v0, v1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_16
    invoke-virtual {p0}, Lcom/aide/ui/views/CodeEditText;->getSelectionStartLine()I

    move-result v0

    const/4 v1, 0x0

    if-ge p1, v0, :cond_1e

    return v1

    :cond_1e
    invoke-virtual {p0}, Lcom/aide/ui/views/CodeEditText;->getSelectionEndLine()I

    move-result v0

    if-le p1, v0, :cond_25

    return v1

    :cond_25
    invoke-virtual {p0}, Lcom/aide/ui/views/CodeEditText;->getSelectionStartLine()I

    move-result v0

    invoke-virtual {p0}, Lcom/aide/ui/views/CodeEditText;->getSelectionEndLine()I

    move-result v2

    const/4 v3, 0x1

    if-ne v0, v2, :cond_3e

    invoke-virtual {p0}, Lcom/aide/ui/views/CodeEditText;->getSelectionStartColumn()I

    move-result v0

    if-lt p2, v0, :cond_3d

    invoke-virtual {p0}, Lcom/aide/ui/views/CodeEditText;->getSelectionEndColumn()I

    move-result p1

    if-gt p2, p1, :cond_3d

    const/4 v1, 0x1

    :cond_3d
    return v1

    :cond_3e
    invoke-virtual {p0}, Lcom/aide/ui/views/CodeEditText;->getSelectionStartLine()I

    move-result v0

    if-ne p1, v0, :cond_4c

    invoke-virtual {p0}, Lcom/aide/ui/views/CodeEditText;->getSelectionStartColumn()I

    move-result p1

    if-lt p2, p1, :cond_4b

    const/4 v1, 0x1

    :cond_4b
    return v1

    :cond_4c
    invoke-virtual {p0}, Lcom/aide/ui/views/CodeEditText;->getSelectionEndLine()I

    move-result v0

    if-ne p1, v0, :cond_5a

    invoke-virtual {p0}, Lcom/aide/ui/views/CodeEditText;->getSelectionEndColumn()I

    move-result p1
    :try_end_56
    .catchall {:try_start_0 .. :try_end_56} :catchall_5b

    if-gt p2, p1, :cond_59

    const/4 v1, 0x1

    :cond_59
    return v1

    :cond_5a
    return v3

    :catchall_5b
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/views/CodeEditText;->DW:Z

    if-eqz v1, :cond_74

    const-wide v2, -0x202370861e9154bL  # -7.791727108309179E298

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    move-object v1, v0

    move-object v4, p0

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_74
    throw v0
.end method

.method public aM()V
    .registers 5

    const-wide v0, 0xb8a610f3870b31cL

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/views/CodeEditText;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    invoke-virtual {p0}, Lcom/aide/ui/views/CodeEditText;->getKeyStrokeDetector()Lcom/aide/common/KeyStrokeDetector;

    move-result-object v2

    invoke-virtual {v2}, Lcom/aide/common/KeyStrokeDetector;->DW()V

    invoke-virtual {p0}, Lcom/aide/ui/views/CodeEditText;->getOEditorView()Lcom/aide/ui/views/CodeEditText$c;

    move-result-object v2

    invoke-virtual {v2}, Lcom/aide/ui/views/editor/OEditor;->gW()V
    :try_end_1a
    .catchall {:try_start_5 .. :try_end_1a} :catchall_1b

    return-void

    :catchall_1b
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/views/CodeEditText;->DW:Z

    if-eqz v3, :cond_23

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_23
    throw v2
.end method

.method public getBasicEditorCommands()Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Labcd/Wl;",
            ">;"
        }
    .end annotation

    const-wide v0, -0x32603fb3b7e32ee3L  # -8.359469601064916E65

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/views/CodeEditText;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    iget-object v0, p0, Lcom/aide/ui/views/CodeEditText;->EQ:Ljava/util/List;
    :try_end_e
    .catchall {:try_start_5 .. :try_end_e} :catchall_f

    return-object v0

    :catchall_f
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/views/CodeEditText;->DW:Z

    if-eqz v3, :cond_17

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_17
    throw v2
.end method

.method public getCustomEditorCommands()Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Labcd/Wl;",
            ">;"
        }
    .end annotation

    const-wide v0, 0x1415f44797e13a8L

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/views/CodeEditText;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V
    :try_end_c
    .catchall {:try_start_5 .. :try_end_c} :catchall_e

    :cond_c
    const/4 v0, 0x0

    return-object v0

    :catchall_e
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/views/CodeEditText;->DW:Z

    if-eqz v3, :cond_16

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_16
    throw v2
.end method

.method public getDefaultFontSize()F
    .registers 5

    const-wide v0, -0x300d4499b90b7a21L  # -1.355638010669962E77

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/views/CodeEditText;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V
    :try_end_c
    .catchall {:try_start_5 .. :try_end_c} :catchall_f

    :cond_c
    const/high16 v0, 0x41200000  # 10.0f

    return v0

    :catchall_f
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/views/CodeEditText;->DW:Z

    if-eqz v3, :cond_17

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_17
    throw v2
.end method

.method public getKeyStrokeDetector()Lcom/aide/common/KeyStrokeDetector;
    .registers 5

    const-wide v0, -0x67970814f461b261L

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/views/CodeEditText;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V
    :try_end_c
    .catchall {:try_start_5 .. :try_end_c} :catchall_e

    :cond_c
    const/4 v0, 0x0

    return-object v0

    :catchall_e
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/views/CodeEditText;->DW:Z

    if-eqz v3, :cond_16

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_16
    throw v2
.end method

.method public getKeyStrokeHandler()Lcom/aide/common/KeyStrokeDetector$a;
    .registers 5

    const-wide v0, -0x5d9f6a4725147485L  # -4.250144212073289E-143

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/views/CodeEditText;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    invoke-virtual {p0}, Lcom/aide/ui/views/CodeEditText;->getOEditorView()Lcom/aide/ui/views/CodeEditText$c;

    move-result-object v2

    invoke-virtual {v2}, Lcom/aide/ui/views/CodeEditText$c;->getKeyStrokeHandler()Lcom/aide/common/KeyStrokeDetector$a;

    move-result-object v0
    :try_end_14
    .catchall {:try_start_5 .. :try_end_14} :catchall_15

    return-object v0

    :catchall_15
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/views/CodeEditText;->DW:Z

    if-eqz v3, :cond_1d

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1d
    throw v2
.end method

.method public getLineCount()I
    .registers 5

    const-wide v0, 0x1368bf909035979fL  # 3.589537328410678E-215

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/views/CodeEditText;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    invoke-virtual {p0}, Lcom/aide/ui/views/CodeEditText;->getOEditorView()Lcom/aide/ui/views/CodeEditText$c;

    move-result-object v2

    invoke-virtual {v2}, Lcom/aide/ui/views/editor/OEditor;->getEditorModel()Lcom/aide/ui/views/editor/g;

    move-result-object v2

    invoke-virtual {v2}, Lcom/aide/ui/views/editor/g;->v5()I

    move-result v0
    :try_end_18
    .catchall {:try_start_5 .. :try_end_18} :catchall_19

    return v0

    :catchall_19
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/views/CodeEditText;->DW:Z

    if-eqz v3, :cond_21

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_21
    throw v2
.end method

.method protected getOEditorView()Lcom/aide/ui/views/CodeEditText$c;
    .registers 5
    .annotation runtime Labcd/su;
        method = 0x2b3052c9d161bc80L
    .end annotation

    const-wide v0, -0x23ce9004f9a4c47L  # -6.242348267818423E297

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/views/CodeEditText;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/aide/ui/views/CodeEditText$c;
    :try_end_13
    .catchall {:try_start_5 .. :try_end_13} :catchall_14

    return-object v2

    :catchall_14
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/views/CodeEditText;->DW:Z

    if-eqz v3, :cond_1c

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1c
    throw v2
.end method

.method protected getQuickKeyBarHeight()I
    .registers 5
    .annotation runtime Labcd/su;
        method = 0x5062a9b3a29a95d3L
    .end annotation

    const-wide v0, -0x226432186c710618L  # -8.476374951060919E142

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/views/CodeEditText;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V
    :try_end_c
    .catchall {:try_start_5 .. :try_end_c} :catchall_e

    :cond_c
    const/4 v0, 0x0

    return v0

    :catchall_e
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/views/CodeEditText;->DW:Z

    if-eqz v3, :cond_16

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_16
    throw v2
.end method

.method public getScrollView()Lcom/aide/ui/views/CodeEditTextScrollView;
    .registers 5

    const-wide v0, -0x22f93198fc543e44L

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/views/CodeEditText;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    if-nez v2, :cond_14

    const/4 v0, 0x0

    return-object v0

    :cond_14
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Lcom/aide/ui/views/CodeEditTextScrollView;
    :try_end_22
    .catchall {:try_start_5 .. :try_end_22} :catchall_23

    return-object v2

    :catchall_23
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/views/CodeEditText;->DW:Z

    if-eqz v3, :cond_2b

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_2b
    throw v2
.end method

.method public getSelectionEndColumn()I
    .registers 5

    const-wide v0, -0x21b2da481cd47d4fL  # -1.8198131497957198E146

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/views/CodeEditText;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    invoke-virtual {p0}, Lcom/aide/ui/views/CodeEditText;->getOEditorView()Lcom/aide/ui/views/CodeEditText$c;

    move-result-object v2

    invoke-virtual {v2}, Lcom/aide/ui/views/editor/OConsole;->J0()Z

    move-result v2

    if-eqz v2, :cond_25

    invoke-virtual {p0}, Lcom/aide/ui/views/CodeEditText;->getOEditorView()Lcom/aide/ui/views/CodeEditText$c;

    move-result-object v2

    invoke-virtual {v2}, Lcom/aide/ui/views/editor/OConsole;->getSelectedRegion()Labcd/hm;

    move-result-object v2

    invoke-virtual {v2}, Labcd/hm;->j6()I

    move-result v0

    add-int/lit8 v0, v0, 0x2

    return v0

    :cond_25
    invoke-virtual {p0}, Lcom/aide/ui/views/CodeEditText;->getSelectionStartColumn()I

    move-result v0
    :try_end_29
    .catchall {:try_start_5 .. :try_end_29} :catchall_2a

    return v0

    :catchall_2a
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/views/CodeEditText;->DW:Z

    if-eqz v3, :cond_32

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_32
    throw v2
.end method

.method public getSelectionEndLine()I
    .registers 5

    const-wide v0, -0x5e1a39fec81ae237L

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/views/CodeEditText;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    invoke-virtual {p0}, Lcom/aide/ui/views/CodeEditText;->getOEditorView()Lcom/aide/ui/views/CodeEditText$c;

    move-result-object v2

    invoke-virtual {v2}, Lcom/aide/ui/views/editor/OConsole;->J0()Z

    move-result v2

    if-eqz v2, :cond_25

    invoke-virtual {p0}, Lcom/aide/ui/views/CodeEditText;->getOEditorView()Lcom/aide/ui/views/CodeEditText$c;

    move-result-object v2

    invoke-virtual {v2}, Lcom/aide/ui/views/editor/OConsole;->getSelectedRegion()Labcd/hm;

    move-result-object v2

    invoke-virtual {v2}, Labcd/hm;->DW()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    return v0

    :cond_25
    invoke-virtual {p0}, Lcom/aide/ui/views/CodeEditText;->getSelectionStartLine()I

    move-result v0
    :try_end_29
    .catchall {:try_start_5 .. :try_end_29} :catchall_2a

    return v0

    :catchall_2a
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/views/CodeEditText;->DW:Z

    if-eqz v3, :cond_32

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_32
    throw v2
.end method

.method public getSelectionStartColumn()I
    .registers 5

    const-wide v0, 0x9e073f7ffb6e98L

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/views/CodeEditText;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    invoke-virtual {p0}, Lcom/aide/ui/views/CodeEditText;->getOEditorView()Lcom/aide/ui/views/CodeEditText$c;

    move-result-object v2

    invoke-virtual {v2}, Lcom/aide/ui/views/editor/OConsole;->J0()Z

    move-result v2

    if-eqz v2, :cond_25

    invoke-virtual {p0}, Lcom/aide/ui/views/CodeEditText;->getOEditorView()Lcom/aide/ui/views/CodeEditText$c;

    move-result-object v2

    invoke-virtual {v2}, Lcom/aide/ui/views/editor/OConsole;->getSelectedRegion()Labcd/hm;

    move-result-object v2

    invoke-virtual {v2}, Labcd/hm;->FH()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    return v0

    :cond_25
    invoke-virtual {p0}, Lcom/aide/ui/views/CodeEditText;->getOEditorView()Lcom/aide/ui/views/CodeEditText$c;

    move-result-object v2

    invoke-virtual {v2}, Lcom/aide/ui/views/editor/OConsole;->getCaretColumn()I

    move-result v0
    :try_end_2d
    .catchall {:try_start_5 .. :try_end_2d} :catchall_30

    add-int/lit8 v0, v0, 0x1

    return v0

    :catchall_30
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/views/CodeEditText;->DW:Z

    if-eqz v3, :cond_38

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_38
    throw v2
.end method

.method public getSelectionStartLine()I
    .registers 5

    const-wide v0, 0x30fa6d95dcc1ef88L  # 9.348597741770735E-73

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/views/CodeEditText;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    invoke-virtual {p0}, Lcom/aide/ui/views/CodeEditText;->getOEditorView()Lcom/aide/ui/views/CodeEditText$c;

    move-result-object v2

    invoke-virtual {v2}, Lcom/aide/ui/views/editor/OConsole;->J0()Z

    move-result v2

    if-eqz v2, :cond_25

    invoke-virtual {p0}, Lcom/aide/ui/views/CodeEditText;->getOEditorView()Lcom/aide/ui/views/CodeEditText$c;

    move-result-object v2

    invoke-virtual {v2}, Lcom/aide/ui/views/editor/OConsole;->getSelectedRegion()Labcd/hm;

    move-result-object v2

    invoke-virtual {v2}, Labcd/hm;->Hw()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    return v0

    :cond_25
    invoke-virtual {p0}, Lcom/aide/ui/views/CodeEditText;->getOEditorView()Lcom/aide/ui/views/CodeEditText$c;

    move-result-object v2

    invoke-virtual {v2}, Lcom/aide/ui/views/editor/OConsole;->getCaretLine()I

    move-result v0
    :try_end_2d
    .catchall {:try_start_5 .. :try_end_2d} :catchall_30

    add-int/lit8 v0, v0, 0x1

    return v0

    :catchall_30
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/views/CodeEditText;->DW:Z

    if-eqz v3, :cond_38

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_38
    throw v2
.end method

.method protected getSideBarPadding()F
    .registers 5
    .annotation runtime Labcd/su;
        method = 0x5a4e2d4ae538dd20L
    .end annotation

    const-wide v0, 0x31515ff0e73085f3L  # 3.933508448061396E-71

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/views/CodeEditText;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V
    :try_end_c
    .catchall {:try_start_5 .. :try_end_c} :catchall_e

    :cond_c
    const/4 v0, 0x0

    return v0

    :catchall_e
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/views/CodeEditText;->DW:Z

    if-eqz v3, :cond_16

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_16
    throw v2
.end method

.method public getTabSize()I
    .registers 5

    const-wide v0, -0x162be691169f3858L  # -6.15402272155841E201

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/views/CodeEditText;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    invoke-virtual {p0}, Lcom/aide/ui/views/CodeEditText;->getOEditorView()Lcom/aide/ui/views/CodeEditText$c;

    move-result-object v2

    invoke-virtual {v2}, Lcom/aide/ui/views/editor/OConsole;->getTabSize()I

    move-result v0
    :try_end_14
    .catchall {:try_start_5 .. :try_end_14} :catchall_15

    return v0

    :catchall_15
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/views/CodeEditText;->DW:Z

    if-eqz v3, :cond_1d

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1d
    throw v2
.end method

.method protected getTextPaddingRight()I
    .registers 5
    .annotation runtime Labcd/su;
        method = -0xa74cb7bb2c71ba7L
    .end annotation

    const-wide v0, -0x276aaa8757ecd3c0L  # -5.379823164501562E118

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/views/CodeEditText;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V
    :try_end_c
    .catchall {:try_start_5 .. :try_end_c} :catchall_e

    :cond_c
    const/4 v0, 0x0

    return v0

    :catchall_e
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/views/CodeEditText;->DW:Z

    if-eqz v3, :cond_16

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_16
    throw v2
.end method

.method public gn()V
    .registers 5

    const-wide v0, 0x4c66352fdf04f00L

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/views/CodeEditText;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    invoke-virtual {p0}, Lcom/aide/ui/views/CodeEditText;->getOEditorView()Lcom/aide/ui/views/CodeEditText$c;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->hasFocus()Z

    move-result v2

    if-nez v2, :cond_1d

    invoke-virtual {p0}, Lcom/aide/ui/views/CodeEditText;->getOEditorView()Lcom/aide/ui/views/CodeEditText$c;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->requestFocus()Z
    :try_end_1d
    .catchall {:try_start_5 .. :try_end_1d} :catchall_1e

    :cond_1d
    return-void

    :catchall_1e
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/views/CodeEditText;->DW:Z

    if-eqz v3, :cond_26

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_26
    throw v2
.end method

.method public j3()V
    .registers 5

    const-wide v0, -0x21dfeb0283fb30e8L  # -2.510196895738994E145

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/views/CodeEditText;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    invoke-virtual {p0}, Lcom/aide/ui/views/CodeEditText;->getScrollView()Lcom/aide/ui/views/CodeEditTextScrollView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/aide/ui/views/CodeEditTextScrollView;->VH()V
    :try_end_13
    .catchall {:try_start_5 .. :try_end_13} :catchall_14

    return-void

    :catchall_14
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/views/CodeEditText;->DW:Z

    if-eqz v3, :cond_1c

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1c
    throw v2
.end method

.method public j6(I)I
    .registers 6

    const-wide v0, 0x18e164a98b1e86bdL  # 7.807509448943635E-189

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/views/CodeEditText;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;I)V

    :cond_c
    invoke-virtual {p0}, Lcom/aide/ui/views/CodeEditText;->getOEditorView()Lcom/aide/ui/views/CodeEditText$c;

    move-result-object v2

    invoke-virtual {v2}, Lcom/aide/ui/views/editor/OEditor;->getEditorModel()Lcom/aide/ui/views/editor/g;

    move-result-object v2

    add-int/lit8 v3, p1, -0x1

    invoke-virtual {v2, v3}, Lcom/aide/ui/views/editor/g;->EQ(I)I

    move-result p1
    :try_end_1a
    .catchall {:try_start_5 .. :try_end_1a} :catchall_1b

    return p1

    :catchall_1b
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/views/CodeEditText;->DW:Z

    if-eqz v3, :cond_28

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-static {v2, v0, v1, p0, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_28
    throw v2
.end method

.method public j6(III)Ljava/lang/String;
    .registers 12

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/views/CodeEditText;->j6:Z

    if-eqz v0, :cond_1c

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p3}, Ljava/lang/Integer;-><init>(I)V

    const-wide v1, 0x38e2b2e7b3044cabL  # 1.1253959747944755E-34

    move-object v3, p0

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1c
    new-instance v0, Ljava/lang/String;

    invoke-virtual {p0}, Lcom/aide/ui/views/CodeEditText;->getOEditorView()Lcom/aide/ui/views/CodeEditText$c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/aide/ui/views/editor/OEditor;->getEditorModel()Lcom/aide/ui/views/editor/g;

    move-result-object v1

    add-int/lit8 v2, p2, -0x1

    add-int/lit8 v3, p1, -0x1

    sub-int v4, p3, p2

    invoke-virtual {v1, v2, v3, v4}, Lcom/aide/ui/views/editor/g;->j6(III)[C

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([C)V
    :try_end_33
    .catchall {:try_start_0 .. :try_end_33} :catchall_34

    return-object v0

    :catchall_34
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/views/CodeEditText;->DW:Z

    if-eqz v1, :cond_52

    const-wide v2, 0x38e2b2e7b3044cabL  # 1.1253959747944755E-34

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, p3}, Ljava/lang/Integer;-><init>(I)V

    move-object v1, v0

    move-object v4, p0

    invoke-static/range {v1 .. v7}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_52
    throw v0
.end method

.method public j6(Labcd/Wl;)Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Labcd/Wl;",
            ")",
            "Ljava/util/List<",
            "Lcom/aide/common/u;",
            ">;"
        }
    .end annotation

    const-wide v0, 0xfab9a721bcc46fL

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/views/CodeEditText;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V
    :try_end_c
    .catchall {:try_start_5 .. :try_end_c} :catchall_e

    :cond_c
    const/4 p1, 0x0

    return-object p1

    :catchall_e
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/views/CodeEditText;->DW:Z

    if-eqz v3, :cond_16

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_16
    throw v2
.end method

.method public j6(C)V
    .registers 6

    const-wide v0, -0x1f2c89b5ca996797L  # -2.6720634290620416E158

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/views/CodeEditText;->j6:Z

    if-eqz v2, :cond_11

    new-instance v2, Ljava/lang/Character;

    invoke-direct {v2, p1}, Ljava/lang/Character;-><init>(C)V

    invoke-static {v0, v1, p0, v2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_11
    invoke-virtual {p0}, Lcom/aide/ui/views/CodeEditText;->getOEditorView()Lcom/aide/ui/views/CodeEditText$c;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/aide/ui/views/editor/OEditor;->j6(C)V
    :try_end_18
    .catchall {:try_start_5 .. :try_end_18} :catchall_19

    return-void

    :catchall_19
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/views/CodeEditText;->DW:Z

    if-eqz v3, :cond_26

    new-instance v3, Ljava/lang/Character;

    invoke-direct {v3, p1}, Ljava/lang/Character;-><init>(C)V

    invoke-static {v2, v0, v1, p0, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_26
    throw v2
.end method

.method public j6(II)V
    .registers 10

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/views/CodeEditText;->j6:Z

    if-eqz v0, :cond_16

    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p2}, Ljava/lang/Integer;-><init>(I)V

    const-wide v2, -0x19591a5bf3e48349L  # -3.113340134300188E186

    invoke-static {v2, v3, p0, v0, v1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_16
    invoke-virtual {p0}, Lcom/aide/ui/views/CodeEditText;->getScrollView()Lcom/aide/ui/views/CodeEditTextScrollView;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/aide/ui/views/CodeEditTextScrollView;->j6(II)V
    :try_end_1d
    .catchall {:try_start_0 .. :try_end_1d} :catchall_1e

    return-void

    :catchall_1e
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/views/CodeEditText;->DW:Z

    if-eqz v1, :cond_37

    const-wide v2, -0x19591a5bf3e48349L  # -3.113340134300188E186

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    move-object v1, v0

    move-object v4, p0

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_37
    throw v0
.end method

.method public j6(IIII)V
    .registers 14

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/views/CodeEditText;->j6:Z

    if-eqz v0, :cond_21

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p3}, Ljava/lang/Integer;-><init>(I)V

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, p4}, Ljava/lang/Integer;-><init>(I)V

    const-wide v1, 0x55cd5b77d706f4e0L  # 2.1040912771919115E105

    move-object v3, p0

    invoke-static/range {v1 .. v7}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_21
    invoke-virtual {p0}, Lcom/aide/ui/views/CodeEditText;->getScrollView()Lcom/aide/ui/views/CodeEditTextScrollView;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/aide/ui/views/CodeEditTextScrollView;->j6(IIII)V
    :try_end_28
    .catchall {:try_start_0 .. :try_end_28} :catchall_29

    return-void

    :catchall_29
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/views/CodeEditText;->DW:Z

    if-eqz v1, :cond_4c

    const-wide v2, 0x55cd5b77d706f4e0L  # 2.1040912771919115E105

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, p3}, Ljava/lang/Integer;-><init>(I)V

    new-instance v8, Ljava/lang/Integer;

    invoke-direct {v8, p4}, Ljava/lang/Integer;-><init>(I)V

    move-object v1, v0

    move-object v4, p0

    invoke-static/range {v1 .. v8}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_4c
    throw v0
.end method

.method public j6(IIIILjava/lang/String;)V
    .registers 16

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/views/CodeEditText;->j6:Z

    if-eqz v0, :cond_22

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p3}, Ljava/lang/Integer;-><init>(I)V

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, p4}, Ljava/lang/Integer;-><init>(I)V

    const-wide v1, 0x2c4ab98790281460L  # 2.5023302416629075E-95

    move-object v3, p0

    move-object v8, p5

    invoke-static/range {v1 .. v8}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_22
    invoke-virtual {p0}, Lcom/aide/ui/views/CodeEditText;->getOEditorView()Lcom/aide/ui/views/CodeEditText$c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aide/ui/views/editor/OEditor;->getEditorModel()Lcom/aide/ui/views/editor/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aide/ui/views/editor/g;->BT()V

    invoke-virtual {p0}, Lcom/aide/ui/views/CodeEditText;->getOEditorView()Lcom/aide/ui/views/CodeEditText$c;

    move-result-object v0

    invoke-static {v0}, Lcom/aide/ui/views/CodeEditText$c;->j6(Lcom/aide/ui/views/CodeEditText$c;)Lcom/aide/ui/views/CodeEditText$a;

    move-result-object v1

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move-object v6, p5

    invoke-virtual/range {v1 .. v6}, Lcom/aide/ui/views/CodeEditText$a;->j6(IIIILjava/lang/String;)V
    :try_end_3d
    .catchall {:try_start_0 .. :try_end_3d} :catchall_3e

    return-void

    :catchall_3e
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/views/CodeEditText;->DW:Z

    if-eqz v1, :cond_62

    const-wide v2, 0x2c4ab98790281460L  # 2.5023302416629075E-95

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, p3}, Ljava/lang/Integer;-><init>(I)V

    new-instance v8, Ljava/lang/Integer;

    invoke-direct {v8, p4}, Ljava/lang/Integer;-><init>(I)V

    move-object v1, v0

    move-object v4, p0

    move-object v9, p5

    invoke-static/range {v1 .. v9}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_62
    throw v0
.end method

.method public j6(Lcom/aide/ui/views/CodeEditText$d;)V
    .registers 6

    const-wide v0, -0x3f62e10adf588347L  # -1863.7393823785662

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/views/CodeEditText;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    iget-object v2, p0, Lcom/aide/ui/views/CodeEditText;->Hw:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_11
    .catchall {:try_start_5 .. :try_end_11} :catchall_12

    return-void

    :catchall_12
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/views/CodeEditText;->DW:Z

    if-eqz v3, :cond_1a

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1a
    throw v2
.end method

.method public j6(ILandroid/view/KeyEvent;)Z
    .registers 10

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/views/CodeEditText;->j6:Z

    if-eqz v0, :cond_11

    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, p1}, Ljava/lang/Integer;-><init>(I)V

    const-wide v1, -0x1de103e78da4a700L  # -4.460726730231205E164

    invoke-static {v1, v2, p0, v0, p2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_11
    invoke-virtual {p0}, Lcom/aide/ui/views/CodeEditText;->getOEditorView()Lcom/aide/ui/views/CodeEditText$c;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/aide/ui/views/CodeEditText$c;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p1
    :try_end_19
    .catchall {:try_start_0 .. :try_end_19} :catchall_1a

    return p1

    :catchall_1a
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/views/CodeEditText;->DW:Z

    if-eqz v1, :cond_2f

    const-wide v2, -0x1de103e78da4a700L  # -4.460726730231205E164

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p1}, Ljava/lang/Integer;-><init>(I)V

    move-object v1, v0

    move-object v4, p0

    move-object v6, p2

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_2f
    throw v0
.end method

.method public j6(Landroid/view/MotionEvent;)Z
    .registers 6

    const-wide v0, -0x3ad563bf716354a9L  # -1.608497567460279E25

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/views/CodeEditText;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    invoke-virtual {p0}, Lcom/aide/ui/views/CodeEditText;->getScrollView()Lcom/aide/ui/views/CodeEditTextScrollView;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/aide/ui/views/CodeEditTextScrollView;->j6(Landroid/view/MotionEvent;)Z

    move-result p1
    :try_end_14
    .catchall {:try_start_5 .. :try_end_14} :catchall_15

    return p1

    :catchall_15
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/views/CodeEditText;->DW:Z

    if-eqz v3, :cond_1d

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1d
    throw v2
.end method

.method protected j6(Lcom/aide/common/u;)Z
    .registers 6
    .annotation runtime Labcd/su;
        method = -0x35028a62094f0bb9L
    .end annotation

    const-wide v0, 0x2513b0c669f79530L  # 4.438530759298259E-130

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/views/CodeEditText;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V
    :try_end_c
    .catchall {:try_start_5 .. :try_end_c} :catchall_e

    :cond_c
    const/4 p1, 0x0

    return p1

    :catchall_e
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/views/CodeEditText;->DW:Z

    if-eqz v3, :cond_16

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_16
    throw v2
.end method

.method protected onLayout(ZIIII)V
    .registers 16
    .annotation runtime Labcd/su;
        method = 0xaadb40003b22ca7L
    .end annotation

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/views/CodeEditText;->j6:Z

    if-eqz v0, :cond_26

    new-instance v4, Ljava/lang/Boolean;

    invoke-direct {v4, p1}, Ljava/lang/Boolean;-><init>(Z)V

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p3}, Ljava/lang/Integer;-><init>(I)V

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, p4}, Ljava/lang/Integer;-><init>(I)V

    new-instance v8, Ljava/lang/Integer;

    invoke-direct {v8, p5}, Ljava/lang/Integer;-><init>(I)V

    const-wide v1, 0x59ff73e40874d3bcL  # 3.326719026875641E125

    move-object v3, p0

    invoke-static/range {v1 .. v8}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_26
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    sub-int v2, p4, p2

    sub-int v3, p5, p3

    invoke-virtual {v1, v0, v0, v2, v3}, Landroid/view/View;->layout(IIII)V
    :try_end_32
    .catchall {:try_start_0 .. :try_end_32} :catchall_33

    return-void

    :catchall_33
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/views/CodeEditText;->DW:Z

    if-eqz v1, :cond_5b

    const-wide v2, 0x59ff73e40874d3bcL  # 3.326719026875641E125

    new-instance v5, Ljava/lang/Boolean;

    invoke-direct {v5, p1}, Ljava/lang/Boolean;-><init>(Z)V

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, p3}, Ljava/lang/Integer;-><init>(I)V

    new-instance v8, Ljava/lang/Integer;

    invoke-direct {v8, p4}, Ljava/lang/Integer;-><init>(I)V

    new-instance v9, Ljava/lang/Integer;

    invoke-direct {v9, p5}, Ljava/lang/Integer;-><init>(I)V

    move-object v1, v0

    move-object v4, p0

    invoke-static/range {v1 .. v9}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_5b
    throw v0
.end method

.method protected onMeasure(II)V
    .registers 10
    .annotation runtime Labcd/su;
        method = -0x7cca9f0e870a940L
    .end annotation

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/views/CodeEditText;->j6:Z

    if-eqz v0, :cond_16

    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p2}, Ljava/lang/Integer;-><init>(I)V

    const-wide v2, -0x95336ab8cefe301L  # -4.532254154467533E263

    invoke-static {v2, v3, p0, v0, v1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_16
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/view/View;->measure(II)V

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    invoke-virtual {p0, v1, v0}, Landroid/view/ViewGroup;->setMeasuredDimension(II)V
    :try_end_29
    .catchall {:try_start_0 .. :try_end_29} :catchall_2a

    return-void

    :catchall_2a
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/views/CodeEditText;->DW:Z

    if-eqz v1, :cond_43

    const-wide v2, -0x95336ab8cefe301L  # -4.532254154467533E263

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    move-object v1, v0

    move-object v4, p0

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_43
    throw v0
.end method

.method public setIdentifierClickingEnabled(Z)V
    .registers 6

    const-wide v0, 0x8a58e089af864b1L  # 5.22249738493118E-267

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/views/CodeEditText;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Z)V

    :cond_c
    iput-boolean p1, p0, Lcom/aide/ui/views/CodeEditText;->FH:Z
    :try_end_e
    .catchall {:try_start_5 .. :try_end_e} :catchall_f

    return-void

    :catchall_f
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/views/CodeEditText;->DW:Z

    if-eqz v3, :cond_1c

    new-instance v3, Ljava/lang/Boolean;

    invoke-direct {v3, p1}, Ljava/lang/Boolean;-><init>(Z)V

    invoke-static {v2, v0, v1, p0, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1c
    throw v2
.end method

.method public setIsLightTheme(Z)V
    .registers 6

    const-wide v0, -0xb0f27ef453c8e64L

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/views/CodeEditText;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Z)V

    :cond_c
    iput-boolean p1, p0, Lcom/aide/ui/views/CodeEditText;->we:Z

    invoke-virtual {p0}, Lcom/aide/ui/views/CodeEditText;->getOEditorView()Lcom/aide/ui/views/CodeEditText$c;

    move-result-object v2

    invoke-virtual {v2}, Lcom/aide/ui/views/CodeEditText$c;->Hw()V
    :try_end_15
    .catchall {:try_start_5 .. :try_end_15} :catchall_16

    return-void

    :catchall_16
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/views/CodeEditText;->DW:Z

    if-eqz v3, :cond_23

    new-instance v3, Ljava/lang/Boolean;

    invoke-direct {v3, p1}, Ljava/lang/Boolean;-><init>(Z)V

    invoke-static {v2, v0, v1, p0, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_23
    throw v2
.end method

.method public tp()V
    .registers 5

    const-wide v0, -0x43e066e0454d881L

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/views/CodeEditText;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    invoke-virtual {p0}, Lcom/aide/ui/views/CodeEditText;->getScrollView()Lcom/aide/ui/views/CodeEditTextScrollView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/aide/ui/views/CodeEditTextScrollView;->FH()V
    :try_end_13
    .catchall {:try_start_5 .. :try_end_13} :catchall_14

    return-void

    :catchall_14
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/views/CodeEditText;->DW:Z

    if-eqz v3, :cond_1c

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1c
    throw v2
.end method

.method protected u7()Z
    .registers 5
    .annotation runtime Labcd/su;
        method = -0xc2674c1a48a0f8bL
    .end annotation

    const-wide v0, -0x1e5018a79e99948L

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/views/CodeEditText;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V
    :try_end_c
    .catchall {:try_start_5 .. :try_end_c} :catchall_e

    :cond_c
    const/4 v0, 0x0

    return v0

    :catchall_e
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/views/CodeEditText;->DW:Z

    if-eqz v3, :cond_16

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_16
    throw v2
.end method

.method public v5()V
    .registers 5

    const-wide v0, 0xb52da07783f8745L

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/views/CodeEditText;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    invoke-virtual {p0}, Lcom/aide/ui/views/CodeEditText;->getOEditorView()Lcom/aide/ui/views/CodeEditText$c;

    move-result-object v2

    invoke-virtual {v2}, Lcom/aide/ui/views/editor/OEditor;->j3()V
    :try_end_13
    .catchall {:try_start_5 .. :try_end_13} :catchall_14

    return-void

    :catchall_14
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/views/CodeEditText;->DW:Z

    if-eqz v3, :cond_1c

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1c
    throw v2
.end method

.method protected v5(II)V
    .registers 10
    .annotation runtime Labcd/su;
        method = 0x416eff2ec479c39L
    .end annotation

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/views/CodeEditText;->j6:Z

    if-eqz v0, :cond_16

    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p2}, Ljava/lang/Integer;-><init>(I)V

    const-wide v2, 0x36d0ac087d85488L

    invoke-static {v2, v3, p0, v0, v1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_16
    .catchall {:try_start_0 .. :try_end_16} :catchall_17

    :cond_16
    return-void

    :catchall_17
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/views/CodeEditText;->DW:Z

    if-eqz v1, :cond_30

    const-wide v2, 0x36d0ac087d85488L

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    move-object v1, v0

    move-object v4, p0

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_30
    throw v0
.end method

.method public v5(Lcom/aide/ui/views/CodeEditText$d;)V
    .registers 6

    const-wide v0, 0x3e1986833b11250L

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/views/CodeEditText;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    iget-object v2, p0, Lcom/aide/ui/views/CodeEditText;->u7:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_11
    .catchall {:try_start_5 .. :try_end_11} :catchall_12

    return-void

    :catchall_12
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/views/CodeEditText;->DW:Z

    if-eqz v3, :cond_1a

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1a
    throw v2
.end method

.method public we()Z
    .registers 5

    const-wide v0, -0x508f817822fb7a24L  # -3.477715205599806E-80

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/views/CodeEditText;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    invoke-virtual {p0}, Lcom/aide/ui/views/CodeEditText;->getOEditorView()Lcom/aide/ui/views/CodeEditText$c;

    move-result-object v2

    invoke-virtual {v2}, Lcom/aide/ui/views/editor/OConsole;->tp()Z

    move-result v0
    :try_end_14
    .catchall {:try_start_5 .. :try_end_14} :catchall_15

    return v0

    :catchall_15
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/views/CodeEditText;->DW:Z

    if-eqz v3, :cond_1d

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1d
    throw v2
.end method
