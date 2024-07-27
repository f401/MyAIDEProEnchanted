.class public Lcom/aide/ui/views/CodeEditText$c;
.super Lcom/aide/ui/views/editor/OEditor;


# annotations
.annotation runtime Labcd/xu;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/aide/ui/views/CodeEditText;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/aide/ui/views/CodeEditText$c$a;
    }
.end annotation


# static fields
.field private static Bx:Z
    .annotation runtime Labcd/uu;
    .end annotation
.end field

.field private static Jm:Z
    .annotation runtime Labcd/tu;
    .end annotation
.end field


# instance fields
.field private AR:Z
    .annotation runtime Labcd/ru;
        field = 0x35934e9e2d8e3fL
    .end annotation
.end field

.field private E4:Z
    .annotation runtime Labcd/ru;
        field = -0x6f70f6c733e5d44L
    .end annotation
.end field

.field private Fd:J
    .annotation runtime Labcd/ru;
        field = 0x129d5a0273f3673bL
    .end annotation
.end field

.field private Lz:F
    .annotation runtime Labcd/ru;
        field = 0x30a2721bdd3c7894L
    .end annotation
.end field

.field private MP:F
    .annotation runtime Labcd/ru;
        field = -0x6956cce67b9adf00L
    .end annotation
.end field

.field private Of:I
    .annotation runtime Labcd/ru;
        field = 0x9417d8df74729fcL
    .end annotation
.end field

.field final PH:Lcom/aide/ui/views/CodeEditText;
    .annotation runtime Labcd/vu;
    .end annotation
.end field

.field private PT:I
    .annotation runtime Labcd/ru;
        field = 0x4337490a05368620L
    .end annotation
.end field

.field private TI:F
    .annotation runtime Labcd/ru;
        field = -0x90e1ae1c763488L
    .end annotation
.end field

.field private b1:Ljava/lang/Runnable;
    .annotation runtime Labcd/ru;
        field = 0x3bc1b9e866895e0L
    .end annotation
.end field

.field private context:Landroid/content/Context;

.field private ct:F
    .annotation runtime Labcd/ru;
        field = -0x90e336b92e113bL
    .end annotation
.end field

.field private hp:Lcom/aide/common/KeyStrokeDetector$a;
    .annotation runtime Labcd/ru;
        field = -0x42cd42ba081adc00L
    .end annotation
.end field

.field private oa:F
    .annotation runtime Labcd/ru;
        field = 0x4d604cad138a5591L
    .end annotation
.end field

.field private qP:F
    .annotation runtime Labcd/ru;
        field = 0x16e8a79a0c187a75L
    .end annotation
.end field

.field private sT:F
    .annotation runtime Labcd/ru;
        field = 0x30a2d619c515f6abL
    .end annotation
.end field

.field private xg:Z
    .annotation runtime Labcd/ru;
        field = -0xb1f5e3824df0a43L
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 4

    const-wide v2, 0x20bc34faa8da3f57L    # 5.385652283143974E-151

    const-class v0, Lcom/aide/ui/views/CodeEditText$c;

    invoke-static {v0, v2, v3, v2, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method public constructor <init>(Lcom/aide/ui/views/CodeEditText;Landroid/content/Context;)V
    .registers 10

    const-wide v2, 0xff0ed2f29414d88L    # 6.814131891611785E-232

    const/4 v4, 0x0

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/views/CodeEditText$c;->Jm:Z

    if-eqz v0, :cond_0

    const-wide v0, 0xff0ed2f29414d88L    # 6.814131891611785E-232

    const/4 v5, 0x0

    invoke-static {v0, v1, v5, p1, p2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    iput-object p1, p0, Lcom/aide/ui/views/CodeEditText$c;->PH:Lcom/aide/ui/views/CodeEditText;

    invoke-direct {p0, p2}, Lcom/aide/ui/views/editor/OEditor;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/aide/ui/views/CodeEditText$c;->xg:Z

    new-instance v0, Lcom/aide/ui/views/d;

    invoke-direct {v0, p0}, Lcom/aide/ui/views/d;-><init>(Lcom/aide/ui/views/CodeEditText$c;)V

    iput-object v0, p0, Lcom/aide/ui/views/CodeEditText$c;->hp:Lcom/aide/common/KeyStrokeDetector$a;

    iput-object p2, p0, Lcom/aide/ui/views/CodeEditText$c;->context:Landroid/content/Context;

    invoke-direct {p0}, Lcom/aide/ui/views/CodeEditText$c;->nw()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v1

    sget-boolean v0, Lcom/aide/ui/views/CodeEditText$c;->Bx:Z

    if-eqz v0, :cond_1

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v1
.end method

.method static synthetic DW(Lcom/aide/ui/views/CodeEditText$c;)F
    .registers 2

    iget v0, p0, Lcom/aide/ui/views/CodeEditText$c;->TI:F

    return v0
.end method

.method static synthetic DW(Lcom/aide/ui/views/CodeEditText$c;FF)I
    .registers 4

    invoke-direct {p0, p1, p2}, Lcom/aide/ui/views/CodeEditText$c;->Hw(FF)I

    move-result v0

    return v0
.end method

.method static synthetic DW(Lcom/aide/ui/views/CodeEditText$c;II)I
    .registers 4

    invoke-direct {p0, p1, p2}, Lcom/aide/ui/views/CodeEditText$c;->we(II)I

    move-result v0

    return v0
.end method

.method static synthetic FH(Lcom/aide/ui/views/CodeEditText$c;)F
    .registers 2

    iget v0, p0, Lcom/aide/ui/views/CodeEditText$c;->ct:F

    return v0
.end method

.method private Hw(FF)I
    .registers 10
    .annotation runtime Labcd/su;
        method = 0x2c2e9ff060cf8cdL
    .end annotation

    const-wide v2, 0xb857c1cd68d7cffL

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/views/CodeEditText$c;->Jm:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/Float;

    invoke-direct {v0, p1}, Ljava/lang/Float;-><init>(F)V

    new-instance v1, Ljava/lang/Float;

    invoke-direct {v1, p2}, Ljava/lang/Float;-><init>(F)V

    const-wide v4, 0xb857c1cd68d7cffL

    invoke-static {v4, v5, p0, v0, v1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/aide/ui/views/editor/OConsole;->DW(FF)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    add-int/lit8 v0, v0, 0x1

    return v0

    :catch_0
    move-exception v1

    sget-boolean v0, Lcom/aide/ui/views/CodeEditText$c;->Bx:Z

    if-eqz v0, :cond_1

    new-instance v5, Ljava/lang/Float;

    invoke-direct {v5, p1}, Ljava/lang/Float;-><init>(F)V

    new-instance v6, Ljava/lang/Float;

    invoke-direct {v6, p2}, Ljava/lang/Float;-><init>(F)V

    move-object v4, p0

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v1
.end method

.method private J0(II)I
    .registers 10
    .annotation runtime Labcd/su;
        method = -0xe1bfd161d367748L
    .end annotation

    const-wide v2, 0x225bce379e60cafcL    # 3.562815611225845E-143

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/views/CodeEditText$c;->Jm:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p2}, Ljava/lang/Integer;-><init>(I)V

    const-wide v4, 0x225bce379e60cafcL    # 3.562815611225845E-143

    invoke-static {v4, v5, p0, v0, v1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/aide/ui/views/CodeEditText$c;->PH:Lcom/aide/ui/views/CodeEditText;

    invoke-virtual {v0, p1, p2}, Lcom/aide/ui/views/CodeEditText;->Hw(II)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-lez v0, :cond_1

    move p2, v0

    :cond_1
    return p2

    :catch_0
    move-exception v1

    sget-boolean v0, Lcom/aide/ui/views/CodeEditText$c;->Bx:Z

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

.method private KD()V
    .registers 5
    .annotation runtime Labcd/su;
        method = -0x866bd5a69149c00L
    .end annotation

    const-wide v2, -0x56169001d870b8L

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/views/CodeEditText$c;->Jm:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x56169001d870b8L

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/aide/ui/views/CodeEditText$c;->b1:Ljava/lang/Runnable;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/aide/ui/views/CodeEditText$c;->b1:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/aide/ui/views/CodeEditText$c;->b1:Ljava/lang/Runnable;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/views/CodeEditText$c;->Bx:Z

    if-eqz v1, :cond_2

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_2
    throw v0
.end method

.method private SI()V
    .registers 7
    .annotation runtime Labcd/su;
        method = -0x62f7012aceef76abL
    .end annotation

    const-wide v4, -0x151eabc6256b0bc1L    # -6.954417111129933E206

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/views/CodeEditText$c;->Jm:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x151eabc6256b0bc1L    # -6.954417111129933E206

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/aide/ui/views/CodeEditText$c;->AR:Z

    iget-object v0, p0, Lcom/aide/ui/views/CodeEditText$c;->b1:Ljava/lang/Runnable;

    if-nez v0, :cond_1

    new-instance v0, Lcom/aide/ui/views/e;

    invoke-direct {v0, p0}, Lcom/aide/ui/views/e;-><init>(Lcom/aide/ui/views/CodeEditText$c;)V

    iput-object v0, p0, Lcom/aide/ui/views/CodeEditText$c;->b1:Ljava/lang/Runnable;

    :cond_1
    iget-object v0, p0, Lcom/aide/ui/views/CodeEditText$c;->b1:Ljava/lang/Runnable;

    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v1

    int-to-long v2, v1

    invoke-virtual {p0, v0, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/views/CodeEditText$c;->Bx:Z

    if-eqz v1, :cond_2

    invoke-static {v0, v4, v5, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_2
    throw v0
.end method

.method private getCodeEditTextEditorModel()Lcom/aide/ui/views/CodeEditText$a;
    .registers 5
    .annotation runtime Labcd/su;
        method = -0x1d3909139eb3d630L
    .end annotation

    const-wide v2, -0xcd27016ddf1f07cL    # -6.459256014535606E246

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/views/CodeEditText$c;->Jm:Z

    if-eqz v0, :cond_0

    const-wide v0, -0xcd27016ddf1f07cL    # -6.459256014535606E246

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    invoke-virtual {p0}, Lcom/aide/ui/views/editor/OEditor;->getEditorModel()Lcom/aide/ui/views/editor/g;

    move-result-object v0

    instance-of v1, v0, Lcom/aide/ui/views/CodeEditText$a;

    if-eqz v1, :cond_2

    check-cast v0, Lcom/aide/ui/views/CodeEditText$a;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/views/CodeEditText$c;->Bx:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic j6(Lcom/aide/ui/views/CodeEditText$c;FF)I
    .registers 4

    invoke-direct {p0, p1, p2}, Lcom/aide/ui/views/CodeEditText$c;->v5(FF)I

    move-result v0

    return v0
.end method

.method static synthetic j6(Lcom/aide/ui/views/CodeEditText$c;II)I
    .registers 4

    invoke-direct {p0, p1, p2}, Lcom/aide/ui/views/CodeEditText$c;->J0(II)I

    move-result v0

    return v0
.end method

.method static synthetic j6(Lcom/aide/ui/views/CodeEditText$c;)Lcom/aide/ui/views/CodeEditText$a;
    .registers 2

    invoke-direct {p0}, Lcom/aide/ui/views/CodeEditText$c;->getCodeEditTextEditorModel()Lcom/aide/ui/views/CodeEditText$a;

    move-result-object v0

    return-object v0
.end method

.method static synthetic j6(Lcom/aide/ui/views/CodeEditText$c;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/aide/ui/views/CodeEditText$c;->AR:Z

    return p1
.end method

.method private nw()V
    .registers 9
    .annotation runtime Labcd/su;
        method = -0x2424e8d23264e48L
    .end annotation

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/views/CodeEditText$c;->Jm:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x12278e07a0e3c6e0L

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/view/View;->setFocusable(Z)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    iget-object v0, p0, Lcom/aide/ui/views/CodeEditText$c;->PH:Lcom/aide/ui/views/CodeEditText;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getNextFocusUpId()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/view/View;->setNextFocusUpId(I)V

    const v0, 0x75b1f79

    invoke-virtual {p0, v0}, Landroid/view/View;->setId(I)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/aide/ui/views/editor/OConsole;->setCaretVisibility(Z)V

    iget-object v0, p0, Lcom/aide/ui/views/CodeEditText$c;->PH:Lcom/aide/ui/views/CodeEditText;

    invoke-static {v0}, Lcom/aide/ui/views/CodeEditText;->Zo(Lcom/aide/ui/views/CodeEditText;)Ljava/util/List;

    move-result-object v0

    new-instance v1, Lcom/aide/ui/views/CodeEditText$c$a;

    iget-object v2, p0, Lcom/aide/ui/views/CodeEditText$c;->context:Landroid/content/Context;

    const v3, 0x7f0d071c

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/aide/common/u;

    const/16 v4, 0x1f

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    invoke-direct {v3, v4, v5, v6, v7}, Lcom/aide/common/u;-><init>(IZZZ)V

    sget-object v4, Lcom/aide/ui/views/editor/OEditor$c;->g3:Lcom/aide/ui/views/editor/OEditor$c;

    invoke-direct {v1, p0, v2, v3, v4}, Lcom/aide/ui/views/CodeEditText$c$a;-><init>(Lcom/aide/ui/views/CodeEditText$c;Ljava/lang/String;Lcom/aide/common/u;Lcom/aide/ui/views/editor/OEditor$c;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/aide/ui/views/CodeEditText$c;->PH:Lcom/aide/ui/views/CodeEditText;

    invoke-static {v0}, Lcom/aide/ui/views/CodeEditText;->Zo(Lcom/aide/ui/views/CodeEditText;)Ljava/util/List;

    move-result-object v0

    new-instance v1, Lcom/aide/ui/views/CodeEditText$c$a;

    iget-object v2, p0, Lcom/aide/ui/views/CodeEditText$c;->context:Landroid/content/Context;

    const v3, 0x7f0d075b

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/aide/common/u;

    const/16 v4, 0x1d

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    invoke-direct {v3, v4, v5, v6, v7}, Lcom/aide/common/u;-><init>(IZZZ)V

    sget-object v4, Lcom/aide/ui/views/editor/OEditor$c;->P8:Lcom/aide/ui/views/editor/OEditor$c;

    invoke-direct {v1, p0, v2, v3, v4}, Lcom/aide/ui/views/CodeEditText$c$a;-><init>(Lcom/aide/ui/views/CodeEditText$c;Ljava/lang/String;Lcom/aide/common/u;Lcom/aide/ui/views/editor/OEditor$c;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/aide/ui/views/CodeEditText$c;->PH:Lcom/aide/ui/views/CodeEditText;

    invoke-static {v0}, Lcom/aide/ui/views/CodeEditText;->Zo(Lcom/aide/ui/views/CodeEditText;)Ljava/util/List;

    move-result-object v0

    new-instance v1, Lcom/aide/ui/views/CodeEditText$c$a;

    iget-object v2, p0, Lcom/aide/ui/views/CodeEditText$c;->context:Landroid/content/Context;

    const v3, 0x7f0d0720

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/aide/common/u;

    const/16 v4, 0x43

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-direct {v3, v4, v5, v6, v7}, Lcom/aide/common/u;-><init>(IZZZ)V

    sget-object v4, Lcom/aide/ui/views/editor/OEditor$c;->sh:Lcom/aide/ui/views/editor/OEditor$c;

    invoke-direct {v1, p0, v2, v3, v4}, Lcom/aide/ui/views/CodeEditText$c$a;-><init>(Lcom/aide/ui/views/CodeEditText$c;Ljava/lang/String;Lcom/aide/common/u;Lcom/aide/ui/views/editor/OEditor$c;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/aide/ui/views/CodeEditText$c;->PH:Lcom/aide/ui/views/CodeEditText;

    invoke-static {v0}, Lcom/aide/ui/views/CodeEditText;->Zo(Lcom/aide/ui/views/CodeEditText;)Ljava/util/List;

    move-result-object v0

    new-instance v1, Lcom/aide/ui/views/CodeEditText$c$a;

    iget-object v2, p0, Lcom/aide/ui/views/CodeEditText$c;->context:Landroid/content/Context;

    const v3, 0x7f0d0721

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/aide/common/u;

    const/16 v4, 0x70

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-direct {v3, v4, v5, v6, v7}, Lcom/aide/common/u;-><init>(IZZZ)V

    sget-object v4, Lcom/aide/ui/views/editor/OEditor$c;->cb:Lcom/aide/ui/views/editor/OEditor$c;

    invoke-direct {v1, p0, v2, v3, v4}, Lcom/aide/ui/views/CodeEditText$c$a;-><init>(Lcom/aide/ui/views/CodeEditText$c;Ljava/lang/String;Lcom/aide/common/u;Lcom/aide/ui/views/editor/OEditor$c;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/aide/ui/views/CodeEditText$c;->PH:Lcom/aide/ui/views/CodeEditText;

    invoke-static {v0}, Lcom/aide/ui/views/CodeEditText;->Zo(Lcom/aide/ui/views/CodeEditText;)Ljava/util/List;

    move-result-object v0

    new-instance v1, Lcom/aide/ui/views/CodeEditText$c$a;

    iget-object v2, p0, Lcom/aide/ui/views/CodeEditText$c;->context:Landroid/content/Context;

    const v3, 0x7f0d0723

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/aide/common/u;

    const/16 v4, 0x43

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    invoke-direct {v3, v4, v5, v6, v7}, Lcom/aide/common/u;-><init>(IZZZ)V

    sget-object v4, Lcom/aide/ui/views/editor/OEditor$c;->BT:Lcom/aide/ui/views/editor/OEditor$c;

    invoke-direct {v1, p0, v2, v3, v4}, Lcom/aide/ui/views/CodeEditText$c$a;-><init>(Lcom/aide/ui/views/CodeEditText$c;Ljava/lang/String;Lcom/aide/common/u;Lcom/aide/ui/views/editor/OEditor$c;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/aide/ui/views/CodeEditText$c;->PH:Lcom/aide/ui/views/CodeEditText;

    invoke-static {v0}, Lcom/aide/ui/views/CodeEditText;->Zo(Lcom/aide/ui/views/CodeEditText;)Ljava/util/List;

    move-result-object v0

    new-instance v1, Lcom/aide/ui/views/CodeEditText$c$a;

    iget-object v2, p0, Lcom/aide/ui/views/CodeEditText$c;->context:Landroid/content/Context;

    const v3, 0x7f0d0737

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/aide/common/u;

    const/16 v4, 0x3d

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-direct {v3, v4, v5, v6, v7}, Lcom/aide/common/u;-><init>(IZZZ)V

    sget-object v4, Lcom/aide/ui/views/editor/OEditor$c;->cn:Lcom/aide/ui/views/editor/OEditor$c;

    invoke-direct {v1, p0, v2, v3, v4}, Lcom/aide/ui/views/CodeEditText$c$a;-><init>(Lcom/aide/ui/views/CodeEditText$c;Ljava/lang/String;Lcom/aide/common/u;Lcom/aide/ui/views/editor/OEditor$c;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/aide/ui/views/CodeEditText$c;->PH:Lcom/aide/ui/views/CodeEditText;

    invoke-static {v0}, Lcom/aide/ui/views/CodeEditText;->Zo(Lcom/aide/ui/views/CodeEditText;)Ljava/util/List;

    move-result-object v0

    new-instance v1, Lcom/aide/ui/views/CodeEditText$c$a;

    iget-object v2, p0, Lcom/aide/ui/views/CodeEditText$c;->context:Landroid/content/Context;

    const v3, 0x7f0d0736

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/aide/common/u;

    const/16 v4, 0x42

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-direct {v3, v4, v5, v6, v7}, Lcom/aide/common/u;-><init>(IZZZ)V

    sget-object v4, Lcom/aide/ui/views/editor/OEditor$c;->ro:Lcom/aide/ui/views/editor/OEditor$c;

    invoke-direct {v1, p0, v2, v3, v4}, Lcom/aide/ui/views/CodeEditText$c$a;-><init>(Lcom/aide/ui/views/CodeEditText$c;Ljava/lang/String;Lcom/aide/common/u;Lcom/aide/ui/views/editor/OEditor$c;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/aide/ui/views/CodeEditText$c;->PH:Lcom/aide/ui/views/CodeEditText;

    invoke-static {v0}, Lcom/aide/ui/views/CodeEditText;->Zo(Lcom/aide/ui/views/CodeEditText;)Ljava/util/List;

    move-result-object v0

    new-instance v1, Lcom/aide/ui/views/CodeEditText$c$a;

    iget-object v2, p0, Lcom/aide/ui/views/CodeEditText$c;->context:Landroid/content/Context;

    const v3, 0x7f0d0749

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/aide/common/u;

    const/16 v4, 0x13

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x1

    invoke-direct {v3, v4, v5, v6, v7}, Lcom/aide/common/u;-><init>(IZZZ)V

    sget-object v4, Lcom/aide/ui/views/editor/OEditor$c;->tp:Lcom/aide/ui/views/editor/OEditor$c;

    invoke-direct {v1, p0, v2, v3, v4}, Lcom/aide/ui/views/CodeEditText$c$a;-><init>(Lcom/aide/ui/views/CodeEditText$c;Ljava/lang/String;Lcom/aide/common/u;Lcom/aide/ui/views/editor/OEditor$c;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/aide/ui/views/CodeEditText$c;->PH:Lcom/aide/ui/views/CodeEditText;

    invoke-static {v0}, Lcom/aide/ui/views/CodeEditText;->Zo(Lcom/aide/ui/views/CodeEditText;)Ljava/util/List;

    move-result-object v0

    new-instance v1, Lcom/aide/ui/views/CodeEditText$c$a;

    iget-object v2, p0, Lcom/aide/ui/views/CodeEditText$c;->context:Landroid/content/Context;

    const v3, 0x7f0d074b

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/aide/common/u;

    const/16 v4, 0x14

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x1

    invoke-direct {v3, v4, v5, v6, v7}, Lcom/aide/common/u;-><init>(IZZZ)V

    sget-object v4, Lcom/aide/ui/views/editor/OEditor$c;->EQ:Lcom/aide/ui/views/editor/OEditor$c;

    invoke-direct {v1, p0, v2, v3, v4}, Lcom/aide/ui/views/CodeEditText$c$a;-><init>(Lcom/aide/ui/views/CodeEditText$c;Ljava/lang/String;Lcom/aide/common/u;Lcom/aide/ui/views/editor/OEditor$c;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/aide/ui/views/CodeEditText$c;->PH:Lcom/aide/ui/views/CodeEditText;

    invoke-static {v0}, Lcom/aide/ui/views/CodeEditText;->Zo(Lcom/aide/ui/views/CodeEditText;)Ljava/util/List;

    move-result-object v0

    new-instance v1, Lcom/aide/ui/views/CodeEditText$c$a;

    iget-object v2, p0, Lcom/aide/ui/views/CodeEditText$c;->context:Landroid/content/Context;

    const v3, 0x7f0d074a

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/aide/common/u;

    const/16 v4, 0x7a

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-direct {v3, v4, v5, v6, v7}, Lcom/aide/common/u;-><init>(IZZZ)V

    sget-object v4, Lcom/aide/ui/views/editor/OEditor$c;->gn:Lcom/aide/ui/views/editor/OEditor$c;

    invoke-direct {v1, p0, v2, v3, v4}, Lcom/aide/ui/views/CodeEditText$c$a;-><init>(Lcom/aide/ui/views/CodeEditText$c;Ljava/lang/String;Lcom/aide/common/u;Lcom/aide/ui/views/editor/OEditor$c;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/aide/ui/views/CodeEditText$c;->PH:Lcom/aide/ui/views/CodeEditText;

    invoke-static {v0}, Lcom/aide/ui/views/CodeEditText;->Zo(Lcom/aide/ui/views/CodeEditText;)Ljava/util/List;

    move-result-object v0

    new-instance v1, Lcom/aide/ui/views/CodeEditText$c$a;

    iget-object v2, p0, Lcom/aide/ui/views/CodeEditText$c;->context:Landroid/content/Context;

    const v3, 0x7f0d074c

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/aide/common/u;

    const/16 v4, 0x7b

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-direct {v3, v4, v5, v6, v7}, Lcom/aide/common/u;-><init>(IZZZ)V

    sget-object v4, Lcom/aide/ui/views/editor/OEditor$c;->u7:Lcom/aide/ui/views/editor/OEditor$c;

    invoke-direct {v1, p0, v2, v3, v4}, Lcom/aide/ui/views/CodeEditText$c$a;-><init>(Lcom/aide/ui/views/CodeEditText$c;Ljava/lang/String;Lcom/aide/common/u;Lcom/aide/ui/views/editor/OEditor$c;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/aide/ui/views/CodeEditText$c;->PH:Lcom/aide/ui/views/CodeEditText;

    invoke-static {v0}, Lcom/aide/ui/views/CodeEditText;->Zo(Lcom/aide/ui/views/CodeEditText;)Ljava/util/List;

    move-result-object v0

    new-instance v1, Lcom/aide/ui/views/CodeEditText$c$a;

    iget-object v2, p0, Lcom/aide/ui/views/CodeEditText$c;->context:Landroid/content/Context;

    const v3, 0x7f0d0764

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/aide/common/u;

    const/16 v4, 0x13

    const/4 v5, 0x1

    const/4 v6, 0x1

    const/4 v7, 0x1

    invoke-direct {v3, v4, v5, v6, v7}, Lcom/aide/common/u;-><init>(IZZZ)V

    sget-object v4, Lcom/aide/ui/views/editor/OEditor$c;->rN:Lcom/aide/ui/views/editor/OEditor$c;

    invoke-direct {v1, p0, v2, v3, v4}, Lcom/aide/ui/views/CodeEditText$c$a;-><init>(Lcom/aide/ui/views/CodeEditText$c;Ljava/lang/String;Lcom/aide/common/u;Lcom/aide/ui/views/editor/OEditor$c;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/aide/ui/views/CodeEditText$c;->PH:Lcom/aide/ui/views/CodeEditText;

    invoke-static {v0}, Lcom/aide/ui/views/CodeEditText;->Zo(Lcom/aide/ui/views/CodeEditText;)Ljava/util/List;

    move-result-object v0

    new-instance v1, Lcom/aide/ui/views/CodeEditText$c$a;

    iget-object v2, p0, Lcom/aide/ui/views/CodeEditText$c;->context:Landroid/content/Context;

    const v3, 0x7f0d0766

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/aide/common/u;

    const/16 v4, 0x14

    const/4 v5, 0x1

    const/4 v6, 0x1

    const/4 v7, 0x1

    invoke-direct {v3, v4, v5, v6, v7}, Lcom/aide/common/u;-><init>(IZZZ)V

    sget-object v4, Lcom/aide/ui/views/editor/OEditor$c;->er:Lcom/aide/ui/views/editor/OEditor$c;

    invoke-direct {v1, p0, v2, v3, v4}, Lcom/aide/ui/views/CodeEditText$c$a;-><init>(Lcom/aide/ui/views/CodeEditText$c;Ljava/lang/String;Lcom/aide/common/u;Lcom/aide/ui/views/editor/OEditor$c;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/aide/ui/views/CodeEditText$c;->PH:Lcom/aide/ui/views/CodeEditText;

    invoke-static {v0}, Lcom/aide/ui/views/CodeEditText;->Zo(Lcom/aide/ui/views/CodeEditText;)Ljava/util/List;

    move-result-object v0

    new-instance v1, Lcom/aide/ui/views/CodeEditText$c$a;

    iget-object v2, p0, Lcom/aide/ui/views/CodeEditText$c;->context:Landroid/content/Context;

    const v3, 0x7f0d0765

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/aide/common/u;

    const/16 v4, 0x7a

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-direct {v3, v4, v5, v6, v7}, Lcom/aide/common/u;-><init>(IZZZ)V

    sget-object v4, Lcom/aide/ui/views/editor/OEditor$c;->a8:Lcom/aide/ui/views/editor/OEditor$c;

    invoke-direct {v1, p0, v2, v3, v4}, Lcom/aide/ui/views/CodeEditText$c$a;-><init>(Lcom/aide/ui/views/CodeEditText$c;Ljava/lang/String;Lcom/aide/common/u;Lcom/aide/ui/views/editor/OEditor$c;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/aide/ui/views/CodeEditText$c;->PH:Lcom/aide/ui/views/CodeEditText;

    invoke-static {v0}, Lcom/aide/ui/views/CodeEditText;->Zo(Lcom/aide/ui/views/CodeEditText;)Ljava/util/List;

    move-result-object v0

    new-instance v1, Lcom/aide/ui/views/CodeEditText$c$a;

    iget-object v2, p0, Lcom/aide/ui/views/CodeEditText$c;->context:Landroid/content/Context;

    const v3, 0x7f0d0767

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/aide/common/u;

    const/16 v4, 0x7b

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-direct {v3, v4, v5, v6, v7}, Lcom/aide/common/u;-><init>(IZZZ)V

    sget-object v4, Lcom/aide/ui/views/editor/OEditor$c;->lg:Lcom/aide/ui/views/editor/OEditor$c;

    invoke-direct {v1, p0, v2, v3, v4}, Lcom/aide/ui/views/CodeEditText$c$a;-><init>(Lcom/aide/ui/views/CodeEditText$c;Ljava/lang/String;Lcom/aide/common/u;Lcom/aide/ui/views/editor/OEditor$c;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/aide/ui/views/CodeEditText$c;->PH:Lcom/aide/ui/views/CodeEditText;

    invoke-static {v0}, Lcom/aide/ui/views/CodeEditText;->Zo(Lcom/aide/ui/views/CodeEditText;)Ljava/util/List;

    move-result-object v0

    new-instance v1, Lcom/aide/ui/views/CodeEditText$c$a;

    iget-object v2, p0, Lcom/aide/ui/views/CodeEditText$c;->context:Landroid/content/Context;

    const v3, 0x7f0d0744

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/aide/common/u;

    const/16 v4, 0x5c

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-direct {v3, v4, v5, v6, v7}, Lcom/aide/common/u;-><init>(IZZZ)V

    sget-object v4, Lcom/aide/ui/views/editor/OEditor$c;->v5:Lcom/aide/ui/views/editor/OEditor$c;

    invoke-direct {v1, p0, v2, v3, v4}, Lcom/aide/ui/views/CodeEditText$c$a;-><init>(Lcom/aide/ui/views/CodeEditText$c;Ljava/lang/String;Lcom/aide/common/u;Lcom/aide/ui/views/editor/OEditor$c;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/aide/ui/views/CodeEditText$c;->PH:Lcom/aide/ui/views/CodeEditText;

    invoke-static {v0}, Lcom/aide/ui/views/CodeEditText;->Zo(Lcom/aide/ui/views/CodeEditText;)Ljava/util/List;

    move-result-object v0

    new-instance v1, Lcom/aide/ui/views/CodeEditText$c$a;

    iget-object v2, p0, Lcom/aide/ui/views/CodeEditText$c;->context:Landroid/content/Context;

    const v3, 0x7f0d0743

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/aide/common/u;

    const/16 v4, 0x5d

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-direct {v3, v4, v5, v6, v7}, Lcom/aide/common/u;-><init>(IZZZ)V

    sget-object v4, Lcom/aide/ui/views/editor/OEditor$c;->Zo:Lcom/aide/ui/views/editor/OEditor$c;

    invoke-direct {v1, p0, v2, v3, v4}, Lcom/aide/ui/views/CodeEditText$c$a;-><init>(Lcom/aide/ui/views/CodeEditText$c;Ljava/lang/String;Lcom/aide/common/u;Lcom/aide/ui/views/editor/OEditor$c;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/aide/ui/views/CodeEditText$c;->PH:Lcom/aide/ui/views/CodeEditText;

    invoke-static {v0}, Lcom/aide/ui/views/CodeEditText;->Zo(Lcom/aide/ui/views/CodeEditText;)Ljava/util/List;

    move-result-object v0

    new-instance v1, Lcom/aide/ui/views/CodeEditText$c$a;

    iget-object v2, p0, Lcom/aide/ui/views/CodeEditText$c;->context:Landroid/content/Context;

    const v3, 0x7f0d0746

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/aide/common/u;

    const/16 v4, 0x13

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-direct {v3, v4, v5, v6, v7}, Lcom/aide/common/u;-><init>(IZZZ)V

    sget-object v4, Lcom/aide/ui/views/editor/OEditor$c;->FH:Lcom/aide/ui/views/editor/OEditor$c;

    invoke-direct {v1, p0, v2, v3, v4}, Lcom/aide/ui/views/CodeEditText$c$a;-><init>(Lcom/aide/ui/views/CodeEditText$c;Ljava/lang/String;Lcom/aide/common/u;Lcom/aide/ui/views/editor/OEditor$c;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/aide/ui/views/CodeEditText$c;->PH:Lcom/aide/ui/views/CodeEditText;

    invoke-static {v0}, Lcom/aide/ui/views/CodeEditText;->Zo(Lcom/aide/ui/views/CodeEditText;)Ljava/util/List;

    move-result-object v0

    new-instance v1, Lcom/aide/ui/views/CodeEditText$c$a;

    iget-object v2, p0, Lcom/aide/ui/views/CodeEditText$c;->context:Landroid/content/Context;

    const v3, 0x7f0d0741

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/aide/common/u;

    const/16 v4, 0x14

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-direct {v3, v4, v5, v6, v7}, Lcom/aide/common/u;-><init>(IZZZ)V

    sget-object v4, Lcom/aide/ui/views/editor/OEditor$c;->Hw:Lcom/aide/ui/views/editor/OEditor$c;

    invoke-direct {v1, p0, v2, v3, v4}, Lcom/aide/ui/views/CodeEditText$c$a;-><init>(Lcom/aide/ui/views/CodeEditText$c;Ljava/lang/String;Lcom/aide/common/u;Lcom/aide/ui/views/editor/OEditor$c;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/aide/ui/views/CodeEditText$c;->PH:Lcom/aide/ui/views/CodeEditText;

    invoke-static {v0}, Lcom/aide/ui/views/CodeEditText;->Zo(Lcom/aide/ui/views/CodeEditText;)Ljava/util/List;

    move-result-object v0

    new-instance v1, Lcom/aide/ui/views/CodeEditText$c$a;

    iget-object v2, p0, Lcom/aide/ui/views/CodeEditText$c;->context:Landroid/content/Context;

    const v3, 0x7f0d0742

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/aide/common/u;

    const/16 v4, 0x15

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-direct {v3, v4, v5, v6, v7}, Lcom/aide/common/u;-><init>(IZZZ)V

    sget-object v4, Lcom/aide/ui/views/editor/OEditor$c;->j6:Lcom/aide/ui/views/editor/OEditor$c;

    invoke-direct {v1, p0, v2, v3, v4}, Lcom/aide/ui/views/CodeEditText$c$a;-><init>(Lcom/aide/ui/views/CodeEditText$c;Ljava/lang/String;Lcom/aide/common/u;Lcom/aide/ui/views/editor/OEditor$c;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/aide/ui/views/CodeEditText$c;->PH:Lcom/aide/ui/views/CodeEditText;

    invoke-static {v0}, Lcom/aide/ui/views/CodeEditText;->Zo(Lcom/aide/ui/views/CodeEditText;)Ljava/util/List;

    move-result-object v0

    new-instance v1, Lcom/aide/ui/views/CodeEditText$c$a;

    iget-object v2, p0, Lcom/aide/ui/views/CodeEditText$c;->context:Landroid/content/Context;

    const v3, 0x7f0d0745

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/aide/common/u;

    const/16 v4, 0x16

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-direct {v3, v4, v5, v6, v7}, Lcom/aide/common/u;-><init>(IZZZ)V

    sget-object v4, Lcom/aide/ui/views/editor/OEditor$c;->DW:Lcom/aide/ui/views/editor/OEditor$c;

    invoke-direct {v1, p0, v2, v3, v4}, Lcom/aide/ui/views/CodeEditText$c$a;-><init>(Lcom/aide/ui/views/CodeEditText$c;Ljava/lang/String;Lcom/aide/common/u;Lcom/aide/ui/views/editor/OEditor$c;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/aide/ui/views/CodeEditText$c;->PH:Lcom/aide/ui/views/CodeEditText;

    invoke-static {v0}, Lcom/aide/ui/views/CodeEditText;->Zo(Lcom/aide/ui/views/CodeEditText;)Ljava/util/List;

    move-result-object v0

    new-instance v1, Lcom/aide/ui/views/CodeEditText$c$a;

    iget-object v2, p0, Lcom/aide/ui/views/CodeEditText$c;->context:Landroid/content/Context;

    const v3, 0x7f0d0747

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/aide/common/u;

    const/16 v4, 0x15

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    invoke-direct {v3, v4, v5, v6, v7}, Lcom/aide/common/u;-><init>(IZZZ)V

    sget-object v4, Lcom/aide/ui/views/editor/OEditor$c;->we:Lcom/aide/ui/views/editor/OEditor$c;

    invoke-direct {v1, p0, v2, v3, v4}, Lcom/aide/ui/views/CodeEditText$c$a;-><init>(Lcom/aide/ui/views/CodeEditText$c;Ljava/lang/String;Lcom/aide/common/u;Lcom/aide/ui/views/editor/OEditor$c;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/aide/ui/views/CodeEditText$c;->PH:Lcom/aide/ui/views/CodeEditText;

    invoke-static {v0}, Lcom/aide/ui/views/CodeEditText;->Zo(Lcom/aide/ui/views/CodeEditText;)Ljava/util/List;

    move-result-object v0

    new-instance v1, Lcom/aide/ui/views/CodeEditText$c$a;

    iget-object v2, p0, Lcom/aide/ui/views/CodeEditText$c;->context:Landroid/content/Context;

    const v3, 0x7f0d0748

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/aide/common/u;

    const/16 v4, 0x16

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    invoke-direct {v3, v4, v5, v6, v7}, Lcom/aide/common/u;-><init>(IZZZ)V

    sget-object v4, Lcom/aide/ui/views/editor/OEditor$c;->J0:Lcom/aide/ui/views/editor/OEditor$c;

    invoke-direct {v1, p0, v2, v3, v4}, Lcom/aide/ui/views/CodeEditText$c$a;-><init>(Lcom/aide/ui/views/CodeEditText$c;Ljava/lang/String;Lcom/aide/common/u;Lcom/aide/ui/views/editor/OEditor$c;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/aide/ui/views/CodeEditText$c;->PH:Lcom/aide/ui/views/CodeEditText;

    invoke-static {v0}, Lcom/aide/ui/views/CodeEditText;->Zo(Lcom/aide/ui/views/CodeEditText;)Ljava/util/List;

    move-result-object v0

    new-instance v1, Lcom/aide/ui/views/CodeEditText$c$a;

    iget-object v2, p0, Lcom/aide/ui/views/CodeEditText$c;->context:Landroid/content/Context;

    const v3, 0x7f0d075f

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/aide/common/u;

    const/16 v4, 0x5c

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-direct {v3, v4, v5, v6, v7}, Lcom/aide/common/u;-><init>(IZZZ)V

    sget-object v4, Lcom/aide/ui/views/editor/OEditor$c;->j3:Lcom/aide/ui/views/editor/OEditor$c;

    invoke-direct {v1, p0, v2, v3, v4}, Lcom/aide/ui/views/CodeEditText$c$a;-><init>(Lcom/aide/ui/views/CodeEditText$c;Ljava/lang/String;Lcom/aide/common/u;Lcom/aide/ui/views/editor/OEditor$c;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/aide/ui/views/CodeEditText$c;->PH:Lcom/aide/ui/views/CodeEditText;

    invoke-static {v0}, Lcom/aide/ui/views/CodeEditText;->Zo(Lcom/aide/ui/views/CodeEditText;)Ljava/util/List;

    move-result-object v0

    new-instance v1, Lcom/aide/ui/views/CodeEditText$c$a;

    iget-object v2, p0, Lcom/aide/ui/views/CodeEditText$c;->context:Landroid/content/Context;

    const v3, 0x7f0d075e

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/aide/common/u;

    const/16 v4, 0x5d

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-direct {v3, v4, v5, v6, v7}, Lcom/aide/common/u;-><init>(IZZZ)V

    sget-object v4, Lcom/aide/ui/views/editor/OEditor$c;->Mr:Lcom/aide/ui/views/editor/OEditor$c;

    invoke-direct {v1, p0, v2, v3, v4}, Lcom/aide/ui/views/CodeEditText$c$a;-><init>(Lcom/aide/ui/views/CodeEditText$c;Ljava/lang/String;Lcom/aide/common/u;Lcom/aide/ui/views/editor/OEditor$c;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/aide/ui/views/CodeEditText$c;->PH:Lcom/aide/ui/views/CodeEditText;

    invoke-static {v0}, Lcom/aide/ui/views/CodeEditText;->Zo(Lcom/aide/ui/views/CodeEditText;)Ljava/util/List;

    move-result-object v0

    new-instance v1, Lcom/aide/ui/views/CodeEditText$c$a;

    iget-object v2, p0, Lcom/aide/ui/views/CodeEditText$c;->context:Landroid/content/Context;

    const v3, 0x7f0d0762

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/aide/common/u;

    const/16 v4, 0x15

    const/4 v5, 0x1

    const/4 v6, 0x1

    const/4 v7, 0x0

    invoke-direct {v3, v4, v5, v6, v7}, Lcom/aide/common/u;-><init>(IZZZ)V

    sget-object v4, Lcom/aide/ui/views/editor/OEditor$c;->yS:Lcom/aide/ui/views/editor/OEditor$c;

    invoke-direct {v1, p0, v2, v3, v4}, Lcom/aide/ui/views/CodeEditText$c$a;-><init>(Lcom/aide/ui/views/CodeEditText$c;Ljava/lang/String;Lcom/aide/common/u;Lcom/aide/ui/views/editor/OEditor$c;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/aide/ui/views/CodeEditText$c;->PH:Lcom/aide/ui/views/CodeEditText;

    invoke-static {v0}, Lcom/aide/ui/views/CodeEditText;->Zo(Lcom/aide/ui/views/CodeEditText;)Ljava/util/List;

    move-result-object v0

    new-instance v1, Lcom/aide/ui/views/CodeEditText$c$a;

    iget-object v2, p0, Lcom/aide/ui/views/CodeEditText$c;->context:Landroid/content/Context;

    const v3, 0x7f0d0763

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/aide/common/u;

    const/16 v4, 0x16

    const/4 v5, 0x1

    const/4 v6, 0x1

    const/4 v7, 0x0

    invoke-direct {v3, v4, v5, v6, v7}, Lcom/aide/common/u;-><init>(IZZZ)V

    sget-object v4, Lcom/aide/ui/views/editor/OEditor$c;->gW:Lcom/aide/ui/views/editor/OEditor$c;

    invoke-direct {v1, p0, v2, v3, v4}, Lcom/aide/ui/views/CodeEditText$c$a;-><init>(Lcom/aide/ui/views/CodeEditText$c;Ljava/lang/String;Lcom/aide/common/u;Lcom/aide/ui/views/editor/OEditor$c;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/aide/ui/views/CodeEditText$c;->PH:Lcom/aide/ui/views/CodeEditText;

    invoke-static {v0}, Lcom/aide/ui/views/CodeEditText;->Zo(Lcom/aide/ui/views/CodeEditText;)Ljava/util/List;

    move-result-object v0

    new-instance v1, Lcom/aide/ui/views/CodeEditText$c$a;

    iget-object v2, p0, Lcom/aide/ui/views/CodeEditText$c;->context:Landroid/content/Context;

    const v3, 0x7f0d0761

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/aide/common/u;

    const/16 v4, 0x13

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-direct {v3, v4, v5, v6, v7}, Lcom/aide/common/u;-><init>(IZZZ)V

    sget-object v4, Lcom/aide/ui/views/editor/OEditor$c;->XL:Lcom/aide/ui/views/editor/OEditor$c;

    invoke-direct {v1, p0, v2, v3, v4}, Lcom/aide/ui/views/CodeEditText$c$a;-><init>(Lcom/aide/ui/views/CodeEditText$c;Ljava/lang/String;Lcom/aide/common/u;Lcom/aide/ui/views/editor/OEditor$c;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/aide/ui/views/CodeEditText$c;->PH:Lcom/aide/ui/views/CodeEditText;

    invoke-static {v0}, Lcom/aide/ui/views/CodeEditText;->Zo(Lcom/aide/ui/views/CodeEditText;)Ljava/util/List;

    move-result-object v0

    new-instance v1, Lcom/aide/ui/views/CodeEditText$c$a;

    iget-object v2, p0, Lcom/aide/ui/views/CodeEditText$c;->context:Landroid/content/Context;

    const v3, 0x7f0d075c

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/aide/common/u;

    const/16 v4, 0x14

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-direct {v3, v4, v5, v6, v7}, Lcom/aide/common/u;-><init>(IZZZ)V

    sget-object v4, Lcom/aide/ui/views/editor/OEditor$c;->aM:Lcom/aide/ui/views/editor/OEditor$c;

    invoke-direct {v1, p0, v2, v3, v4}, Lcom/aide/ui/views/CodeEditText$c$a;-><init>(Lcom/aide/ui/views/CodeEditText$c;Ljava/lang/String;Lcom/aide/common/u;Lcom/aide/ui/views/editor/OEditor$c;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/aide/ui/views/CodeEditText$c;->PH:Lcom/aide/ui/views/CodeEditText;

    invoke-static {v0}, Lcom/aide/ui/views/CodeEditText;->Zo(Lcom/aide/ui/views/CodeEditText;)Ljava/util/List;

    move-result-object v0

    new-instance v1, Lcom/aide/ui/views/CodeEditText$c$a;

    iget-object v2, p0, Lcom/aide/ui/views/CodeEditText$c;->context:Landroid/content/Context;

    const v3, 0x7f0d075d

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/aide/common/u;

    const/16 v4, 0x15

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-direct {v3, v4, v5, v6, v7}, Lcom/aide/common/u;-><init>(IZZZ)V

    sget-object v4, Lcom/aide/ui/views/editor/OEditor$c;->Ws:Lcom/aide/ui/views/editor/OEditor$c;

    invoke-direct {v1, p0, v2, v3, v4}, Lcom/aide/ui/views/CodeEditText$c$a;-><init>(Lcom/aide/ui/views/CodeEditText$c;Ljava/lang/String;Lcom/aide/common/u;Lcom/aide/ui/views/editor/OEditor$c;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/aide/ui/views/CodeEditText$c;->PH:Lcom/aide/ui/views/CodeEditText;

    invoke-static {v0}, Lcom/aide/ui/views/CodeEditText;->Zo(Lcom/aide/ui/views/CodeEditText;)Ljava/util/List;

    move-result-object v0

    new-instance v1, Lcom/aide/ui/views/CodeEditText$c$a;

    iget-object v2, p0, Lcom/aide/ui/views/CodeEditText$c;->context:Landroid/content/Context;

    const v3, 0x7f0d0760

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/aide/common/u;

    const/16 v4, 0x16

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-direct {v3, v4, v5, v6, v7}, Lcom/aide/common/u;-><init>(IZZZ)V

    sget-object v4, Lcom/aide/ui/views/editor/OEditor$c;->QX:Lcom/aide/ui/views/editor/OEditor$c;

    invoke-direct {v1, p0, v2, v3, v4}, Lcom/aide/ui/views/CodeEditText$c$a;-><init>(Lcom/aide/ui/views/CodeEditText$c;Ljava/lang/String;Lcom/aide/common/u;Lcom/aide/ui/views/editor/OEditor$c;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/views/CodeEditText$c;->Bx:Z

    if-eqz v1, :cond_1

    const-wide v2, -0x12278e07a0e3c6e0L

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method private v5(FF)I
    .registers 10
    .annotation runtime Labcd/su;
        method = 0x3aeec90993724e55L
    .end annotation

    const-wide v2, 0x25617feb881cd5dbL

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/views/CodeEditText$c;->Jm:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/Float;

    invoke-direct {v0, p1}, Ljava/lang/Float;-><init>(F)V

    new-instance v1, Ljava/lang/Float;

    invoke-direct {v1, p2}, Ljava/lang/Float;-><init>(F)V

    const-wide v4, 0x25617feb881cd5dbL

    invoke-static {v4, v5, p0, v0, v1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/aide/ui/views/editor/OConsole;->FH(FF)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    add-int/lit8 v0, v0, 0x1

    return v0

    :catch_0
    move-exception v1

    sget-boolean v0, Lcom/aide/ui/views/CodeEditText$c;->Bx:Z

    if-eqz v0, :cond_1

    new-instance v5, Ljava/lang/Float;

    invoke-direct {v5, p1}, Ljava/lang/Float;-><init>(F)V

    new-instance v6, Ljava/lang/Float;

    invoke-direct {v6, p2}, Ljava/lang/Float;-><init>(F)V

    move-object v4, p0

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v1
.end method

.method private we(II)I
    .registers 10
    .annotation runtime Labcd/su;
        method = -0x3e0c4998135e97bL
    .end annotation

    const-wide v2, -0x4459f43c1656a9L

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/views/CodeEditText$c;->Jm:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p2}, Ljava/lang/Integer;-><init>(I)V

    const-wide v4, -0x4459f43c1656a9L

    invoke-static {v4, v5, p0, v0, v1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/aide/ui/views/CodeEditText$c;->PH:Lcom/aide/ui/views/CodeEditText;

    invoke-virtual {v0, p1, p2}, Lcom/aide/ui/views/CodeEditText;->FH(II)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-lez v0, :cond_1

    move p2, v0

    :cond_1
    return p2

    :catch_0
    move-exception v1

    sget-boolean v0, Lcom/aide/ui/views/CodeEditText$c;->Bx:Z

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


# virtual methods
.method public DW(CII)V
    .registers 14

    const-wide v8, 0x40c9cffd85f40f44L    # 13215.980650432066

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/views/CodeEditText$c;->Jm:Z

    if-eqz v0, :cond_0

    new-instance v3, Ljava/lang/Character;

    invoke-direct {v3, p1}, Ljava/lang/Character;-><init>(C)V

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, p2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p3}, Ljava/lang/Integer;-><init>(I)V

    const-wide v0, 0x40c9cffd85f40f44L    # 13215.980650432066

    move-object v2, p0

    invoke-static/range {v0 .. v5}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    invoke-direct {p0}, Lcom/aide/ui/views/CodeEditText$c;->getCodeEditTextEditorModel()Lcom/aide/ui/views/CodeEditText$a;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/aide/ui/views/CodeEditText$a;->DW(CII)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v1

    sget-boolean v0, Lcom/aide/ui/views/CodeEditText$c;->Bx:Z

    if-eqz v0, :cond_1

    new-instance v5, Ljava/lang/Character;

    invoke-direct {v5, p1}, Ljava/lang/Character;-><init>(C)V

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, p3}, Ljava/lang/Integer;-><init>(I)V

    move-wide v2, v8

    move-object v4, p0

    invoke-static/range {v1 .. v7}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v1
.end method

.method protected DW()Z
    .registers 5
    .annotation runtime Labcd/su;
        method = -0xd2207e4bf822004L
    .end annotation

    const-wide v2, 0x69e7cbcca1ee808L

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/views/CodeEditText$c;->Jm:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x69e7cbcca1ee808L

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/aide/ui/views/CodeEditText$c;->PH:Lcom/aide/ui/views/CodeEditText;

    invoke-virtual {v0}, Lcom/aide/ui/views/CodeEditText;->FH()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    return v0

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/views/CodeEditText$c;->Bx:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method protected EQ()Z
    .registers 5
    .annotation runtime Labcd/su;
        method = 0x33c4d03f30a1bff7L
    .end annotation

    const-wide v2, 0x35e1941269c09495L    # 3.7586354490920136E-49

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/views/CodeEditText$c;->Jm:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x35e1941269c09495L    # 3.7586354490920136E-49

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    invoke-super {p0}, Lcom/aide/ui/views/editor/OConsole;->EQ()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/aide/ui/views/CodeEditText$c;->PH:Lcom/aide/ui/views/CodeEditText;

    invoke-virtual {v0}, Lcom/aide/ui/views/CodeEditText;->u7()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/views/CodeEditText$c;->Bx:Z

    if-eqz v1, :cond_3

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_3
    throw v0
.end method

.method public FH(F)[F
    .registers 10

    const-wide v6, -0x142410c8ef0f9730L

    const/4 v4, 0x2

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/views/CodeEditText$c;->Jm:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/Float;

    invoke-direct {v0, p1}, Ljava/lang/Float;-><init>(F)V

    const-wide v2, -0x142410c8ef0f9730L

    invoke-static {v2, v3, p0, v0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    invoke-virtual {p0}, Lcom/aide/ui/views/editor/OConsole;->we()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    :goto_0
    return-object v0

    :cond_1
    const/high16 v0, 0x40e00000    # 7.0f

    iget v1, p0, Lcom/aide/ui/views/CodeEditText$c;->oa:F

    div-float v1, v0, v1

    const/high16 v0, 0x41e00000    # 28.0f

    iget v2, p0, Lcom/aide/ui/views/CodeEditText$c;->oa:F
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    div-float/2addr v0, v2

    cmpg-float v2, p1, v1

    if-gez v2, :cond_4

    :goto_1
    cmpl-float v2, v1, v0

    if-lez v2, :cond_3

    :goto_2
    :try_start_1
    iget v1, p0, Lcom/aide/ui/views/CodeEditText$c;->oa:F

    mul-float/2addr v1, v0

    invoke-virtual {p0, v1}, Lcom/aide/ui/views/editor/OConsole;->setFontSize(F)V

    invoke-virtual {p0}, Lcom/aide/ui/views/editor/OConsole;->getSpaceCharWidth()F

    move-result v1

    iget v2, p0, Lcom/aide/ui/views/CodeEditText$c;->MP:F

    div-float/2addr v1, v2

    invoke-virtual {p0}, Lcom/aide/ui/views/editor/OConsole;->getFontHeight()F

    move-result v2

    iget v0, p0, Lcom/aide/ui/views/CodeEditText$c;->qP:F
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    div-float/2addr v2, v0

    new-array v0, v4, [F

    const/4 v3, 0x0

    aput v1, v0, v3

    const/4 v1, 0x1

    aput v2, v0, v1

    goto :goto_0

    :catch_0
    move-exception v0

    move-object v1, v0

    :goto_3
    sget-boolean v0, Lcom/aide/ui/views/CodeEditText$c;->Bx:Z

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/Float;

    invoke-direct {v0, p1}, Ljava/lang/Float;-><init>(F)V

    invoke-static {v1, v6, v7, p0, v0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_2
    throw v1

    :catch_1
    move-exception v1

    move p1, v0

    goto :goto_3

    :cond_3
    move v0, v1

    goto :goto_2

    :cond_4
    move v1, p1

    goto :goto_1

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public Hw()V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    const/4 v1, 0x0

    invoke-super {p0}, Lcom/aide/ui/views/editor/OConsole;->Hw()V

    move-object v0, v1

    check-cast v0, Lcom/aide/ui/views/editor/j;

    iget-object v2, p0, Lcom/aide/ui/views/CodeEditText$c;->PH:Lcom/aide/ui/views/CodeEditText;

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Lcom/aide/ui/views/CodeEditText$c;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/aide/common/g;->QX(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_2

    new-instance v2, Lcom/aide/ui/views/editor/j;

    new-instance v3, Lcom/s1243808733/aide/highlight/color/ColorDefault;

    invoke-direct {v3}, Lcom/s1243808733/aide/highlight/color/ColorDefault;-><init>()V

    iget-object v3, v3, Lcom/s1243808733/aide/highlight/color/ColorDefault;->SELECTED_BACKGROUND:Lcom/s1243808733/aide/highlight/color/Color;

    invoke-static {v3}, Lcom/s1243808733/aide/highlight/HighlightUtils;->getColorInt(Lcom/s1243808733/aide/highlight/color/Color;)I

    move-result v3

    invoke-direct {v2, v3}, Lcom/aide/ui/views/editor/j;-><init>(I)V

    iput-object v2, p0, Lcom/aide/ui/views/editor/OConsole;->aj:Lcom/aide/ui/views/editor/j;

    :goto_0
    iget-boolean v2, p0, Lcom/aide/ui/views/CodeEditText$c;->xg:Z

    if-eqz v2, :cond_4

    new-instance v1, Lcom/aide/ui/views/editor/j;

    new-instance v2, Lcom/s1243808733/aide/highlight/color/ColorDefault;

    invoke-direct {v2}, Lcom/s1243808733/aide/highlight/color/ColorDefault;-><init>()V

    iget-object v2, v2, Lcom/s1243808733/aide/highlight/color/ColorDefault;->LINE_BACKGROUND:Lcom/s1243808733/aide/highlight/color/Color;

    invoke-static {v2}, Lcom/s1243808733/aide/highlight/HighlightUtils;->getColorInt(Lcom/s1243808733/aide/highlight/color/Color;)I

    move-result v2

    invoke-direct {v1, v2}, Lcom/aide/ui/views/editor/j;-><init>(I)V

    :goto_1
    iput-object v1, p0, Lcom/aide/ui/views/editor/OConsole;->g3:Lcom/aide/ui/views/editor/j;

    iget-boolean v1, p0, Lcom/aide/ui/views/CodeEditText$c;->xg:Z

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/aide/ui/views/CodeEditText$c;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget-object v0, p0, Lcom/aide/ui/views/CodeEditText$c;->PH:Lcom/aide/ui/views/CodeEditText;

    invoke-virtual {v0}, Lcom/aide/ui/views/CodeEditText;->J0()Z

    move-result v0

    if-eqz v0, :cond_5

    const v0, 0x7f05002b

    :goto_2
    new-instance v1, Lcom/aide/ui/views/editor/j;

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-direct {v1, v0}, Lcom/aide/ui/views/editor/j;-><init>(I)V

    move-object v0, v1

    :cond_0
    iput-object v0, p0, Lcom/aide/ui/views/editor/OConsole;->lp:Lcom/aide/ui/views/editor/j;

    invoke-virtual {p0}, Lcom/aide/ui/views/CodeEditText$c;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-object v0, p0, Lcom/aide/ui/views/CodeEditText$c;->PH:Lcom/aide/ui/views/CodeEditText;

    invoke-virtual {v0}, Lcom/aide/ui/views/CodeEditText;->J0()Z

    move-result v0

    if-eqz v0, :cond_6

    const v0, 0x7f050019

    :goto_3
    new-instance v2, Lcom/aide/ui/views/editor/j;

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-direct {v2, v0}, Lcom/aide/ui/views/editor/j;-><init>(I)V

    iput-object v2, p0, Lcom/aide/ui/views/editor/OConsole;->I:Lcom/aide/ui/views/editor/j;

    invoke-virtual {p0}, Lcom/aide/ui/views/CodeEditText$c;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-object v0, p0, Lcom/aide/ui/views/CodeEditText$c;->PH:Lcom/aide/ui/views/CodeEditText;

    invoke-virtual {v0}, Lcom/aide/ui/views/CodeEditText;->J0()Z

    move-result v0

    if-eqz v0, :cond_7

    const v0, 0x7f050029

    :goto_4
    new-instance v2, Lcom/aide/ui/views/editor/j;

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-direct {v2, v0}, Lcom/aide/ui/views/editor/j;-><init>(I)V

    iput-object v2, p0, Lcom/aide/ui/views/editor/OConsole;->ca:Lcom/aide/ui/views/editor/j;

    invoke-virtual {p0}, Lcom/aide/ui/views/CodeEditText$c;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-object v0, p0, Lcom/aide/ui/views/CodeEditText$c;->PH:Lcom/aide/ui/views/CodeEditText;

    invoke-virtual {v0}, Lcom/aide/ui/views/CodeEditText;->J0()Z

    move-result v0

    if-eqz v0, :cond_8

    const v0, 0x7f050021

    :goto_5
    new-instance v2, Lcom/aide/ui/views/editor/j;

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-direct {v2, v0}, Lcom/aide/ui/views/editor/j;-><init>(I)V

    iput-object v2, p0, Lcom/aide/ui/views/editor/OConsole;->sy:Lcom/aide/ui/views/editor/j;

    invoke-virtual {p0}, Lcom/aide/ui/views/CodeEditText$c;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-object v0, p0, Lcom/aide/ui/views/CodeEditText$c;->PH:Lcom/aide/ui/views/CodeEditText;

    invoke-virtual {v0}, Lcom/aide/ui/views/CodeEditText;->J0()Z

    move-result v0

    if-eqz v0, :cond_9

    const v0, 0x7f05001f

    :goto_6
    new-instance v2, Lcom/aide/ui/views/editor/j;

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-direct {v2, v0}, Lcom/aide/ui/views/editor/j;-><init>(I)V

    iput-object v2, p0, Lcom/aide/ui/views/editor/OConsole;->Qq:Lcom/aide/ui/views/editor/j;

    invoke-virtual {p0}, Lcom/aide/ui/views/CodeEditText$c;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-object v0, p0, Lcom/aide/ui/views/CodeEditText$c;->PH:Lcom/aide/ui/views/CodeEditText;

    invoke-virtual {v0}, Lcom/aide/ui/views/CodeEditText;->J0()Z

    move-result v0

    if-eqz v0, :cond_a

    const v0, 0x7f05001d

    :goto_7
    new-instance v2, Lcom/aide/ui/views/editor/j;

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-direct {v2, v0}, Lcom/aide/ui/views/editor/j;-><init>(I)V

    iput-object v2, p0, Lcom/aide/ui/views/editor/OConsole;->x9:Lcom/aide/ui/views/editor/j;

    new-instance v0, Lcom/aide/ui/views/editor/j;

    new-instance v1, Lcom/s1243808733/aide/highlight/color/ColorDefault;

    invoke-direct {v1}, Lcom/s1243808733/aide/highlight/color/ColorDefault;-><init>()V

    iget-object v1, v1, Lcom/s1243808733/aide/highlight/color/ColorDefault;->LINE_NUMBER:Lcom/s1243808733/aide/highlight/color/Color;

    invoke-static {v1}, Lcom/s1243808733/aide/highlight/HighlightUtils;->getColorInt(Lcom/s1243808733/aide/highlight/color/Color;)I

    move-result v1

    invoke-direct {v0, v1}, Lcom/aide/ui/views/editor/j;-><init>(I)V

    iput-object v0, p0, Lcom/aide/ui/views/editor/OConsole;->Mz:Lcom/aide/ui/views/editor/j;

    new-instance v0, Lcom/aide/ui/views/editor/j;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/aide/ui/views/editor/j;-><init>(I)V

    iput-object v0, p0, Lcom/aide/ui/views/editor/OConsole;->vJ:Lcom/aide/ui/views/editor/j;

    :cond_1
    return-void

    :cond_2
    invoke-virtual {p0}, Lcom/aide/ui/views/CodeEditText$c;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    iget-object v2, p0, Lcom/aide/ui/views/CodeEditText$c;->PH:Lcom/aide/ui/views/CodeEditText;

    invoke-virtual {v2}, Lcom/aide/ui/views/CodeEditText;->J0()Z

    move-result v2

    if-eqz v2, :cond_3

    const v2, 0x7f050025

    :goto_8
    new-instance v4, Lcom/aide/ui/views/editor/j;

    invoke-virtual {v3, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-direct {v4, v2}, Lcom/aide/ui/views/editor/j;-><init>(I)V

    iput-object v4, p0, Lcom/aide/ui/views/editor/OConsole;->aj:Lcom/aide/ui/views/editor/j;

    goto/16 :goto_0

    :cond_3
    const v2, 0x7f050024

    goto :goto_8

    :cond_4
    check-cast v1, Lcom/aide/ui/views/editor/j;

    goto/16 :goto_1

    :cond_5
    const v0, 0x7f05002a

    goto/16 :goto_2

    :cond_6
    const v0, 0x7f050018

    goto/16 :goto_3

    :cond_7
    const v0, 0x7f050028

    goto/16 :goto_4

    :cond_8
    const v0, 0x7f050020

    goto/16 :goto_5

    :cond_9
    const v0, 0x7f05001e

    goto :goto_6

    :cond_a
    const v0, 0x7f05001c

    goto :goto_7
.end method

.method public Hw(IIII)V
    .registers 14

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/views/CodeEditText$c;->Jm:Z

    if-eqz v0, :cond_0

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, p2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p3}, Ljava/lang/Integer;-><init>(I)V

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p4}, Ljava/lang/Integer;-><init>(I)V

    const-wide v0, 0x135c270ec5acd40L    # 7.932571447294E-303

    move-object v2, p0

    invoke-static/range {v0 .. v6}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    invoke-virtual {p0}, Lcom/aide/ui/views/editor/OEditor;->getEditorModel()Lcom/aide/ui/views/editor/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aide/ui/views/editor/g;->BT()V

    add-int/lit8 v1, p2, -0x1

    add-int/lit8 v2, p1, -0x1

    invoke-virtual {p0, v1, v2}, Lcom/aide/ui/views/editor/OConsole;->v5(II)V

    const/4 v0, 0x1

    const/4 v3, 0x1

    invoke-virtual {p0, v1, v2, v3}, Lcom/aide/ui/views/editor/OConsole;->DW(IIZ)V

    add-int/lit8 v1, p4, -0x1

    add-int/lit8 v2, p3, -0x1

    invoke-virtual {p0, v1, v2}, Lcom/aide/ui/views/editor/OConsole;->Zo(II)V

    if-ne p1, p3, :cond_1

    if-eq p2, p4, :cond_2

    :cond_1
    :goto_0
    invoke-virtual {p0, v0}, Lcom/aide/ui/views/editor/OConsole;->setSelectionVisibility(Z)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    :catch_0
    move-exception v1

    sget-boolean v0, Lcom/aide/ui/views/CodeEditText$c;->Bx:Z

    if-eqz v0, :cond_3

    const-wide v2, 0x135c270ec5acd40L    # 7.932571447294E-303

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, p3}, Ljava/lang/Integer;-><init>(I)V

    new-instance v8, Ljava/lang/Integer;

    invoke-direct {v8, p4}, Ljava/lang/Integer;-><init>(I)V

    move-object v4, p0

    invoke-static/range {v1 .. v8}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_3
    throw v1
.end method

.method public VH(II)V
    .registers 10

    const-wide v2, -0x25e5faf2f4c1be31L    # -1.100831872692341E126

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/views/CodeEditText$c;->Jm:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p2}, Ljava/lang/Integer;-><init>(I)V

    const-wide v4, -0x25e5faf2f4c1be31L    # -1.100831872692341E126

    invoke-static {v4, v5, p0, v0, v1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    invoke-direct {p0}, Lcom/aide/ui/views/CodeEditText$c;->getCodeEditTextEditorModel()Lcom/aide/ui/views/CodeEditText$a;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/aide/ui/views/CodeEditText$a;->J8(II)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v1

    sget-boolean v0, Lcom/aide/ui/views/CodeEditText$c;->Bx:Z

    if-eqz v0, :cond_1

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    move-object v4, p0

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v1
.end method

.method public ei()V
    .registers 5

    const-wide v2, -0x23204a5ef0b8fcbfL    # -2.3600828831842222E139

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/views/CodeEditText$c;->Jm:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x23204a5ef0b8fcbfL    # -2.3600828831842222E139

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    invoke-virtual {p0}, Lcom/aide/ui/views/editor/OConsole;->we()Z

    move-result v0

    if-eqz v0, :cond_1

    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/aide/ui/views/editor/OConsole;->getFontSize()F

    move-result v0

    iput v0, p0, Lcom/aide/ui/views/CodeEditText$c;->oa:F

    invoke-virtual {p0}, Lcom/aide/ui/views/editor/OConsole;->getFontHeight()F

    move-result v0

    iput v0, p0, Lcom/aide/ui/views/CodeEditText$c;->qP:F

    invoke-virtual {p0}, Lcom/aide/ui/views/editor/OConsole;->getSpaceCharWidth()F

    move-result v0

    iput v0, p0, Lcom/aide/ui/views/CodeEditText$c;->MP:F
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/views/CodeEditText$c;->Bx:Z

    if-eqz v1, :cond_2

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_2
    throw v0
.end method

.method public getKeyStrokeHandler()Lcom/aide/common/KeyStrokeDetector$a;
    .registers 5

    const-wide v2, 0x61540414554fe07fL    # 7.03515369182649E160

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/views/CodeEditText$c;->Jm:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x61540414554fe07fL    # 7.03515369182649E160

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/aide/ui/views/CodeEditText$c;->hp:Lcom/aide/common/KeyStrokeDetector$a;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/views/CodeEditText$c;->Bx:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method protected getSideBarPaddingLeft()F
    .registers 5
    .annotation runtime Labcd/su;
        method = -0x57e95b4de68740c8L
    .end annotation

    const-wide v2, -0xba3c513f31f4bc0L    # -3.233923856749412E252

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/views/CodeEditText$c;->Jm:Z

    if-eqz v0, :cond_0

    const-wide v0, -0xba3c513f31f4bc0L    # -3.233923856749412E252

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/aide/ui/views/CodeEditText$c;->PH:Lcom/aide/ui/views/CodeEditText;

    invoke-virtual {v0}, Lcom/aide/ui/views/CodeEditText;->getSideBarPadding()F
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    return v0

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/views/CodeEditText$c;->Bx:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public gn(II)V
    .registers 4

    invoke-direct {p0}, Lcom/aide/ui/views/CodeEditText$c;->getCodeEditTextEditorModel()Lcom/aide/ui/views/CodeEditText$a;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Lcom/aide/ui/views/CodeEditText$a;->QX(II)V

    :cond_0
    return-void
.end method

.method public j6(III)Landroid/graphics/Rect;
    .registers 14

    const-wide v8, 0x61552191588e1ad1L    # 7.42711761679193E160

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/views/CodeEditText$c;->Jm:Z

    if-eqz v0, :cond_0

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, p2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p3}, Ljava/lang/Integer;-><init>(I)V

    const-wide v0, 0x61552191588e1ad1L    # 7.42711761679193E160

    move-object v2, p0

    invoke-static/range {v0 .. v5}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    add-int/lit8 v0, p1, -0x1

    invoke-virtual {p0, v0}, Lcom/aide/ui/views/editor/OConsole;->FH(I)F

    move-result v1

    invoke-virtual {p0}, Lcom/aide/ui/views/editor/OConsole;->getFontHeight()F

    move-result v2

    add-int/lit8 v3, p2, -0x1

    invoke-virtual {p0, v3, v0}, Lcom/aide/ui/views/editor/OConsole;->DW(II)F

    move-result v3

    add-int/lit8 v4, p3, -0x1

    invoke-virtual {p0, v4, v0}, Lcom/aide/ui/views/editor/OConsole;->DW(II)F

    move-result v0

    const/4 v4, 0x2

    new-array v4, v4, [I

    invoke-virtual {p0, v4}, Landroid/view/View;->getLocationOnScreen([I)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v5, 0x0

    aget v5, v4, v5

    const/4 v6, 0x1

    aget v4, v4, v6

    int-to-float v5, v5

    add-float/2addr v3, v5

    float-to-int v3, v3

    int-to-float v4, v4

    :try_start_1
    new-instance v6, Landroid/graphics/Rect;

    add-float v7, v1, v4

    float-to-int v7, v7

    add-float/2addr v0, v5

    float-to-int v0, v0

    add-float/2addr v1, v2

    add-float/2addr v1, v4

    float-to-int v1, v1

    invoke-direct {v6, v3, v7, v0, v1}, Landroid/graphics/Rect;-><init>(IIII)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    return-object v6

    :catch_0
    move-exception v1

    sget-boolean v0, Lcom/aide/ui/views/CodeEditText$c;->Bx:Z

    if-eqz v0, :cond_1

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, p3}, Ljava/lang/Integer;-><init>(I)V

    move-wide v2, v8

    move-object v4, p0

    invoke-static/range {v1 .. v7}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v1
.end method

.method public j6(CII)V
    .registers 14

    const-wide v8, -0x5c5c0c143cc61bd8L    # -5.361621889633824E-137

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/views/CodeEditText$c;->Jm:Z

    if-eqz v0, :cond_0

    new-instance v3, Ljava/lang/Character;

    invoke-direct {v3, p1}, Ljava/lang/Character;-><init>(C)V

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, p2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p3}, Ljava/lang/Integer;-><init>(I)V

    const-wide v0, -0x5c5c0c143cc61bd8L    # -5.361621889633824E-137

    move-object v2, p0

    invoke-static/range {v0 .. v5}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    invoke-direct {p0}, Lcom/aide/ui/views/CodeEditText$c;->getCodeEditTextEditorModel()Lcom/aide/ui/views/CodeEditText$a;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/aide/ui/views/CodeEditText$a;->j6(CII)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v1

    sget-boolean v0, Lcom/aide/ui/views/CodeEditText$c;->Bx:Z

    if-eqz v0, :cond_1

    new-instance v5, Ljava/lang/Character;

    invoke-direct {v5, p1}, Ljava/lang/Character;-><init>(C)V

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, p3}, Ljava/lang/Integer;-><init>(I)V

    move-wide v2, v8

    move-object v4, p0

    invoke-static/range {v1 .. v7}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v1
.end method

.method public onCheckIsTextEditor()Z
    .registers 5

    const-wide v2, 0x5c4588196c857e97L    # 3.1300056501861247E136

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/views/CodeEditText$c;->Jm:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x5c4588196c857e97L    # 3.1300056501861247E136

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    const/4 v0, 0x1

    return v0

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/views/CodeEditText$c;->Bx:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;
    .registers 6

    const-wide v2, 0x9735ce5232d2280L

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/views/CodeEditText$c;->Jm:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x9735ce5232d2280L

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/aide/common/g;->Ws(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    const v0, 0x50000001

    iput v0, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    const v0, 0x20091

    iput v0, p1, Landroid/view/inputmethod/EditorInfo;->inputType:I

    :goto_0
    iget-object v0, p0, Lcom/aide/ui/views/CodeEditText$c;->PH:Lcom/aide/ui/views/CodeEditText;

    invoke-virtual {v0}, Lcom/aide/ui/views/CodeEditText;->getKeyStrokeDetector()Lcom/aide/common/KeyStrokeDetector;

    move-result-object v0

    iget-object v1, p0, Lcom/aide/ui/views/CodeEditText$c;->hp:Lcom/aide/common/KeyStrokeDetector$a;

    invoke-virtual {v0, p0, v1}, Lcom/aide/common/KeyStrokeDetector;->j6(Landroid/view/View;Lcom/aide/common/KeyStrokeDetector$a;)Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    return-object v0

    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/aide/common/g;->J8(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/high16 v0, 0x50000000

    iput v0, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    const/4 v0, 0x1

    iput v0, p1, Landroid/view/inputmethod/EditorInfo;->inputType:I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/views/CodeEditText$c;->Bx:Z

    if-eqz v1, :cond_2

    invoke-static {v0, v2, v3, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_2
    throw v0

    :cond_3
    :try_start_1
    invoke-static {}, Lcom/aide/common/g;->j6()Z

    move-result v0

    if-eqz v0, :cond_4

    const v0, 0x50000001

    iput v0, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    const/4 v0, 0x1

    iput v0, p1, Landroid/view/inputmethod/EditorInfo;->inputType:I

    goto :goto_0

    :cond_4
    const v0, 0x50000001

    iput v0, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 10

    const-wide v2, 0x5fb2c79782e8590L

    const/4 v0, 0x1

    :try_start_0
    sget-boolean v1, Lcom/aide/ui/views/CodeEditText$c;->Jm:Z

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p1}, Ljava/lang/Integer;-><init>(I)V

    const-wide v4, 0x5fb2c79782e8590L

    invoke-static {v4, v5, p0, v1, p2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/aide/ui/views/CodeEditText$c;->PH:Lcom/aide/ui/views/CodeEditText;

    invoke-virtual {v1}, Lcom/aide/ui/views/CodeEditText;->getKeyStrokeDetector()Lcom/aide/common/KeyStrokeDetector;

    move-result-object v1

    iget-object v4, p0, Lcom/aide/ui/views/CodeEditText$c;->hp:Lcom/aide/common/KeyStrokeDetector$a;

    invoke-virtual {v1, p1, p2, v4}, Lcom/aide/common/KeyStrokeDetector;->j6(ILandroid/view/KeyEvent;Lcom/aide/common/KeyStrokeDetector$a;)Z

    move-result v1

    if-eqz v1, :cond_1

    :goto_0
    return v0

    :cond_1
    invoke-super {p0, p1, p2}, Landroid/view/View;->onKeyDown(ILandroid/view/KeyEvent;)Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    move-result v0

    goto :goto_0

    :catch_0
    move-exception v1

    :try_start_2
    invoke-static {v1}, Lcom/aide/common/AIDELog;->e2(Ljava/lang/Throwable;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    :catch_1
    move-exception v1

    sget-boolean v0, Lcom/aide/ui/views/CodeEditText$c;->Bx:Z

    if-eqz v0, :cond_2

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p1}, Ljava/lang/Integer;-><init>(I)V

    move-object v4, p0

    move-object v6, p2

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_2
    throw v1
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .registers 10

    const-wide v2, -0x5a5f4a27f2bcd211L    # -1.928576256955178E-127

    const/4 v0, 0x1

    :try_start_0
    sget-boolean v1, Lcom/aide/ui/views/CodeEditText$c;->Jm:Z

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p1}, Ljava/lang/Integer;-><init>(I)V

    const-wide v4, -0x5a5f4a27f2bcd211L    # -1.928576256955178E-127

    invoke-static {v4, v5, p0, v1, p2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    :cond_0
    const/4 v1, 0x4

    if-ne p1, v1, :cond_2

    :try_start_1
    iget-object v1, p0, Lcom/aide/ui/views/CodeEditText$c;->PH:Lcom/aide/ui/views/CodeEditText;

    invoke-virtual {v1}, Lcom/aide/ui/views/CodeEditText;->Hw()Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    :goto_0
    return v0

    :cond_2
    iget-object v1, p0, Lcom/aide/ui/views/CodeEditText$c;->PH:Lcom/aide/ui/views/CodeEditText;

    invoke-virtual {v1}, Lcom/aide/ui/views/CodeEditText;->getKeyStrokeDetector()Lcom/aide/common/KeyStrokeDetector;

    move-result-object v1

    iget-object v4, p0, Lcom/aide/ui/views/CodeEditText$c;->hp:Lcom/aide/common/KeyStrokeDetector$a;

    invoke-virtual {v1, p1, p2, v4}, Lcom/aide/common/KeyStrokeDetector;->DW(ILandroid/view/KeyEvent;Lcom/aide/common/KeyStrokeDetector$a;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-super {p0, p1, p2}, Landroid/view/View;->onKeyUp(ILandroid/view/KeyEvent;)Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    move-result v0

    goto :goto_0

    :catch_0
    move-exception v1

    :try_start_2
    invoke-static {v1}, Lcom/aide/common/AIDELog;->e2(Ljava/lang/Throwable;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    :catch_1
    move-exception v1

    sget-boolean v0, Lcom/aide/ui/views/CodeEditText$c;->Bx:Z

    if-eqz v0, :cond_3

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p1}, Ljava/lang/Integer;-><init>(I)V

    move-object v4, p0

    move-object v6, p2

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_3
    throw v1
.end method

.method protected onMeasure(II)V
    .registers 10
    .annotation runtime Labcd/su;
        method = 0xa4b91f81626fe71L
    .end annotation

    const-wide v2, -0xb128dcaa6296375L

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/views/CodeEditText$c;->Jm:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p2}, Ljava/lang/Integer;-><init>(I)V

    const-wide v4, -0xb128dcaa6296375L

    invoke-static {v4, v5, p0, v0, v1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/aide/ui/views/editor/OConsole;->onMeasure(II)V

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Display;->getWidth()I

    move-result v1

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    iget-object v5, p0, Lcom/aide/ui/views/CodeEditText$c;->PH:Lcom/aide/ui/views/CodeEditText;

    invoke-virtual {v5}, Lcom/aide/ui/views/CodeEditText;->getTextPaddingRight()I

    move-result v5

    add-int/2addr v4, v5

    invoke-static {v4, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    iget-object v4, p0, Lcom/aide/ui/views/CodeEditText$c;->PH:Lcom/aide/ui/views/CodeEditText;

    invoke-virtual {v4}, Lcom/aide/ui/views/CodeEditText;->DW()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    add-int/2addr v0, v4

    invoke-virtual {p0, v1, v0}, Landroid/view/View;->setMeasuredDimension(II)V

    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    invoke-static {v4, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-virtual {p0, v1, v0}, Landroid/view/View;->setMeasuredDimension(II)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    sget-boolean v0, Lcom/aide/ui/views/CodeEditText$c;->Bx:Z

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

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .registers 12
    .annotation runtime Labcd/su;
        method = 0x55751a6dfbae2f7L
    .end annotation

    const-wide v8, 0x1f7b37855b0dfbdL

    :try_start_0
    sget-boolean v2, Lcom/aide/ui/views/CodeEditText$c;->Jm:Z

    if-eqz v2, :cond_0

    const-wide v2, 0x1f7b37855b0dfbdL

    invoke-static {v2, v3, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    instance-of v2, p1, Landroid/os/Bundle;

    if-eqz v2, :cond_1

    move-object v0, p1

    check-cast v0, Landroid/os/Bundle;

    move-object v2, v0

    const-string v3, "instanceState"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    invoke-super {p0, v3}, Landroid/view/View;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    const-string v3, "selStartLine"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    const-string v4, "selStartColumn"

    invoke-virtual {v2, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    const-string v5, "selEndLine"

    invoke-virtual {v2, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    const-string v6, "selEndColumn"

    invoke-virtual {v2, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {p0, v3, v4, v5, v6}, Lcom/aide/ui/views/CodeEditText$c;->Hw(IIII)V

    const-string v3, "fontSize"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v2

    invoke-virtual {p0, v2}, Lcom/aide/ui/views/editor/OConsole;->setFontSize(F)V

    :goto_0
    return-void

    :cond_1
    invoke-super {p0, p1}, Landroid/view/View;->onRestoreInstanceState(Landroid/os/Parcelable;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/views/CodeEditText$c;->Bx:Z

    if-eqz v3, :cond_2

    invoke-static {v2, v8, v9, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_2
    throw v2
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .registers 7
    .annotation runtime Labcd/su;
        method = 0x187bfa32f8e92d50L
    .end annotation

    const-wide v4, 0x3ccdc7a870739b74L    # 8.265586528888209E-16

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/views/CodeEditText$c;->Jm:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x3ccdc7a870739b74L    # 8.265586528888209E-16

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "instanceState"

    invoke-super {p0}, Landroid/view/View;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string v1, "selStartLine"

    iget-object v2, p0, Lcom/aide/ui/views/CodeEditText$c;->PH:Lcom/aide/ui/views/CodeEditText;

    invoke-virtual {v2}, Lcom/aide/ui/views/CodeEditText;->getSelectionStartLine()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "selStartColumn"

    iget-object v2, p0, Lcom/aide/ui/views/CodeEditText$c;->PH:Lcom/aide/ui/views/CodeEditText;

    invoke-virtual {v2}, Lcom/aide/ui/views/CodeEditText;->getSelectionStartColumn()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "selEndLine"

    iget-object v2, p0, Lcom/aide/ui/views/CodeEditText$c;->PH:Lcom/aide/ui/views/CodeEditText;

    invoke-virtual {v2}, Lcom/aide/ui/views/CodeEditText;->getSelectionEndLine()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "selEndColumn"

    iget-object v2, p0, Lcom/aide/ui/views/CodeEditText$c;->PH:Lcom/aide/ui/views/CodeEditText;

    invoke-virtual {v2}, Lcom/aide/ui/views/CodeEditText;->getSelectionEndColumn()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "fontSize"

    invoke-virtual {p0}, Lcom/aide/ui/views/editor/OConsole;->getFontSize()F

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/views/CodeEditText$c;->Bx:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v4, v5, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 11

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v0, 0x0

    const/4 v6, 0x1

    const/4 v5, -0x1

    :try_start_0
    sget-boolean v1, Lcom/aide/ui/views/CodeEditText$c;->Jm:Z

    if-eqz v1, :cond_0

    const-wide v2, -0x992ab5402346d48L

    invoke-static {v2, v3, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lcom/aide/ui/views/editor/OConsole;->we()Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    :goto_0
    return v6

    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    iput v1, p0, Lcom/aide/ui/views/CodeEditText$c;->TI:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    iput v1, p0, Lcom/aide/ui/views/CodeEditText$c;->ct:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    invoke-static {p1}, Lcom/aide/common/g;->j6(Landroid/view/MotionEvent;)Z

    move-result v1

    iget-object v2, p0, Lcom/aide/ui/views/CodeEditText$c;->PH:Lcom/aide/ui/views/CodeEditText;

    invoke-virtual {v2}, Lcom/aide/ui/views/CodeEditText;->getKeyStrokeDetector()Lcom/aide/common/KeyStrokeDetector;

    move-result-object v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/aide/ui/views/CodeEditText$c;->PH:Lcom/aide/ui/views/CodeEditText;

    invoke-virtual {v2}, Lcom/aide/ui/views/CodeEditText;->getKeyStrokeDetector()Lcom/aide/common/KeyStrokeDetector;

    move-result-object v2

    invoke-virtual {v2}, Lcom/aide/common/KeyStrokeDetector;->j6()Z

    move-result v2

    if-eqz v2, :cond_3

    move v0, v6

    :cond_3
    iget v2, p0, Lcom/aide/ui/views/CodeEditText$c;->TI:F

    iget v4, p0, Lcom/aide/ui/views/editor/OConsole;->Cz:F

    cmpg-float v2, v2, v4

    if-gez v2, :cond_5

    if-ne v3, v6, :cond_1

    iget v0, p0, Lcom/aide/ui/views/CodeEditText$c;->TI:F

    iget v1, p0, Lcom/aide/ui/views/CodeEditText$c;->ct:F

    invoke-direct {p0, v0, v1}, Lcom/aide/ui/views/CodeEditText$c;->v5(FF)I

    move-result v0

    iget-object v1, p0, Lcom/aide/ui/views/CodeEditText$c;->PH:Lcom/aide/ui/views/CodeEditText;

    invoke-virtual {v1, v0}, Lcom/aide/ui/views/CodeEditText;->DW(I)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_2
    invoke-static {v0}, Lcom/aide/common/AIDELog;->e2(Ljava/lang/Throwable;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/views/CodeEditText$c;->Bx:Z

    if-eqz v1, :cond_4

    const-wide v2, -0x992ab5402346d48L

    invoke-static {v0, v2, v3, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_4
    throw v0

    :cond_5
    :try_start_3
    iget-object v2, p0, Lcom/aide/ui/views/CodeEditText$c;->PH:Lcom/aide/ui/views/CodeEditText;

    invoke-static {v2}, Lcom/aide/ui/views/CodeEditText;->VH(Lcom/aide/ui/views/CodeEditText;)Z

    move-result v2

    if-nez v2, :cond_6

    if-eqz v0, :cond_7

    :cond_6
    iget v0, p0, Lcom/aide/ui/views/CodeEditText$c;->TI:F

    iget v1, p0, Lcom/aide/ui/views/CodeEditText$c;->ct:F

    invoke-direct {p0, v0, v1}, Lcom/aide/ui/views/CodeEditText$c;->v5(FF)I

    move-result v1

    iget v0, p0, Lcom/aide/ui/views/CodeEditText$c;->TI:F

    iget v2, p0, Lcom/aide/ui/views/CodeEditText$c;->ct:F

    invoke-direct {p0, v0, v2}, Lcom/aide/ui/views/CodeEditText$c;->Hw(FF)I

    move-result v0

    iget-object v2, p0, Lcom/aide/ui/views/CodeEditText$c;->PH:Lcom/aide/ui/views/CodeEditText;

    invoke-virtual {v2, v1, v0}, Lcom/aide/ui/views/CodeEditText;->Hw(II)I

    move-result v2

    if-nez v3, :cond_e

    invoke-direct {p0}, Lcom/aide/ui/views/CodeEditText$c;->SI()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/aide/ui/views/CodeEditText$c;->PT:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/aide/ui/views/CodeEditText$c;->Of:I

    if-eq v2, v5, :cond_1

    iput v2, p0, Lcom/aide/ui/views/CodeEditText$c;->Of:I

    iput v1, p0, Lcom/aide/ui/views/CodeEditText$c;->PT:I

    invoke-direct {p0}, Lcom/aide/ui/views/CodeEditText$c;->getCodeEditTextEditorModel()Lcom/aide/ui/views/CodeEditText$a;

    move-result-object v0

    add-int/lit8 v3, v1, -0x1

    add-int/lit8 v4, v2, -0x1

    iget-object v5, p0, Lcom/aide/ui/views/CodeEditText$c;->PH:Lcom/aide/ui/views/CodeEditText;

    invoke-virtual {v5, v1, v2}, Lcom/aide/ui/views/CodeEditText;->FH(II)I

    move-result v1

    add-int/lit8 v1, v1, -0x2

    invoke-virtual {v0, v3, v4, v1}, Lcom/aide/ui/views/CodeEditText$a;->DW(III)V

    goto/16 :goto_0

    :cond_7
    if-eqz v1, :cond_b

    invoke-static {p1}, Lcom/aide/common/g;->DW(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_8

    iget v0, p0, Lcom/aide/ui/views/CodeEditText$c;->TI:F

    iget v1, p0, Lcom/aide/ui/views/CodeEditText$c;->ct:F

    invoke-direct {p0, v0, v1}, Lcom/aide/ui/views/CodeEditText$c;->v5(FF)I

    move-result v1

    iget v0, p0, Lcom/aide/ui/views/CodeEditText$c;->TI:F

    iget v2, p0, Lcom/aide/ui/views/CodeEditText$c;->ct:F

    invoke-direct {p0, v0, v2}, Lcom/aide/ui/views/CodeEditText$c;->Hw(FF)I

    move-result v2

    if-ltz v1, :cond_1

    iget-object v0, p0, Lcom/aide/ui/views/CodeEditText$c;->PH:Lcom/aide/ui/views/CodeEditText;

    iget-object v3, p0, Lcom/aide/ui/views/CodeEditText$c;->PH:Lcom/aide/ui/views/CodeEditText;

    invoke-static {v3}, Lcom/aide/ui/views/CodeEditText;->j6(Lcom/aide/ui/views/CodeEditText;)Ljava/util/List;

    move-result-object v5

    move v3, v1

    move v4, v2

    invoke-static/range {v0 .. v5}, Lcom/aide/ui/views/CodeEditText;->j6(Lcom/aide/ui/views/CodeEditText;IIIILjava/util/List;)V

    goto/16 :goto_0

    :cond_8
    if-nez v3, :cond_9

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/aide/ui/views/CodeEditText$c;->E4:Z

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/aide/ui/views/CodeEditText$c;->Fd:J

    iget v0, p0, Lcom/aide/ui/views/CodeEditText$c;->TI:F

    iput v0, p0, Lcom/aide/ui/views/CodeEditText$c;->Lz:F

    iget v0, p0, Lcom/aide/ui/views/CodeEditText$c;->ct:F

    iput v0, p0, Lcom/aide/ui/views/CodeEditText$c;->sT:F

    iget v0, p0, Lcom/aide/ui/views/CodeEditText$c;->TI:F

    iget v1, p0, Lcom/aide/ui/views/CodeEditText$c;->ct:F

    invoke-direct {p0, v0, v1}, Lcom/aide/ui/views/CodeEditText$c;->v5(FF)I

    move-result v1

    iget v0, p0, Lcom/aide/ui/views/CodeEditText$c;->TI:F

    iget v2, p0, Lcom/aide/ui/views/CodeEditText$c;->ct:F

    invoke-direct {p0, v0, v2}, Lcom/aide/ui/views/CodeEditText$c;->Hw(FF)I

    move-result v2

    if-ltz v1, :cond_1

    iget-object v0, p0, Lcom/aide/ui/views/CodeEditText$c;->PH:Lcom/aide/ui/views/CodeEditText;

    iget-object v3, p0, Lcom/aide/ui/views/CodeEditText$c;->PH:Lcom/aide/ui/views/CodeEditText;

    invoke-static {v3}, Lcom/aide/ui/views/CodeEditText;->DW(Lcom/aide/ui/views/CodeEditText;)Ljava/util/List;

    move-result-object v5

    move v3, v1

    move v4, v2

    invoke-static/range {v0 .. v5}, Lcom/aide/ui/views/CodeEditText;->j6(Lcom/aide/ui/views/CodeEditText;IIIILjava/util/List;)V

    goto/16 :goto_0

    :cond_9
    if-ne v3, v7, :cond_1

    iget-boolean v0, p0, Lcom/aide/ui/views/CodeEditText$c;->E4:Z

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/aide/ui/views/CodeEditText$c;->TI:F

    iget v1, p0, Lcom/aide/ui/views/CodeEditText$c;->ct:F

    invoke-direct {p0, v0, v1}, Lcom/aide/ui/views/CodeEditText$c;->v5(FF)I

    move-result v1

    iget v0, p0, Lcom/aide/ui/views/CodeEditText$c;->TI:F

    iget v2, p0, Lcom/aide/ui/views/CodeEditText$c;->ct:F

    invoke-direct {p0, v0, v2}, Lcom/aide/ui/views/CodeEditText$c;->Hw(FF)I

    move-result v2

    iget v0, p0, Lcom/aide/ui/views/CodeEditText$c;->Lz:F

    iget v3, p0, Lcom/aide/ui/views/CodeEditText$c;->sT:F

    invoke-direct {p0, v0, v3}, Lcom/aide/ui/views/CodeEditText$c;->v5(FF)I

    move-result v3

    iget v0, p0, Lcom/aide/ui/views/CodeEditText$c;->Lz:F

    iget v4, p0, Lcom/aide/ui/views/CodeEditText$c;->sT:F

    invoke-direct {p0, v0, v4}, Lcom/aide/ui/views/CodeEditText$c;->Hw(FF)I

    move-result v4

    if-ltz v3, :cond_1

    if-ltz v1, :cond_1

    if-ne v1, v3, :cond_a

    if-eq v2, v4, :cond_1

    :cond_a
    iget-object v0, p0, Lcom/aide/ui/views/CodeEditText$c;->PH:Lcom/aide/ui/views/CodeEditText;

    iget-object v5, p0, Lcom/aide/ui/views/CodeEditText$c;->PH:Lcom/aide/ui/views/CodeEditText;

    invoke-static {v5}, Lcom/aide/ui/views/CodeEditText;->FH(Lcom/aide/ui/views/CodeEditText;)Ljava/util/List;

    move-result-object v5

    invoke-static/range {v0 .. v5}, Lcom/aide/ui/views/CodeEditText;->j6(Lcom/aide/ui/views/CodeEditText;IIIILjava/util/List;)V

    goto/16 :goto_0

    :cond_b
    if-nez v3, :cond_c

    invoke-direct {p0}, Lcom/aide/ui/views/CodeEditText$c;->SI()V

    goto/16 :goto_0

    :cond_c
    if-eq v3, v7, :cond_1

    if-ne v3, v8, :cond_d

    invoke-direct {p0}, Lcom/aide/ui/views/CodeEditText$c;->KD()V

    goto/16 :goto_0

    :cond_d
    if-ne v3, v6, :cond_1

    invoke-direct {p0}, Lcom/aide/ui/views/CodeEditText$c;->KD()V

    iget-boolean v0, p0, Lcom/aide/ui/views/CodeEditText$c;->AR:Z

    if-nez v0, :cond_1

    iget v0, p0, Lcom/aide/ui/views/CodeEditText$c;->TI:F

    iget v1, p0, Lcom/aide/ui/views/CodeEditText$c;->ct:F

    invoke-direct {p0, v0, v1}, Lcom/aide/ui/views/CodeEditText$c;->v5(FF)I

    move-result v1

    iget v0, p0, Lcom/aide/ui/views/CodeEditText$c;->TI:F

    iget v2, p0, Lcom/aide/ui/views/CodeEditText$c;->ct:F

    invoke-direct {p0, v0, v2}, Lcom/aide/ui/views/CodeEditText$c;->Hw(FF)I

    move-result v2

    if-ltz v1, :cond_1

    iget-object v0, p0, Lcom/aide/ui/views/CodeEditText$c;->PH:Lcom/aide/ui/views/CodeEditText;

    invoke-virtual {v0}, Lcom/aide/ui/views/CodeEditText;->getKeyStrokeDetector()Lcom/aide/common/KeyStrokeDetector;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aide/common/KeyStrokeDetector;->DW()V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/View;->playSoundEffect(I)V

    iget-object v0, p0, Lcom/aide/ui/views/CodeEditText$c;->PH:Lcom/aide/ui/views/CodeEditText;

    iget-object v3, p0, Lcom/aide/ui/views/CodeEditText$c;->PH:Lcom/aide/ui/views/CodeEditText;

    invoke-static {v3}, Lcom/aide/ui/views/CodeEditText;->Hw(Lcom/aide/ui/views/CodeEditText;)Ljava/util/List;

    move-result-object v5

    move v3, v1

    move v4, v2

    invoke-static/range {v0 .. v5}, Lcom/aide/ui/views/CodeEditText;->j6(Lcom/aide/ui/views/CodeEditText;IIIILjava/util/List;)V

    goto/16 :goto_0

    :cond_e
    if-ne v3, v7, :cond_10

    iget v0, p0, Lcom/aide/ui/views/CodeEditText$c;->Of:I

    if-eq v0, v5, :cond_1

    iget v0, p0, Lcom/aide/ui/views/CodeEditText$c;->Of:I

    if-ne v2, v0, :cond_f

    iget v0, p0, Lcom/aide/ui/views/CodeEditText$c;->PT:I

    if-eq v1, v0, :cond_1

    :cond_f
    const/4 v0, -0x1

    iput v0, p0, Lcom/aide/ui/views/CodeEditText$c;->PT:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/aide/ui/views/CodeEditText$c;->Of:I

    invoke-direct {p0}, Lcom/aide/ui/views/CodeEditText$c;->getCodeEditTextEditorModel()Lcom/aide/ui/views/CodeEditText$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aide/ui/views/CodeEditText$a;->vy()V

    goto/16 :goto_0

    :cond_10
    if-ne v3, v8, :cond_11

    invoke-direct {p0}, Lcom/aide/ui/views/CodeEditText$c;->KD()V

    iget v0, p0, Lcom/aide/ui/views/CodeEditText$c;->Of:I

    if-eq v0, v5, :cond_1

    const/4 v0, -0x1

    iput v0, p0, Lcom/aide/ui/views/CodeEditText$c;->PT:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/aide/ui/views/CodeEditText$c;->Of:I

    invoke-direct {p0}, Lcom/aide/ui/views/CodeEditText$c;->getCodeEditTextEditorModel()Lcom/aide/ui/views/CodeEditText$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aide/ui/views/CodeEditText$a;->vy()V

    goto/16 :goto_0

    :cond_11
    if-ne v3, v6, :cond_1

    invoke-direct {p0}, Lcom/aide/ui/views/CodeEditText$c;->KD()V

    iget v0, p0, Lcom/aide/ui/views/CodeEditText$c;->Of:I

    if-eq v0, v5, :cond_1

    iget-boolean v0, p0, Lcom/aide/ui/views/CodeEditText$c;->AR:Z

    if-nez v0, :cond_12

    iget v0, p0, Lcom/aide/ui/views/CodeEditText$c;->Of:I

    if-ne v2, v0, :cond_12

    iget v0, p0, Lcom/aide/ui/views/CodeEditText$c;->PT:I

    if-ne v1, v0, :cond_12

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/View;->playSoundEffect(I)V

    const/4 v0, 0x1

    const/4 v3, 0x1

    invoke-virtual {p0, v0, v3}, Landroid/view/View;->performHapticFeedback(II)Z

    iget-object v0, p0, Lcom/aide/ui/views/CodeEditText$c;->PH:Lcom/aide/ui/views/CodeEditText;

    iget-object v3, p0, Lcom/aide/ui/views/CodeEditText$c;->PH:Lcom/aide/ui/views/CodeEditText;

    invoke-virtual {v3, v1, v2}, Lcom/aide/ui/views/CodeEditText;->FH(II)I

    move-result v4

    iget-object v3, p0, Lcom/aide/ui/views/CodeEditText$c;->PH:Lcom/aide/ui/views/CodeEditText;

    invoke-static {v3}, Lcom/aide/ui/views/CodeEditText;->gn(Lcom/aide/ui/views/CodeEditText;)Ljava/util/List;

    move-result-object v5

    move v3, v1

    invoke-static/range {v0 .. v5}, Lcom/aide/ui/views/CodeEditText;->j6(Lcom/aide/ui/views/CodeEditText;IIIILjava/util/List;)V

    :cond_12
    const/4 v0, -0x1

    iput v0, p0, Lcom/aide/ui/views/CodeEditText$c;->PT:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/aide/ui/views/CodeEditText$c;->Of:I

    invoke-direct {p0}, Lcom/aide/ui/views/CodeEditText$c;->getCodeEditTextEditorModel()Lcom/aide/ui/views/CodeEditText$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aide/ui/views/CodeEditText$a;->vy()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_0
.end method

.method public setShowCaretLine(Z)V
    .registers 6

    const-wide v2, 0x43a4ccb337948307L    # 7.4938491365186035E17

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/views/CodeEditText$c;->Jm:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x43a4ccb337948307L    # 7.4938491365186035E17

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Z)V

    :cond_0
    iput-boolean p1, p0, Lcom/aide/ui/views/CodeEditText$c;->xg:Z

    invoke-virtual {p0}, Lcom/aide/ui/views/CodeEditText$c;->Hw()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/views/CodeEditText$c;->Bx:Z

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/Boolean;

    invoke-direct {v1, p1}, Ljava/lang/Boolean;-><init>(Z)V

    invoke-static {v0, v2, v3, p0, v1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public u7(II)V
    .registers 10

    const-wide v2, 0x2374aff6cdd65ad4L    # 6.948755966471727E-138

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/views/CodeEditText$c;->Jm:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p2}, Ljava/lang/Integer;-><init>(I)V

    const-wide v4, 0x2374aff6cdd65ad4L    # 6.948755966471727E-138

    invoke-static {v4, v5, p0, v0, v1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    invoke-direct {p0}, Lcom/aide/ui/views/CodeEditText$c;->getCodeEditTextEditorModel()Lcom/aide/ui/views/CodeEditText$a;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/aide/ui/views/CodeEditText$a;->Ws(II)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-super {p0, p1, p2}, Lcom/aide/ui/views/editor/OEditor;->u7(II)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    return-void

    :catch_0
    move-exception v1

    sget-boolean v0, Lcom/aide/ui/views/CodeEditText$c;->Bx:Z

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
