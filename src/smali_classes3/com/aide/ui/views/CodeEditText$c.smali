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
    .registers 3

    const-class v0, Lcom/aide/ui/views/CodeEditText$c;

    const-wide v1, 0x20bc34faa8da3f57L  # 5.385652283143974E-151

    invoke-static {v0, v1, v2, v1, v2}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method public constructor <init>(Lcom/aide/ui/views/CodeEditText;Landroid/content/Context;)V
    .registers 10

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/views/CodeEditText$c;->Jm:Z

    if-eqz v0, :cond_d

    const-wide v0, 0xff0ed2f29414d88L  # 6.814131891611785E-232

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, p1, p2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_d
    iput-object p1, p0, Lcom/aide/ui/views/CodeEditText$c;->PH:Lcom/aide/ui/views/CodeEditText;

    invoke-direct {p0, p2}, Lcom/aide/ui/views/editor/OEditor;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/aide/ui/views/CodeEditText$c;->xg:Z

    new-instance v0, Lcom/aide/ui/views/d;

    invoke-direct {v0, p0}, Lcom/aide/ui/views/d;-><init>(Lcom/aide/ui/views/CodeEditText$c;)V

    iput-object v0, p0, Lcom/aide/ui/views/CodeEditText$c;->hp:Lcom/aide/common/KeyStrokeDetector$a;

    iput-object p2, p0, Lcom/aide/ui/views/CodeEditText$c;->context:Landroid/content/Context;

    invoke-direct {p0}, Lcom/aide/ui/views/CodeEditText$c;->nw()V
    :try_end_21
    .catchall {:try_start_0 .. :try_end_21} :catchall_22

    return-void

    :catchall_22
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/views/CodeEditText$c;->Bx:Z

    if-eqz v1, :cond_33

    const-wide v2, 0xff0ed2f29414d88L  # 6.814131891611785E-232

    const/4 v4, 0x0

    move-object v1, v0

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_33
    throw v0
.end method

.method static synthetic DW(Lcom/aide/ui/views/CodeEditText$c;)F
    .registers 1

    iget p0, p0, Lcom/aide/ui/views/CodeEditText$c;->TI:F

    return p0
.end method

.method static synthetic DW(Lcom/aide/ui/views/CodeEditText$c;FF)I
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/aide/ui/views/CodeEditText$c;->Hw(FF)I

    move-result p0

    return p0
.end method

.method static synthetic DW(Lcom/aide/ui/views/CodeEditText$c;II)I
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/aide/ui/views/CodeEditText$c;->we(II)I

    move-result p0

    return p0
.end method

.method static synthetic FH(Lcom/aide/ui/views/CodeEditText$c;)F
    .registers 1

    iget p0, p0, Lcom/aide/ui/views/CodeEditText$c;->ct:F

    return p0
.end method

.method private Hw(FF)I
    .registers 10
    .annotation runtime Labcd/su;
        method = 0x2c2e9ff060cf8cdL
    .end annotation

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/views/CodeEditText$c;->Jm:Z

    if-eqz v0, :cond_16

    new-instance v0, Ljava/lang/Float;

    invoke-direct {v0, p1}, Ljava/lang/Float;-><init>(F)V

    new-instance v1, Ljava/lang/Float;

    invoke-direct {v1, p2}, Ljava/lang/Float;-><init>(F)V

    const-wide v2, 0xb857c1cd68d7cffL

    invoke-static {v2, v3, p0, v0, v1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_16
    invoke-virtual {p0, p1, p2}, Lcom/aide/ui/views/editor/OConsole;->DW(FF)I

    move-result p1
    :try_end_1a
    .catchall {:try_start_0 .. :try_end_1a} :catchall_1d

    add-int/lit8 p1, p1, 0x1

    return p1

    :catchall_1d
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/views/CodeEditText$c;->Bx:Z

    if-eqz v1, :cond_36

    const-wide v2, 0xb857c1cd68d7cffL

    new-instance v5, Ljava/lang/Float;

    invoke-direct {v5, p1}, Ljava/lang/Float;-><init>(F)V

    new-instance v6, Ljava/lang/Float;

    invoke-direct {v6, p2}, Ljava/lang/Float;-><init>(F)V

    move-object v1, v0

    move-object v4, p0

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_36
    throw v0
.end method

.method private J0(II)I
    .registers 10
    .annotation runtime Labcd/su;
        method = -0xe1bfd161d367748L
    .end annotation

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/views/CodeEditText$c;->Jm:Z

    if-eqz v0, :cond_16

    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p2}, Ljava/lang/Integer;-><init>(I)V

    const-wide v2, 0x225bce379e60cafcL  # 3.562815611225845E-143

    invoke-static {v2, v3, p0, v0, v1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_16
    iget-object v0, p0, Lcom/aide/ui/views/CodeEditText$c;->PH:Lcom/aide/ui/views/CodeEditText;

    invoke-virtual {v0, p1, p2}, Lcom/aide/ui/views/CodeEditText;->Hw(II)I

    move-result p1
    :try_end_1c
    .catchall {:try_start_0 .. :try_end_1c} :catchall_20

    if-lez p1, :cond_1f

    return p1

    :cond_1f
    return p2

    :catchall_20
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/views/CodeEditText$c;->Bx:Z

    if-eqz v1, :cond_39

    const-wide v2, 0x225bce379e60cafcL  # 3.562815611225845E-143

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    move-object v1, v0

    move-object v4, p0

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_39
    throw v0
.end method

.method private KD()V
    .registers 5
    .annotation runtime Labcd/su;
        method = -0x866bd5a69149c00L
    .end annotation

    const-wide v0, -0x56169001d870b8L

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/views/CodeEditText$c;->Jm:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    iget-object v2, p0, Lcom/aide/ui/views/CodeEditText$c;->b1:Ljava/lang/Runnable;

    if-eqz v2, :cond_16

    invoke-virtual {p0, v2}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/aide/ui/views/CodeEditText$c;->b1:Ljava/lang/Runnable;
    :try_end_16
    .catchall {:try_start_5 .. :try_end_16} :catchall_17

    :cond_16
    return-void

    :catchall_17
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/views/CodeEditText$c;->Bx:Z

    if-eqz v3, :cond_1f

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1f
    throw v2
.end method

.method private SI()V
    .registers 6
    .annotation runtime Labcd/su;
        method = -0x62f7012aceef76abL
    .end annotation

    const-wide v0, -0x151eabc6256b0bc1L  # -6.954417111129933E206

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/views/CodeEditText$c;->Jm:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/aide/ui/views/CodeEditText$c;->AR:Z

    iget-object v2, p0, Lcom/aide/ui/views/CodeEditText$c;->b1:Ljava/lang/Runnable;

    if-nez v2, :cond_1a

    new-instance v2, Lcom/aide/ui/views/e;

    invoke-direct {v2, p0}, Lcom/aide/ui/views/e;-><init>(Lcom/aide/ui/views/CodeEditText$c;)V

    iput-object v2, p0, Lcom/aide/ui/views/CodeEditText$c;->b1:Ljava/lang/Runnable;

    :cond_1a
    iget-object v2, p0, Lcom/aide/ui/views/CodeEditText$c;->b1:Ljava/lang/Runnable;

    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v3

    int-to-long v3, v3

    invoke-virtual {p0, v2, v3, v4}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_24
    .catchall {:try_start_5 .. :try_end_24} :catchall_25

    return-void

    :catchall_25
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/views/CodeEditText$c;->Bx:Z

    if-eqz v3, :cond_2d

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_2d
    throw v2
.end method

.method private getCodeEditTextEditorModel()Lcom/aide/ui/views/CodeEditText$a;
    .registers 5
    .annotation runtime Labcd/su;
        method = -0x1d3909139eb3d630L
    .end annotation

    const-wide v0, -0xcd27016ddf1f07cL  # -6.459256014535606E246

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/views/CodeEditText$c;->Jm:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    invoke-virtual {p0}, Lcom/aide/ui/views/editor/OEditor;->getEditorModel()Lcom/aide/ui/views/editor/g;

    move-result-object v2

    instance-of v3, v2, Lcom/aide/ui/views/CodeEditText$a;

    if-eqz v3, :cond_17

    check-cast v2, Lcom/aide/ui/views/CodeEditText$a;
    :try_end_16
    .catchall {:try_start_5 .. :try_end_16} :catchall_19

    goto :goto_18

    :cond_17
    const/4 v2, 0x0

    :goto_18
    return-object v2

    :catchall_19
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/views/CodeEditText$c;->Bx:Z

    if-eqz v3, :cond_21

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_21
    throw v2
.end method

.method static synthetic j6(Lcom/aide/ui/views/CodeEditText$c;FF)I
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/aide/ui/views/CodeEditText$c;->v5(FF)I

    move-result p0

    return p0
.end method

.method static synthetic j6(Lcom/aide/ui/views/CodeEditText$c;II)I
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/aide/ui/views/CodeEditText$c;->J0(II)I

    move-result p0

    return p0
.end method

.method static synthetic j6(Lcom/aide/ui/views/CodeEditText$c;)Lcom/aide/ui/views/CodeEditText$a;
    .registers 1

    invoke-direct {p0}, Lcom/aide/ui/views/CodeEditText$c;->getCodeEditTextEditorModel()Lcom/aide/ui/views/CodeEditText$a;

    move-result-object p0

    return-object p0
.end method

.method static synthetic j6(Lcom/aide/ui/views/CodeEditText$c;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/aide/ui/views/CodeEditText$c;->AR:Z

    return p1
.end method

.method private nw()V
    .registers 16
    .annotation runtime Labcd/su;
        method = -0x2424e8d23264e48L
    .end annotation

    const-wide v0, -0x12278e07a0e3c6e0L

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/views/CodeEditText$c;->Jm:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Landroid/view/View;->setFocusable(Z)V

    invoke-virtual {p0, v2}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    iget-object v3, p0, Lcom/aide/ui/views/CodeEditText$c;->PH:Lcom/aide/ui/views/CodeEditText;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getNextFocusUpId()I

    move-result v3

    invoke-virtual {p0, v3}, Landroid/view/View;->setNextFocusUpId(I)V

    const v3, 0x75b1f79

    invoke-virtual {p0, v3}, Landroid/view/View;->setId(I)V

    invoke-virtual {p0, v2}, Lcom/aide/ui/views/editor/OConsole;->setCaretVisibility(Z)V

    iget-object v3, p0, Lcom/aide/ui/views/CodeEditText$c;->PH:Lcom/aide/ui/views/CodeEditText;

    invoke-static {v3}, Lcom/aide/ui/views/CodeEditText;->Zo(Lcom/aide/ui/views/CodeEditText;)Ljava/util/List;

    move-result-object v3

    new-instance v4, Lcom/aide/ui/views/CodeEditText$c$a;

    iget-object v5, p0, Lcom/aide/ui/views/CodeEditText$c;->context:Landroid/content/Context;

    const v6, 0x7f0d071c

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lcom/aide/common/u;

    const/16 v7, 0x1f

    const/4 v8, 0x0

    invoke-direct {v6, v7, v8, v2, v8}, Lcom/aide/common/u;-><init>(IZZZ)V

    sget-object v7, Lcom/aide/ui/views/editor/OEditor$c;->g3:Lcom/aide/ui/views/editor/OEditor$c;

    invoke-direct {v4, p0, v5, v6, v7}, Lcom/aide/ui/views/CodeEditText$c$a;-><init>(Lcom/aide/ui/views/CodeEditText$c;Ljava/lang/String;Lcom/aide/common/u;Lcom/aide/ui/views/editor/OEditor$c;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v3, p0, Lcom/aide/ui/views/CodeEditText$c;->PH:Lcom/aide/ui/views/CodeEditText;

    invoke-static {v3}, Lcom/aide/ui/views/CodeEditText;->Zo(Lcom/aide/ui/views/CodeEditText;)Ljava/util/List;

    move-result-object v3

    new-instance v4, Lcom/aide/ui/views/CodeEditText$c$a;

    iget-object v5, p0, Lcom/aide/ui/views/CodeEditText$c;->context:Landroid/content/Context;

    const v6, 0x7f0d075b

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lcom/aide/common/u;

    const/16 v7, 0x1d

    invoke-direct {v6, v7, v8, v2, v8}, Lcom/aide/common/u;-><init>(IZZZ)V

    sget-object v7, Lcom/aide/ui/views/editor/OEditor$c;->P8:Lcom/aide/ui/views/editor/OEditor$c;

    invoke-direct {v4, p0, v5, v6, v7}, Lcom/aide/ui/views/CodeEditText$c$a;-><init>(Lcom/aide/ui/views/CodeEditText$c;Ljava/lang/String;Lcom/aide/common/u;Lcom/aide/ui/views/editor/OEditor$c;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v3, p0, Lcom/aide/ui/views/CodeEditText$c;->PH:Lcom/aide/ui/views/CodeEditText;

    invoke-static {v3}, Lcom/aide/ui/views/CodeEditText;->Zo(Lcom/aide/ui/views/CodeEditText;)Ljava/util/List;

    move-result-object v3

    new-instance v4, Lcom/aide/ui/views/CodeEditText$c$a;

    iget-object v5, p0, Lcom/aide/ui/views/CodeEditText$c;->context:Landroid/content/Context;

    const v6, 0x7f0d0720

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lcom/aide/common/u;

    const/16 v7, 0x43

    invoke-direct {v6, v7, v8, v8, v8}, Lcom/aide/common/u;-><init>(IZZZ)V

    sget-object v9, Lcom/aide/ui/views/editor/OEditor$c;->sh:Lcom/aide/ui/views/editor/OEditor$c;

    invoke-direct {v4, p0, v5, v6, v9}, Lcom/aide/ui/views/CodeEditText$c$a;-><init>(Lcom/aide/ui/views/CodeEditText$c;Ljava/lang/String;Lcom/aide/common/u;Lcom/aide/ui/views/editor/OEditor$c;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v3, p0, Lcom/aide/ui/views/CodeEditText$c;->PH:Lcom/aide/ui/views/CodeEditText;

    invoke-static {v3}, Lcom/aide/ui/views/CodeEditText;->Zo(Lcom/aide/ui/views/CodeEditText;)Ljava/util/List;

    move-result-object v3

    new-instance v4, Lcom/aide/ui/views/CodeEditText$c$a;

    iget-object v5, p0, Lcom/aide/ui/views/CodeEditText$c;->context:Landroid/content/Context;

    const v6, 0x7f0d0721

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lcom/aide/common/u;

    const/16 v9, 0x70

    invoke-direct {v6, v9, v8, v8, v8}, Lcom/aide/common/u;-><init>(IZZZ)V

    sget-object v9, Lcom/aide/ui/views/editor/OEditor$c;->cb:Lcom/aide/ui/views/editor/OEditor$c;

    invoke-direct {v4, p0, v5, v6, v9}, Lcom/aide/ui/views/CodeEditText$c$a;-><init>(Lcom/aide/ui/views/CodeEditText$c;Ljava/lang/String;Lcom/aide/common/u;Lcom/aide/ui/views/editor/OEditor$c;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v3, p0, Lcom/aide/ui/views/CodeEditText$c;->PH:Lcom/aide/ui/views/CodeEditText;

    invoke-static {v3}, Lcom/aide/ui/views/CodeEditText;->Zo(Lcom/aide/ui/views/CodeEditText;)Ljava/util/List;

    move-result-object v3

    new-instance v4, Lcom/aide/ui/views/CodeEditText$c$a;

    iget-object v5, p0, Lcom/aide/ui/views/CodeEditText$c;->context:Landroid/content/Context;

    const v6, 0x7f0d0723

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lcom/aide/common/u;

    invoke-direct {v6, v7, v8, v2, v8}, Lcom/aide/common/u;-><init>(IZZZ)V

    sget-object v7, Lcom/aide/ui/views/editor/OEditor$c;->BT:Lcom/aide/ui/views/editor/OEditor$c;

    invoke-direct {v4, p0, v5, v6, v7}, Lcom/aide/ui/views/CodeEditText$c$a;-><init>(Lcom/aide/ui/views/CodeEditText$c;Ljava/lang/String;Lcom/aide/common/u;Lcom/aide/ui/views/editor/OEditor$c;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v3, p0, Lcom/aide/ui/views/CodeEditText$c;->PH:Lcom/aide/ui/views/CodeEditText;

    invoke-static {v3}, Lcom/aide/ui/views/CodeEditText;->Zo(Lcom/aide/ui/views/CodeEditText;)Ljava/util/List;

    move-result-object v3

    new-instance v4, Lcom/aide/ui/views/CodeEditText$c$a;

    iget-object v5, p0, Lcom/aide/ui/views/CodeEditText$c;->context:Landroid/content/Context;

    const v6, 0x7f0d0737

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lcom/aide/common/u;

    const/16 v7, 0x3d

    invoke-direct {v6, v7, v8, v8, v8}, Lcom/aide/common/u;-><init>(IZZZ)V

    sget-object v7, Lcom/aide/ui/views/editor/OEditor$c;->cn:Lcom/aide/ui/views/editor/OEditor$c;

    invoke-direct {v4, p0, v5, v6, v7}, Lcom/aide/ui/views/CodeEditText$c$a;-><init>(Lcom/aide/ui/views/CodeEditText$c;Ljava/lang/String;Lcom/aide/common/u;Lcom/aide/ui/views/editor/OEditor$c;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v3, p0, Lcom/aide/ui/views/CodeEditText$c;->PH:Lcom/aide/ui/views/CodeEditText;

    invoke-static {v3}, Lcom/aide/ui/views/CodeEditText;->Zo(Lcom/aide/ui/views/CodeEditText;)Ljava/util/List;

    move-result-object v3

    new-instance v4, Lcom/aide/ui/views/CodeEditText$c$a;

    iget-object v5, p0, Lcom/aide/ui/views/CodeEditText$c;->context:Landroid/content/Context;

    const v6, 0x7f0d0736

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lcom/aide/common/u;

    const/16 v7, 0x42

    invoke-direct {v6, v7, v8, v8, v8}, Lcom/aide/common/u;-><init>(IZZZ)V

    sget-object v7, Lcom/aide/ui/views/editor/OEditor$c;->ro:Lcom/aide/ui/views/editor/OEditor$c;

    invoke-direct {v4, p0, v5, v6, v7}, Lcom/aide/ui/views/CodeEditText$c$a;-><init>(Lcom/aide/ui/views/CodeEditText$c;Ljava/lang/String;Lcom/aide/common/u;Lcom/aide/ui/views/editor/OEditor$c;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v3, p0, Lcom/aide/ui/views/CodeEditText$c;->PH:Lcom/aide/ui/views/CodeEditText;

    invoke-static {v3}, Lcom/aide/ui/views/CodeEditText;->Zo(Lcom/aide/ui/views/CodeEditText;)Ljava/util/List;

    move-result-object v3

    new-instance v4, Lcom/aide/ui/views/CodeEditText$c$a;

    iget-object v5, p0, Lcom/aide/ui/views/CodeEditText$c;->context:Landroid/content/Context;

    const v6, 0x7f0d0749

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lcom/aide/common/u;

    const/16 v7, 0x13

    invoke-direct {v6, v7, v8, v2, v2}, Lcom/aide/common/u;-><init>(IZZZ)V

    sget-object v9, Lcom/aide/ui/views/editor/OEditor$c;->tp:Lcom/aide/ui/views/editor/OEditor$c;

    invoke-direct {v4, p0, v5, v6, v9}, Lcom/aide/ui/views/CodeEditText$c$a;-><init>(Lcom/aide/ui/views/CodeEditText$c;Ljava/lang/String;Lcom/aide/common/u;Lcom/aide/ui/views/editor/OEditor$c;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v3, p0, Lcom/aide/ui/views/CodeEditText$c;->PH:Lcom/aide/ui/views/CodeEditText;

    invoke-static {v3}, Lcom/aide/ui/views/CodeEditText;->Zo(Lcom/aide/ui/views/CodeEditText;)Ljava/util/List;

    move-result-object v3

    new-instance v4, Lcom/aide/ui/views/CodeEditText$c$a;

    iget-object v5, p0, Lcom/aide/ui/views/CodeEditText$c;->context:Landroid/content/Context;

    const v6, 0x7f0d074b

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lcom/aide/common/u;

    const/16 v9, 0x14

    invoke-direct {v6, v9, v8, v2, v2}, Lcom/aide/common/u;-><init>(IZZZ)V

    sget-object v10, Lcom/aide/ui/views/editor/OEditor$c;->EQ:Lcom/aide/ui/views/editor/OEditor$c;

    invoke-direct {v4, p0, v5, v6, v10}, Lcom/aide/ui/views/CodeEditText$c$a;-><init>(Lcom/aide/ui/views/CodeEditText$c;Ljava/lang/String;Lcom/aide/common/u;Lcom/aide/ui/views/editor/OEditor$c;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v3, p0, Lcom/aide/ui/views/CodeEditText$c;->PH:Lcom/aide/ui/views/CodeEditText;

    invoke-static {v3}, Lcom/aide/ui/views/CodeEditText;->Zo(Lcom/aide/ui/views/CodeEditText;)Ljava/util/List;

    move-result-object v3

    new-instance v4, Lcom/aide/ui/views/CodeEditText$c$a;

    iget-object v5, p0, Lcom/aide/ui/views/CodeEditText$c;->context:Landroid/content/Context;

    const v6, 0x7f0d074a

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lcom/aide/common/u;

    const/16 v10, 0x7a

    invoke-direct {v6, v10, v8, v8, v8}, Lcom/aide/common/u;-><init>(IZZZ)V

    sget-object v11, Lcom/aide/ui/views/editor/OEditor$c;->gn:Lcom/aide/ui/views/editor/OEditor$c;

    invoke-direct {v4, p0, v5, v6, v11}, Lcom/aide/ui/views/CodeEditText$c$a;-><init>(Lcom/aide/ui/views/CodeEditText$c;Ljava/lang/String;Lcom/aide/common/u;Lcom/aide/ui/views/editor/OEditor$c;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v3, p0, Lcom/aide/ui/views/CodeEditText$c;->PH:Lcom/aide/ui/views/CodeEditText;

    invoke-static {v3}, Lcom/aide/ui/views/CodeEditText;->Zo(Lcom/aide/ui/views/CodeEditText;)Ljava/util/List;

    move-result-object v3

    new-instance v4, Lcom/aide/ui/views/CodeEditText$c$a;

    iget-object v5, p0, Lcom/aide/ui/views/CodeEditText$c;->context:Landroid/content/Context;

    const v6, 0x7f0d074c

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lcom/aide/common/u;

    const/16 v11, 0x7b

    invoke-direct {v6, v11, v8, v8, v8}, Lcom/aide/common/u;-><init>(IZZZ)V

    sget-object v12, Lcom/aide/ui/views/editor/OEditor$c;->u7:Lcom/aide/ui/views/editor/OEditor$c;

    invoke-direct {v4, p0, v5, v6, v12}, Lcom/aide/ui/views/CodeEditText$c$a;-><init>(Lcom/aide/ui/views/CodeEditText$c;Ljava/lang/String;Lcom/aide/common/u;Lcom/aide/ui/views/editor/OEditor$c;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v3, p0, Lcom/aide/ui/views/CodeEditText$c;->PH:Lcom/aide/ui/views/CodeEditText;

    invoke-static {v3}, Lcom/aide/ui/views/CodeEditText;->Zo(Lcom/aide/ui/views/CodeEditText;)Ljava/util/List;

    move-result-object v3

    new-instance v4, Lcom/aide/ui/views/CodeEditText$c$a;

    iget-object v5, p0, Lcom/aide/ui/views/CodeEditText$c;->context:Landroid/content/Context;

    const v6, 0x7f0d0764

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lcom/aide/common/u;

    invoke-direct {v6, v7, v2, v2, v2}, Lcom/aide/common/u;-><init>(IZZZ)V

    sget-object v12, Lcom/aide/ui/views/editor/OEditor$c;->rN:Lcom/aide/ui/views/editor/OEditor$c;

    invoke-direct {v4, p0, v5, v6, v12}, Lcom/aide/ui/views/CodeEditText$c$a;-><init>(Lcom/aide/ui/views/CodeEditText$c;Ljava/lang/String;Lcom/aide/common/u;Lcom/aide/ui/views/editor/OEditor$c;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v3, p0, Lcom/aide/ui/views/CodeEditText$c;->PH:Lcom/aide/ui/views/CodeEditText;

    invoke-static {v3}, Lcom/aide/ui/views/CodeEditText;->Zo(Lcom/aide/ui/views/CodeEditText;)Ljava/util/List;

    move-result-object v3

    new-instance v4, Lcom/aide/ui/views/CodeEditText$c$a;

    iget-object v5, p0, Lcom/aide/ui/views/CodeEditText$c;->context:Landroid/content/Context;

    const v6, 0x7f0d0766

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lcom/aide/common/u;

    invoke-direct {v6, v9, v2, v2, v2}, Lcom/aide/common/u;-><init>(IZZZ)V

    sget-object v12, Lcom/aide/ui/views/editor/OEditor$c;->er:Lcom/aide/ui/views/editor/OEditor$c;

    invoke-direct {v4, p0, v5, v6, v12}, Lcom/aide/ui/views/CodeEditText$c$a;-><init>(Lcom/aide/ui/views/CodeEditText$c;Ljava/lang/String;Lcom/aide/common/u;Lcom/aide/ui/views/editor/OEditor$c;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v3, p0, Lcom/aide/ui/views/CodeEditText$c;->PH:Lcom/aide/ui/views/CodeEditText;

    invoke-static {v3}, Lcom/aide/ui/views/CodeEditText;->Zo(Lcom/aide/ui/views/CodeEditText;)Ljava/util/List;

    move-result-object v3

    new-instance v4, Lcom/aide/ui/views/CodeEditText$c$a;

    iget-object v5, p0, Lcom/aide/ui/views/CodeEditText$c;->context:Landroid/content/Context;

    const v6, 0x7f0d0765

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lcom/aide/common/u;

    invoke-direct {v6, v10, v2, v8, v8}, Lcom/aide/common/u;-><init>(IZZZ)V

    sget-object v10, Lcom/aide/ui/views/editor/OEditor$c;->a8:Lcom/aide/ui/views/editor/OEditor$c;

    invoke-direct {v4, p0, v5, v6, v10}, Lcom/aide/ui/views/CodeEditText$c$a;-><init>(Lcom/aide/ui/views/CodeEditText$c;Ljava/lang/String;Lcom/aide/common/u;Lcom/aide/ui/views/editor/OEditor$c;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v3, p0, Lcom/aide/ui/views/CodeEditText$c;->PH:Lcom/aide/ui/views/CodeEditText;

    invoke-static {v3}, Lcom/aide/ui/views/CodeEditText;->Zo(Lcom/aide/ui/views/CodeEditText;)Ljava/util/List;

    move-result-object v3

    new-instance v4, Lcom/aide/ui/views/CodeEditText$c$a;

    iget-object v5, p0, Lcom/aide/ui/views/CodeEditText$c;->context:Landroid/content/Context;

    const v6, 0x7f0d0767

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lcom/aide/common/u;

    invoke-direct {v6, v11, v2, v8, v8}, Lcom/aide/common/u;-><init>(IZZZ)V

    sget-object v10, Lcom/aide/ui/views/editor/OEditor$c;->lg:Lcom/aide/ui/views/editor/OEditor$c;

    invoke-direct {v4, p0, v5, v6, v10}, Lcom/aide/ui/views/CodeEditText$c$a;-><init>(Lcom/aide/ui/views/CodeEditText$c;Ljava/lang/String;Lcom/aide/common/u;Lcom/aide/ui/views/editor/OEditor$c;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v3, p0, Lcom/aide/ui/views/CodeEditText$c;->PH:Lcom/aide/ui/views/CodeEditText;

    invoke-static {v3}, Lcom/aide/ui/views/CodeEditText;->Zo(Lcom/aide/ui/views/CodeEditText;)Ljava/util/List;

    move-result-object v3

    new-instance v4, Lcom/aide/ui/views/CodeEditText$c$a;

    iget-object v5, p0, Lcom/aide/ui/views/CodeEditText$c;->context:Landroid/content/Context;

    const v6, 0x7f0d0744

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lcom/aide/common/u;

    const/16 v10, 0x5c

    invoke-direct {v6, v10, v8, v8, v8}, Lcom/aide/common/u;-><init>(IZZZ)V

    sget-object v11, Lcom/aide/ui/views/editor/OEditor$c;->v5:Lcom/aide/ui/views/editor/OEditor$c;

    invoke-direct {v4, p0, v5, v6, v11}, Lcom/aide/ui/views/CodeEditText$c$a;-><init>(Lcom/aide/ui/views/CodeEditText$c;Ljava/lang/String;Lcom/aide/common/u;Lcom/aide/ui/views/editor/OEditor$c;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v3, p0, Lcom/aide/ui/views/CodeEditText$c;->PH:Lcom/aide/ui/views/CodeEditText;

    invoke-static {v3}, Lcom/aide/ui/views/CodeEditText;->Zo(Lcom/aide/ui/views/CodeEditText;)Ljava/util/List;

    move-result-object v3

    new-instance v4, Lcom/aide/ui/views/CodeEditText$c$a;

    iget-object v5, p0, Lcom/aide/ui/views/CodeEditText$c;->context:Landroid/content/Context;

    const v6, 0x7f0d0743

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lcom/aide/common/u;

    const/16 v11, 0x5d

    invoke-direct {v6, v11, v8, v8, v8}, Lcom/aide/common/u;-><init>(IZZZ)V

    sget-object v12, Lcom/aide/ui/views/editor/OEditor$c;->Zo:Lcom/aide/ui/views/editor/OEditor$c;

    invoke-direct {v4, p0, v5, v6, v12}, Lcom/aide/ui/views/CodeEditText$c$a;-><init>(Lcom/aide/ui/views/CodeEditText$c;Ljava/lang/String;Lcom/aide/common/u;Lcom/aide/ui/views/editor/OEditor$c;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v3, p0, Lcom/aide/ui/views/CodeEditText$c;->PH:Lcom/aide/ui/views/CodeEditText;

    invoke-static {v3}, Lcom/aide/ui/views/CodeEditText;->Zo(Lcom/aide/ui/views/CodeEditText;)Ljava/util/List;

    move-result-object v3

    new-instance v4, Lcom/aide/ui/views/CodeEditText$c$a;

    iget-object v5, p0, Lcom/aide/ui/views/CodeEditText$c;->context:Landroid/content/Context;

    const v6, 0x7f0d0746

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lcom/aide/common/u;

    invoke-direct {v6, v7, v8, v8, v8}, Lcom/aide/common/u;-><init>(IZZZ)V

    sget-object v12, Lcom/aide/ui/views/editor/OEditor$c;->FH:Lcom/aide/ui/views/editor/OEditor$c;

    invoke-direct {v4, p0, v5, v6, v12}, Lcom/aide/ui/views/CodeEditText$c$a;-><init>(Lcom/aide/ui/views/CodeEditText$c;Ljava/lang/String;Lcom/aide/common/u;Lcom/aide/ui/views/editor/OEditor$c;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v3, p0, Lcom/aide/ui/views/CodeEditText$c;->PH:Lcom/aide/ui/views/CodeEditText;

    invoke-static {v3}, Lcom/aide/ui/views/CodeEditText;->Zo(Lcom/aide/ui/views/CodeEditText;)Ljava/util/List;

    move-result-object v3

    new-instance v4, Lcom/aide/ui/views/CodeEditText$c$a;

    iget-object v5, p0, Lcom/aide/ui/views/CodeEditText$c;->context:Landroid/content/Context;

    const v6, 0x7f0d0741

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lcom/aide/common/u;

    invoke-direct {v6, v9, v8, v8, v8}, Lcom/aide/common/u;-><init>(IZZZ)V

    sget-object v12, Lcom/aide/ui/views/editor/OEditor$c;->Hw:Lcom/aide/ui/views/editor/OEditor$c;

    invoke-direct {v4, p0, v5, v6, v12}, Lcom/aide/ui/views/CodeEditText$c$a;-><init>(Lcom/aide/ui/views/CodeEditText$c;Ljava/lang/String;Lcom/aide/common/u;Lcom/aide/ui/views/editor/OEditor$c;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v3, p0, Lcom/aide/ui/views/CodeEditText$c;->PH:Lcom/aide/ui/views/CodeEditText;

    invoke-static {v3}, Lcom/aide/ui/views/CodeEditText;->Zo(Lcom/aide/ui/views/CodeEditText;)Ljava/util/List;

    move-result-object v3

    new-instance v4, Lcom/aide/ui/views/CodeEditText$c$a;

    iget-object v5, p0, Lcom/aide/ui/views/CodeEditText$c;->context:Landroid/content/Context;

    const v6, 0x7f0d0742

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lcom/aide/common/u;

    const/16 v12, 0x15

    invoke-direct {v6, v12, v8, v8, v8}, Lcom/aide/common/u;-><init>(IZZZ)V

    sget-object v13, Lcom/aide/ui/views/editor/OEditor$c;->j6:Lcom/aide/ui/views/editor/OEditor$c;

    invoke-direct {v4, p0, v5, v6, v13}, Lcom/aide/ui/views/CodeEditText$c$a;-><init>(Lcom/aide/ui/views/CodeEditText$c;Ljava/lang/String;Lcom/aide/common/u;Lcom/aide/ui/views/editor/OEditor$c;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v3, p0, Lcom/aide/ui/views/CodeEditText$c;->PH:Lcom/aide/ui/views/CodeEditText;

    invoke-static {v3}, Lcom/aide/ui/views/CodeEditText;->Zo(Lcom/aide/ui/views/CodeEditText;)Ljava/util/List;

    move-result-object v3

    new-instance v4, Lcom/aide/ui/views/CodeEditText$c$a;

    iget-object v5, p0, Lcom/aide/ui/views/CodeEditText$c;->context:Landroid/content/Context;

    const v6, 0x7f0d0745

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lcom/aide/common/u;

    const/16 v13, 0x16

    invoke-direct {v6, v13, v8, v8, v8}, Lcom/aide/common/u;-><init>(IZZZ)V

    sget-object v14, Lcom/aide/ui/views/editor/OEditor$c;->DW:Lcom/aide/ui/views/editor/OEditor$c;

    invoke-direct {v4, p0, v5, v6, v14}, Lcom/aide/ui/views/CodeEditText$c$a;-><init>(Lcom/aide/ui/views/CodeEditText$c;Ljava/lang/String;Lcom/aide/common/u;Lcom/aide/ui/views/editor/OEditor$c;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v3, p0, Lcom/aide/ui/views/CodeEditText$c;->PH:Lcom/aide/ui/views/CodeEditText;

    invoke-static {v3}, Lcom/aide/ui/views/CodeEditText;->Zo(Lcom/aide/ui/views/CodeEditText;)Ljava/util/List;

    move-result-object v3

    new-instance v4, Lcom/aide/ui/views/CodeEditText$c$a;

    iget-object v5, p0, Lcom/aide/ui/views/CodeEditText$c;->context:Landroid/content/Context;

    const v6, 0x7f0d0747

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lcom/aide/common/u;

    invoke-direct {v6, v12, v8, v2, v8}, Lcom/aide/common/u;-><init>(IZZZ)V

    sget-object v14, Lcom/aide/ui/views/editor/OEditor$c;->we:Lcom/aide/ui/views/editor/OEditor$c;

    invoke-direct {v4, p0, v5, v6, v14}, Lcom/aide/ui/views/CodeEditText$c$a;-><init>(Lcom/aide/ui/views/CodeEditText$c;Ljava/lang/String;Lcom/aide/common/u;Lcom/aide/ui/views/editor/OEditor$c;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v3, p0, Lcom/aide/ui/views/CodeEditText$c;->PH:Lcom/aide/ui/views/CodeEditText;

    invoke-static {v3}, Lcom/aide/ui/views/CodeEditText;->Zo(Lcom/aide/ui/views/CodeEditText;)Ljava/util/List;

    move-result-object v3

    new-instance v4, Lcom/aide/ui/views/CodeEditText$c$a;

    iget-object v5, p0, Lcom/aide/ui/views/CodeEditText$c;->context:Landroid/content/Context;

    const v6, 0x7f0d0748

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lcom/aide/common/u;

    invoke-direct {v6, v13, v8, v2, v8}, Lcom/aide/common/u;-><init>(IZZZ)V

    sget-object v14, Lcom/aide/ui/views/editor/OEditor$c;->J0:Lcom/aide/ui/views/editor/OEditor$c;

    invoke-direct {v4, p0, v5, v6, v14}, Lcom/aide/ui/views/CodeEditText$c$a;-><init>(Lcom/aide/ui/views/CodeEditText$c;Ljava/lang/String;Lcom/aide/common/u;Lcom/aide/ui/views/editor/OEditor$c;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v3, p0, Lcom/aide/ui/views/CodeEditText$c;->PH:Lcom/aide/ui/views/CodeEditText;

    invoke-static {v3}, Lcom/aide/ui/views/CodeEditText;->Zo(Lcom/aide/ui/views/CodeEditText;)Ljava/util/List;

    move-result-object v3

    new-instance v4, Lcom/aide/ui/views/CodeEditText$c$a;

    iget-object v5, p0, Lcom/aide/ui/views/CodeEditText$c;->context:Landroid/content/Context;

    const v6, 0x7f0d075f

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lcom/aide/common/u;

    invoke-direct {v6, v10, v2, v8, v8}, Lcom/aide/common/u;-><init>(IZZZ)V

    sget-object v10, Lcom/aide/ui/views/editor/OEditor$c;->j3:Lcom/aide/ui/views/editor/OEditor$c;

    invoke-direct {v4, p0, v5, v6, v10}, Lcom/aide/ui/views/CodeEditText$c$a;-><init>(Lcom/aide/ui/views/CodeEditText$c;Ljava/lang/String;Lcom/aide/common/u;Lcom/aide/ui/views/editor/OEditor$c;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v3, p0, Lcom/aide/ui/views/CodeEditText$c;->PH:Lcom/aide/ui/views/CodeEditText;

    invoke-static {v3}, Lcom/aide/ui/views/CodeEditText;->Zo(Lcom/aide/ui/views/CodeEditText;)Ljava/util/List;

    move-result-object v3

    new-instance v4, Lcom/aide/ui/views/CodeEditText$c$a;

    iget-object v5, p0, Lcom/aide/ui/views/CodeEditText$c;->context:Landroid/content/Context;

    const v6, 0x7f0d075e

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lcom/aide/common/u;

    invoke-direct {v6, v11, v2, v8, v8}, Lcom/aide/common/u;-><init>(IZZZ)V

    sget-object v10, Lcom/aide/ui/views/editor/OEditor$c;->Mr:Lcom/aide/ui/views/editor/OEditor$c;

    invoke-direct {v4, p0, v5, v6, v10}, Lcom/aide/ui/views/CodeEditText$c$a;-><init>(Lcom/aide/ui/views/CodeEditText$c;Ljava/lang/String;Lcom/aide/common/u;Lcom/aide/ui/views/editor/OEditor$c;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v3, p0, Lcom/aide/ui/views/CodeEditText$c;->PH:Lcom/aide/ui/views/CodeEditText;

    invoke-static {v3}, Lcom/aide/ui/views/CodeEditText;->Zo(Lcom/aide/ui/views/CodeEditText;)Ljava/util/List;

    move-result-object v3

    new-instance v4, Lcom/aide/ui/views/CodeEditText$c$a;

    iget-object v5, p0, Lcom/aide/ui/views/CodeEditText$c;->context:Landroid/content/Context;

    const v6, 0x7f0d0762

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lcom/aide/common/u;

    invoke-direct {v6, v12, v2, v2, v8}, Lcom/aide/common/u;-><init>(IZZZ)V

    sget-object v10, Lcom/aide/ui/views/editor/OEditor$c;->yS:Lcom/aide/ui/views/editor/OEditor$c;

    invoke-direct {v4, p0, v5, v6, v10}, Lcom/aide/ui/views/CodeEditText$c$a;-><init>(Lcom/aide/ui/views/CodeEditText$c;Ljava/lang/String;Lcom/aide/common/u;Lcom/aide/ui/views/editor/OEditor$c;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v3, p0, Lcom/aide/ui/views/CodeEditText$c;->PH:Lcom/aide/ui/views/CodeEditText;

    invoke-static {v3}, Lcom/aide/ui/views/CodeEditText;->Zo(Lcom/aide/ui/views/CodeEditText;)Ljava/util/List;

    move-result-object v3

    new-instance v4, Lcom/aide/ui/views/CodeEditText$c$a;

    iget-object v5, p0, Lcom/aide/ui/views/CodeEditText$c;->context:Landroid/content/Context;

    const v6, 0x7f0d0763

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lcom/aide/common/u;

    invoke-direct {v6, v13, v2, v2, v8}, Lcom/aide/common/u;-><init>(IZZZ)V

    sget-object v10, Lcom/aide/ui/views/editor/OEditor$c;->gW:Lcom/aide/ui/views/editor/OEditor$c;

    invoke-direct {v4, p0, v5, v6, v10}, Lcom/aide/ui/views/CodeEditText$c$a;-><init>(Lcom/aide/ui/views/CodeEditText$c;Ljava/lang/String;Lcom/aide/common/u;Lcom/aide/ui/views/editor/OEditor$c;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v3, p0, Lcom/aide/ui/views/CodeEditText$c;->PH:Lcom/aide/ui/views/CodeEditText;

    invoke-static {v3}, Lcom/aide/ui/views/CodeEditText;->Zo(Lcom/aide/ui/views/CodeEditText;)Ljava/util/List;

    move-result-object v3

    new-instance v4, Lcom/aide/ui/views/CodeEditText$c$a;

    iget-object v5, p0, Lcom/aide/ui/views/CodeEditText$c;->context:Landroid/content/Context;

    const v6, 0x7f0d0761

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lcom/aide/common/u;

    invoke-direct {v6, v7, v2, v8, v8}, Lcom/aide/common/u;-><init>(IZZZ)V

    sget-object v7, Lcom/aide/ui/views/editor/OEditor$c;->XL:Lcom/aide/ui/views/editor/OEditor$c;

    invoke-direct {v4, p0, v5, v6, v7}, Lcom/aide/ui/views/CodeEditText$c$a;-><init>(Lcom/aide/ui/views/CodeEditText$c;Ljava/lang/String;Lcom/aide/common/u;Lcom/aide/ui/views/editor/OEditor$c;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v3, p0, Lcom/aide/ui/views/CodeEditText$c;->PH:Lcom/aide/ui/views/CodeEditText;

    invoke-static {v3}, Lcom/aide/ui/views/CodeEditText;->Zo(Lcom/aide/ui/views/CodeEditText;)Ljava/util/List;

    move-result-object v3

    new-instance v4, Lcom/aide/ui/views/CodeEditText$c$a;

    iget-object v5, p0, Lcom/aide/ui/views/CodeEditText$c;->context:Landroid/content/Context;

    const v6, 0x7f0d075c

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lcom/aide/common/u;

    invoke-direct {v6, v9, v2, v8, v8}, Lcom/aide/common/u;-><init>(IZZZ)V

    sget-object v7, Lcom/aide/ui/views/editor/OEditor$c;->aM:Lcom/aide/ui/views/editor/OEditor$c;

    invoke-direct {v4, p0, v5, v6, v7}, Lcom/aide/ui/views/CodeEditText$c$a;-><init>(Lcom/aide/ui/views/CodeEditText$c;Ljava/lang/String;Lcom/aide/common/u;Lcom/aide/ui/views/editor/OEditor$c;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v3, p0, Lcom/aide/ui/views/CodeEditText$c;->PH:Lcom/aide/ui/views/CodeEditText;

    invoke-static {v3}, Lcom/aide/ui/views/CodeEditText;->Zo(Lcom/aide/ui/views/CodeEditText;)Ljava/util/List;

    move-result-object v3

    new-instance v4, Lcom/aide/ui/views/CodeEditText$c$a;

    iget-object v5, p0, Lcom/aide/ui/views/CodeEditText$c;->context:Landroid/content/Context;

    const v6, 0x7f0d075d

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lcom/aide/common/u;

    invoke-direct {v6, v12, v2, v8, v8}, Lcom/aide/common/u;-><init>(IZZZ)V

    sget-object v7, Lcom/aide/ui/views/editor/OEditor$c;->Ws:Lcom/aide/ui/views/editor/OEditor$c;

    invoke-direct {v4, p0, v5, v6, v7}, Lcom/aide/ui/views/CodeEditText$c$a;-><init>(Lcom/aide/ui/views/CodeEditText$c;Ljava/lang/String;Lcom/aide/common/u;Lcom/aide/ui/views/editor/OEditor$c;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v3, p0, Lcom/aide/ui/views/CodeEditText$c;->PH:Lcom/aide/ui/views/CodeEditText;

    invoke-static {v3}, Lcom/aide/ui/views/CodeEditText;->Zo(Lcom/aide/ui/views/CodeEditText;)Ljava/util/List;

    move-result-object v3

    new-instance v4, Lcom/aide/ui/views/CodeEditText$c$a;

    iget-object v5, p0, Lcom/aide/ui/views/CodeEditText$c;->context:Landroid/content/Context;

    const v6, 0x7f0d0760

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lcom/aide/common/u;

    invoke-direct {v6, v13, v2, v8, v8}, Lcom/aide/common/u;-><init>(IZZZ)V

    sget-object v2, Lcom/aide/ui/views/editor/OEditor$c;->QX:Lcom/aide/ui/views/editor/OEditor$c;

    invoke-direct {v4, p0, v5, v6, v2}, Lcom/aide/ui/views/CodeEditText$c$a;-><init>(Lcom/aide/ui/views/CodeEditText$c;Ljava/lang/String;Lcom/aide/common/u;Lcom/aide/ui/views/editor/OEditor$c;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_3e4
    .catchall {:try_start_5 .. :try_end_3e4} :catchall_3e5

    return-void

    :catchall_3e5
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/views/CodeEditText$c;->Bx:Z

    if-eqz v3, :cond_3ed

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_3ed
    throw v2
.end method

.method private v5(FF)I
    .registers 10
    .annotation runtime Labcd/su;
        method = 0x3aeec90993724e55L
    .end annotation

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/views/CodeEditText$c;->Jm:Z

    if-eqz v0, :cond_16

    new-instance v0, Ljava/lang/Float;

    invoke-direct {v0, p1}, Ljava/lang/Float;-><init>(F)V

    new-instance v1, Ljava/lang/Float;

    invoke-direct {v1, p2}, Ljava/lang/Float;-><init>(F)V

    const-wide v2, 0x25617feb881cd5dbL

    invoke-static {v2, v3, p0, v0, v1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_16
    invoke-virtual {p0, p1, p2}, Lcom/aide/ui/views/editor/OConsole;->FH(FF)I

    move-result p1
    :try_end_1a
    .catchall {:try_start_0 .. :try_end_1a} :catchall_1d

    add-int/lit8 p1, p1, 0x1

    return p1

    :catchall_1d
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/views/CodeEditText$c;->Bx:Z

    if-eqz v1, :cond_36

    const-wide v2, 0x25617feb881cd5dbL

    new-instance v5, Ljava/lang/Float;

    invoke-direct {v5, p1}, Ljava/lang/Float;-><init>(F)V

    new-instance v6, Ljava/lang/Float;

    invoke-direct {v6, p2}, Ljava/lang/Float;-><init>(F)V

    move-object v1, v0

    move-object v4, p0

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_36
    throw v0
.end method

.method private we(II)I
    .registers 10
    .annotation runtime Labcd/su;
        method = -0x3e0c4998135e97bL
    .end annotation

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/views/CodeEditText$c;->Jm:Z

    if-eqz v0, :cond_16

    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p2}, Ljava/lang/Integer;-><init>(I)V

    const-wide v2, -0x4459f43c1656a9L

    invoke-static {v2, v3, p0, v0, v1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_16
    iget-object v0, p0, Lcom/aide/ui/views/CodeEditText$c;->PH:Lcom/aide/ui/views/CodeEditText;

    invoke-virtual {v0, p1, p2}, Lcom/aide/ui/views/CodeEditText;->FH(II)I

    move-result p1
    :try_end_1c
    .catchall {:try_start_0 .. :try_end_1c} :catchall_20

    if-lez p1, :cond_1f

    return p1

    :cond_1f
    return p2

    :catchall_20
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/views/CodeEditText$c;->Bx:Z

    if-eqz v1, :cond_39

    const-wide v2, -0x4459f43c1656a9L

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    move-object v1, v0

    move-object v4, p0

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_39
    throw v0
.end method


# virtual methods
.method public DW(CII)V
    .registers 12

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/views/CodeEditText$c;->Jm:Z

    if-eqz v0, :cond_1c

    new-instance v4, Ljava/lang/Character;

    invoke-direct {v4, p1}, Ljava/lang/Character;-><init>(C)V

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p3}, Ljava/lang/Integer;-><init>(I)V

    const-wide v1, 0x40c9cffd85f40f44L  # 13215.980650432066

    move-object v3, p0

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1c
    invoke-direct {p0}, Lcom/aide/ui/views/CodeEditText$c;->getCodeEditTextEditorModel()Lcom/aide/ui/views/CodeEditText$a;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/aide/ui/views/CodeEditText$a;->DW(CII)V
    :try_end_23
    .catchall {:try_start_0 .. :try_end_23} :catchall_24

    return-void

    :catchall_24
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/views/CodeEditText$c;->Bx:Z

    if-eqz v1, :cond_42

    const-wide v2, 0x40c9cffd85f40f44L  # 13215.980650432066

    new-instance v5, Ljava/lang/Character;

    invoke-direct {v5, p1}, Ljava/lang/Character;-><init>(C)V

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, p3}, Ljava/lang/Integer;-><init>(I)V

    move-object v1, v0

    move-object v4, p0

    invoke-static/range {v1 .. v7}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_42
    throw v0
.end method

.method protected DW()Z
    .registers 5
    .annotation runtime Labcd/su;
        method = -0xd2207e4bf822004L
    .end annotation

    const-wide v0, 0x69e7cbcca1ee808L

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/views/CodeEditText$c;->Jm:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    iget-object v2, p0, Lcom/aide/ui/views/CodeEditText$c;->PH:Lcom/aide/ui/views/CodeEditText;

    invoke-virtual {v2}, Lcom/aide/ui/views/CodeEditText;->FH()Z

    move-result v0
    :try_end_12
    .catchall {:try_start_5 .. :try_end_12} :catchall_13

    return v0

    :catchall_13
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/views/CodeEditText$c;->Bx:Z

    if-eqz v3, :cond_1b

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1b
    throw v2
.end method

.method protected EQ()Z
    .registers 5
    .annotation runtime Labcd/su;
        method = 0x33c4d03f30a1bff7L
    .end annotation

    const-wide v0, 0x35e1941269c09495L  # 3.7586354490920136E-49

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/views/CodeEditText$c;->Jm:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    invoke-super {p0}, Lcom/aide/ui/views/editor/OConsole;->EQ()Z

    move-result v2

    if-nez v2, :cond_1d

    iget-object v2, p0, Lcom/aide/ui/views/CodeEditText$c;->PH:Lcom/aide/ui/views/CodeEditText;

    invoke-virtual {v2}, Lcom/aide/ui/views/CodeEditText;->u7()Z

    move-result v0
    :try_end_18
    .catchall {:try_start_5 .. :try_end_18} :catchall_1f

    if-eqz v0, :cond_1b

    goto :goto_1d

    :cond_1b
    const/4 v0, 0x0

    goto :goto_1e

    :cond_1d
    :goto_1d
    const/4 v0, 0x1

    :goto_1e
    return v0

    :catchall_1f
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/views/CodeEditText$c;->Bx:Z

    if-eqz v3, :cond_27

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_27
    throw v2
.end method

.method public FH(F)[F
    .registers 9

    const-wide v0, -0x142410c8ef0f9730L

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/views/CodeEditText$c;->Jm:Z

    if-eqz v2, :cond_11

    new-instance v2, Ljava/lang/Float;

    invoke-direct {v2, p1}, Ljava/lang/Float;-><init>(F)V

    invoke-static {v0, v1, p0, v2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_11
    invoke-virtual {p0}, Lcom/aide/ui/views/editor/OConsole;->we()Z

    move-result v2

    const/4 v3, 0x2

    if-eqz v2, :cond_1e

    new-array v2, v3, [F

    fill-array-data v2, :array_5a

    return-object v2

    :cond_1e
    iget v2, p0, Lcom/aide/ui/views/CodeEditText$c;->oa:F

    const/high16 v4, 0x40e00000  # 7.0f

    div-float/2addr v4, v2

    const/high16 v5, 0x41e00000  # 28.0f

    div-float/2addr v5, v2

    cmpg-float v6, p1, v4

    if-gez v6, :cond_2b

    move p1, v4

    :cond_2b
    cmpl-float v4, p1, v5

    if-lez v4, :cond_30

    move p1, v5

    :cond_30
    mul-float v2, v2, p1

    invoke-virtual {p0, v2}, Lcom/aide/ui/views/editor/OConsole;->setFontSize(F)V

    invoke-virtual {p0}, Lcom/aide/ui/views/editor/OConsole;->getSpaceCharWidth()F

    move-result v2

    iget v4, p0, Lcom/aide/ui/views/CodeEditText$c;->MP:F

    div-float/2addr v2, v4

    invoke-virtual {p0}, Lcom/aide/ui/views/editor/OConsole;->getFontHeight()F

    move-result v4

    iget p1, p0, Lcom/aide/ui/views/CodeEditText$c;->qP:F
    :try_end_42
    .catchall {:try_start_5 .. :try_end_42} :catchall_4c

    div-float/2addr v4, p1

    new-array p1, v3, [F

    const/4 v0, 0x0

    aput v2, p1, v0

    const/4 v0, 0x1

    aput v4, p1, v0

    return-object p1

    :catchall_4c
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/views/CodeEditText$c;->Bx:Z

    if-eqz v3, :cond_59

    new-instance v3, Ljava/lang/Float;

    invoke-direct {v3, p1}, Ljava/lang/Float;-><init>(F)V

    invoke-static {v2, v0, v1, p0, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_59
    throw v2

    :array_5a
    .array-data 4
        0x3f800000  # 1.0f
        0x3f800000  # 1.0f
    .end array-data
.end method

.method public Hw()V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-super {p0}, Lcom/aide/ui/views/editor/OConsole;->Hw()V

    const/4 v0, 0x0

    move-object v1, v0

    check-cast v1, Lcom/aide/ui/views/editor/j;

    iget-object v1, p0, Lcom/aide/ui/views/CodeEditText$c;->PH:Lcom/aide/ui/views/CodeEditText;

    if-eqz v1, :cond_131

    invoke-virtual {p0}, Lcom/aide/ui/views/CodeEditText$c;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/aide/common/g;->QX(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_28

    new-instance v1, Lcom/aide/ui/views/editor/j;

    new-instance v2, Lcom/s1243808733/aide/highlight/color/ColorDefault;

    invoke-direct {v2}, Lcom/s1243808733/aide/highlight/color/ColorDefault;-><init>()V

    iget-object v2, v2, Lcom/s1243808733/aide/highlight/color/ColorDefault;->SELECTED_BACKGROUND:Lcom/s1243808733/aide/highlight/color/Color;

    invoke-static {v2}, Lcom/s1243808733/aide/highlight/HighlightUtils;->getColorInt(Lcom/s1243808733/aide/highlight/color/Color;)I

    move-result v2

    invoke-direct {v1, v2}, Lcom/aide/ui/views/editor/j;-><init>(I)V

    iput-object v1, p0, Lcom/aide/ui/views/editor/OConsole;->aj:Lcom/aide/ui/views/editor/j;

    goto :goto_46

    :cond_28
    invoke-virtual {p0}, Lcom/aide/ui/views/CodeEditText$c;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-object v2, p0, Lcom/aide/ui/views/CodeEditText$c;->PH:Lcom/aide/ui/views/CodeEditText;

    invoke-virtual {v2}, Lcom/aide/ui/views/CodeEditText;->J0()Z

    move-result v2

    if-eqz v2, :cond_38

    const v2, 0x7f050025

    goto :goto_3b

    :cond_38
    const v2, 0x7f050024

    :goto_3b
    new-instance v3, Lcom/aide/ui/views/editor/j;

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-direct {v3, v1}, Lcom/aide/ui/views/editor/j;-><init>(I)V

    iput-object v3, p0, Lcom/aide/ui/views/editor/OConsole;->aj:Lcom/aide/ui/views/editor/j;

    :goto_46
    iget-boolean v1, p0, Lcom/aide/ui/views/CodeEditText$c;->xg:Z

    if-eqz v1, :cond_5b

    new-instance v1, Lcom/aide/ui/views/editor/j;

    new-instance v2, Lcom/s1243808733/aide/highlight/color/ColorDefault;

    invoke-direct {v2}, Lcom/s1243808733/aide/highlight/color/ColorDefault;-><init>()V

    iget-object v2, v2, Lcom/s1243808733/aide/highlight/color/ColorDefault;->LINE_BACKGROUND:Lcom/s1243808733/aide/highlight/color/Color;

    invoke-static {v2}, Lcom/s1243808733/aide/highlight/HighlightUtils;->getColorInt(Lcom/s1243808733/aide/highlight/color/Color;)I

    move-result v2

    invoke-direct {v1, v2}, Lcom/aide/ui/views/editor/j;-><init>(I)V

    goto :goto_5c

    :cond_5b
    move-object v1, v0

    :goto_5c
    iput-object v1, p0, Lcom/aide/ui/views/editor/OConsole;->g3:Lcom/aide/ui/views/editor/j;

    iget-boolean v1, p0, Lcom/aide/ui/views/CodeEditText$c;->xg:Z

    if-eqz v1, :cond_7f

    invoke-virtual {p0}, Lcom/aide/ui/views/CodeEditText$c;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget-object v1, p0, Lcom/aide/ui/views/CodeEditText$c;->PH:Lcom/aide/ui/views/CodeEditText;

    invoke-virtual {v1}, Lcom/aide/ui/views/CodeEditText;->J0()Z

    move-result v1

    if-eqz v1, :cond_72

    const v1, 0x7f05002b

    goto :goto_75

    :cond_72
    const v1, 0x7f05002a

    :goto_75
    new-instance v2, Lcom/aide/ui/views/editor/j;

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-direct {v2, v0}, Lcom/aide/ui/views/editor/j;-><init>(I)V

    move-object v0, v2

    :cond_7f
    iput-object v0, p0, Lcom/aide/ui/views/editor/OConsole;->lp:Lcom/aide/ui/views/editor/j;

    invoke-virtual {p0}, Lcom/aide/ui/views/CodeEditText$c;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget-object v1, p0, Lcom/aide/ui/views/CodeEditText$c;->PH:Lcom/aide/ui/views/CodeEditText;

    invoke-virtual {v1}, Lcom/aide/ui/views/CodeEditText;->J0()Z

    move-result v1

    if-eqz v1, :cond_91

    const v1, 0x7f050019

    goto :goto_94

    :cond_91
    const v1, 0x7f050018

    :goto_94
    new-instance v2, Lcom/aide/ui/views/editor/j;

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-direct {v2, v0}, Lcom/aide/ui/views/editor/j;-><init>(I)V

    iput-object v2, p0, Lcom/aide/ui/views/editor/OConsole;->I:Lcom/aide/ui/views/editor/j;

    invoke-virtual {p0}, Lcom/aide/ui/views/CodeEditText$c;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget-object v1, p0, Lcom/aide/ui/views/CodeEditText$c;->PH:Lcom/aide/ui/views/CodeEditText;

    invoke-virtual {v1}, Lcom/aide/ui/views/CodeEditText;->J0()Z

    move-result v1

    if-eqz v1, :cond_af

    const v1, 0x7f050029

    goto :goto_b2

    :cond_af
    const v1, 0x7f050028

    :goto_b2
    new-instance v2, Lcom/aide/ui/views/editor/j;

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-direct {v2, v0}, Lcom/aide/ui/views/editor/j;-><init>(I)V

    iput-object v2, p0, Lcom/aide/ui/views/editor/OConsole;->ca:Lcom/aide/ui/views/editor/j;

    invoke-virtual {p0}, Lcom/aide/ui/views/CodeEditText$c;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget-object v1, p0, Lcom/aide/ui/views/CodeEditText$c;->PH:Lcom/aide/ui/views/CodeEditText;

    invoke-virtual {v1}, Lcom/aide/ui/views/CodeEditText;->J0()Z

    move-result v1

    if-eqz v1, :cond_cd

    const v1, 0x7f050021

    goto :goto_d0

    :cond_cd
    const v1, 0x7f050020

    :goto_d0
    new-instance v2, Lcom/aide/ui/views/editor/j;

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-direct {v2, v0}, Lcom/aide/ui/views/editor/j;-><init>(I)V

    iput-object v2, p0, Lcom/aide/ui/views/editor/OConsole;->sy:Lcom/aide/ui/views/editor/j;

    invoke-virtual {p0}, Lcom/aide/ui/views/CodeEditText$c;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget-object v1, p0, Lcom/aide/ui/views/CodeEditText$c;->PH:Lcom/aide/ui/views/CodeEditText;

    invoke-virtual {v1}, Lcom/aide/ui/views/CodeEditText;->J0()Z

    move-result v1

    if-eqz v1, :cond_eb

    const v1, 0x7f05001f

    goto :goto_ee

    :cond_eb
    const v1, 0x7f05001e

    :goto_ee
    new-instance v2, Lcom/aide/ui/views/editor/j;

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-direct {v2, v0}, Lcom/aide/ui/views/editor/j;-><init>(I)V

    iput-object v2, p0, Lcom/aide/ui/views/editor/OConsole;->Qq:Lcom/aide/ui/views/editor/j;

    invoke-virtual {p0}, Lcom/aide/ui/views/CodeEditText$c;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget-object v1, p0, Lcom/aide/ui/views/CodeEditText$c;->PH:Lcom/aide/ui/views/CodeEditText;

    invoke-virtual {v1}, Lcom/aide/ui/views/CodeEditText;->J0()Z

    move-result v1

    if-eqz v1, :cond_109

    const v1, 0x7f05001d

    goto :goto_10c

    :cond_109
    const v1, 0x7f05001c

    :goto_10c
    new-instance v2, Lcom/aide/ui/views/editor/j;

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

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

    :cond_131
    return-void
.end method

.method public Hw(IIII)V
    .registers 14

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/views/CodeEditText$c;->Jm:Z

    if-eqz v0, :cond_21

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p3}, Ljava/lang/Integer;-><init>(I)V

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, p4}, Ljava/lang/Integer;-><init>(I)V

    const-wide v1, 0x135c270ec5acd40L  # 7.932571447294E-303

    move-object v3, p0

    invoke-static/range {v1 .. v7}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_21
    invoke-virtual {p0}, Lcom/aide/ui/views/editor/OEditor;->getEditorModel()Lcom/aide/ui/views/editor/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aide/ui/views/editor/g;->BT()V

    add-int/lit8 v0, p2, -0x1

    add-int/lit8 v1, p1, -0x1

    invoke-virtual {p0, v0, v1}, Lcom/aide/ui/views/editor/OConsole;->v5(II)V

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Lcom/aide/ui/views/editor/OConsole;->DW(IIZ)V

    add-int/lit8 v0, p4, -0x1

    add-int/lit8 v1, p3, -0x1

    invoke-virtual {p0, v0, v1}, Lcom/aide/ui/views/editor/OConsole;->Zo(II)V

    if-ne p1, p3, :cond_40

    if-eq p2, p4, :cond_3f

    goto :goto_40

    :cond_3f
    const/4 v2, 0x0

    :cond_40
    :goto_40
    invoke-virtual {p0, v2}, Lcom/aide/ui/views/editor/OConsole;->setSelectionVisibility(Z)V
    :try_end_43
    .catchall {:try_start_0 .. :try_end_43} :catchall_44

    return-void

    :catchall_44
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/views/CodeEditText$c;->Bx:Z

    if-eqz v1, :cond_67

    const-wide v2, 0x135c270ec5acd40L  # 7.932571447294E-303

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

    :cond_67
    throw v0
.end method

.method public VH(II)V
    .registers 10

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/views/CodeEditText$c;->Jm:Z

    if-eqz v0, :cond_16

    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p2}, Ljava/lang/Integer;-><init>(I)V

    const-wide v2, -0x25e5faf2f4c1be31L  # -1.100831872692341E126

    invoke-static {v2, v3, p0, v0, v1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_16
    invoke-direct {p0}, Lcom/aide/ui/views/CodeEditText$c;->getCodeEditTextEditorModel()Lcom/aide/ui/views/CodeEditText$a;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/aide/ui/views/CodeEditText$a;->J8(II)V
    :try_end_1d
    .catchall {:try_start_0 .. :try_end_1d} :catchall_1e

    return-void

    :catchall_1e
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/views/CodeEditText$c;->Bx:Z

    if-eqz v1, :cond_37

    const-wide v2, -0x25e5faf2f4c1be31L  # -1.100831872692341E126

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

.method public ei()V
    .registers 5

    const-wide v0, -0x23204a5ef0b8fcbfL  # -2.3600828831842222E139

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/views/CodeEditText$c;->Jm:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    invoke-virtual {p0}, Lcom/aide/ui/views/editor/OConsole;->we()Z

    move-result v2

    if-eqz v2, :cond_13

    return-void

    :cond_13
    invoke-virtual {p0}, Lcom/aide/ui/views/editor/OConsole;->getFontSize()F

    move-result v2

    iput v2, p0, Lcom/aide/ui/views/CodeEditText$c;->oa:F

    invoke-virtual {p0}, Lcom/aide/ui/views/editor/OConsole;->getFontHeight()F

    move-result v2

    iput v2, p0, Lcom/aide/ui/views/CodeEditText$c;->qP:F

    invoke-virtual {p0}, Lcom/aide/ui/views/editor/OConsole;->getSpaceCharWidth()F

    move-result v2

    iput v2, p0, Lcom/aide/ui/views/CodeEditText$c;->MP:F
    :try_end_25
    .catchall {:try_start_5 .. :try_end_25} :catchall_26

    return-void

    :catchall_26
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/views/CodeEditText$c;->Bx:Z

    if-eqz v3, :cond_2e

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_2e
    throw v2
.end method

.method public getKeyStrokeHandler()Lcom/aide/common/KeyStrokeDetector$a;
    .registers 5

    const-wide v0, 0x61540414554fe07fL  # 7.03515369182649E160

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/views/CodeEditText$c;->Jm:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    iget-object v0, p0, Lcom/aide/ui/views/CodeEditText$c;->hp:Lcom/aide/common/KeyStrokeDetector$a;
    :try_end_e
    .catchall {:try_start_5 .. :try_end_e} :catchall_f

    return-object v0

    :catchall_f
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/views/CodeEditText$c;->Bx:Z

    if-eqz v3, :cond_17

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_17
    throw v2
.end method

.method protected getSideBarPaddingLeft()F
    .registers 5
    .annotation runtime Labcd/su;
        method = -0x57e95b4de68740c8L
    .end annotation

    const-wide v0, -0xba3c513f31f4bc0L  # -3.233923856749412E252

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/views/CodeEditText$c;->Jm:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    iget-object v2, p0, Lcom/aide/ui/views/CodeEditText$c;->PH:Lcom/aide/ui/views/CodeEditText;

    invoke-virtual {v2}, Lcom/aide/ui/views/CodeEditText;->getSideBarPadding()F

    move-result v0
    :try_end_12
    .catchall {:try_start_5 .. :try_end_12} :catchall_13

    return v0

    :catchall_13
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/views/CodeEditText$c;->Bx:Z

    if-eqz v3, :cond_1b

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1b
    throw v2
.end method

.method public gn(II)V
    .registers 4

    invoke-direct {p0}, Lcom/aide/ui/views/CodeEditText$c;->getCodeEditTextEditorModel()Lcom/aide/ui/views/CodeEditText$a;

    move-result-object v0

    if-eqz v0, :cond_9

    invoke-virtual {v0, p1, p2}, Lcom/aide/ui/views/CodeEditText$a;->QX(II)V

    :cond_9
    return-void
.end method

.method public j6(III)Landroid/graphics/Rect;
    .registers 12

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/views/CodeEditText$c;->Jm:Z

    if-eqz v0, :cond_1c

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p3}, Ljava/lang/Integer;-><init>(I)V

    const-wide v1, 0x61552191588e1ad1L  # 7.42711761679193E160

    move-object v3, p0

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1c
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
    :try_end_38
    .catchall {:try_start_0 .. :try_end_38} :catchall_50

    const/4 v5, 0x0

    aget v5, v4, v5

    const/4 v6, 0x1

    aget v4, v4, v6

    int-to-float v5, v5

    add-float/2addr v3, v5

    float-to-int v3, v3

    int-to-float v4, v4

    :try_start_42
    new-instance v6, Landroid/graphics/Rect;

    add-float v7, v1, v4

    float-to-int v7, v7

    add-float/2addr v5, v0

    float-to-int v0, v5

    add-float/2addr v2, v1

    add-float/2addr v4, v2

    float-to-int v1, v4

    invoke-direct {v6, v3, v7, v0, v1}, Landroid/graphics/Rect;-><init>(IIII)V
    :try_end_4f
    .catchall {:try_start_42 .. :try_end_4f} :catchall_50

    return-object v6

    :catchall_50
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/views/CodeEditText$c;->Bx:Z

    if-eqz v1, :cond_6e

    const-wide v2, 0x61552191588e1ad1L  # 7.42711761679193E160

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, p3}, Ljava/lang/Integer;-><init>(I)V

    move-object v1, v0

    move-object v4, p0

    invoke-static/range {v1 .. v7}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_6e
    throw v0
.end method

.method public j6(CII)V
    .registers 12

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/views/CodeEditText$c;->Jm:Z

    if-eqz v0, :cond_1c

    new-instance v4, Ljava/lang/Character;

    invoke-direct {v4, p1}, Ljava/lang/Character;-><init>(C)V

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p3}, Ljava/lang/Integer;-><init>(I)V

    const-wide v1, -0x5c5c0c143cc61bd8L  # -5.361621889633824E-137

    move-object v3, p0

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1c
    invoke-direct {p0}, Lcom/aide/ui/views/CodeEditText$c;->getCodeEditTextEditorModel()Lcom/aide/ui/views/CodeEditText$a;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/aide/ui/views/CodeEditText$a;->j6(CII)V
    :try_end_23
    .catchall {:try_start_0 .. :try_end_23} :catchall_24

    return-void

    :catchall_24
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/views/CodeEditText$c;->Bx:Z

    if-eqz v1, :cond_42

    const-wide v2, -0x5c5c0c143cc61bd8L  # -5.361621889633824E-137

    new-instance v5, Ljava/lang/Character;

    invoke-direct {v5, p1}, Ljava/lang/Character;-><init>(C)V

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, p3}, Ljava/lang/Integer;-><init>(I)V

    move-object v1, v0

    move-object v4, p0

    invoke-static/range {v1 .. v7}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_42
    throw v0
.end method

.method public onCheckIsTextEditor()Z
    .registers 5

    const-wide v0, 0x5c4588196c857e97L  # 3.1300056501861247E136

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/views/CodeEditText$c;->Jm:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V
    :try_end_c
    .catchall {:try_start_5 .. :try_end_c} :catchall_e

    :cond_c
    const/4 v0, 0x1

    return v0

    :catchall_e
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/views/CodeEditText$c;->Bx:Z

    if-eqz v3, :cond_16

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_16
    throw v2
.end method

.method public onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;
    .registers 7

    const-wide v0, 0x9735ce5232d2280L

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/views/CodeEditText$c;->Jm:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/aide/common/g;->Ws(Landroid/content/Context;)Z

    move-result v2

    const v3, 0x50000001

    if-eqz v2, :cond_21

    iput v3, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    const v2, 0x20091

    iput v2, p1, Landroid/view/inputmethod/EditorInfo;->inputType:I

    goto :goto_3e

    :cond_21
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/aide/common/g;->J8(Landroid/content/Context;)Z

    move-result v2

    const/4 v4, 0x1

    if-eqz v2, :cond_33

    const/high16 v2, 0x50000000

    iput v2, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    :goto_30
    iput v4, p1, Landroid/view/inputmethod/EditorInfo;->inputType:I

    goto :goto_3e

    :cond_33
    invoke-static {}, Lcom/aide/common/g;->j6()Z

    move-result v2

    if-eqz v2, :cond_3c

    iput v3, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    goto :goto_30

    :cond_3c
    iput v3, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    :goto_3e
    iget-object v2, p0, Lcom/aide/ui/views/CodeEditText$c;->PH:Lcom/aide/ui/views/CodeEditText;

    invoke-virtual {v2}, Lcom/aide/ui/views/CodeEditText;->getKeyStrokeDetector()Lcom/aide/common/KeyStrokeDetector;

    move-result-object v2

    iget-object v3, p0, Lcom/aide/ui/views/CodeEditText$c;->hp:Lcom/aide/common/KeyStrokeDetector$a;

    invoke-virtual {v2, p0, v3}, Lcom/aide/common/KeyStrokeDetector;->j6(Landroid/view/View;Lcom/aide/common/KeyStrokeDetector$a;)Landroid/view/inputmethod/InputConnection;

    move-result-object p1
    :try_end_4a
    .catchall {:try_start_5 .. :try_end_4a} :catchall_4b

    return-object p1

    :catchall_4b
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/views/CodeEditText$c;->Bx:Z

    if-eqz v3, :cond_53

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_53
    goto :goto_55

    :goto_54
    throw v2

    :goto_55
    goto :goto_54
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 10

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/views/CodeEditText$c;->Jm:Z

    if-eqz v0, :cond_11

    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, p1}, Ljava/lang/Integer;-><init>(I)V

    const-wide v1, 0x5fb2c79782e8590L

    invoke-static {v1, v2, p0, v0, p2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_11
    .catchall {:try_start_0 .. :try_end_11} :catchall_2b

    :cond_11
    const/4 v0, 0x1

    :try_start_12
    iget-object v1, p0, Lcom/aide/ui/views/CodeEditText$c;->PH:Lcom/aide/ui/views/CodeEditText;

    invoke-virtual {v1}, Lcom/aide/ui/views/CodeEditText;->getKeyStrokeDetector()Lcom/aide/common/KeyStrokeDetector;

    move-result-object v1

    iget-object v2, p0, Lcom/aide/ui/views/CodeEditText$c;->hp:Lcom/aide/common/KeyStrokeDetector$a;

    invoke-virtual {v1, p1, p2, v2}, Lcom/aide/common/KeyStrokeDetector;->j6(ILandroid/view/KeyEvent;Lcom/aide/common/KeyStrokeDetector$a;)Z

    move-result v1

    if-eqz v1, :cond_21

    return v0

    :cond_21
    invoke-super {p0, p1, p2}, Landroid/view/View;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p1
    :try_end_25
    .catchall {:try_start_12 .. :try_end_25} :catchall_26

    return p1

    :catchall_26
    move-exception v1

    :try_start_27
    invoke-static {v1}, Lcom/aide/common/AIDELog;->e2(Ljava/lang/Throwable;)V
    :try_end_2a
    .catchall {:try_start_27 .. :try_end_2a} :catchall_2b

    return v0

    :catchall_2b
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/views/CodeEditText$c;->Bx:Z

    if-eqz v1, :cond_40

    const-wide v2, 0x5fb2c79782e8590L

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p1}, Ljava/lang/Integer;-><init>(I)V

    move-object v1, v0

    move-object v4, p0

    move-object v6, p2

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_40
    throw v0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .registers 10

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/views/CodeEditText$c;->Jm:Z

    if-eqz v0, :cond_11

    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, p1}, Ljava/lang/Integer;-><init>(I)V

    const-wide v1, -0x5a5f4a27f2bcd211L  # -1.928576256955178E-127

    invoke-static {v1, v2, p0, v0, p2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_11
    .catchall {:try_start_0 .. :try_end_11} :catchall_37

    :cond_11
    const/4 v0, 0x4

    const/4 v1, 0x1

    if-ne p1, v0, :cond_1e

    :try_start_15
    iget-object v0, p0, Lcom/aide/ui/views/CodeEditText$c;->PH:Lcom/aide/ui/views/CodeEditText;

    invoke-virtual {v0}, Lcom/aide/ui/views/CodeEditText;->Hw()Z

    move-result v0

    if-eqz v0, :cond_1e

    return v1

    :cond_1e
    iget-object v0, p0, Lcom/aide/ui/views/CodeEditText$c;->PH:Lcom/aide/ui/views/CodeEditText;

    invoke-virtual {v0}, Lcom/aide/ui/views/CodeEditText;->getKeyStrokeDetector()Lcom/aide/common/KeyStrokeDetector;

    move-result-object v0

    iget-object v2, p0, Lcom/aide/ui/views/CodeEditText$c;->hp:Lcom/aide/common/KeyStrokeDetector$a;

    invoke-virtual {v0, p1, p2, v2}, Lcom/aide/common/KeyStrokeDetector;->DW(ILandroid/view/KeyEvent;Lcom/aide/common/KeyStrokeDetector$a;)Z

    move-result v0

    if-eqz v0, :cond_2d

    return v1

    :cond_2d
    invoke-super {p0, p1, p2}, Landroid/view/View;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result p1
    :try_end_31
    .catchall {:try_start_15 .. :try_end_31} :catchall_32

    return p1

    :catchall_32
    move-exception v0

    :try_start_33
    invoke-static {v0}, Lcom/aide/common/AIDELog;->e2(Ljava/lang/Throwable;)V
    :try_end_36
    .catchall {:try_start_33 .. :try_end_36} :catchall_37

    return v1

    :catchall_37
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/views/CodeEditText$c;->Bx:Z

    if-eqz v1, :cond_4c

    const-wide v2, -0x5a5f4a27f2bcd211L  # -1.928576256955178E-127

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p1}, Ljava/lang/Integer;-><init>(I)V

    move-object v1, v0

    move-object v4, p0

    move-object v6, p2

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_4c
    throw v0
.end method

.method protected onMeasure(II)V
    .registers 10
    .annotation runtime Labcd/su;
        method = 0xa4b91f81626fe71L
    .end annotation

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/views/CodeEditText$c;->Jm:Z

    if-eqz v0, :cond_16

    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p2}, Ljava/lang/Integer;-><init>(I)V

    const-wide v2, -0xb128dcaa6296375L

    invoke-static {v2, v3, p0, v0, v1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_16
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

    move-result v2

    iget-object v3, p0, Lcom/aide/ui/views/CodeEditText$c;->PH:Lcom/aide/ui/views/CodeEditText;

    invoke-virtual {v3}, Lcom/aide/ui/views/CodeEditText;->getTextPaddingRight()I

    move-result v3

    add-int/2addr v2, v3

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    iget-object v2, p0, Lcom/aide/ui/views/CodeEditText$c;->PH:Lcom/aide/ui/views/CodeEditText;

    invoke-virtual {v2}, Lcom/aide/ui/views/CodeEditText;->DW()Z

    move-result v2

    if-eqz v2, :cond_55

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    add-int/2addr v2, v0

    invoke-virtual {p0, v1, v2}, Landroid/view/View;->setMeasuredDimension(II)V

    goto :goto_60

    :cond_55
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-virtual {p0, v1, v0}, Landroid/view/View;->setMeasuredDimension(II)V
    :try_end_60
    .catchall {:try_start_0 .. :try_end_60} :catchall_61

    :goto_60
    return-void

    :catchall_61
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/views/CodeEditText$c;->Bx:Z

    if-eqz v1, :cond_7a

    const-wide v2, -0xb128dcaa6296375L

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    move-object v1, v0

    move-object v4, p0

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_7a
    throw v0
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .registers 9
    .annotation runtime Labcd/su;
        method = 0x55751a6dfbae2f7L
    .end annotation

    const-wide v0, 0x1f7b37855b0dfbdL

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/views/CodeEditText$c;->Jm:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    instance-of v2, p1, Landroid/os/Bundle;

    if-eqz v2, :cond_41

    move-object v2, p1

    check-cast v2, Landroid/os/Bundle;

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

    goto :goto_44

    :cond_41
    invoke-super {p0, p1}, Landroid/view/View;->onRestoreInstanceState(Landroid/os/Parcelable;)V
    :try_end_44
    .catchall {:try_start_5 .. :try_end_44} :catchall_45

    :goto_44
    return-void

    :catchall_45
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/views/CodeEditText$c;->Bx:Z

    if-eqz v3, :cond_4d

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_4d
    throw v2
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .registers 6
    .annotation runtime Labcd/su;
        method = 0x187bfa32f8e92d50L
    .end annotation

    const-wide v0, 0x3ccdc7a870739b74L  # 8.265586528888209E-16

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/views/CodeEditText$c;->Jm:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string v3, "instanceState"

    invoke-super {p0}, Landroid/view/View;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string v3, "selStartLine"

    iget-object v4, p0, Lcom/aide/ui/views/CodeEditText$c;->PH:Lcom/aide/ui/views/CodeEditText;

    invoke-virtual {v4}, Lcom/aide/ui/views/CodeEditText;->getSelectionStartLine()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v3, "selStartColumn"

    iget-object v4, p0, Lcom/aide/ui/views/CodeEditText$c;->PH:Lcom/aide/ui/views/CodeEditText;

    invoke-virtual {v4}, Lcom/aide/ui/views/CodeEditText;->getSelectionStartColumn()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v3, "selEndLine"

    iget-object v4, p0, Lcom/aide/ui/views/CodeEditText$c;->PH:Lcom/aide/ui/views/CodeEditText;

    invoke-virtual {v4}, Lcom/aide/ui/views/CodeEditText;->getSelectionEndLine()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v3, "selEndColumn"

    iget-object v4, p0, Lcom/aide/ui/views/CodeEditText$c;->PH:Lcom/aide/ui/views/CodeEditText;

    invoke-virtual {v4}, Lcom/aide/ui/views/CodeEditText;->getSelectionEndColumn()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v3, "fontSize"

    invoke-virtual {p0}, Lcom/aide/ui/views/editor/OConsole;->getFontSize()F

    move-result v4

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V
    :try_end_4f
    .catchall {:try_start_5 .. :try_end_4f} :catchall_50

    return-object v2

    :catchall_50
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/views/CodeEditText$c;->Bx:Z

    if-eqz v3, :cond_58

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_58
    throw v2
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 20

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    const-wide v3, -0x992ab5402346d48L

    :try_start_9
    sget-boolean v0, Lcom/aide/ui/views/CodeEditText$c;->Jm:Z

    if-eqz v0, :cond_10

    invoke-static {v3, v4, v1, v2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V
    :try_end_10
    .catchall {:try_start_9 .. :try_end_10} :catchall_1cd

    :cond_10
    const/4 v5, 0x1

    :try_start_11
    invoke-virtual/range {p0 .. p0}, Lcom/aide/ui/views/editor/OConsole;->we()Z

    move-result v0

    if-eqz v0, :cond_18

    return v5

    :cond_18
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, v1, Lcom/aide/ui/views/CodeEditText$c;->TI:F

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, v1, Lcom/aide/ui/views/CodeEditText$c;->ct:F

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    invoke-static/range {p1 .. p1}, Lcom/aide/common/g;->j6(Landroid/view/MotionEvent;)Z

    move-result v6

    iget-object v7, v1, Lcom/aide/ui/views/CodeEditText$c;->PH:Lcom/aide/ui/views/CodeEditText;

    invoke-virtual {v7}, Lcom/aide/ui/views/CodeEditText;->getKeyStrokeDetector()Lcom/aide/common/KeyStrokeDetector;

    move-result-object v7

    const/4 v8, 0x0

    if-eqz v7, :cond_43

    iget-object v7, v1, Lcom/aide/ui/views/CodeEditText$c;->PH:Lcom/aide/ui/views/CodeEditText;

    invoke-virtual {v7}, Lcom/aide/ui/views/CodeEditText;->getKeyStrokeDetector()Lcom/aide/common/KeyStrokeDetector;

    move-result-object v7

    invoke-virtual {v7}, Lcom/aide/common/KeyStrokeDetector;->j6()Z

    move-result v7

    if-eqz v7, :cond_43

    const/4 v7, 0x1

    goto :goto_44

    :cond_43
    const/4 v7, 0x0

    :goto_44
    iget v9, v1, Lcom/aide/ui/views/CodeEditText$c;->TI:F

    iget v10, v1, Lcom/aide/ui/views/editor/OConsole;->Cz:F

    cmpg-float v9, v9, v10

    if-gez v9, :cond_5c

    if-ne v0, v5, :cond_5b

    iget v0, v1, Lcom/aide/ui/views/CodeEditText$c;->TI:F

    iget v6, v1, Lcom/aide/ui/views/CodeEditText$c;->ct:F

    invoke-direct {v1, v0, v6}, Lcom/aide/ui/views/CodeEditText$c;->v5(FF)I

    move-result v0

    iget-object v6, v1, Lcom/aide/ui/views/CodeEditText$c;->PH:Lcom/aide/ui/views/CodeEditText;

    invoke-virtual {v6, v0}, Lcom/aide/ui/views/CodeEditText;->DW(I)V

    :cond_5b
    return v5

    :cond_5c
    iget-object v9, v1, Lcom/aide/ui/views/CodeEditText$c;->PH:Lcom/aide/ui/views/CodeEditText;

    invoke-static {v9}, Lcom/aide/ui/views/CodeEditText;->VH(Lcom/aide/ui/views/CodeEditText;)Z

    move-result v9

    const/4 v10, 0x3

    const/4 v11, 0x2

    if-nez v9, :cond_132

    if-eqz v7, :cond_6a

    goto/16 :goto_132

    :cond_6a
    if-eqz v6, :cond_f0

    invoke-static/range {p1 .. p1}, Lcom/aide/common/g;->DW(Landroid/view/MotionEvent;)Z

    move-result v6

    if-eqz v6, :cond_91

    iget v0, v1, Lcom/aide/ui/views/CodeEditText$c;->TI:F

    iget v6, v1, Lcom/aide/ui/views/CodeEditText$c;->ct:F

    invoke-direct {v1, v0, v6}, Lcom/aide/ui/views/CodeEditText$c;->v5(FF)I

    move-result v10

    iget v0, v1, Lcom/aide/ui/views/CodeEditText$c;->TI:F

    iget v6, v1, Lcom/aide/ui/views/CodeEditText$c;->ct:F

    invoke-direct {v1, v0, v6}, Lcom/aide/ui/views/CodeEditText$c;->Hw(FF)I

    move-result v11

    if-ltz v10, :cond_131

    iget-object v7, v1, Lcom/aide/ui/views/CodeEditText$c;->PH:Lcom/aide/ui/views/CodeEditText;

    invoke-static {v7}, Lcom/aide/ui/views/CodeEditText;->j6(Lcom/aide/ui/views/CodeEditText;)Ljava/util/List;

    move-result-object v12

    :goto_8a
    move v8, v10

    move v9, v11

    invoke-static/range {v7 .. v12}, Lcom/aide/ui/views/CodeEditText;->j6(Lcom/aide/ui/views/CodeEditText;IIIILjava/util/List;)V

    goto/16 :goto_131

    :cond_91
    if-nez v0, :cond_b8

    iput-boolean v5, v1, Lcom/aide/ui/views/CodeEditText$c;->E4:Z

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iput-wide v6, v1, Lcom/aide/ui/views/CodeEditText$c;->Fd:J

    iget v0, v1, Lcom/aide/ui/views/CodeEditText$c;->TI:F

    iput v0, v1, Lcom/aide/ui/views/CodeEditText$c;->Lz:F

    iget v6, v1, Lcom/aide/ui/views/CodeEditText$c;->ct:F

    iput v6, v1, Lcom/aide/ui/views/CodeEditText$c;->sT:F

    invoke-direct {v1, v0, v6}, Lcom/aide/ui/views/CodeEditText$c;->v5(FF)I

    move-result v10

    iget v0, v1, Lcom/aide/ui/views/CodeEditText$c;->TI:F

    iget v6, v1, Lcom/aide/ui/views/CodeEditText$c;->ct:F

    invoke-direct {v1, v0, v6}, Lcom/aide/ui/views/CodeEditText$c;->Hw(FF)I

    move-result v11

    if-ltz v10, :cond_131

    iget-object v7, v1, Lcom/aide/ui/views/CodeEditText$c;->PH:Lcom/aide/ui/views/CodeEditText;

    invoke-static {v7}, Lcom/aide/ui/views/CodeEditText;->DW(Lcom/aide/ui/views/CodeEditText;)Ljava/util/List;

    move-result-object v12

    goto :goto_8a

    :cond_b8
    if-ne v0, v11, :cond_131

    iget-boolean v0, v1, Lcom/aide/ui/views/CodeEditText$c;->E4:Z

    if-eqz v0, :cond_131

    iget v0, v1, Lcom/aide/ui/views/CodeEditText$c;->TI:F

    iget v6, v1, Lcom/aide/ui/views/CodeEditText$c;->ct:F

    invoke-direct {v1, v0, v6}, Lcom/aide/ui/views/CodeEditText$c;->v5(FF)I

    move-result v8

    iget v0, v1, Lcom/aide/ui/views/CodeEditText$c;->TI:F

    iget v6, v1, Lcom/aide/ui/views/CodeEditText$c;->ct:F

    invoke-direct {v1, v0, v6}, Lcom/aide/ui/views/CodeEditText$c;->Hw(FF)I

    move-result v9

    iget v0, v1, Lcom/aide/ui/views/CodeEditText$c;->Lz:F

    iget v6, v1, Lcom/aide/ui/views/CodeEditText$c;->sT:F

    invoke-direct {v1, v0, v6}, Lcom/aide/ui/views/CodeEditText$c;->v5(FF)I

    move-result v10

    iget v0, v1, Lcom/aide/ui/views/CodeEditText$c;->Lz:F

    iget v6, v1, Lcom/aide/ui/views/CodeEditText$c;->sT:F

    invoke-direct {v1, v0, v6}, Lcom/aide/ui/views/CodeEditText$c;->Hw(FF)I

    move-result v11

    if-ltz v10, :cond_131

    if-ltz v8, :cond_131

    if-ne v8, v10, :cond_e6

    if-eq v9, v11, :cond_131

    :cond_e6
    iget-object v7, v1, Lcom/aide/ui/views/CodeEditText$c;->PH:Lcom/aide/ui/views/CodeEditText;

    invoke-static {v7}, Lcom/aide/ui/views/CodeEditText;->FH(Lcom/aide/ui/views/CodeEditText;)Ljava/util/List;

    move-result-object v12

    invoke-static/range {v7 .. v12}, Lcom/aide/ui/views/CodeEditText;->j6(Lcom/aide/ui/views/CodeEditText;IIIILjava/util/List;)V

    goto :goto_131

    :cond_f0
    if-nez v0, :cond_f6

    invoke-direct/range {p0 .. p0}, Lcom/aide/ui/views/CodeEditText$c;->SI()V

    goto :goto_131

    :cond_f6
    if-ne v0, v11, :cond_f9

    goto :goto_131

    :cond_f9
    if-ne v0, v10, :cond_ff

    invoke-direct/range {p0 .. p0}, Lcom/aide/ui/views/CodeEditText$c;->KD()V

    goto :goto_131

    :cond_ff
    if-ne v0, v5, :cond_131

    invoke-direct/range {p0 .. p0}, Lcom/aide/ui/views/CodeEditText$c;->KD()V

    iget-boolean v0, v1, Lcom/aide/ui/views/CodeEditText$c;->AR:Z

    if-nez v0, :cond_131

    iget v0, v1, Lcom/aide/ui/views/CodeEditText$c;->TI:F

    iget v6, v1, Lcom/aide/ui/views/CodeEditText$c;->ct:F

    invoke-direct {v1, v0, v6}, Lcom/aide/ui/views/CodeEditText$c;->v5(FF)I

    move-result v12

    iget v0, v1, Lcom/aide/ui/views/CodeEditText$c;->TI:F

    iget v6, v1, Lcom/aide/ui/views/CodeEditText$c;->ct:F

    invoke-direct {v1, v0, v6}, Lcom/aide/ui/views/CodeEditText$c;->Hw(FF)I

    move-result v13

    if-ltz v12, :cond_131

    iget-object v0, v1, Lcom/aide/ui/views/CodeEditText$c;->PH:Lcom/aide/ui/views/CodeEditText;

    invoke-virtual {v0}, Lcom/aide/ui/views/CodeEditText;->getKeyStrokeDetector()Lcom/aide/common/KeyStrokeDetector;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aide/common/KeyStrokeDetector;->DW()V

    invoke-virtual {v1, v8}, Landroid/view/View;->playSoundEffect(I)V

    iget-object v9, v1, Lcom/aide/ui/views/CodeEditText$c;->PH:Lcom/aide/ui/views/CodeEditText;

    invoke-static {v9}, Lcom/aide/ui/views/CodeEditText;->Hw(Lcom/aide/ui/views/CodeEditText;)Ljava/util/List;

    move-result-object v14

    move v10, v12

    move v11, v13

    invoke-static/range {v9 .. v14}, Lcom/aide/ui/views/CodeEditText;->j6(Lcom/aide/ui/views/CodeEditText;IIIILjava/util/List;)V

    :cond_131
    :goto_131
    return v5

    :cond_132
    :goto_132
    iget v6, v1, Lcom/aide/ui/views/CodeEditText$c;->TI:F

    iget v7, v1, Lcom/aide/ui/views/CodeEditText$c;->ct:F

    invoke-direct {v1, v6, v7}, Lcom/aide/ui/views/CodeEditText$c;->v5(FF)I

    move-result v15

    iget v6, v1, Lcom/aide/ui/views/CodeEditText$c;->TI:F

    iget v7, v1, Lcom/aide/ui/views/CodeEditText$c;->ct:F

    invoke-direct {v1, v6, v7}, Lcom/aide/ui/views/CodeEditText$c;->Hw(FF)I

    move-result v6

    iget-object v7, v1, Lcom/aide/ui/views/CodeEditText$c;->PH:Lcom/aide/ui/views/CodeEditText;

    invoke-virtual {v7, v15, v6}, Lcom/aide/ui/views/CodeEditText;->Hw(II)I

    move-result v14

    const/4 v6, -0x1

    if-nez v0, :cond_16b

    invoke-direct/range {p0 .. p0}, Lcom/aide/ui/views/CodeEditText$c;->SI()V

    iput v6, v1, Lcom/aide/ui/views/CodeEditText$c;->PT:I

    iput v6, v1, Lcom/aide/ui/views/CodeEditText$c;->Of:I

    if-eq v14, v6, :cond_1c7

    iput v14, v1, Lcom/aide/ui/views/CodeEditText$c;->Of:I

    iput v15, v1, Lcom/aide/ui/views/CodeEditText$c;->PT:I

    invoke-direct/range {p0 .. p0}, Lcom/aide/ui/views/CodeEditText$c;->getCodeEditTextEditorModel()Lcom/aide/ui/views/CodeEditText$a;

    move-result-object v0

    add-int/lit8 v6, v15, -0x1

    add-int/lit8 v7, v14, -0x1

    iget-object v8, v1, Lcom/aide/ui/views/CodeEditText$c;->PH:Lcom/aide/ui/views/CodeEditText;

    invoke-virtual {v8, v15, v14}, Lcom/aide/ui/views/CodeEditText;->FH(II)I

    move-result v8

    sub-int/2addr v8, v11

    invoke-virtual {v0, v6, v7, v8}, Lcom/aide/ui/views/CodeEditText$a;->DW(III)V

    goto :goto_1c7

    :cond_16b
    if-ne v0, v11, :cond_183

    iget v0, v1, Lcom/aide/ui/views/CodeEditText$c;->Of:I

    if-eq v0, v6, :cond_1c7

    if-ne v14, v0, :cond_177

    iget v0, v1, Lcom/aide/ui/views/CodeEditText$c;->PT:I

    if-eq v15, v0, :cond_1c7

    :cond_177
    iput v6, v1, Lcom/aide/ui/views/CodeEditText$c;->PT:I

    iput v6, v1, Lcom/aide/ui/views/CodeEditText$c;->Of:I

    invoke-direct/range {p0 .. p0}, Lcom/aide/ui/views/CodeEditText$c;->getCodeEditTextEditorModel()Lcom/aide/ui/views/CodeEditText$a;

    move-result-object v0

    :goto_17f
    invoke-virtual {v0}, Lcom/aide/ui/views/CodeEditText$a;->vy()V

    goto :goto_1c7

    :cond_183
    if-ne v0, v10, :cond_195

    invoke-direct/range {p0 .. p0}, Lcom/aide/ui/views/CodeEditText$c;->KD()V

    iget v0, v1, Lcom/aide/ui/views/CodeEditText$c;->Of:I

    if-eq v0, v6, :cond_1c7

    iput v6, v1, Lcom/aide/ui/views/CodeEditText$c;->PT:I

    iput v6, v1, Lcom/aide/ui/views/CodeEditText$c;->Of:I

    invoke-direct/range {p0 .. p0}, Lcom/aide/ui/views/CodeEditText$c;->getCodeEditTextEditorModel()Lcom/aide/ui/views/CodeEditText$a;

    move-result-object v0

    goto :goto_17f

    :cond_195
    if-ne v0, v5, :cond_1c7

    invoke-direct/range {p0 .. p0}, Lcom/aide/ui/views/CodeEditText$c;->KD()V

    iget v0, v1, Lcom/aide/ui/views/CodeEditText$c;->Of:I

    if-eq v0, v6, :cond_1c7

    iget-boolean v7, v1, Lcom/aide/ui/views/CodeEditText$c;->AR:Z

    if-nez v7, :cond_1be

    if-ne v14, v0, :cond_1be

    iget v0, v1, Lcom/aide/ui/views/CodeEditText$c;->PT:I

    if-ne v15, v0, :cond_1be

    invoke-virtual {v1, v8}, Landroid/view/View;->playSoundEffect(I)V

    invoke-virtual {v1, v5, v5}, Landroid/view/View;->performHapticFeedback(II)Z

    iget-object v12, v1, Lcom/aide/ui/views/CodeEditText$c;->PH:Lcom/aide/ui/views/CodeEditText;

    invoke-virtual {v12, v15, v14}, Lcom/aide/ui/views/CodeEditText;->FH(II)I

    move-result v16

    iget-object v0, v1, Lcom/aide/ui/views/CodeEditText$c;->PH:Lcom/aide/ui/views/CodeEditText;

    invoke-static {v0}, Lcom/aide/ui/views/CodeEditText;->gn(Lcom/aide/ui/views/CodeEditText;)Ljava/util/List;

    move-result-object v17

    move v13, v15

    invoke-static/range {v12 .. v17}, Lcom/aide/ui/views/CodeEditText;->j6(Lcom/aide/ui/views/CodeEditText;IIIILjava/util/List;)V

    :cond_1be
    iput v6, v1, Lcom/aide/ui/views/CodeEditText$c;->PT:I

    iput v6, v1, Lcom/aide/ui/views/CodeEditText$c;->Of:I

    invoke-direct/range {p0 .. p0}, Lcom/aide/ui/views/CodeEditText$c;->getCodeEditTextEditorModel()Lcom/aide/ui/views/CodeEditText$a;

    move-result-object v0
    :try_end_1c6
    .catchall {:try_start_11 .. :try_end_1c6} :catchall_1c8

    goto :goto_17f

    :cond_1c7
    :goto_1c7
    return v5

    :catchall_1c8
    move-exception v0

    :try_start_1c9
    invoke-static {v0}, Lcom/aide/common/AIDELog;->e2(Ljava/lang/Throwable;)V
    :try_end_1cc
    .catchall {:try_start_1c9 .. :try_end_1cc} :catchall_1cd

    return v5

    :catchall_1cd
    move-exception v0

    sget-boolean v5, Lcom/aide/ui/views/CodeEditText$c;->Bx:Z

    if-eqz v5, :cond_1d5

    invoke-static {v0, v3, v4, v1, v2}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1d5
    goto :goto_1d7

    :goto_1d6
    throw v0

    :goto_1d7
    goto :goto_1d6
.end method

.method public setShowCaretLine(Z)V
    .registers 6

    const-wide v0, 0x43a4ccb337948307L  # 7.4938491365186035E17

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/views/CodeEditText$c;->Jm:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Z)V

    :cond_c
    iput-boolean p1, p0, Lcom/aide/ui/views/CodeEditText$c;->xg:Z

    invoke-virtual {p0}, Lcom/aide/ui/views/CodeEditText$c;->Hw()V
    :try_end_11
    .catchall {:try_start_5 .. :try_end_11} :catchall_12

    return-void

    :catchall_12
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/views/CodeEditText$c;->Bx:Z

    if-eqz v3, :cond_1f

    new-instance v3, Ljava/lang/Boolean;

    invoke-direct {v3, p1}, Ljava/lang/Boolean;-><init>(Z)V

    invoke-static {v2, v0, v1, p0, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1f
    throw v2
.end method

.method public u7(II)V
    .registers 10

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/views/CodeEditText$c;->Jm:Z

    if-eqz v0, :cond_16

    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p2}, Ljava/lang/Integer;-><init>(I)V

    const-wide v2, 0x2374aff6cdd65ad4L  # 6.948755966471727E-138

    invoke-static {v2, v3, p0, v0, v1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_16
    invoke-direct {p0}, Lcom/aide/ui/views/CodeEditText$c;->getCodeEditTextEditorModel()Lcom/aide/ui/views/CodeEditText$a;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/aide/ui/views/CodeEditText$a;->Ws(II)Z

    move-result v0

    if-nez v0, :cond_23

    invoke-super {p0, p1, p2}, Lcom/aide/ui/views/editor/OEditor;->u7(II)V
    :try_end_23
    .catchall {:try_start_0 .. :try_end_23} :catchall_24

    :cond_23
    return-void

    :catchall_24
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/views/CodeEditText$c;->Bx:Z

    if-eqz v1, :cond_3d

    const-wide v2, 0x2374aff6cdd65ad4L  # 6.948755966471727E-138

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    move-object v1, v0

    move-object v4, p0

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_3d
    throw v0
.end method
