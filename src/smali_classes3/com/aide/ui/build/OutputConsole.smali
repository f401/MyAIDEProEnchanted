.class public Lcom/aide/ui/build/OutputConsole;
.super Lcom/aide/ui/views/CodeEditText;


# annotations
.annotation runtime Labcd/xu;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/aide/ui/build/OutputConsole$a;,
        Lcom/aide/ui/build/OutputConsole$b;,
        Lcom/aide/ui/build/OutputConsole$c;
    }
.end annotation


# static fields
.field private static J0:Z
    .annotation runtime Labcd/tu;
    .end annotation
.end field

.field private static J8:Z
    .annotation runtime Labcd/uu;
    .end annotation
.end field


# instance fields
.field private Mr:Ljava/lang/StringBuilder;
    .annotation runtime Labcd/ru;
        field = -0x142a4f509447db67L
    .end annotation
.end field

.field private QX:Lcom/aide/ui/views/editor/i;
    .annotation runtime Labcd/ru;
        field = 0x367dc7a3f5381894L
    .end annotation
.end field

.field private U2:Ljava/io/OutputStream;
    .annotation runtime Labcd/ru;
        field = 0x2369a7d627c69480L
    .end annotation
.end field

.field private Ws:Lcom/aide/common/KeyStrokeDetector;
    .annotation runtime Labcd/ru;
        field = 0x3e6867a758cfe2e7L
    .end annotation
.end field

.field private XL:Landroid/view/ActionMode;
    .annotation runtime Labcd/ru;
        field = -0x33021f7203d1c25bL
    .end annotation
.end field

.field private a8:Z
    .annotation runtime Labcd/ru;
        field = 0x34eb0b8c196d9fc7L
    .end annotation
.end field

.field private aM:Lcom/aide/ui/build/OutputConsole$a;
    .annotation runtime Labcd/ru;
        field = -0x1075030670024943L
    .end annotation
.end field

.field private j3:Landroid/os/Handler;
    .annotation runtime Labcd/ru;
        field = -0x1c38173a8b3768e8L
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const-class v0, Lcom/aide/ui/build/OutputConsole;

    const-wide v1, -0x2fdcb98830cc00L

    invoke-static {v0, v1, v2, v1, v2}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 7

    const/4 v0, 0x0

    const-wide v1, -0x1551a5a9db05db29L  # -7.613194361299554E205

    :try_start_6
    sget-boolean v3, Lcom/aide/ui/build/OutputConsole;->J0:Z

    if-eqz v3, :cond_d

    invoke-static {v1, v2, v0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_d
    invoke-direct {p0, p1}, Lcom/aide/ui/views/CodeEditText;-><init>(Landroid/content/Context;)V

    invoke-direct {p0}, Lcom/aide/ui/build/OutputConsole;->a8()V
    :try_end_13
    .catchall {:try_start_6 .. :try_end_13} :catchall_14

    return-void

    :catchall_14
    move-exception v3

    sget-boolean v4, Lcom/aide/ui/build/OutputConsole;->J8:Z

    if-eqz v4, :cond_1c

    invoke-static {v3, v1, v2, v0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1c
    throw v3
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 10

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/build/OutputConsole;->J0:Z

    if-eqz v0, :cond_d

    const-wide v0, -0x2f772ad1b9df9780L  # -9.20139051969527E79

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, p1, p2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_d
    invoke-direct {p0, p1, p2}, Lcom/aide/ui/views/CodeEditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-direct {p0}, Lcom/aide/ui/build/OutputConsole;->a8()V
    :try_end_13
    .catchall {:try_start_0 .. :try_end_13} :catchall_14

    return-void

    :catchall_14
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/build/OutputConsole;->J8:Z

    if-eqz v1, :cond_25

    const-wide v2, -0x2f772ad1b9df9780L  # -9.20139051969527E79

    const/4 v4, 0x0

    move-object v1, v0

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_25
    throw v0
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 12

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/build/OutputConsole;->J0:Z

    if-eqz v0, :cond_14

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p3}, Ljava/lang/Integer;-><init>(I)V

    const-wide v1, 0x45f5f18b42c9adf5L  # 1.0865910351574625E29

    const/4 v3, 0x0

    move-object v4, p1

    move-object v5, p2

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_14
    invoke-direct {p0, p1, p2, p3}, Lcom/aide/ui/views/CodeEditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    invoke-direct {p0}, Lcom/aide/ui/build/OutputConsole;->a8()V
    :try_end_1a
    .catchall {:try_start_0 .. :try_end_1a} :catchall_1b

    return-void

    :catchall_1b
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/build/OutputConsole;->J8:Z

    if-eqz v1, :cond_31

    const-wide v2, 0x45f5f18b42c9adf5L  # 1.0865910351574625E29

    const/4 v4, 0x0

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, p3}, Ljava/lang/Integer;-><init>(I)V

    move-object v1, v0

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v1 .. v7}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_31
    throw v0
.end method

.method private DW(C)V
    .registers 6
    .annotation runtime Labcd/su;
        method = -0x15f18b15a01ab15L
    .end annotation

    const-wide v0, -0x4ddf297b35f78628L  # -3.1227739264751924E-67

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/build/OutputConsole;->J0:Z

    if-eqz v2, :cond_11

    new-instance v2, Ljava/lang/Character;

    invoke-direct {v2, p1}, Ljava/lang/Character;-><init>(C)V

    invoke-static {v0, v1, p0, v2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_11
    invoke-direct {p0}, Lcom/aide/ui/build/OutputConsole;->getOutputModel()Lcom/aide/ui/build/OutputConsole$c;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/aide/ui/build/OutputConsole$c;->j6(C)V
    :try_end_18
    .catchall {:try_start_5 .. :try_end_18} :catchall_19

    return-void

    :catchall_19
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/build/OutputConsole;->J8:Z

    if-eqz v3, :cond_26

    new-instance v3, Ljava/lang/Character;

    invoke-direct {v3, p1}, Ljava/lang/Character;-><init>(C)V

    invoke-static {v2, v0, v1, p0, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_26
    throw v2
.end method

.method static synthetic DW(Lcom/aide/ui/build/OutputConsole;)V
    .registers 1

    invoke-direct {p0}, Lcom/aide/ui/build/OutputConsole;->yS()V

    return-void
.end method

.method static synthetic FH(Lcom/aide/ui/build/OutputConsole;)V
    .registers 1

    invoke-direct {p0}, Lcom/aide/ui/build/OutputConsole;->gW()V

    return-void
.end method

.method static synthetic Hw(Lcom/aide/ui/build/OutputConsole;)Ljava/io/OutputStream;
    .registers 1

    iget-object p0, p0, Lcom/aide/ui/build/OutputConsole;->U2:Ljava/io/OutputStream;

    return-object p0
.end method

.method static synthetic VH(Lcom/aide/ui/build/OutputConsole;)Lcom/aide/ui/views/CodeEditText$c;
    .registers 1

    invoke-virtual {p0}, Lcom/aide/ui/views/CodeEditText;->getOEditorView()Lcom/aide/ui/views/CodeEditText$c;

    move-result-object p0

    return-object p0
.end method

.method static synthetic Zo(Lcom/aide/ui/build/OutputConsole;)Landroid/view/ActionMode;
    .registers 1

    iget-object p0, p0, Lcom/aide/ui/build/OutputConsole;->XL:Landroid/view/ActionMode;

    return-object p0
.end method

.method private a8()V
    .registers 6
    .annotation runtime Labcd/su;
        method = 0x154c2691eba64d6bL
    .end annotation

    const-wide v0, -0x11169863b2b5cf50L  # -1.8807077875182802E226

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/build/OutputConsole;->J0:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V
    :try_end_c
    .catchall {:try_start_5 .. :try_end_c} :catchall_65

    :cond_c
    :try_start_c
    invoke-virtual {p0}, Lcom/aide/ui/views/CodeEditText;->getOEditorView()Lcom/aide/ui/views/CodeEditText$c;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/aide/ui/views/editor/OConsole;->setHidden(Z)V

    invoke-virtual {p0}, Lcom/aide/ui/views/CodeEditText;->getOEditorView()Lcom/aide/ui/views/CodeEditText$c;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/aide/ui/views/editor/OEditor;->setEditable(Z)V

    invoke-virtual {p0}, Lcom/aide/ui/views/CodeEditText;->getOEditorView()Lcom/aide/ui/views/CodeEditText$c;

    move-result-object v2

    new-instance v3, Lcom/aide/ui/build/OutputConsole$c;

    invoke-direct {v3, p0}, Lcom/aide/ui/build/OutputConsole$c;-><init>(Lcom/aide/ui/build/OutputConsole;)V

    invoke-virtual {v2, v3}, Lcom/aide/ui/views/editor/OEditor;->setModel(Lcom/aide/ui/views/editor/o;)V
    :try_end_28
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_28} :catch_29
    .catchall {:try_start_c .. :try_end_28} :catchall_65

    goto :goto_2a

    :catch_29
    move-exception v2

    :goto_2a
    :try_start_2a
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v2, p0, Lcom/aide/ui/build/OutputConsole;->Mr:Ljava/lang/StringBuilder;

    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    iput-object v2, p0, Lcom/aide/ui/build/OutputConsole;->j3:Landroid/os/Handler;

    new-instance v2, Lcom/aide/common/KeyStrokeDetector;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/aide/common/KeyStrokeDetector;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/aide/ui/build/OutputConsole;->Ws:Lcom/aide/common/KeyStrokeDetector;

    new-instance v2, Lcom/aide/ui/build/h;

    invoke-direct {v2, p0}, Lcom/aide/ui/build/h;-><init>(Lcom/aide/ui/build/OutputConsole;)V

    invoke-virtual {p0, v2}, Lcom/aide/ui/views/CodeEditText;->DW(Lcom/aide/ui/views/CodeEditText$d;)V

    new-instance v2, Lcom/aide/ui/build/i;

    invoke-direct {v2, p0}, Lcom/aide/ui/build/i;-><init>(Lcom/aide/ui/build/OutputConsole;)V

    invoke-virtual {p0, v2}, Lcom/aide/ui/views/CodeEditText;->VH(Lcom/aide/ui/views/CodeEditText$d;)V

    new-instance v2, Lcom/aide/ui/build/j;

    const-wide/16 v3, 0x64

    invoke-direct {v2, p0, v3, v4}, Lcom/aide/ui/build/j;-><init>(Lcom/aide/ui/build/OutputConsole;J)V

    iput-object v2, p0, Lcom/aide/ui/build/OutputConsole;->QX:Lcom/aide/ui/views/editor/i;

    new-instance v2, Lcom/aide/ui/build/OutputConsole$a;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/aide/ui/build/OutputConsole$a;-><init>(Lcom/aide/ui/build/OutputConsole;Lcom/aide/ui/build/h;)V

    iput-object v2, p0, Lcom/aide/ui/build/OutputConsole;->aM:Lcom/aide/ui/build/OutputConsole$a;
    :try_end_64
    .catchall {:try_start_2a .. :try_end_64} :catchall_65

    return-void

    :catchall_65
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/build/OutputConsole;->J8:Z

    if-eqz v3, :cond_6d

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_6d
    throw v2
.end method

.method private er()V
    .registers 5
    .annotation runtime Labcd/su;
        method = 0x41bf476de191fc28L
    .end annotation

    const-wide v0, -0x639bdfc84db5f3a5L  # -6.509786015919101E-172

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/build/OutputConsole;->J0:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    iget-object v2, p0, Lcom/aide/ui/build/OutputConsole;->XL:Landroid/view/ActionMode;

    if-nez v2, :cond_21

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v2

    check-cast v2, Landroid/app/Activity;

    new-instance v3, Lcom/aide/ui/build/m;

    invoke-direct {v3, p0}, Lcom/aide/ui/build/m;-><init>(Lcom/aide/ui/build/OutputConsole;)V

    invoke-virtual {v2, v3}, Landroid/app/Activity;->startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object v2

    iput-object v2, p0, Lcom/aide/ui/build/OutputConsole;->XL:Landroid/view/ActionMode;
    :try_end_21
    .catchall {:try_start_5 .. :try_end_21} :catchall_22

    :cond_21
    return-void

    :catchall_22
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/build/OutputConsole;->J8:Z

    if-eqz v3, :cond_2a

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_2a
    throw v2
.end method

.method private gW()V
    .registers 7
    .annotation runtime Labcd/su;
        method = -0x5b7333804b84ed7cL
    .end annotation

    const-wide v0, 0x4a5ac7c6f3131f5bL  # 1.5655827382535702E50

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/build/OutputConsole;->J0:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    iget-object v2, p0, Lcom/aide/ui/build/OutputConsole;->j3:Landroid/os/Handler;

    new-instance v3, Lcom/aide/ui/build/k;

    invoke-direct {v3, p0}, Lcom/aide/ui/build/k;-><init>(Lcom/aide/ui/build/OutputConsole;)V

    const-wide/16 v4, 0x1f4

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_18
    .catchall {:try_start_5 .. :try_end_18} :catchall_19

    return-void

    :catchall_19
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/build/OutputConsole;->J8:Z

    if-eqz v3, :cond_21

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_21
    throw v2
.end method

.method private getOutputModel()Lcom/aide/ui/build/OutputConsole$c;
    .registers 5
    .annotation runtime Labcd/su;
        method = 0x25902c2833f57cd7L
    .end annotation

    const-wide v0, -0x3f5e513c75f3b180L  # -2263.381912598212

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/build/OutputConsole;->J0:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    invoke-virtual {p0}, Lcom/aide/ui/views/CodeEditText;->getOEditorView()Lcom/aide/ui/views/CodeEditText$c;

    move-result-object v2

    invoke-virtual {v2}, Lcom/aide/ui/views/editor/OConsole;->getModel()Lcom/aide/ui/views/editor/o;

    move-result-object v2

    check-cast v2, Lcom/aide/ui/build/OutputConsole$c;
    :try_end_16
    .catchall {:try_start_5 .. :try_end_16} :catchall_17

    return-object v2

    :catchall_17
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/build/OutputConsole;->J8:Z

    if-eqz v3, :cond_1f

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1f
    throw v2
.end method

.method static synthetic gn(Lcom/aide/ui/build/OutputConsole;)Lcom/aide/ui/views/editor/i;
    .registers 1

    iget-object p0, p0, Lcom/aide/ui/build/OutputConsole;->QX:Lcom/aide/ui/views/editor/i;

    return-object p0
.end method

.method static synthetic j6(Lcom/aide/ui/build/OutputConsole;Landroid/view/ActionMode;)Landroid/view/ActionMode;
    .registers 2

    iput-object p1, p0, Lcom/aide/ui/build/OutputConsole;->XL:Landroid/view/ActionMode;

    return-object p1
.end method

.method private static j6(Ljava/io/Reader;)Ljava/lang/String;
    .registers 8
    .annotation runtime Labcd/su;
        method = 0x89a33b8ede34221L
    .end annotation

    const/4 v0, 0x0

    const-wide v1, -0x184a2820bd5ff20L  # -1.83262816966942E301

    :try_start_6
    sget-boolean v3, Lcom/aide/ui/build/OutputConsole;->J0:Z

    if-eqz v3, :cond_d

    invoke-static {v1, v2, v0, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_d
    const/16 v3, 0x1000

    new-array v3, v3, [C

    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    :goto_16
    invoke-virtual {p0, v3}, Ljava/io/Reader;->read([C)I

    move-result v5

    if-lez v5, :cond_21

    const/4 v6, 0x0

    invoke-virtual {v4, v3, v6, v5}, Ljava/lang/StringBuffer;->append([CII)Ljava/lang/StringBuffer;

    goto :goto_16

    :cond_21
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_25
    .catchall {:try_start_6 .. :try_end_25} :catchall_26

    return-object p0

    :catchall_26
    move-exception v3

    sget-boolean v4, Lcom/aide/ui/build/OutputConsole;->J8:Z

    if-eqz v4, :cond_2e

    invoke-static {v3, v1, v2, v0, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_2e
    goto :goto_30

    :goto_2f
    throw v3

    :goto_30
    goto :goto_2f
.end method

.method static synthetic j6(Lcom/aide/ui/build/OutputConsole;)V
    .registers 1

    invoke-direct {p0}, Lcom/aide/ui/build/OutputConsole;->er()V

    return-void
.end method

.method static synthetic j6(Lcom/aide/ui/build/OutputConsole;C)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/aide/ui/build/OutputConsole;->DW(C)V

    return-void
.end method

.method static synthetic j6(Lcom/aide/ui/build/OutputConsole;[BII)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/aide/ui/build/OutputConsole;->j6([BII)V

    return-void
.end method

.method private j6([BII)V
    .registers 12
    .annotation runtime Labcd/su;
        method = 0x15ecb0259764822dL
    .end annotation

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/build/OutputConsole;->J0:Z

    if-eqz v0, :cond_18

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p3}, Ljava/lang/Integer;-><init>(I)V

    const-wide v1, 0x17ad40911830a48L

    move-object v3, p0

    move-object v4, p1

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_18
    invoke-direct {p0}, Lcom/aide/ui/build/OutputConsole;->getOutputModel()Lcom/aide/ui/build/OutputConsole$c;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/aide/ui/build/OutputConsole$c;->j6([BII)V
    :try_end_1f
    .catchall {:try_start_0 .. :try_end_1f} :catchall_20

    return-void

    :catchall_20
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/build/OutputConsole;->J8:Z

    if-eqz v1, :cond_3a

    const-wide v2, 0x17ad40911830a48L

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, p3}, Ljava/lang/Integer;-><init>(I)V

    move-object v1, v0

    move-object v4, p0

    move-object v5, p1

    invoke-static/range {v1 .. v7}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_3a
    throw v0
.end method

.method private lg()Z
    .registers 5
    .annotation runtime Labcd/su;
        method = 0xfd2bf78ea5a0387L
    .end annotation

    const-wide v0, 0x77e62e521da3000L

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/build/OutputConsole;->J0:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    iget-boolean v2, p0, Lcom/aide/ui/build/OutputConsole;->a8:Z

    if-eqz v2, :cond_1c

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/aide/common/g;->J8(Landroid/content/Context;)Z

    move-result v0
    :try_end_18
    .catchall {:try_start_5 .. :try_end_18} :catchall_1e

    if-eqz v0, :cond_1c

    const/4 v0, 0x1

    goto :goto_1d

    :cond_1c
    const/4 v0, 0x0

    :goto_1d
    return v0

    :catchall_1e
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/build/OutputConsole;->J8:Z

    if-eqz v3, :cond_26

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_26
    throw v2
.end method

.method private rN()V
    .registers 6
    .annotation runtime Labcd/su;
        method = 0x1d9d48b9af11d93dL
    .end annotation

    const-wide v0, -0x45253d7cae18f6b4L

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/build/OutputConsole;->J0:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    invoke-virtual {p0}, Lcom/aide/ui/views/CodeEditText;->getOEditorView()Lcom/aide/ui/views/CodeEditText$c;

    move-result-object v2

    invoke-virtual {p0}, Lcom/aide/ui/views/CodeEditText;->getLineCount()I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/aide/ui/views/CodeEditText;->j6(I)I

    move-result v3

    invoke-virtual {p0}, Lcom/aide/ui/views/CodeEditText;->getLineCount()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v2, v3, v4}, Lcom/aide/ui/views/editor/OConsole;->v5(II)V

    invoke-virtual {p0}, Lcom/aide/ui/views/CodeEditText;->getScrollView()Lcom/aide/ui/views/CodeEditTextScrollView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/aide/ui/views/CodeEditTextScrollView;->j6()Z
    :try_end_28
    .catchall {:try_start_5 .. :try_end_28} :catchall_29

    return-void

    :catchall_29
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/build/OutputConsole;->J8:Z

    if-eqz v3, :cond_31

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_31
    throw v2
.end method

.method static synthetic v5(Lcom/aide/ui/build/OutputConsole;)V
    .registers 1

    invoke-direct {p0}, Lcom/aide/ui/build/OutputConsole;->rN()V

    return-void
.end method

.method private yS()V
    .registers 7
    .annotation runtime Labcd/su;
        method = -0x2f925535d9895774L
    .end annotation

    const-wide v0, 0x6ecca9ceb0351cdL

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/build/OutputConsole;->J0:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    iget-object v2, p0, Lcom/aide/ui/build/OutputConsole;->XL:Landroid/view/ActionMode;

    if-eqz v2, :cond_13

    invoke-virtual {v2}, Landroid/view/ActionMode;->finish()V

    :cond_13
    invoke-virtual {p0}, Lcom/aide/ui/views/CodeEditText;->gn()V

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "input_method"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {p0}, Lcom/aide/ui/views/CodeEditText;->getOEditorView()Lcom/aide/ui/views/CodeEditText$c;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/view/inputmethod/InputMethodManager;->restartInput(Landroid/view/View;)V

    invoke-virtual {p0}, Lcom/aide/ui/views/CodeEditText;->getOEditorView()Lcom/aide/ui/views/CodeEditText$c;

    move-result-object v3

    const/4 v4, 0x2

    invoke-virtual {v2, v3, v4}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    iget-object v2, p0, Lcom/aide/ui/build/OutputConsole;->j3:Landroid/os/Handler;

    new-instance v3, Lcom/aide/ui/build/l;

    invoke-direct {v3, p0}, Lcom/aide/ui/build/l;-><init>(Lcom/aide/ui/build/OutputConsole;)V

    const-wide/16 v4, 0x1f4

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_3d
    .catchall {:try_start_5 .. :try_end_3d} :catchall_3e

    return-void

    :catchall_3e
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/build/OutputConsole;->J8:Z

    if-eqz v3, :cond_46

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_46
    throw v2
.end method


# virtual methods
.method protected DW()Z
    .registers 5
    .annotation runtime Labcd/su;
        method = -0x2bd3f8aa804c18L
    .end annotation

    const-wide v0, 0x6946391aaefde2c7L  # 1.3289574517239702E199

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/build/OutputConsole;->J0:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V
    :try_end_c
    .catchall {:try_start_5 .. :try_end_c} :catchall_e

    :cond_c
    const/4 v0, 0x0

    return v0

    :catchall_e
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/build/OutputConsole;->J8:Z

    if-eqz v3, :cond_16

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_16
    throw v2
.end method

.method public DW(Ljava/lang/String;)Z
    .registers 7

    const-string v0, ""

    const-string v1, "\r"

    const-wide v2, -0x15614ac581cc52e9L  # -3.8511241042046086E205

    :try_start_9
    sget-boolean v4, Lcom/aide/ui/build/OutputConsole;->J0:Z

    if-eqz v4, :cond_10

    invoke-static {v2, v3, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V
    :try_end_10
    .catchall {:try_start_9 .. :try_end_10} :catchall_38

    :cond_10
    :try_start_10
    invoke-virtual {p0}, Lcom/aide/ui/views/CodeEditText;->getOEditorView()Lcom/aide/ui/views/CodeEditText$c;

    move-result-object v4

    invoke-virtual {v4}, Lcom/aide/ui/views/editor/OEditor;->getEditorModel()Lcom/aide/ui/views/editor/g;

    move-result-object v4

    invoke-virtual {v4}, Lcom/aide/ui/views/editor/b;->aM()Ljava/io/Reader;

    move-result-object v4

    invoke-static {v4}, Lcom/aide/ui/build/OutputConsole;->j6(Ljava/io/Reader;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v1, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1
    :try_end_34
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_34} :catch_35
    .catchall {:try_start_10 .. :try_end_34} :catchall_38

    return p1

    :catch_35
    move-exception p1

    const/4 p1, 0x0

    return p1

    :catchall_38
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/build/OutputConsole;->J8:Z

    if-eqz v1, :cond_40

    invoke-static {v0, v2, v3, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_40
    throw v0
.end method

.method public getInputStream()Ljava/io/InputStream;
    .registers 5

    const-wide v0, 0x3a0bdf24eb5165c8L  # 4.397372128791889E-29

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/build/OutputConsole;->J0:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    iget-object v0, p0, Lcom/aide/ui/build/OutputConsole;->aM:Lcom/aide/ui/build/OutputConsole$a;
    :try_end_e
    .catchall {:try_start_5 .. :try_end_e} :catchall_f

    return-object v0

    :catchall_f
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/build/OutputConsole;->J8:Z

    if-eqz v3, :cond_17

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_17
    throw v2
.end method

.method public getKeyStrokeDetector()Lcom/aide/common/KeyStrokeDetector;
    .registers 5

    const-wide v0, -0x4e9e5fb36ec16687L  # -7.98084618712743E-71

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/build/OutputConsole;->J0:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    iget-object v0, p0, Lcom/aide/ui/build/OutputConsole;->Ws:Lcom/aide/common/KeyStrokeDetector;
    :try_end_e
    .catchall {:try_start_5 .. :try_end_e} :catchall_f

    return-object v0

    :catchall_f
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/build/OutputConsole;->J8:Z

    if-eqz v3, :cond_17

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_17
    throw v2
.end method

.method public getOutputStream()Ljava/io/OutputStream;
    .registers 5

    const-wide v0, 0x333131b148c3cfb1L  # 4.1796569486943155E-62

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/build/OutputConsole;->J0:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    new-instance v2, Lcom/aide/ui/build/OutputConsole$b;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/aide/ui/build/OutputConsole$b;-><init>(Lcom/aide/ui/build/OutputConsole;Lcom/aide/ui/build/h;)V
    :try_end_12
    .catchall {:try_start_5 .. :try_end_12} :catchall_13

    return-object v2

    :catchall_13
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/build/OutputConsole;->J8:Z

    if-eqz v3, :cond_1b

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1b
    throw v2
.end method

.method public getPrintStream()Ljava/io/PrintStream;
    .registers 5

    const-wide v0, 0x1e5fc107f8cfa047L

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/build/OutputConsole;->J0:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    new-instance v2, Lcom/s1243808733/aide/builder/MyPrintStream;

    invoke-virtual {p0}, Lcom/aide/ui/build/OutputConsole;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/s1243808733/aide/builder/MyPrintStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_15
    .catchall {:try_start_5 .. :try_end_15} :catchall_16

    return-object v2

    :catchall_16
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/build/OutputConsole;->J8:Z

    if-eqz v3, :cond_1e

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1e
    throw v2
.end method

.method protected getSideBarPadding()F
    .registers 5
    .annotation runtime Labcd/su;
        method = -0x272ceb2694f9a188L
    .end annotation

    const-wide v0, 0x3e64ed6375a7d101L  # 3.898013175080238E-8

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/build/OutputConsole;->J0:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    invoke-direct {p0}, Lcom/aide/ui/build/OutputConsole;->lg()Z

    move-result v2

    if-eqz v2, :cond_21

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v0, v2, Landroid/util/DisplayMetrics;->density:F
    :try_end_1c
    .catchall {:try_start_5 .. :try_end_1c} :catchall_23

    const/high16 v1, 0x42400000  # 48.0f

    mul-float v0, v0, v1

    return v0

    :cond_21
    const/4 v0, 0x0

    return v0

    :catchall_23
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/build/OutputConsole;->J8:Z

    if-eqz v3, :cond_2b

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_2b
    throw v2
.end method

.method public j6(C)V
    .registers 6

    const-wide v0, -0x20c11182b50776cdL  # -6.328200418266935E150

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/build/OutputConsole;->J0:Z

    if-eqz v2, :cond_11

    new-instance v2, Ljava/lang/Character;

    invoke-direct {v2, p1}, Ljava/lang/Character;-><init>(C)V

    invoke-static {v0, v1, p0, v2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_11
    const/16 v2, 0xa

    if-ne p1, v2, :cond_23

    iget-object v2, p0, Lcom/aide/ui/build/OutputConsole;->aM:Lcom/aide/ui/build/OutputConsole$a;

    iget-object v3, p0, Lcom/aide/ui/build/OutputConsole;->Mr:Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Lcom/aide/ui/build/OutputConsole$a;->j6(Ljava/lang/StringBuilder;)V

    iget-object v2, p0, Lcom/aide/ui/build/OutputConsole;->Mr:Ljava/lang/StringBuilder;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->setLength(I)V

    goto :goto_28

    :cond_23
    iget-object v2, p0, Lcom/aide/ui/build/OutputConsole;->Mr:Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_28
    invoke-direct {p0, p1}, Lcom/aide/ui/build/OutputConsole;->DW(C)V

    invoke-direct {p0}, Lcom/aide/ui/build/OutputConsole;->rN()V
    :try_end_2e
    .catchall {:try_start_5 .. :try_end_2e} :catchall_2f

    return-void

    :catchall_2f
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/build/OutputConsole;->J8:Z

    if-eqz v3, :cond_3c

    new-instance v3, Ljava/lang/Character;

    invoke-direct {v3, p1}, Ljava/lang/Character;-><init>(C)V

    invoke-static {v2, v0, v1, p0, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_3c
    throw v2
.end method

.method public j6(ZZ)V
    .registers 10

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/build/OutputConsole;->J0:Z

    if-eqz v0, :cond_16

    new-instance v0, Ljava/lang/Boolean;

    invoke-direct {v0, p1}, Ljava/lang/Boolean;-><init>(Z)V

    new-instance v1, Ljava/lang/Boolean;

    invoke-direct {v1, p2}, Ljava/lang/Boolean;-><init>(Z)V

    const-wide v2, -0x83d3d3d7b4b76a8L

    invoke-static {v2, v3, p0, v0, v1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_16
    invoke-virtual {p0, p1}, Lcom/aide/ui/views/CodeEditText;->setIsLightTheme(Z)V

    iput-boolean p2, p0, Lcom/aide/ui/build/OutputConsole;->a8:Z

    invoke-virtual {p0}, Lcom/aide/ui/views/CodeEditText;->getOEditorView()Lcom/aide/ui/views/CodeEditText$c;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/aide/ui/views/CodeEditText$c;->setShowCaretLine(Z)V

    if-eqz p2, :cond_47

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/aide/common/g;->DW(Landroid/content/Context;)F

    move-result v0

    const/high16 v1, 0x43c80000  # 400.0f

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_3d

    invoke-virtual {p0}, Lcom/aide/ui/views/CodeEditText;->getOEditorView()Lcom/aide/ui/views/CodeEditText$c;

    move-result-object v0

    const/high16 v1, 0x41a80000  # 21.0f

    invoke-virtual {v0, v1}, Lcom/aide/ui/views/editor/OConsole;->setFontSize(F)V

    goto :goto_59

    :cond_3d
    invoke-virtual {p0}, Lcom/aide/ui/views/CodeEditText;->getOEditorView()Lcom/aide/ui/views/CodeEditText$c;

    move-result-object v0

    const/high16 v1, 0x41600000  # 14.0f

    invoke-virtual {v0, v1}, Lcom/aide/ui/views/editor/OConsole;->setFontSize(F)V

    goto :goto_59

    :cond_47
    invoke-virtual {p0}, Lcom/aide/ui/views/CodeEditText;->getOEditorView()Lcom/aide/ui/views/CodeEditText$c;

    move-result-object v0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    const/16 v2, 0xe

    invoke-static {v1, v2}, Lcom/aide/common/g;->j6(Landroid/content/Context;I)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Lcom/aide/ui/views/editor/OConsole;->setFontSize(F)V
    :try_end_59
    .catchall {:try_start_0 .. :try_end_59} :catchall_5a

    :goto_59
    return-void

    :catchall_5a
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/build/OutputConsole;->J8:Z

    if-eqz v1, :cond_73

    const-wide v2, -0x83d3d3d7b4b76a8L

    new-instance v5, Ljava/lang/Boolean;

    invoke-direct {v5, p1}, Ljava/lang/Boolean;-><init>(Z)V

    new-instance v6, Ljava/lang/Boolean;

    invoke-direct {v6, p2}, Ljava/lang/Boolean;-><init>(Z)V

    move-object v1, v0

    move-object v4, p0

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_73
    throw v0
.end method

.method protected j6(Lcom/aide/common/u;)Z
    .registers 7
    .annotation runtime Labcd/su;
        method = 0x2f4b0064e7353e35L
    .end annotation

    const-wide v0, -0xc97606f90779fa0L  # -8.608206249277228E247

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/build/OutputConsole;->J0:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    invoke-virtual {p1}, Lcom/aide/common/u;->DW()I

    move-result v2

    const/16 v3, 0x55

    if-ne v2, v3, :cond_28

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0xf

    if-lt v3, v4, :cond_28

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getRootView()Landroid/view/View;

    move-result-object v3

    const v4, 0x7f080133

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->callOnClick()Z

    :cond_28
    const/16 v3, 0x43

    if-ne v2, v3, :cond_49

    iget-object v2, p0, Lcom/aide/ui/build/OutputConsole;->Mr:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-lez v2, :cond_49

    iget-object v2, p0, Lcom/aide/ui/build/OutputConsole;->Mr:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->setLength(I)V

    invoke-direct {p0}, Lcom/aide/ui/build/OutputConsole;->getOutputModel()Lcom/aide/ui/build/OutputConsole$c;

    move-result-object v2

    invoke-virtual {v2}, Lcom/aide/ui/build/OutputConsole$c;->vy()V

    invoke-direct {p0}, Lcom/aide/ui/build/OutputConsole;->rN()V

    :cond_49
    invoke-super {p0, p1}, Lcom/aide/ui/views/CodeEditText;->j6(Lcom/aide/common/u;)Z

    move-result p1
    :try_end_4d
    .catchall {:try_start_5 .. :try_end_4d} :catchall_4e

    return p1

    :catchall_4e
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/build/OutputConsole;->J8:Z

    if-eqz v3, :cond_56

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_56
    throw v2
.end method

.method public setProcessOutputStream(Ljava/io/OutputStream;)V
    .registers 6

    monitor-enter p0

    const-wide v0, -0x3666b337dc3ff2e3L  # -3.6109265132008343E46

    :try_start_6
    sget-boolean v2, Lcom/aide/ui/build/OutputConsole;->J0:Z

    if-eqz v2, :cond_d

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_d
    iput-object p1, p0, Lcom/aide/ui/build/OutputConsole;->U2:Ljava/io/OutputStream;
    :try_end_f
    .catchall {:try_start_6 .. :try_end_f} :catchall_11

    monitor-exit p0

    return-void

    :catchall_11
    move-exception v2

    :try_start_12
    sget-boolean v3, Lcom/aide/ui/build/OutputConsole;->J8:Z

    if-eqz v3, :cond_19

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_19
    throw v2
    :try_end_1a
    .catchall {:try_start_12 .. :try_end_1a} :catchall_1a

    :catchall_1a
    move-exception p1

    monitor-exit p0

    throw p1
.end method
