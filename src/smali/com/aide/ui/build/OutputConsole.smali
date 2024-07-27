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
    .registers 4

    const-wide v2, -0x2fdcb98830cc00L

    const-class v0, Lcom/aide/ui/build/OutputConsole;

    invoke-static {v0, v2, v3, v2, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 8

    const-wide v4, -0x1551a5a9db05db29L    # -7.613194361299554E205

    const/4 v3, 0x0

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/build/OutputConsole;->J0:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x1551a5a9db05db29L    # -7.613194361299554E205

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    invoke-direct {p0, p1}, Lcom/aide/ui/views/CodeEditText;-><init>(Landroid/content/Context;)V

    invoke-direct {p0}, Lcom/aide/ui/build/OutputConsole;->a8()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/build/OutputConsole;->J8:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v4, v5, v3, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 10

    const-wide v2, -0x2f772ad1b9df9780L    # -9.20139051969527E79

    const/4 v4, 0x0

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/build/OutputConsole;->J0:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x2f772ad1b9df9780L    # -9.20139051969527E79

    const/4 v5, 0x0

    invoke-static {v0, v1, v5, p1, p2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/aide/ui/views/CodeEditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-direct {p0}, Lcom/aide/ui/build/OutputConsole;->a8()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v1

    sget-boolean v0, Lcom/aide/ui/build/OutputConsole;->J8:Z

    if-eqz v0, :cond_1

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v1
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 14

    const-wide v8, 0x45f5f18b42c9adf5L    # 1.0865910351574625E29

    const/4 v6, 0x0

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/build/OutputConsole;->J0:Z

    if-eqz v0, :cond_0

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p3}, Ljava/lang/Integer;-><init>(I)V

    const-wide v0, 0x45f5f18b42c9adf5L    # 1.0865910351574625E29

    const/4 v2, 0x0

    move-object v3, p1

    move-object v4, p2

    invoke-static/range {v0 .. v5}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/aide/ui/views/CodeEditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    invoke-direct {p0}, Lcom/aide/ui/build/OutputConsole;->a8()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v1

    sget-boolean v0, Lcom/aide/ui/build/OutputConsole;->J8:Z

    if-eqz v0, :cond_1

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, p3}, Ljava/lang/Integer;-><init>(I)V

    move-wide v2, v8

    move-object v4, v6

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v1 .. v7}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v1
.end method

.method private DW(C)V
    .registers 8
    .annotation runtime Labcd/su;
        method = -0x15f18b15a01ab15L
    .end annotation

    const-wide v4, -0x4ddf297b35f78628L    # -3.1227739264751924E-67

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/build/OutputConsole;->J0:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/Character;

    invoke-direct {v0, p1}, Ljava/lang/Character;-><init>(C)V

    const-wide v2, -0x4ddf297b35f78628L    # -3.1227739264751924E-67

    invoke-static {v2, v3, p0, v0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    invoke-direct {p0}, Lcom/aide/ui/build/OutputConsole;->getOutputModel()Lcom/aide/ui/build/OutputConsole$c;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/aide/ui/build/OutputConsole$c;->j6(C)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/build/OutputConsole;->J8:Z

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/Character;

    invoke-direct {v1, p1}, Ljava/lang/Character;-><init>(C)V

    invoke-static {v0, v4, v5, p0, v1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v0
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
    .registers 2

    iget-object v0, p0, Lcom/aide/ui/build/OutputConsole;->U2:Ljava/io/OutputStream;

    return-object v0
.end method

.method static synthetic VH(Lcom/aide/ui/build/OutputConsole;)Lcom/aide/ui/views/CodeEditText$c;
    .registers 2

    invoke-virtual {p0}, Lcom/aide/ui/views/CodeEditText;->getOEditorView()Lcom/aide/ui/views/CodeEditText$c;

    move-result-object v0

    return-object v0
.end method

.method static synthetic Zo(Lcom/aide/ui/build/OutputConsole;)Landroid/view/ActionMode;
    .registers 2

    iget-object v0, p0, Lcom/aide/ui/build/OutputConsole;->XL:Landroid/view/ActionMode;

    return-object v0
.end method

.method private a8()V
    .registers 7
    .annotation runtime Labcd/su;
        method = 0x154c2691eba64d6bL
    .end annotation

    const-wide v4, -0x11169863b2b5cf50L    # -1.8807077875182802E226

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/build/OutputConsole;->J0:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x11169863b2b5cf50L    # -1.8807077875182802E226

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lcom/aide/ui/views/CodeEditText;->getOEditorView()Lcom/aide/ui/views/CodeEditText$c;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/aide/ui/views/editor/OConsole;->setHidden(Z)V

    invoke-virtual {p0}, Lcom/aide/ui/views/CodeEditText;->getOEditorView()Lcom/aide/ui/views/CodeEditText$c;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/aide/ui/views/editor/OEditor;->setEditable(Z)V

    invoke-virtual {p0}, Lcom/aide/ui/views/CodeEditText;->getOEditorView()Lcom/aide/ui/views/CodeEditText$c;

    move-result-object v0

    new-instance v1, Lcom/aide/ui/build/OutputConsole$c;

    invoke-direct {v1, p0}, Lcom/aide/ui/build/OutputConsole$c;-><init>(Lcom/aide/ui/build/OutputConsole;)V

    invoke-virtual {v0, v1}, Lcom/aide/ui/views/editor/OEditor;->setModel(Lcom/aide/ui/views/editor/o;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    :goto_0
    :try_start_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/aide/ui/build/OutputConsole;->Mr:Ljava/lang/StringBuilder;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/aide/ui/build/OutputConsole;->j3:Landroid/os/Handler;

    new-instance v0, Lcom/aide/common/KeyStrokeDetector;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/aide/common/KeyStrokeDetector;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/aide/ui/build/OutputConsole;->Ws:Lcom/aide/common/KeyStrokeDetector;

    new-instance v0, Lcom/aide/ui/build/h;

    invoke-direct {v0, p0}, Lcom/aide/ui/build/h;-><init>(Lcom/aide/ui/build/OutputConsole;)V

    invoke-virtual {p0, v0}, Lcom/aide/ui/views/CodeEditText;->DW(Lcom/aide/ui/views/CodeEditText$d;)V

    new-instance v0, Lcom/aide/ui/build/i;

    invoke-direct {v0, p0}, Lcom/aide/ui/build/i;-><init>(Lcom/aide/ui/build/OutputConsole;)V

    invoke-virtual {p0, v0}, Lcom/aide/ui/views/CodeEditText;->VH(Lcom/aide/ui/views/CodeEditText$d;)V

    new-instance v0, Lcom/aide/ui/build/j;

    const-wide/16 v2, 0x64

    invoke-direct {v0, p0, v2, v3}, Lcom/aide/ui/build/j;-><init>(Lcom/aide/ui/build/OutputConsole;J)V

    iput-object v0, p0, Lcom/aide/ui/build/OutputConsole;->QX:Lcom/aide/ui/views/editor/i;

    new-instance v0, Lcom/aide/ui/build/OutputConsole$a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/aide/ui/build/OutputConsole$a;-><init>(Lcom/aide/ui/build/OutputConsole;Lcom/aide/ui/build/h;)V

    iput-object v0, p0, Lcom/aide/ui/build/OutputConsole;->aM:Lcom/aide/ui/build/OutputConsole$a;
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/build/OutputConsole;->J8:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v4, v5, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0

    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method private er()V
    .registers 5
    .annotation runtime Labcd/su;
        method = 0x41bf476de191fc28L
    .end annotation

    const-wide v2, -0x639bdfc84db5f3a5L    # -6.509786015919101E-172

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/build/OutputConsole;->J0:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x639bdfc84db5f3a5L    # -6.509786015919101E-172

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/aide/ui/build/OutputConsole;->XL:Landroid/view/ActionMode;

    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    new-instance v1, Lcom/aide/ui/build/m;

    invoke-direct {v1, p0}, Lcom/aide/ui/build/m;-><init>(Lcom/aide/ui/build/OutputConsole;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object v0

    iput-object v0, p0, Lcom/aide/ui/build/OutputConsole;->XL:Landroid/view/ActionMode;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/build/OutputConsole;->J8:Z

    if-eqz v1, :cond_2

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_2
    throw v0
.end method

.method private gW()V
    .registers 7
    .annotation runtime Labcd/su;
        method = -0x5b7333804b84ed7cL
    .end annotation

    const-wide v4, 0x4a5ac7c6f3131f5bL    # 1.5655827382535702E50

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/build/OutputConsole;->J0:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x4a5ac7c6f3131f5bL    # 1.5655827382535702E50

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/aide/ui/build/OutputConsole;->j3:Landroid/os/Handler;

    new-instance v1, Lcom/aide/ui/build/k;

    invoke-direct {v1, p0}, Lcom/aide/ui/build/k;-><init>(Lcom/aide/ui/build/OutputConsole;)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/build/OutputConsole;->J8:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v4, v5, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method private getOutputModel()Lcom/aide/ui/build/OutputConsole$c;
    .registers 5
    .annotation runtime Labcd/su;
        method = 0x25902c2833f57cd7L
    .end annotation

    const-wide v2, -0x3f5e513c75f3b180L    # -2263.381912598212

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/build/OutputConsole;->J0:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x3f5e513c75f3b180L    # -2263.381912598212

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    invoke-virtual {p0}, Lcom/aide/ui/views/CodeEditText;->getOEditorView()Lcom/aide/ui/views/CodeEditText$c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aide/ui/views/editor/OConsole;->getModel()Lcom/aide/ui/views/editor/o;

    move-result-object v0

    check-cast v0, Lcom/aide/ui/build/OutputConsole$c;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/build/OutputConsole;->J8:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method static synthetic gn(Lcom/aide/ui/build/OutputConsole;)Lcom/aide/ui/views/editor/i;
    .registers 2

    iget-object v0, p0, Lcom/aide/ui/build/OutputConsole;->QX:Lcom/aide/ui/views/editor/i;

    return-object v0
.end method

.method static synthetic j6(Lcom/aide/ui/build/OutputConsole;Landroid/view/ActionMode;)Landroid/view/ActionMode;
    .registers 2

    iput-object p1, p0, Lcom/aide/ui/build/OutputConsole;->XL:Landroid/view/ActionMode;

    return-object p1
.end method

.method private static j6(Ljava/io/Reader;)Ljava/lang/String;
    .registers 9
    .annotation runtime Labcd/su;
        method = 0x89a33b8ede34221L
    .end annotation

    const-wide v6, -0x184a2820bd5ff20L    # -1.83262816966942E301

    const/4 v4, 0x0

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/build/OutputConsole;->J0:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x184a2820bd5ff20L    # -1.83262816966942E301

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    const/16 v0, 0x1000

    new-array v0, v0, [C

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    :goto_0
    invoke-virtual {p0, v0}, Ljava/io/Reader;->read([C)I

    move-result v2

    if-lez v2, :cond_2

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v3, v2}, Ljava/lang/StringBuffer;->append([CII)Ljava/lang/StringBuffer;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/build/OutputConsole;->J8:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v6, v7, v4, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v0

    :cond_2
    :try_start_1
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    return-object v0
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
    .registers 14
    .annotation runtime Labcd/su;
        method = 0x15ecb0259764822dL
    .end annotation

    const-wide v8, 0x17ad40911830a48L

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/build/OutputConsole;->J0:Z

    if-eqz v0, :cond_0

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, p2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p3}, Ljava/lang/Integer;-><init>(I)V

    const-wide v0, 0x17ad40911830a48L

    move-object v2, p0

    move-object v3, p1

    invoke-static/range {v0 .. v5}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    invoke-direct {p0}, Lcom/aide/ui/build/OutputConsole;->getOutputModel()Lcom/aide/ui/build/OutputConsole$c;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/aide/ui/build/OutputConsole$c;->j6([BII)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v1

    sget-boolean v0, Lcom/aide/ui/build/OutputConsole;->J8:Z

    if-eqz v0, :cond_1

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, p3}, Ljava/lang/Integer;-><init>(I)V

    move-wide v2, v8

    move-object v4, p0

    move-object v5, p1

    invoke-static/range {v1 .. v7}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v1
.end method

.method private lg()Z
    .registers 5
    .annotation runtime Labcd/su;
        method = 0xfd2bf78ea5a0387L
    .end annotation

    const-wide v2, 0x77e62e521da3000L

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/build/OutputConsole;->J0:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x77e62e521da3000L

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    iget-boolean v0, p0, Lcom/aide/ui/build/OutputConsole;->a8:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/aide/common/g;->J8(Landroid/content/Context;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/build/OutputConsole;->J8:Z

    if-eqz v1, :cond_2

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_2
    throw v0
.end method

.method private rN()V
    .registers 7
    .annotation runtime Labcd/su;
        method = 0x1d9d48b9af11d93dL
    .end annotation

    const-wide v4, -0x45253d7cae18f6b4L

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/build/OutputConsole;->J0:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x45253d7cae18f6b4L

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    invoke-virtual {p0}, Lcom/aide/ui/views/CodeEditText;->getOEditorView()Lcom/aide/ui/views/CodeEditText$c;

    move-result-object v0

    invoke-virtual {p0}, Lcom/aide/ui/views/CodeEditText;->getLineCount()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/aide/ui/views/CodeEditText;->j6(I)I

    move-result v1

    invoke-virtual {p0}, Lcom/aide/ui/views/CodeEditText;->getLineCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v1, v2}, Lcom/aide/ui/views/editor/OConsole;->v5(II)V

    invoke-virtual {p0}, Lcom/aide/ui/views/CodeEditText;->getScrollView()Lcom/aide/ui/views/CodeEditTextScrollView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aide/ui/views/CodeEditTextScrollView;->j6()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/build/OutputConsole;->J8:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v4, v5, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
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

    const-wide v4, 0x6ecca9ceb0351cdL

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/build/OutputConsole;->J0:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x6ecca9ceb0351cdL

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/aide/ui/build/OutputConsole;->XL:Landroid/view/ActionMode;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/aide/ui/build/OutputConsole;->XL:Landroid/view/ActionMode;

    invoke-virtual {v0}, Landroid/view/ActionMode;->finish()V

    :cond_1
    invoke-virtual {p0}, Lcom/aide/ui/views/CodeEditText;->gn()V

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {p0}, Lcom/aide/ui/views/CodeEditText;->getOEditorView()Lcom/aide/ui/views/CodeEditText$c;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/inputmethod/InputMethodManager;->restartInput(Landroid/view/View;)V

    invoke-virtual {p0}, Lcom/aide/ui/views/CodeEditText;->getOEditorView()Lcom/aide/ui/views/CodeEditText$c;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    iget-object v0, p0, Lcom/aide/ui/build/OutputConsole;->j3:Landroid/os/Handler;

    new-instance v1, Lcom/aide/ui/build/l;

    invoke-direct {v1, p0}, Lcom/aide/ui/build/l;-><init>(Lcom/aide/ui/build/OutputConsole;)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/build/OutputConsole;->J8:Z

    if-eqz v1, :cond_2

    invoke-static {v0, v4, v5, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_2
    throw v0
.end method


# virtual methods
.method protected DW()Z
    .registers 5
    .annotation runtime Labcd/su;
        method = -0x2bd3f8aa804c18L
    .end annotation

    const-wide v2, 0x6946391aaefde2c7L    # 1.3289574517239702E199

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/build/OutputConsole;->J0:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x6946391aaefde2c7L    # 1.3289574517239702E199

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/build/OutputConsole;->J8:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public DW(Ljava/lang/String;)Z
    .registers 8

    const-wide v4, -0x15614ac581cc52e9L    # -3.8511241042046086E205

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/build/OutputConsole;->J0:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x15614ac581cc52e9L    # -3.8511241042046086E205

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lcom/aide/ui/views/CodeEditText;->getOEditorView()Lcom/aide/ui/views/CodeEditText$c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aide/ui/views/editor/OEditor;->getEditorModel()Lcom/aide/ui/views/editor/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aide/ui/views/editor/b;->aM()Ljava/io/Reader;

    move-result-object v0

    invoke-static {v0}, Lcom/aide/ui/build/OutputConsole;->j6(Ljava/io/Reader;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "\r"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v1, "\r"

    const-string v2, ""

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    move-result v0

    :goto_0
    return v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0

    :catch_1
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/build/OutputConsole;->J8:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v4, v5, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public getInputStream()Ljava/io/InputStream;
    .registers 5

    const-wide v2, 0x3a0bdf24eb5165c8L    # 4.397372128791889E-29

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/build/OutputConsole;->J0:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x3a0bdf24eb5165c8L    # 4.397372128791889E-29

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/aide/ui/build/OutputConsole;->aM:Lcom/aide/ui/build/OutputConsole$a;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/build/OutputConsole;->J8:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public getKeyStrokeDetector()Lcom/aide/common/KeyStrokeDetector;
    .registers 5

    const-wide v2, -0x4e9e5fb36ec16687L    # -7.98084618712743E-71

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/build/OutputConsole;->J0:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x4e9e5fb36ec16687L    # -7.98084618712743E-71

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/aide/ui/build/OutputConsole;->Ws:Lcom/aide/common/KeyStrokeDetector;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/build/OutputConsole;->J8:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public getOutputStream()Ljava/io/OutputStream;
    .registers 5

    const-wide v2, 0x333131b148c3cfb1L    # 4.1796569486943155E-62

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/build/OutputConsole;->J0:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x333131b148c3cfb1L    # 4.1796569486943155E-62

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    new-instance v0, Lcom/aide/ui/build/OutputConsole$b;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/aide/ui/build/OutputConsole$b;-><init>(Lcom/aide/ui/build/OutputConsole;Lcom/aide/ui/build/h;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/build/OutputConsole;->J8:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public getPrintStream()Ljava/io/PrintStream;
    .registers 5

    const-wide v2, 0x1e5fc107f8cfa047L

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/build/OutputConsole;->J0:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x1e5fc107f8cfa047L

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    new-instance v0, Lcom/s1243808733/aide/builder/MyPrintStream;

    invoke-virtual {p0}, Lcom/aide/ui/build/OutputConsole;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/s1243808733/aide/builder/MyPrintStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/build/OutputConsole;->J8:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method protected getSideBarPadding()F
    .registers 5
    .annotation runtime Labcd/su;
        method = -0x272ceb2694f9a188L
    .end annotation

    const-wide v2, 0x3e64ed6375a7d101L    # 3.898013175080238E-8

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/build/OutputConsole;->J0:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x3e64ed6375a7d101L    # 3.898013175080238E-8

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    invoke-direct {p0}, Lcom/aide/ui/build/OutputConsole;->lg()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    const/high16 v1, 0x42400000    # 48.0f

    mul-float/2addr v0, v1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/build/OutputConsole;->J8:Z

    if-eqz v1, :cond_2

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_2
    throw v0
.end method

.method public j6(C)V
    .registers 8

    const-wide v4, -0x20c11182b50776cdL    # -6.328200418266935E150

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/build/OutputConsole;->J0:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/Character;

    invoke-direct {v0, p1}, Ljava/lang/Character;-><init>(C)V

    const-wide v2, -0x20c11182b50776cdL    # -6.328200418266935E150

    invoke-static {v2, v3, p0, v0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    const/16 v0, 0xa

    if-ne p1, v0, :cond_1

    iget-object v0, p0, Lcom/aide/ui/build/OutputConsole;->aM:Lcom/aide/ui/build/OutputConsole$a;

    iget-object v1, p0, Lcom/aide/ui/build/OutputConsole;->Mr:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Lcom/aide/ui/build/OutputConsole$a;->j6(Ljava/lang/StringBuilder;)V

    iget-object v0, p0, Lcom/aide/ui/build/OutputConsole;->Mr:Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    :goto_0
    invoke-direct {p0, p1}, Lcom/aide/ui/build/OutputConsole;->DW(C)V

    invoke-direct {p0}, Lcom/aide/ui/build/OutputConsole;->rN()V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/aide/ui/build/OutputConsole;->Mr:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/build/OutputConsole;->J8:Z

    if-eqz v1, :cond_2

    new-instance v1, Ljava/lang/Character;

    invoke-direct {v1, p1}, Ljava/lang/Character;-><init>(C)V

    invoke-static {v0, v4, v5, p0, v1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_2
    throw v0
.end method

.method public j6(ZZ)V
    .registers 10

    const-wide v2, -0x83d3d3d7b4b76a8L

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/build/OutputConsole;->J0:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/Boolean;

    invoke-direct {v0, p1}, Ljava/lang/Boolean;-><init>(Z)V

    new-instance v1, Ljava/lang/Boolean;

    invoke-direct {v1, p2}, Ljava/lang/Boolean;-><init>(Z)V

    const-wide v4, -0x83d3d3d7b4b76a8L

    invoke-static {v4, v5, p0, v0, v1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    invoke-virtual {p0, p1}, Lcom/aide/ui/views/CodeEditText;->setIsLightTheme(Z)V

    iput-boolean p2, p0, Lcom/aide/ui/build/OutputConsole;->a8:Z

    invoke-virtual {p0}, Lcom/aide/ui/views/CodeEditText;->getOEditorView()Lcom/aide/ui/views/CodeEditText$c;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/aide/ui/views/CodeEditText$c;->setShowCaretLine(Z)V

    if-eqz p2, :cond_3

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/aide/common/g;->DW(Landroid/content/Context;)F

    move-result v0

    const/high16 v1, 0x43c80000    # 400.0f

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_1

    invoke-virtual {p0}, Lcom/aide/ui/views/CodeEditText;->getOEditorView()Lcom/aide/ui/views/CodeEditText$c;

    move-result-object v0

    const/high16 v1, 0x41a80000    # 21.0f

    invoke-virtual {v0, v1}, Lcom/aide/ui/views/editor/OConsole;->setFontSize(F)V

    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/aide/ui/views/CodeEditText;->getOEditorView()Lcom/aide/ui/views/CodeEditText$c;

    move-result-object v0

    const/high16 v1, 0x41600000    # 14.0f

    invoke-virtual {v0, v1}, Lcom/aide/ui/views/editor/OConsole;->setFontSize(F)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    sget-boolean v0, Lcom/aide/ui/build/OutputConsole;->J8:Z

    if-eqz v0, :cond_2

    new-instance v5, Ljava/lang/Boolean;

    invoke-direct {v5, p1}, Ljava/lang/Boolean;-><init>(Z)V

    new-instance v6, Ljava/lang/Boolean;

    invoke-direct {v6, p2}, Ljava/lang/Boolean;-><init>(Z)V

    move-object v4, p0

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_2
    throw v1

    :cond_3
    :try_start_1
    invoke-virtual {p0}, Lcom/aide/ui/views/CodeEditText;->getOEditorView()Lcom/aide/ui/views/CodeEditText$c;

    move-result-object v0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    const/16 v4, 0xe

    invoke-static {v1, v4}, Lcom/aide/common/g;->j6(Landroid/content/Context;I)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Lcom/aide/ui/views/editor/OConsole;->setFontSize(F)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method protected j6(Lcom/aide/common/u;)Z
    .registers 8
    .annotation runtime Labcd/su;
        method = 0x2f4b0064e7353e35L
    .end annotation

    const-wide v4, -0xc97606f90779fa0L    # -8.608206249277228E247

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/build/OutputConsole;->J0:Z

    if-eqz v0, :cond_0

    const-wide v0, -0xc97606f90779fa0L    # -8.608206249277228E247

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    invoke-virtual {p1}, Lcom/aide/common/u;->DW()I

    move-result v0

    const/16 v1, 0x55

    if-ne v0, v1, :cond_1

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xf

    if-lt v1, v2, :cond_1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getRootView()Landroid/view/View;

    move-result-object v1

    const v2, 0x7f080133

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->callOnClick()Z

    :cond_1
    const/16 v1, 0x43

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/aide/ui/build/OutputConsole;->Mr:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_2

    iget-object v0, p0, Lcom/aide/ui/build/OutputConsole;->Mr:Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/aide/ui/build/OutputConsole;->Mr:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    invoke-direct {p0}, Lcom/aide/ui/build/OutputConsole;->getOutputModel()Lcom/aide/ui/build/OutputConsole$c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aide/ui/build/OutputConsole$c;->vy()V

    invoke-direct {p0}, Lcom/aide/ui/build/OutputConsole;->rN()V

    :cond_2
    invoke-super {p0, p1}, Lcom/aide/ui/views/CodeEditText;->j6(Lcom/aide/common/u;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    return v0

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/build/OutputConsole;->J8:Z

    if-eqz v1, :cond_3

    invoke-static {v0, v4, v5, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_3
    throw v0
.end method

.method public setProcessOutputStream(Ljava/io/OutputStream;)V
    .registers 6

    monitor-enter p0

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/build/OutputConsole;->J0:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x3666b337dc3ff2e3L    # -3.6109265132008343E46

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    iput-object p1, p0, Lcom/aide/ui/build/OutputConsole;->U2:Ljava/io/OutputStream;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catch_0
    move-exception v0

    :try_start_1
    sget-boolean v1, Lcom/aide/ui/build/OutputConsole;->J8:Z

    if-eqz v1, :cond_1

    const-wide v2, -0x3666b337dc3ff2e3L    # -3.6109265132008343E46

    invoke-static {v0, v2, v3, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
