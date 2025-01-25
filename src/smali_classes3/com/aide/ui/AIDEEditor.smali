.class public Lcom/aide/ui/AIDEEditor;
.super Lcom/aide/ui/views/CodeEditText;

# interfaces
.implements Labcd/ck$a;


# annotations
.annotation runtime Labcd/xu;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/aide/ui/AIDEEditor$a;
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
.field private Mr:Ljava/lang/String;
    .annotation runtime Labcd/ru;
        field = 0x310213780788648L
    .end annotation
.end field

.field private QX:Ljava/lang/String;
    .annotation runtime Labcd/ru;
        field = -0x1c9fbd4861535668L
    .end annotation
.end field

.field private U2:I
    .annotation runtime Labcd/ru;
        field = -0x4f758a1ef11ab747L
    .end annotation
.end field

.field private Ws:Lcom/aide/ui/j;
    .annotation runtime Labcd/ru;
        field = 0x3d59b6b5f5b32444L
    .end annotation
.end field

.field private XL:Ljava/lang/String;
    .annotation runtime Labcd/ru;
        field = -0x1de0fae4b93a2f68L
    .end annotation
.end field

.field private a8:Z
    .annotation runtime Labcd/ru;
        field = -0x292bedb2e1675a00L
    .end annotation
.end field

.field private aM:Ljava/lang/String;
    .annotation runtime Labcd/ru;
        field = -0x1ca512964c587229L
    .end annotation
.end field

.field private er:Z
    .annotation runtime Labcd/ru;
        field = 0xbc88ae5d9bfd2b8L
    .end annotation
.end field

.field private j3:Ljava/lang/String;
    .annotation runtime Labcd/ru;
        field = 0x28d79a885bd21164L
    .end annotation
.end field

.field private lg:Z
    .annotation runtime Labcd/ru;
        field = -0x5c05673cf9f85039L
    .end annotation
.end field

.field private rN:Landroid/animation/AnimatorSet;
    .annotation runtime Labcd/ru;
        field = 0x55629627a31b0f8L
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const-class v0, Lcom/aide/ui/AIDEEditor;

    const-wide v1, -0xa1a685f40ce8470L  # -8.299751922617364E259

    invoke-static {v0, v1, v2, v1, v2}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 7

    const/4 v0, 0x0

    const-wide v1, 0x43d19691d8b324dL

    :try_start_6
    sget-boolean v3, Lcom/aide/ui/AIDEEditor;->J0:Z

    if-eqz v3, :cond_d

    invoke-static {v1, v2, v0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_d
    invoke-direct {p0, p1}, Lcom/aide/ui/views/CodeEditText;-><init>(Landroid/content/Context;)V

    new-instance v3, Lcom/aide/ui/j;

    invoke-direct {v3, p0}, Lcom/aide/ui/j;-><init>(Lcom/aide/ui/AIDEEditor;)V

    iput-object v3, p0, Lcom/aide/ui/AIDEEditor;->Ws:Lcom/aide/ui/j;

    invoke-direct {p0}, Lcom/aide/ui/AIDEEditor;->sh()V
    :try_end_1a
    .catchall {:try_start_6 .. :try_end_1a} :catchall_1b

    return-void

    :catchall_1b
    move-exception v3

    sget-boolean v4, Lcom/aide/ui/AIDEEditor;->J8:Z

    if-eqz v4, :cond_23

    invoke-static {v3, v1, v2, v0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_23
    throw v3
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 10

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/AIDEEditor;->J0:Z

    if-eqz v0, :cond_d

    const-wide v0, -0x1331c5effa87ea8L  # -6.191000026711815E302

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, p1, p2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_d
    invoke-direct {p0, p1, p2}, Lcom/aide/ui/views/CodeEditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance v0, Lcom/aide/ui/j;

    invoke-direct {v0, p0}, Lcom/aide/ui/j;-><init>(Lcom/aide/ui/AIDEEditor;)V

    iput-object v0, p0, Lcom/aide/ui/AIDEEditor;->Ws:Lcom/aide/ui/j;

    invoke-direct {p0}, Lcom/aide/ui/AIDEEditor;->sh()V
    :try_end_1a
    .catchall {:try_start_0 .. :try_end_1a} :catchall_1b

    return-void

    :catchall_1b
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/AIDEEditor;->J8:Z

    if-eqz v1, :cond_2c

    const-wide v2, -0x1331c5effa87ea8L  # -6.191000026711815E302

    const/4 v4, 0x0

    move-object v1, v0

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_2c
    throw v0
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 12

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/AIDEEditor;->J0:Z

    if-eqz v0, :cond_14

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p3}, Ljava/lang/Integer;-><init>(I)V

    const-wide v1, 0x134f77531e77973L

    const/4 v3, 0x0

    move-object v4, p1

    move-object v5, p2

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_14
    invoke-direct {p0, p1, p2, p3}, Lcom/aide/ui/views/CodeEditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance v0, Lcom/aide/ui/j;

    invoke-direct {v0, p0}, Lcom/aide/ui/j;-><init>(Lcom/aide/ui/AIDEEditor;)V

    iput-object v0, p0, Lcom/aide/ui/AIDEEditor;->Ws:Lcom/aide/ui/j;

    invoke-direct {p0}, Lcom/aide/ui/AIDEEditor;->sh()V
    :try_end_21
    .catchall {:try_start_0 .. :try_end_21} :catchall_22

    return-void

    :catchall_22
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/AIDEEditor;->J8:Z

    if-eqz v1, :cond_38

    const-wide v2, 0x134f77531e77973L

    const/4 v4, 0x0

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, p3}, Ljava/lang/Integer;-><init>(I)V

    move-object v1, v0

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v1 .. v7}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_38
    throw v0
.end method

.method static synthetic DW(Lcom/aide/ui/AIDEEditor;)V
    .registers 1

    invoke-direct {p0}, Lcom/aide/ui/AIDEEditor;->Sf()V

    return-void
.end method

.method static synthetic EQ(Lcom/aide/ui/AIDEEditor;)Lcom/aide/ui/views/CodeEditText$c;
    .registers 1

    invoke-virtual {p0}, Lcom/aide/ui/views/CodeEditText;->getOEditorView()Lcom/aide/ui/views/CodeEditText$c;

    move-result-object p0

    return-object p0
.end method

.method private FH(Ljava/lang/String;)Labcd/Nk$a;
    .registers 6
    .annotation runtime Labcd/su;
        method = -0x170cbed7b9308f30L
    .end annotation

    const-wide v0, -0x1025940b57583341L  # -6.409401609746032E230

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/AIDEEditor;->J0:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    new-instance v2, Lcom/aide/ui/AIDEEditor$a;

    invoke-direct {v2, p0, p1}, Lcom/aide/ui/AIDEEditor$a;-><init>(Lcom/aide/ui/AIDEEditor;Ljava/lang/String;)V
    :try_end_11
    .catchall {:try_start_5 .. :try_end_11} :catchall_12

    return-object v2

    :catchall_12
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/AIDEEditor;->J8:Z

    if-eqz v3, :cond_1a

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1a
    throw v2
.end method

.method private FH(III)V
    .registers 12
    .annotation runtime Labcd/su;
        method = 0x37b1b2225d768418L
    .end annotation

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/AIDEEditor;->J0:Z

    if-eqz v0, :cond_1c

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p3}, Ljava/lang/Integer;-><init>(I)V

    const-wide v1, 0xb6a1dd07d2cbb37L

    move-object v3, p0

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1c
    invoke-static {}, Lcom/aide/ui/U;->we()Labcd/ck;

    move-result-object v1

    invoke-virtual {p0}, Lcom/aide/ui/AIDEEditor;->getFilePath()Ljava/lang/String;

    move-result-object v2

    move v3, p1

    move v4, p2

    move v5, p1

    move v6, p3

    invoke-virtual/range {v1 .. v6}, Labcd/ck;->j6(Ljava/lang/String;IIII)Lcom/aide/engine/SyntaxError;

    move-result-object v0

    if-eqz v0, :cond_35

    invoke-static {}, Lcom/aide/ui/U;->we()Labcd/ck;

    move-result-object v1

    invoke-virtual {v1, v0}, Labcd/ck;->j6(Lcom/aide/engine/SyntaxError;)V

    :cond_35
    invoke-virtual {p0, p1, p2}, Lcom/aide/ui/views/CodeEditText;->Zo(II)Z

    move-result v0

    if-nez v0, :cond_44

    invoke-virtual {p0, p1, p3}, Lcom/aide/ui/views/CodeEditText;->Zo(II)Z

    move-result v0

    if-nez v0, :cond_44

    invoke-virtual {p0, p1, p2, p1, p3}, Lcom/aide/ui/AIDEEditor;->j6(IIII)V

    :cond_44
    invoke-virtual {p0}, Landroid/view/ViewGroup;->isInTouchMode()Z

    move-result v0

    if-eqz v0, :cond_54

    invoke-virtual {p0}, Lcom/aide/ui/views/CodeEditText;->j3()V

    invoke-virtual {p0}, Lcom/aide/ui/views/CodeEditText;->gn()V

    invoke-virtual {p0}, Lcom/aide/ui/AIDEEditor;->KD()V

    goto :goto_7c

    :cond_54
    invoke-virtual {p0}, Lcom/aide/ui/AIDEEditor;->KD()V

    invoke-static {}, Lcom/aide/ui/U;->lg()Lcom/aide/ui/MainActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const-string v2, "action_bar_container"

    const-string v3, "id"

    const-string v4, "android"

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_7c

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/view/View;->requestFocus(I)Z
    :try_end_7c
    .catchall {:try_start_0 .. :try_end_7c} :catchall_7d

    :cond_7c
    :goto_7c
    return-void

    :catchall_7d
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/AIDEEditor;->J8:Z

    if-eqz v1, :cond_9b

    const-wide v2, 0xb6a1dd07d2cbb37L

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, p3}, Ljava/lang/Integer;-><init>(I)V

    move-object v1, v0

    move-object v4, p0

    invoke-static/range {v1 .. v7}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_9b
    throw v0
.end method

.method static synthetic FH(Lcom/aide/ui/AIDEEditor;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/aide/ui/AIDEEditor;->er:Z

    return p0
.end method

.method static synthetic Hw(Lcom/aide/ui/AIDEEditor;)Landroid/animation/AnimatorSet;
    .registers 1

    iget-object p0, p0, Lcom/aide/ui/AIDEEditor;->rN:Landroid/animation/AnimatorSet;

    return-object p0
.end method

.method static synthetic J0(Lcom/aide/ui/AIDEEditor;)Lcom/aide/ui/views/CodeEditText$c;
    .registers 1

    invoke-virtual {p0}, Lcom/aide/ui/views/CodeEditText;->getOEditorView()Lcom/aide/ui/views/CodeEditText$c;

    move-result-object p0

    return-object p0
.end method

.method static synthetic J8(Lcom/aide/ui/AIDEEditor;)Lcom/aide/ui/views/CodeEditText$c;
    .registers 1

    invoke-virtual {p0}, Lcom/aide/ui/views/CodeEditText;->getOEditorView()Lcom/aide/ui/views/CodeEditText$c;

    move-result-object p0

    return-object p0
.end method

.method static synthetic Mr(Lcom/aide/ui/AIDEEditor;)Lcom/aide/ui/views/CodeEditText$c;
    .registers 1

    invoke-virtual {p0}, Lcom/aide/ui/views/CodeEditText;->getOEditorView()Lcom/aide/ui/views/CodeEditText$c;

    move-result-object p0

    return-object p0
.end method

.method static synthetic QX(Lcom/aide/ui/AIDEEditor;)Lcom/aide/ui/views/CodeEditText$c;
    .registers 1

    invoke-virtual {p0}, Lcom/aide/ui/views/CodeEditText;->getOEditorView()Lcom/aide/ui/views/CodeEditText$c;

    move-result-object p0

    return-object p0
.end method

.method private Sf()V
    .registers 5
    .annotation runtime Labcd/su;
        method = -0x1321e3f6cb7c60b0L
    .end annotation

    const-wide v0, 0x691a07b5b9b88a71L  # 1.945777955372681E198

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/AIDEEditor;->J0:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/aide/ui/AIDEEditor;->er:Z
    :try_end_f
    .catchall {:try_start_5 .. :try_end_f} :catchall_10

    return-void

    :catchall_10
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/AIDEEditor;->J8:Z

    if-eqz v3, :cond_18

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_18
    throw v2
.end method

.method static synthetic U2(Lcom/aide/ui/AIDEEditor;)Lcom/aide/ui/views/CodeEditText$c;
    .registers 1

    invoke-virtual {p0}, Lcom/aide/ui/views/CodeEditText;->getOEditorView()Lcom/aide/ui/views/CodeEditText$c;

    move-result-object p0

    return-object p0
.end method

.method static synthetic VH(Lcom/aide/ui/AIDEEditor;)Lcom/aide/ui/views/CodeEditText$c;
    .registers 1

    invoke-virtual {p0}, Lcom/aide/ui/views/CodeEditText;->getOEditorView()Lcom/aide/ui/views/CodeEditText$c;

    move-result-object p0

    return-object p0
.end method

.method static synthetic Ws(Lcom/aide/ui/AIDEEditor;)I
    .registers 1

    invoke-direct {p0}, Lcom/aide/ui/AIDEEditor;->getIndentationSize()I

    move-result p0

    return p0
.end method

.method static synthetic XL(Lcom/aide/ui/AIDEEditor;)Lcom/aide/ui/views/CodeEditText$c;
    .registers 1

    invoke-virtual {p0}, Lcom/aide/ui/views/CodeEditText;->getOEditorView()Lcom/aide/ui/views/CodeEditText$c;

    move-result-object p0

    return-object p0
.end method

.method static synthetic Zo(Lcom/aide/ui/AIDEEditor;)Lcom/aide/ui/views/CodeEditText$c;
    .registers 1

    invoke-virtual {p0}, Lcom/aide/ui/views/CodeEditText;->getOEditorView()Lcom/aide/ui/views/CodeEditText$c;

    move-result-object p0

    return-object p0
.end method

.method static synthetic a8(Lcom/aide/ui/AIDEEditor;)Lcom/aide/ui/views/CodeEditText$c;
    .registers 1

    invoke-virtual {p0}, Lcom/aide/ui/views/CodeEditText;->getOEditorView()Lcom/aide/ui/views/CodeEditText$c;

    move-result-object p0

    return-object p0
.end method

.method static synthetic aM(Lcom/aide/ui/AIDEEditor;)Lcom/aide/ui/j;
    .registers 1

    iget-object p0, p0, Lcom/aide/ui/AIDEEditor;->Ws:Lcom/aide/ui/j;

    return-object p0
.end method

.method private cb()Z
    .registers 5
    .annotation runtime Labcd/su;
        method = 0x8ef500c60859537L
    .end annotation

    const-wide v0, 0x8a2c9bdc9787648L  # 4.55214002036637E-267

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/AIDEEditor;->J0:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/aide/common/g;->J8(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_1e

    invoke-static {}, Lcom/aide/ui/U;->dx()Z

    move-result v0
    :try_end_1a
    .catchall {:try_start_5 .. :try_end_1a} :catchall_20

    if-eqz v0, :cond_1e

    const/4 v0, 0x1

    goto :goto_1f

    :cond_1e
    const/4 v0, 0x0

    :goto_1f
    return v0

    :catchall_20
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/AIDEEditor;->J8:Z

    if-eqz v3, :cond_28

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_28
    throw v2
.end method

.method private dx()V
    .registers 5
    .annotation runtime Labcd/su;
        method = -0x2f8f2c2458e60687L
    .end annotation

    const-wide v0, 0x7635beefd7652c0L

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/AIDEEditor;->J0:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    invoke-static {}, Lcom/aide/ui/U;->gn()Lcom/aide/ui/debugger/Debugger;

    move-result-object v2

    invoke-virtual {p0}, Lcom/aide/ui/AIDEEditor;->getFilePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/aide/ui/debugger/Debugger;->j6(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    invoke-direct {p0}, Lcom/aide/ui/AIDEEditor;->getEditorModel()Lcom/aide/ui/AIDEEditor$a;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/aide/ui/AIDEEditor$a;->DW(Ljava/util/List;)V
    :try_end_1f
    .catchall {:try_start_5 .. :try_end_1f} :catchall_20

    return-void

    :catchall_20
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/AIDEEditor;->J8:Z

    if-eqz v3, :cond_28

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_28
    throw v2
.end method

.method private ef()V
    .registers 5
    .annotation runtime Labcd/su;
        method = 0x2005a0fb1c313d6fL
    .end annotation

    const-wide v0, 0x4daedc831fe71810L  # 1.625041104924871E66

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/AIDEEditor;->J0:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    invoke-virtual {p0}, Lcom/aide/ui/views/CodeEditText;->getOEditorView()Lcom/aide/ui/views/CodeEditText$c;

    move-result-object v2

    new-instance v3, Lcom/aide/ui/AIDEEditor$a;

    invoke-direct {v3, p0}, Lcom/aide/ui/AIDEEditor$a;-><init>(Lcom/aide/ui/AIDEEditor;)V

    invoke-virtual {v2, v3}, Lcom/aide/ui/views/editor/OEditor;->setModel(Lcom/aide/ui/views/editor/o;)V

    invoke-virtual {p0}, Lcom/aide/ui/views/CodeEditText;->getOEditorView()Lcom/aide/ui/views/CodeEditText$c;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/aide/ui/views/editor/OConsole;->setHidden(Z)V

    invoke-virtual {p0}, Lcom/aide/ui/views/CodeEditText;->getOEditorView()Lcom/aide/ui/views/CodeEditText$c;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/aide/ui/views/editor/OEditor;->setEditable(Z)V
    :try_end_28
    .catchall {:try_start_5 .. :try_end_28} :catchall_29

    return-void

    :catchall_29
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/AIDEEditor;->J8:Z

    if-eqz v3, :cond_31

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_31
    throw v2
.end method

.method private getActivity()Lcom/aide/ui/MainActivity;
    .registers 5
    .annotation runtime Labcd/su;
        method = 0x2e8434cd6c053b2cL
    .end annotation

    const-wide v0, 0x2e816842052beb89L  # 1.1200607485138442E-84

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/AIDEEditor;->J0:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v2

    check-cast v2, Lcom/aide/ui/MainActivity;
    :try_end_12
    .catchall {:try_start_5 .. :try_end_12} :catchall_13

    return-object v2

    :catchall_13
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/AIDEEditor;->J8:Z

    if-eqz v3, :cond_1b

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1b
    throw v2
.end method

.method private getEditorModel()Lcom/aide/ui/AIDEEditor$a;
    .registers 5
    .annotation runtime Labcd/su;
        method = -0x130690ed1a6c0c93L
    .end annotation

    const-wide v0, -0x3a1860b270203be0L  # -5.848592565949835E28

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/AIDEEditor;->J0:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    invoke-virtual {p0}, Lcom/aide/ui/views/CodeEditText;->getOEditorView()Lcom/aide/ui/views/CodeEditText$c;

    move-result-object v2

    invoke-virtual {v2}, Lcom/aide/ui/views/editor/OEditor;->getEditorModel()Lcom/aide/ui/views/editor/g;

    move-result-object v2

    check-cast v2, Lcom/aide/ui/AIDEEditor$a;
    :try_end_16
    .catchall {:try_start_5 .. :try_end_16} :catchall_17

    return-object v2

    :catchall_17
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/AIDEEditor;->J8:Z

    if-eqz v3, :cond_1f

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1f
    throw v2
.end method

.method private getIndentationSize()I
    .registers 5
    .annotation runtime Labcd/su;
        method = -0x5f0b31b7b6662119L
    .end annotation

    const-wide v0, -0x5b73d5f110cd520cL

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/AIDEEditor;->J0:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    invoke-virtual {p0}, Lcom/aide/ui/AIDEEditor;->getFilePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    const-string v3, ".java"

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_21

    invoke-static {}, Lcom/aide/ui/aa;->er()I

    move-result v0

    return v0

    :cond_21
    const-string v3, ".js"

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2e

    invoke-static {}, Lcom/aide/ui/aa;->gW()I

    move-result v0

    return v0

    :cond_2e
    const-string v3, ".c"

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_94

    const-string v3, ".cpp"

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_94

    const-string v3, ".h"

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_94

    const-string v3, ".cc"

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_94

    const-string v3, ".hh"

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_94

    const-string v3, ".hpp"

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5f

    goto :goto_94

    :cond_5f
    const-string v3, ".xml"

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6c

    invoke-static {}, Lcom/aide/ui/aa;->sG()I

    move-result v0

    return v0

    :cond_6c
    const-string v3, ".html"

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_8f

    const-string v3, ".htm"

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_7d

    goto :goto_8f

    :cond_7d
    const-string v3, ".css"

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_8a

    invoke-static {}, Lcom/aide/ui/aa;->u7()I

    move-result v0

    return v0

    :cond_8a
    invoke-virtual {p0}, Lcom/aide/ui/views/CodeEditText;->getTabSize()I

    move-result v0

    return v0

    :cond_8f
    :goto_8f
    invoke-static {}, Lcom/aide/ui/aa;->Mr()I

    move-result v0

    return v0

    :cond_94
    :goto_94
    invoke-static {}, Lcom/aide/ui/aa;->VH()I

    move-result v0
    :try_end_98
    .catchall {:try_start_5 .. :try_end_98} :catchall_99

    return v0

    :catchall_99
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/AIDEEditor;->J8:Z

    if-eqz v3, :cond_a1

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_a1
    throw v2
.end method

.method static synthetic gn(Lcom/aide/ui/AIDEEditor;)Lcom/aide/ui/views/CodeEditText$c;
    .registers 1

    invoke-virtual {p0}, Lcom/aide/ui/views/CodeEditText;->getOEditorView()Lcom/aide/ui/views/CodeEditText$c;

    move-result-object p0

    return-object p0
.end method

.method static synthetic j3(Lcom/aide/ui/AIDEEditor;)Lcom/aide/ui/views/CodeEditText$c;
    .registers 1

    invoke-virtual {p0}, Lcom/aide/ui/views/CodeEditText;->getOEditorView()Lcom/aide/ui/views/CodeEditText$c;

    move-result-object p0

    return-object p0
.end method

.method private j6([CIILjava/lang/String;)I
    .registers 14
    .annotation runtime Labcd/su;
        method = 0x593fdd6c989fe44L
    .end annotation

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/AIDEEditor;->J0:Z

    if-eqz v0, :cond_19

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p3}, Ljava/lang/Integer;-><init>(I)V

    const-wide v1, -0x5cd3285d97b3bec1L

    move-object v3, p0

    move-object v4, p1

    move-object v7, p4

    invoke-static/range {v1 .. v7}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_19
    move v0, p2

    :goto_1a
    if-gt v0, p3, :cond_3c

    const/4 v1, 0x0

    :goto_1d
    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_3b

    invoke-virtual {p4, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v2

    add-int v3, v0, v1

    aget-char v3, p1, v3

    invoke-static {v3}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v3
    :try_end_33
    .catchall {:try_start_0 .. :try_end_33} :catchall_3e

    if-eq v2, v3, :cond_38

    add-int/lit8 v0, v0, 0x1

    goto :goto_1a

    :cond_38
    add-int/lit8 v1, v1, 0x1

    goto :goto_1d

    :cond_3b
    return v0

    :cond_3c
    const/4 p1, -0x1

    return p1

    :catchall_3e
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/AIDEEditor;->J8:Z

    if-eqz v1, :cond_59

    const-wide v2, -0x5cd3285d97b3bec1L

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, p3}, Ljava/lang/Integer;-><init>(I)V

    move-object v1, v0

    move-object v4, p0

    move-object v5, p1

    move-object v8, p4

    invoke-static/range {v1 .. v8}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_59
    goto :goto_5b

    :goto_5a
    throw v0

    :goto_5b
    goto :goto_5a
.end method

.method static synthetic j6(Lcom/aide/ui/AIDEEditor;)Lcom/aide/ui/AIDEEditor$a;
    .registers 1

    invoke-direct {p0}, Lcom/aide/ui/AIDEEditor;->getEditorModel()Lcom/aide/ui/AIDEEditor$a;

    move-result-object p0

    return-object p0
.end method

.method private j6(Landroid/widget/TextView;)V
    .registers 14
    .annotation runtime Labcd/su;
        method = 0x9b72fd71b8ccb24L
    .end annotation

    const-string v0, "translationX"

    const-wide v1, -0xe1c500dd7fd76dbL  # -4.102347675233887E240

    :try_start_7
    sget-boolean v3, Lcom/aide/ui/AIDEEditor;->J0:Z

    if-eqz v3, :cond_e

    invoke-static {v1, v2, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_e
    iget-object v3, p0, Lcom/aide/ui/AIDEEditor;->rN:Landroid/animation/AnimatorSet;

    const/4 v4, 0x1

    if-nez v3, :cond_69

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v3, v3, Landroid/util/DisplayMetrics;->density:F

    const/high16 v5, 0x41700000  # 15.0f

    mul-float v3, v3, v5

    const/4 v5, 0x2

    new-array v6, v5, [F

    const/4 v7, 0x0

    const/4 v8, 0x0

    aput v7, v6, v8

    aput v3, v6, v4

    invoke-static {p1, v0, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v6

    const/16 v9, 0x12c

    int-to-long v9, v9

    invoke-virtual {v6, v9, v10}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    new-instance v11, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v11}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v6, v11}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-array v5, v5, [F

    aput v3, v5, v8

    aput v7, v5, v4

    invoke-static {p1, v0, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-virtual {v0, v9, v10}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    new-instance v3, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v3}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v3}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance v3, Landroid/animation/AnimatorSet;

    invoke-direct {v3}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v3, p0, Lcom/aide/ui/AIDEEditor;->rN:Landroid/animation/AnimatorSet;

    invoke-virtual {v3, v6}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/animation/AnimatorSet$Builder;->before(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    iget-object v0, p0, Lcom/aide/ui/AIDEEditor;->rN:Landroid/animation/AnimatorSet;

    new-instance v3, Lcom/aide/ui/s;

    invoke-direct {v3, p0}, Lcom/aide/ui/s;-><init>(Lcom/aide/ui/AIDEEditor;)V

    invoke-virtual {v0, v3}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    :cond_69
    iput-boolean v4, p0, Lcom/aide/ui/AIDEEditor;->er:Z

    iget-object v0, p0, Lcom/aide/ui/AIDEEditor;->rN:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v0

    if-nez v0, :cond_78

    iget-object v0, p0, Lcom/aide/ui/AIDEEditor;->rN:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V
    :try_end_78
    .catchall {:try_start_7 .. :try_end_78} :catchall_79

    :cond_78
    return-void

    :catchall_79
    move-exception v0

    sget-boolean v3, Lcom/aide/ui/AIDEEditor;->J8:Z

    if-eqz v3, :cond_81

    invoke-static {v0, v1, v2, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_81
    throw v0
.end method

.method static synthetic j6(Lcom/aide/ui/AIDEEditor;II)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/aide/ui/AIDEEditor;->we(II)V

    return-void
.end method

.method static synthetic j6(Lcom/aide/ui/AIDEEditor;III)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/aide/ui/AIDEEditor;->FH(III)V

    return-void
.end method

.method private sG()V
    .registers 5
    .annotation runtime Labcd/su;
        method = -0x191c251e25db9bbfL
    .end annotation

    const-wide v0, 0x52a9e617e416dbf8L  # 1.6486497348242502E90

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/AIDEEditor;->J0:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    invoke-static {}, Lcom/aide/ui/U;->we()Labcd/ck;

    move-result-object v2

    invoke-virtual {p0}, Lcom/aide/ui/AIDEEditor;->getFilePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Labcd/ck;->Hw(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    invoke-direct {p0}, Lcom/aide/ui/AIDEEditor;->getEditorModel()Lcom/aide/ui/AIDEEditor$a;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/aide/ui/AIDEEditor$a;->FH(Ljava/util/List;)V
    :try_end_1f
    .catchall {:try_start_5 .. :try_end_1f} :catchall_20

    return-void

    :catchall_20
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/AIDEEditor;->J8:Z

    if-eqz v3, :cond_28

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_28
    throw v2
.end method

.method private sh()V
    .registers 5
    .annotation runtime Labcd/su;
        method = 0x2041340a401212bfL
    .end annotation

    const-wide v0, 0x1f607bfd1d5fbb44L  # 1.50080269938203E-157

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/AIDEEditor;->J0:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    invoke-direct {p0}, Lcom/aide/ui/AIDEEditor;->ef()V

    invoke-static {}, Lcom/aide/ui/U;->we()Labcd/ck;

    move-result-object v2

    invoke-virtual {v2, p0}, Labcd/ck;->j6(Labcd/ck$a;)V

    new-instance v2, Lcom/aide/ui/u;

    invoke-direct {v2, p0}, Lcom/aide/ui/u;-><init>(Lcom/aide/ui/AIDEEditor;)V

    invoke-virtual {p0, v2}, Lcom/aide/ui/views/CodeEditText;->j6(Lcom/aide/ui/views/CodeEditText$d;)V

    new-instance v2, Lcom/aide/ui/v;

    invoke-direct {v2, p0}, Lcom/aide/ui/v;-><init>(Lcom/aide/ui/AIDEEditor;)V

    invoke-virtual {p0, v2}, Lcom/aide/ui/views/CodeEditText;->DW(Lcom/aide/ui/views/CodeEditText$d;)V

    new-instance v2, Lcom/aide/ui/w;

    invoke-direct {v2, p0}, Lcom/aide/ui/w;-><init>(Lcom/aide/ui/AIDEEditor;)V

    invoke-virtual {p0, v2}, Lcom/aide/ui/views/CodeEditText;->FH(Lcom/aide/ui/views/CodeEditText$d;)V

    new-instance v2, Lcom/aide/ui/x;

    invoke-direct {v2, p0}, Lcom/aide/ui/x;-><init>(Lcom/aide/ui/AIDEEditor;)V

    invoke-virtual {p0, v2}, Lcom/aide/ui/views/CodeEditText;->Zo(Lcom/aide/ui/views/CodeEditText$d;)V

    new-instance v2, Lcom/aide/ui/y;

    invoke-direct {v2, p0}, Lcom/aide/ui/y;-><init>(Lcom/aide/ui/AIDEEditor;)V

    invoke-virtual {p0, v2}, Lcom/aide/ui/views/CodeEditText;->Hw(Lcom/aide/ui/views/CodeEditText$d;)V

    new-instance v2, Lcom/aide/ui/z;

    invoke-direct {v2, p0}, Lcom/aide/ui/z;-><init>(Lcom/aide/ui/AIDEEditor;)V

    invoke-virtual {p0, v2}, Lcom/aide/ui/views/CodeEditText;->v5(Lcom/aide/ui/views/CodeEditText$d;)V

    new-instance v2, Lcom/aide/ui/A;

    invoke-direct {v2, p0}, Lcom/aide/ui/A;-><init>(Lcom/aide/ui/AIDEEditor;)V

    invoke-virtual {p0, v2}, Lcom/aide/ui/views/CodeEditText;->VH(Lcom/aide/ui/views/CodeEditText$d;)V

    invoke-virtual {p0}, Lcom/aide/ui/views/CodeEditText;->getOEditorView()Lcom/aide/ui/views/CodeEditText$c;

    move-result-object v2

    new-instance v3, Lcom/aide/ui/B;

    invoke-direct {v3, p0}, Lcom/aide/ui/B;-><init>(Lcom/aide/ui/AIDEEditor;)V

    invoke-virtual {v2, v3}, Lcom/aide/ui/views/editor/OConsole;->j6(Lcom/aide/ui/views/editor/n;)V

    invoke-virtual {p0}, Lcom/aide/ui/views/CodeEditText;->getOEditorView()Lcom/aide/ui/views/CodeEditText$c;

    move-result-object v2

    new-instance v3, Lcom/aide/ui/C;

    invoke-direct {v3, p0}, Lcom/aide/ui/C;-><init>(Lcom/aide/ui/AIDEEditor;)V

    invoke-virtual {v2, v3}, Lcom/aide/ui/views/editor/OConsole;->j6(Lcom/aide/ui/views/editor/n;)V

    invoke-virtual {p0}, Lcom/aide/ui/views/CodeEditText;->getOEditorView()Lcom/aide/ui/views/CodeEditText$c;

    move-result-object v2

    new-instance v3, Lcom/aide/ui/k;

    invoke-direct {v3, p0}, Lcom/aide/ui/k;-><init>(Lcom/aide/ui/AIDEEditor;)V

    invoke-virtual {v2, v3}, Lcom/aide/ui/views/editor/OConsole;->j6(Lcom/aide/ui/views/editor/n;)V

    invoke-virtual {p0}, Lcom/aide/ui/views/CodeEditText;->getOEditorView()Lcom/aide/ui/views/CodeEditText$c;

    move-result-object v2

    new-instance v3, Lcom/aide/ui/l;

    invoke-direct {v3, p0}, Lcom/aide/ui/l;-><init>(Lcom/aide/ui/AIDEEditor;)V

    invoke-virtual {v2, v3}, Lcom/aide/ui/views/editor/OConsole;->j6(Lcom/aide/ui/views/editor/t;)V

    invoke-virtual {p0}, Lcom/aide/ui/AIDEEditor;->a8()V
    :try_end_81
    .catchall {:try_start_5 .. :try_end_81} :catchall_82

    return-void

    :catchall_82
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/AIDEEditor;->J8:Z

    if-eqz v3, :cond_8a

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_8a
    throw v2
.end method

.method static synthetic tp(Lcom/aide/ui/AIDEEditor;)V
    .registers 1

    invoke-direct {p0}, Lcom/aide/ui/AIDEEditor;->sG()V

    return-void
.end method

.method static synthetic u7(Lcom/aide/ui/AIDEEditor;)Lcom/aide/ui/views/CodeEditText$c;
    .registers 1

    invoke-virtual {p0}, Lcom/aide/ui/views/CodeEditText;->getOEditorView()Lcom/aide/ui/views/CodeEditText$c;

    move-result-object p0

    return-object p0
.end method

.method static synthetic v5(Lcom/aide/ui/AIDEEditor;)Lcom/aide/ui/MainActivity;
    .registers 1

    invoke-direct {p0}, Lcom/aide/ui/AIDEEditor;->getActivity()Lcom/aide/ui/MainActivity;

    move-result-object p0

    return-object p0
.end method

.method static synthetic we(Lcom/aide/ui/AIDEEditor;)Lcom/aide/ui/views/CodeEditText$c;
    .registers 1

    invoke-virtual {p0}, Lcom/aide/ui/views/CodeEditText;->getOEditorView()Lcom/aide/ui/views/CodeEditText$c;

    move-result-object p0

    return-object p0
.end method

.method private we(II)V
    .registers 10
    .annotation runtime Labcd/su;
        method = 0x251661c828648041L
    .end annotation

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/AIDEEditor;->J0:Z

    if-eqz v0, :cond_16

    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p2}, Ljava/lang/Integer;-><init>(I)V

    const-wide v2, 0x2674181e4c17290L

    invoke-static {v2, v3, p0, v0, v1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_16
    invoke-static {}, Lcom/aide/ui/U;->lg()Lcom/aide/ui/MainActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aide/ui/MainActivity;->vy()Z

    move-result v0

    if-nez v0, :cond_5d

    invoke-virtual {p0}, Lcom/aide/ui/views/CodeEditText;->getOEditorView()Lcom/aide/ui/views/CodeEditText$c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aide/ui/views/editor/OConsole;->J0()Z

    move-result v0

    if-eqz v0, :cond_40

    invoke-virtual {p0, p1, p2}, Lcom/aide/ui/views/CodeEditText;->Zo(II)Z

    move-result v0

    if-eqz v0, :cond_40

    invoke-static {}, Lcom/aide/ui/U;->Zo()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/aide/common/g;->we(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_40

    invoke-virtual {p0}, Lcom/aide/ui/AIDEEditor;->gW()Z

    move-result v0

    if-eqz v0, :cond_4d

    :cond_40
    invoke-virtual {p0, p1, p2, p1, p2}, Lcom/aide/ui/AIDEEditor;->j6(IIII)V

    invoke-virtual {p0}, Lcom/aide/ui/views/CodeEditText;->j3()V

    invoke-virtual {p0}, Lcom/aide/ui/AIDEEditor;->getEditorPager()Lcom/aide/ui/AIDEEditorPager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aide/ui/AIDEEditorPager;->J0()V

    :cond_4d
    invoke-virtual {p0}, Lcom/aide/ui/views/CodeEditText;->gn()V

    invoke-virtual {p0}, Lcom/aide/ui/views/CodeEditText;->getOEditorView()Lcom/aide/ui/views/CodeEditText$c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aide/ui/views/editor/OEditor;->lg()Z

    move-result v0

    if-eqz v0, :cond_5d

    invoke-virtual {p0}, Lcom/aide/ui/AIDEEditor;->nw()V
    :try_end_5d
    .catchall {:try_start_0 .. :try_end_5d} :catchall_5e

    :cond_5d
    return-void

    :catchall_5e
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/AIDEEditor;->J8:Z

    if-eqz v1, :cond_77

    const-wide v2, 0x2674181e4c17290L

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    move-object v1, v0

    move-object v4, p0

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_77
    throw v0
.end method


# virtual methods
.method public BT()Z
    .registers 5

    const-wide v0, -0xf5b1570b9e85a59L  # -4.15652537676879E234

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/AIDEEditor;->J0:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    invoke-virtual {p0}, Lcom/aide/ui/views/CodeEditText;->getScrollView()Lcom/aide/ui/views/CodeEditTextScrollView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/aide/ui/views/CodeEditTextScrollView;->v5()Z

    move-result v0
    :try_end_14
    .catchall {:try_start_5 .. :try_end_14} :catchall_15

    return v0

    :catchall_15
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/AIDEEditor;->J8:Z

    if-eqz v3, :cond_1d

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1d
    throw v2
.end method

.method public DW(Ljava/lang/String;)Labcd/Nk$a;
    .registers 7

    const-wide v0, -0x8c668e703d70108L

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/AIDEEditor;->J0:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    invoke-static {}, Lcom/aide/ui/U;->er()Labcd/Nk;

    move-result-object v2

    invoke-virtual {v2, p1}, Labcd/Nk;->DW(Ljava/lang/String;)Labcd/Nk$a;

    move-result-object v2

    if-nez v2, :cond_1a

    invoke-direct {p0, p1}, Lcom/aide/ui/AIDEEditor;->FH(Ljava/lang/String;)Labcd/Nk$a;

    move-result-object v2

    :cond_1a
    invoke-virtual {p0}, Lcom/aide/ui/views/CodeEditText;->getOEditorView()Lcom/aide/ui/views/CodeEditText$c;

    move-result-object v3

    move-object v4, v2

    check-cast v4, Lcom/aide/ui/AIDEEditor$a;

    invoke-virtual {v3, v4}, Lcom/aide/ui/views/editor/OEditor;->setModel(Lcom/aide/ui/views/editor/o;)V

    invoke-virtual {p0}, Lcom/aide/ui/views/CodeEditText;->getOEditorView()Lcom/aide/ui/views/CodeEditText$c;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/aide/ui/views/editor/OConsole;->setHidden(Z)V

    invoke-virtual {p0}, Lcom/aide/ui/views/CodeEditText;->getOEditorView()Lcom/aide/ui/views/CodeEditText$c;

    move-result-object v3

    invoke-static {p1}, Labcd/FileSystemUtils;->XL(Ljava/lang/String;)Z

    move-result v4

    xor-int/lit8 v4, v4, 0x1

    invoke-virtual {v3, v4}, Lcom/aide/ui/views/editor/OEditor;->setEditable(Z)V

    invoke-virtual {p0}, Lcom/aide/ui/views/CodeEditText;->getOEditorView()Lcom/aide/ui/views/CodeEditText$c;

    move-result-object v3

    invoke-virtual {v3}, Lcom/aide/ui/views/editor/OEditor;->lg()Z

    move-result v3

    if-nez v3, :cond_46

    invoke-virtual {p0}, Lcom/aide/ui/AIDEEditor;->yS()V

    :cond_46
    invoke-direct {p0}, Lcom/aide/ui/AIDEEditor;->sG()V

    invoke-direct {p0}, Lcom/aide/ui/AIDEEditor;->dx()V

    invoke-virtual {p0}, Lcom/aide/ui/AIDEEditor;->cn()V

    invoke-static {}, Lcom/aide/ui/U;->EQ()Labcd/Xj;

    move-result-object v3

    invoke-virtual {v3}, Labcd/Xj;->VH()V

    invoke-virtual {p0}, Landroid/view/ViewGroup;->requestLayout()V
    :try_end_59
    .catchall {:try_start_5 .. :try_end_59} :catchall_5a

    return-object v2

    :catchall_5a
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/AIDEEditor;->J8:Z

    if-eqz v3, :cond_62

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_62
    throw v2
.end method

.method public DW(I)V
    .registers 6

    const-wide v0, -0x2f94c44a31d85fa0L  # -2.5227152716965998E79

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/AIDEEditor;->J0:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;I)V

    :cond_c
    invoke-virtual {p0, p1}, Lcom/aide/ui/AIDEEditor;->v5(I)V
    :try_end_f
    .catchall {:try_start_5 .. :try_end_f} :catchall_10

    return-void

    :catchall_10
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/AIDEEditor;->J8:Z

    if-eqz v3, :cond_1d

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-static {v2, v0, v1, p0, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1d
    throw v2
.end method

.method public EQ(II)V
    .registers 10

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/AIDEEditor;->J0:Z

    if-eqz v0, :cond_16

    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p2}, Ljava/lang/Integer;-><init>(I)V

    const-wide v2, 0xfd4c4c3e9d79ff0L

    invoke-static {v2, v3, p0, v0, v1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_16
    invoke-virtual {p0}, Lcom/aide/ui/views/CodeEditText;->getOEditorView()Lcom/aide/ui/views/CodeEditText$c;

    move-result-object v0

    add-int/lit8 v1, p2, -0x1

    add-int/lit8 v2, p1, -0x1

    invoke-virtual {v0, v1, v2}, Lcom/aide/ui/views/editor/OConsole;->v5(II)V
    :try_end_21
    .catchall {:try_start_0 .. :try_end_21} :catchall_22

    return-void

    :catchall_22
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/AIDEEditor;->J8:Z

    if-eqz v1, :cond_3b

    const-wide v2, 0xfd4c4c3e9d79ff0L

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    move-object v1, v0

    move-object v4, p0

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_3b
    throw v0
.end method

.method public FH(I)I
    .registers 6

    const-wide v0, 0x5beef0ff146154e1L  # 7.027938137160648E134

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/AIDEEditor;->J0:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;I)V

    :cond_c
    invoke-direct {p0}, Lcom/aide/ui/AIDEEditor;->getEditorModel()Lcom/aide/ui/AIDEEditor$a;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/aide/ui/AIDEEditor$a;->J8(I)I

    move-result p1
    :try_end_14
    .catchall {:try_start_5 .. :try_end_14} :catchall_15

    return p1

    :catchall_15
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/AIDEEditor;->J8:Z

    if-eqz v3, :cond_22

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-static {v2, v0, v1, p0, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_22
    throw v2
.end method

.method protected FH(II)I
    .registers 10
    .annotation runtime Labcd/su;
        method = 0x161185985d8a10dbL
    .end annotation

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/AIDEEditor;->J0:Z

    if-eqz v0, :cond_16

    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p2}, Ljava/lang/Integer;-><init>(I)V

    const-wide v2, -0x25897975de642050L  # -6.09920864886022E127

    invoke-static {v2, v3, p0, v0, v1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_16
    invoke-virtual {p0}, Lcom/aide/ui/AIDEEditor;->getFilePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, ".htm"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4f

    const-string v1, ".html"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4f

    const-string v1, ".css"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_37

    goto :goto_4f

    :cond_37
    invoke-virtual {p0, p1, p2}, Lcom/aide/ui/views/CodeEditText;->DW(II)C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->isJavaIdentifierPart(C)Z

    move-result v0

    if-eqz v0, :cond_62

    :goto_41
    invoke-virtual {p0, p1, p2}, Lcom/aide/ui/views/CodeEditText;->DW(II)C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->isJavaIdentifierPart(C)Z

    move-result v0

    if-eqz v0, :cond_4e

    add-int/lit8 p2, p2, 0x1

    goto :goto_41

    :cond_4e
    return p2

    :cond_4f
    :goto_4f
    invoke-virtual {p0, p1, p2}, Lcom/aide/ui/views/CodeEditText;->DW(II)C

    move-result v0

    const/16 v1, 0x2d

    if-eq v1, v0, :cond_64

    invoke-virtual {p0, p1, p2}, Lcom/aide/ui/views/CodeEditText;->DW(II)C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->isJavaIdentifierPart(C)Z

    move-result v0

    if-eqz v0, :cond_62

    goto :goto_64

    :cond_62
    const/4 p1, -0x1

    return p1

    :cond_64
    :goto_64
    invoke-virtual {p0, p1, p2}, Lcom/aide/ui/views/CodeEditText;->DW(II)C

    move-result v0

    if-eq v1, v0, :cond_76

    invoke-virtual {p0, p1, p2}, Lcom/aide/ui/views/CodeEditText;->DW(II)C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->isJavaIdentifierPart(C)Z

    move-result v0
    :try_end_72
    .catchall {:try_start_0 .. :try_end_72} :catchall_79

    if-eqz v0, :cond_75

    goto :goto_76

    :cond_75
    return p2

    :cond_76
    :goto_76
    add-int/lit8 p2, p2, 0x1

    goto :goto_64

    :catchall_79
    move-exception v0

    move-object v6, v0

    sget-boolean v0, Lcom/aide/ui/AIDEEditor;->J8:Z

    if-eqz v0, :cond_93

    const-wide v1, -0x25897975de642050L  # -6.09920864886022E127

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p2}, Ljava/lang/Integer;-><init>(I)V

    move-object v0, v6

    move-object v3, p0

    invoke-static/range {v0 .. v5}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_93
    goto :goto_95

    :goto_94
    throw v6

    :goto_95
    goto :goto_94
.end method

.method protected FH()Z
    .registers 5
    .annotation runtime Labcd/su;
        method = 0x9a8dc67d2c7ed05L
    .end annotation

    const-wide v0, -0x646631066c7ce60L

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/AIDEEditor;->J0:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    invoke-virtual {p0}, Lcom/aide/ui/AIDEEditor;->getFilePath()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_26

    invoke-virtual {p0}, Lcom/aide/ui/AIDEEditor;->getFilePath()Ljava/lang/String;

    move-result-object v2

    const-string v3, ".java"

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_26

    invoke-static {}, Lcom/aide/ui/U;->dx()Z

    move-result v0
    :try_end_22
    .catchall {:try_start_5 .. :try_end_22} :catchall_28

    if-nez v0, :cond_26

    const/4 v0, 0x1

    goto :goto_27

    :cond_26
    const/4 v0, 0x0

    :goto_27
    return v0

    :catchall_28
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/AIDEEditor;->J8:Z

    if-eqz v3, :cond_30

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_30
    throw v2
.end method

.method protected Hw(II)I
    .registers 10
    .annotation runtime Labcd/su;
        method = 0x1932c770781797b4L
    .end annotation

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/AIDEEditor;->J0:Z

    if-eqz v0, :cond_16

    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p2}, Ljava/lang/Integer;-><init>(I)V

    const-wide v2, -0x13607cb8b84e3609L  # -1.6973992375217468E215

    invoke-static {v2, v3, p0, v0, v1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_16
    invoke-virtual {p0}, Lcom/aide/ui/AIDEEditor;->getFilePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, ".htm"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_53

    const-string v1, ".html"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_53

    const-string v1, ".css"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_38

    goto :goto_53

    :cond_38
    invoke-virtual {p0, p1, p2}, Lcom/aide/ui/views/CodeEditText;->DW(II)C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->isJavaIdentifierPart(C)Z

    move-result v0

    if-eqz v0, :cond_66

    :goto_42
    if-lt p2, v2, :cond_51

    invoke-virtual {p0, p1, p2}, Lcom/aide/ui/views/CodeEditText;->DW(II)C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->isJavaIdentifierPart(C)Z

    move-result v0

    if-eqz v0, :cond_51

    add-int/lit8 p2, p2, -0x1

    goto :goto_42

    :cond_51
    add-int/2addr p2, v2

    return p2

    :cond_53
    :goto_53
    invoke-virtual {p0, p1, p2}, Lcom/aide/ui/views/CodeEditText;->DW(II)C

    move-result v0

    const/16 v1, 0x2d

    if-eq v1, v0, :cond_68

    invoke-virtual {p0, p1, p2}, Lcom/aide/ui/views/CodeEditText;->DW(II)C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->isJavaIdentifierPart(C)Z

    move-result v0

    if-eqz v0, :cond_66

    goto :goto_68

    :cond_66
    const/4 p1, -0x1

    return p1

    :cond_68
    :goto_68
    if-lt p2, v2, :cond_7d

    invoke-virtual {p0, p1, p2}, Lcom/aide/ui/views/CodeEditText;->DW(II)C

    move-result v0

    if-eq v1, v0, :cond_7a

    invoke-virtual {p0, p1, p2}, Lcom/aide/ui/views/CodeEditText;->DW(II)C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->isJavaIdentifierPart(C)Z

    move-result v0
    :try_end_78
    .catchall {:try_start_0 .. :try_end_78} :catchall_7f

    if-eqz v0, :cond_7d

    :cond_7a
    add-int/lit8 p2, p2, -0x1

    goto :goto_68

    :cond_7d
    add-int/2addr p2, v2

    return p2

    :catchall_7f
    move-exception v0

    move-object v6, v0

    sget-boolean v0, Lcom/aide/ui/AIDEEditor;->J8:Z

    if-eqz v0, :cond_99

    const-wide v1, -0x13607cb8b84e3609L  # -1.6973992375217468E215

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p2}, Ljava/lang/Integer;-><init>(I)V

    move-object v0, v6

    move-object v3, p0

    invoke-static/range {v0 .. v5}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_99
    goto :goto_9b

    :goto_9a
    throw v6

    :goto_9b
    goto :goto_9a
.end method

.method public Hw(I)Ljava/lang/String;
    .registers 7

    const-wide v0, 0x1032882020dd5164L

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/AIDEEditor;->J0:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;I)V

    :cond_c
    new-instance v2, Ljava/lang/String;

    invoke-direct {p0}, Lcom/aide/ui/AIDEEditor;->getEditorModel()Lcom/aide/ui/AIDEEditor$a;

    move-result-object v3

    add-int/lit8 v4, p1, -0x1

    invoke-virtual {v3, v4}, Lcom/aide/ui/views/editor/g;->J0(I)[C

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>([C)V
    :try_end_1b
    .catchall {:try_start_5 .. :try_end_1b} :catchall_1c

    return-object v2

    :catchall_1c
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/AIDEEditor;->J8:Z

    if-eqz v3, :cond_29

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-static {v2, v0, v1, p0, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_29
    throw v2
.end method

.method protected Hw()Z
    .registers 5
    .annotation runtime Labcd/su;
        method = 0x6022d057c4d92927L
    .end annotation

    const-wide v0, -0x9a6a4ca8987ab8cL

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/AIDEEditor;->J0:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    iget-object v2, p0, Lcom/aide/ui/AIDEEditor;->Ws:Lcom/aide/ui/j;

    invoke-virtual {v2}, Lcom/aide/ui/j;->Hw()Z

    move-result v2

    if-eqz v2, :cond_1b

    iget-object v2, p0, Lcom/aide/ui/AIDEEditor;->Ws:Lcom/aide/ui/j;

    invoke-virtual {v2}, Lcom/aide/ui/j;->j6()V
    :try_end_19
    .catchall {:try_start_5 .. :try_end_19} :catchall_1d

    const/4 v0, 0x1

    return v0

    :cond_1b
    const/4 v0, 0x0

    return v0

    :catchall_1d
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/AIDEEditor;->J8:Z

    if-eqz v3, :cond_25

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_25
    throw v2
.end method

.method public KD()V
    .registers 5

    const-wide v0, -0x5cb2846733b4597L

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/AIDEEditor;->J0:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    invoke-virtual {p0}, Lcom/aide/ui/AIDEEditor;->getEditorPager()Lcom/aide/ui/AIDEEditorPager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/aide/ui/AIDEEditorPager;->yS()V
    :try_end_13
    .catchall {:try_start_5 .. :try_end_13} :catchall_14

    return-void

    :catchall_14
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/AIDEEditor;->J8:Z

    if-eqz v3, :cond_1c

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1c
    throw v2
.end method

.method protected Mr()V
    .registers 11
    .annotation runtime Labcd/su;
        method = -0x4f436bd9e6c14e48L
    .end annotation

    const-wide v0, 0x255abb0d20184875L  # 9.64076935811725E-129

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/AIDEEditor;->J0:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    invoke-virtual {p0}, Lcom/aide/ui/views/CodeEditText;->getScrollView()Lcom/aide/ui/views/CodeEditTextScrollView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/aide/ui/views/CodeEditTextScrollView;->DW()V

    invoke-virtual {p0}, Lcom/aide/ui/views/CodeEditText;->getSelectionStartLine()I

    move-result v2

    invoke-virtual {p0}, Lcom/aide/ui/views/CodeEditText;->getSelectionStartColumn()I

    move-result v9

    invoke-static {}, Lcom/aide/ui/U;->we()Labcd/ck;

    move-result-object v3

    invoke-virtual {p0}, Lcom/aide/ui/AIDEEditor;->getFilePath()Ljava/lang/String;

    move-result-object v4

    move v5, v2

    move v6, v9

    move v7, v2

    move v8, v9

    invoke-virtual/range {v3 .. v8}, Labcd/ck;->j6(Ljava/lang/String;IIII)Lcom/aide/engine/SyntaxError;

    move-result-object v3

    if-eqz v3, :cond_56

    invoke-virtual {v3}, Lcom/aide/engine/SyntaxError;->Hw()Z

    move-result v4

    if-eqz v4, :cond_56

    iget-object v4, v3, Lcom/aide/engine/SyntaxError;->tp:[Ljava/lang/String;

    if-eqz v4, :cond_56

    iget-object v4, v3, Lcom/aide/engine/SyntaxError;->tp:[Ljava/lang/String;

    array-length v4, v4

    if-lez v4, :cond_56

    invoke-static {}, Lcom/aide/ui/U;->we()Labcd/ck;

    move-result-object v4

    invoke-virtual {v4, v3}, Labcd/ck;->j6(Lcom/aide/engine/SyntaxError;)V

    invoke-virtual {p0}, Lcom/aide/ui/views/CodeEditText;->getScrollView()Lcom/aide/ui/views/CodeEditTextScrollView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/aide/ui/views/CodeEditTextScrollView;->Hw()V

    invoke-virtual {p0}, Lcom/aide/ui/AIDEEditor;->getEditorPager()Lcom/aide/ui/AIDEEditorPager;

    move-result-object v3

    invoke-virtual {p0, v2, v9, v9}, Lcom/aide/ui/views/CodeEditText;->DW(III)Landroid/graphics/Rect;

    move-result-object v2

    :goto_52
    invoke-virtual {v3, v2}, Lcom/aide/ui/AIDEEditorPager;->DW(Landroid/graphics/Rect;)V

    goto :goto_73

    :cond_56
    invoke-static {}, Lcom/aide/ui/U;->vy()Labcd/Zk;

    move-result-object v3

    invoke-virtual {v3}, Labcd/Zk;->Hw()Z

    move-result v3

    if-eqz v3, :cond_70

    invoke-virtual {p0}, Lcom/aide/ui/views/CodeEditText;->getScrollView()Lcom/aide/ui/views/CodeEditTextScrollView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/aide/ui/views/CodeEditTextScrollView;->Hw()V

    invoke-virtual {p0}, Lcom/aide/ui/AIDEEditor;->getEditorPager()Lcom/aide/ui/AIDEEditorPager;

    move-result-object v3

    invoke-virtual {p0, v2, v9, v9}, Lcom/aide/ui/views/CodeEditText;->DW(III)Landroid/graphics/Rect;

    move-result-object v2

    goto :goto_52

    :cond_70
    invoke-virtual {p0}, Lcom/aide/ui/AIDEEditor;->nw()V
    :try_end_73
    .catchall {:try_start_5 .. :try_end_73} :catchall_74

    :goto_73
    return-void

    :catchall_74
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/AIDEEditor;->J8:Z

    if-eqz v3, :cond_7c

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_7c
    goto :goto_7e

    :goto_7d
    throw v2

    :goto_7e
    goto :goto_7d
.end method

.method public P8()V
    .registers 6

    const-wide v0, 0xf5578f72020fde8L  # 8.441632151030894E-235

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/AIDEEditor;->J0:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    invoke-virtual {p0}, Lcom/aide/ui/views/CodeEditText;->getSelectionStartLine()I

    move-result v2

    invoke-virtual {p0}, Lcom/aide/ui/views/CodeEditText;->getSelectionStartColumn()I

    move-result v3

    invoke-virtual {p0}, Lcom/aide/ui/views/CodeEditText;->getSelectionStartColumn()I

    move-result v4

    invoke-direct {p0, v2, v3, v4}, Lcom/aide/ui/AIDEEditor;->FH(III)V
    :try_end_1b
    .catchall {:try_start_5 .. :try_end_1b} :catchall_1c

    return-void

    :catchall_1c
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/AIDEEditor;->J8:Z

    if-eqz v3, :cond_24

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_24
    throw v2
.end method

.method protected QX()V
    .registers 5
    .annotation runtime Labcd/su;
        method = 0x4b8ec7c3507b4c03L
    .end annotation

    const-wide v0, 0x2d0b9e88e7c15b90L  # 1.059262576770372E-91

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/AIDEEditor;->J0:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    invoke-virtual {p0}, Lcom/aide/ui/AIDEEditor;->getEditorPager()Lcom/aide/ui/AIDEEditorPager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/aide/ui/AIDEEditorPager;->J0()V
    :try_end_13
    .catchall {:try_start_5 .. :try_end_13} :catchall_14

    return-void

    :catchall_14
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/AIDEEditor;->J8:Z

    if-eqz v3, :cond_1c

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1c
    throw v2
.end method

.method public SI()V
    .registers 5

    const-wide v0, -0x202333897ff71429L  # -6.033237696243834E153

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/AIDEEditor;->J0:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    invoke-static {}, Lcom/aide/ui/U;->lg()Lcom/aide/ui/MainActivity;

    move-result-object v2

    invoke-virtual {v2}, Lcom/aide/ui/MainActivity;->vy()Z

    move-result v2

    if-nez v2, :cond_19

    invoke-virtual {p0}, Lcom/aide/ui/views/CodeEditText;->gn()V
    :try_end_19
    .catchall {:try_start_5 .. :try_end_19} :catchall_1a

    :cond_19
    return-void

    :catchall_1a
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/AIDEEditor;->J8:Z

    if-eqz v3, :cond_22

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_22
    throw v2
.end method

.method public VH(II)Lcom/aide/engine/SyntaxError;
    .registers 10

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/AIDEEditor;->J0:Z

    if-eqz v0, :cond_16

    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p2}, Ljava/lang/Integer;-><init>(I)V

    const-wide v2, -0x138492f668767860L  # -3.693161125430236E214

    invoke-static {v2, v3, p0, v0, v1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_16
    invoke-direct {p0}, Lcom/aide/ui/AIDEEditor;->getEditorModel()Lcom/aide/ui/AIDEEditor$a;

    move-result-object v0

    add-int/lit8 v1, p2, -0x1

    add-int/lit8 v2, p1, -0x1

    invoke-virtual {v0, v1, v2}, Lcom/aide/ui/AIDEEditor$a;->XL(II)Lcom/aide/engine/SyntaxError;

    move-result-object p1
    :try_end_22
    .catchall {:try_start_0 .. :try_end_22} :catchall_23

    return-object p1

    :catchall_23
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/AIDEEditor;->J8:Z

    if-eqz v1, :cond_3c

    const-wide v2, -0x138492f668767860L  # -3.693161125430236E214

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    move-object v1, v0

    move-object v4, p0

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_3c
    throw v0
.end method

.method public a8()V
    .registers 5

    const-wide v0, -0x19ebbb6a97ff9d68L  # -5.382527126026976E183

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/AIDEEditor;->J0:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    invoke-static {}, Lcom/aide/ui/aa;->lg()Z

    move-result v2

    invoke-virtual {p0, v2}, Lcom/aide/ui/views/CodeEditText;->setIsLightTheme(Z)V

    invoke-virtual {p0}, Lcom/aide/ui/views/CodeEditText;->getOEditorView()Lcom/aide/ui/views/CodeEditText$c;

    move-result-object v2

    invoke-static {}, Lcom/aide/ui/aa;->cn()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/aide/ui/views/editor/OConsole;->setTabSize(I)V

    invoke-virtual {p0}, Lcom/aide/ui/views/CodeEditText;->getOEditorView()Lcom/aide/ui/views/CodeEditText$c;

    move-result-object v2

    invoke-static {}, Lcom/aide/ui/aa;->a8()Z

    move-result v3

    invoke-virtual {v2, v3}, Lcom/aide/ui/views/editor/OConsole;->setInsertTabsAsSpaces(Z)V

    invoke-virtual {p0}, Lcom/aide/ui/AIDEEditor;->lg()V

    iget-object v2, p0, Lcom/aide/ui/AIDEEditor;->Ws:Lcom/aide/ui/j;

    if-eqz v2, :cond_33

    invoke-virtual {v2}, Lcom/aide/ui/j;->DW()V
    :try_end_33
    .catchall {:try_start_5 .. :try_end_33} :catchall_34

    :cond_33
    return-void

    :catchall_34
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/AIDEEditor;->J8:Z

    if-eqz v3, :cond_3c

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_3c
    throw v2
.end method

.method public cn()V
    .registers 16

    const-wide v0, 0x3ac54bf8e46dd740L  # 1.3762712809524894E-25

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/AIDEEditor;->J0:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    invoke-direct {p0}, Lcom/aide/ui/AIDEEditor;->Sf()V

    invoke-virtual {p0}, Lcom/aide/ui/views/CodeEditText;->getScrollView()Lcom/aide/ui/views/CodeEditTextScrollView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/aide/ui/views/CodeEditTextScrollView;->getHeaderView()Landroid/view/View;

    move-result-object v2

    iget-object v3, p0, Lcom/aide/ui/AIDEEditor;->XL:Ljava/lang/String;

    const v4, 0x7f080063

    const v5, 0x7f080069

    const/16 v6, 0x8

    const/4 v7, 0x0

    if-eqz v3, :cond_17f

    invoke-virtual {v2, v7}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v7}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    const v3, 0x7f08006d

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    const v4, 0x7f08006e

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    const v5, 0x7f080066

    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    const v8, 0x7f080067

    invoke-virtual {v2, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    const v9, 0x7f080068

    invoke-virtual {v2, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    const v10, 0x7f08006b

    invoke-virtual {v2, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/ProgressBar;

    const v11, 0x7f08006a

    invoke-virtual {v2, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/LinearLayout;

    iget-boolean v12, p0, Lcom/aide/ui/AIDEEditor;->a8:Z

    if-eqz v12, :cond_7a

    const/4 v12, 0x0

    goto :goto_7c

    :cond_7a
    const/16 v12, 0x8

    :goto_7c
    invoke-virtual {v11, v12}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget v12, p0, Lcom/aide/ui/AIDEEditor;->U2:I

    invoke-virtual {v10, v12}, Landroid/widget/ProgressBar;->setProgress(I)V

    invoke-virtual {v10}, Landroid/widget/ProgressBar;->getProgressDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v12

    sget-object v13, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    const/4 v14, -0x1

    invoke-virtual {v12, v14, v13}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    iget-object v12, p0, Lcom/aide/ui/AIDEEditor;->XL:Ljava/lang/String;

    invoke-virtual {v4, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v12, p0, Lcom/aide/ui/AIDEEditor;->QX:Ljava/lang/String;

    if-eqz v12, :cond_ac

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setVisibility(I)V

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v12, p0, Lcom/aide/ui/AIDEEditor;->QX:Ljava/lang/String;

    invoke-static {v12}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v12

    invoke-virtual {v3, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v12, p0, Lcom/aide/ui/AIDEEditor;->aM:Ljava/lang/String;

    invoke-virtual {v5, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_b2

    :cond_ac
    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setVisibility(I)V

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_b2
    iget-object v12, p0, Lcom/aide/ui/AIDEEditor;->j3:Ljava/lang/String;

    if-nez v12, :cond_bd

    invoke-virtual {v8, v6}, Landroid/widget/TextView;->setVisibility(I)V

    invoke-virtual {v9, v6}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_d1

    :cond_bd
    invoke-virtual {v8, v7}, Landroid/widget/TextView;->setVisibility(I)V

    invoke-virtual {v9, v7}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v6, p0, Lcom/aide/ui/AIDEEditor;->Mr:Ljava/lang/String;

    invoke-virtual {v9, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v6, p0, Lcom/aide/ui/AIDEEditor;->j3:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v6

    invoke-virtual {v8, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_d1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/aide/common/g;->VH(Landroid/content/Context;)F

    move-result v6

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setTextSize(F)V

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/aide/common/g;->u7(Landroid/content/Context;)F

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextSize(F)V

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/aide/common/g;->v5(Landroid/content/Context;)F

    move-result v4

    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setTextSize(F)V

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/aide/common/g;->gn(Landroid/content/Context;)F

    move-result v4

    invoke-virtual {v9, v4}, Landroid/widget/TextView;->setTextSize(F)V

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/aide/common/g;->u7(Landroid/content/Context;)F

    move-result v4

    invoke-virtual {v8, v4}, Landroid/widget/TextView;->setTextSize(F)V

    const v4, 0x7f08006c

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    new-instance v6, Lcom/aide/ui/p;

    invoke-direct {v6, p0}, Lcom/aide/ui/p;-><init>(Lcom/aide/ui/AIDEEditor;)V

    invoke-virtual {v4, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v6, Lcom/aide/ui/q;

    invoke-direct {v6, p0, v5}, Lcom/aide/ui/q;-><init>(Lcom/aide/ui/AIDEEditor;Landroid/widget/TextView;)V

    invoke-virtual {v4, v6}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    invoke-direct {p0}, Lcom/aide/ui/AIDEEditor;->cb()Z

    move-result v6

    if-eqz v6, :cond_13c

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v6

    iget v6, v6, Landroid/util/DisplayMetrics;->density:F

    const/high16 v9, 0x42400000  # 48.0f

    mul-float v9, v9, v6

    float-to-int v9, v9

    const/high16 v12, 0x41d80000  # 27.0f

    mul-float v6, v6, v12

    float-to-int v6, v6

    invoke-virtual {v4, v9, v6, v9, v7}, Landroid/view/View;->setPadding(IIII)V

    :cond_13c
    invoke-virtual {v8}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/aide/common/g;->FH(Landroid/content/Context;)I

    move-result v6

    iput v6, v4, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-virtual {v3}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/aide/common/g;->FH(Landroid/content/Context;)I

    move-result v4

    iput v4, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-virtual {v10}, Landroid/widget/ProgressBar;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/aide/common/g;->FH(Landroid/content/Context;)I

    move-result v4

    iput v4, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-virtual {v11}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/aide/common/g;->FH(Landroid/content/Context;)I

    move-result v4

    iput v4, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-virtual {v2}, Landroid/view/View;->requestLayout()V

    iget-boolean v2, p0, Lcom/aide/ui/AIDEEditor;->lg:Z

    if-eqz v2, :cond_1db

    invoke-direct {p0, v5}, Lcom/aide/ui/AIDEEditor;->j6(Landroid/widget/TextView;)V

    goto :goto_1db

    :cond_17f
    invoke-virtual {v2, v7}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v7}, Landroid/view/View;->setVisibility(I)V

    const v3, 0x7f080065

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/aide/ui/AIDEEditor;->getFilePath()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Labcd/FileSystemUtils;->tp(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v3, 0x7f080061

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/aide/ui/AIDEEditor;->getFilePath()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Labcd/FileSystemUtils;->EQ(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v3, 0x7f080062

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/aide/ui/AIDEEditor;->getFilePath()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/aide/ui/ca;->j6(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    const v3, 0x7f080064

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    new-instance v3, Lcom/aide/ui/r;

    invoke-direct {v3, p0}, Lcom/aide/ui/r;-><init>(Lcom/aide/ui/AIDEEditor;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V
    :try_end_1db
    .catchall {:try_start_5 .. :try_end_1db} :catchall_1dc

    :cond_1db
    :goto_1db
    return-void

    :catchall_1dc
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/AIDEEditor;->J8:Z

    if-eqz v3, :cond_1e4

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1e4
    throw v2
.end method

.method public ei()V
    .registers 7

    const-wide v0, 0x1a852e674d2b370L

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/AIDEEditor;->J0:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    invoke-virtual {p0}, Lcom/aide/ui/AIDEEditor;->getEditorPager()Lcom/aide/ui/AIDEEditorPager;

    move-result-object v2

    invoke-virtual {p0}, Lcom/aide/ui/views/CodeEditText;->getSelectionStartLine()I

    move-result v3

    invoke-virtual {p0}, Lcom/aide/ui/views/CodeEditText;->getSelectionStartColumn()I

    move-result v4

    invoke-virtual {p0}, Lcom/aide/ui/views/CodeEditText;->getSelectionStartColumn()I

    move-result v5

    invoke-virtual {p0, v3, v4, v5}, Lcom/aide/ui/views/CodeEditText;->DW(III)Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/aide/ui/AIDEEditorPager;->j6(Landroid/graphics/Rect;)V
    :try_end_23
    .catchall {:try_start_5 .. :try_end_23} :catchall_24

    return-void

    :catchall_24
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/AIDEEditor;->J8:Z

    if-eqz v3, :cond_2c

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_2c
    throw v2
.end method

.method public er()V
    .registers 6

    const-wide v0, 0x80389fa1a354e61L

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/AIDEEditor;->J0:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    new-instance v2, Lcom/aide/ui/m;

    invoke-direct {v2, p0}, Lcom/aide/ui/m;-><init>(Lcom/aide/ui/AIDEEditor;)V

    const-wide/16 v3, 0x64

    invoke-virtual {p0, v2, v3, v4}, Landroid/view/ViewGroup;->postDelayed(Ljava/lang/Runnable;J)Z

    new-instance v2, Lcom/aide/ui/n;

    invoke-direct {v2, p0}, Lcom/aide/ui/n;-><init>(Lcom/aide/ui/AIDEEditor;)V

    const-wide/16 v3, 0x12c

    invoke-virtual {p0, v2, v3, v4}, Landroid/view/ViewGroup;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_20
    .catchall {:try_start_5 .. :try_end_20} :catchall_21

    return-void

    :catchall_21
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/AIDEEditor;->J8:Z

    if-eqz v3, :cond_29

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_29
    throw v2
.end method

.method public gW()Z
    .registers 5

    const-wide v0, -0x4263720d950f9ec4L

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/AIDEEditor;->J0:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    invoke-virtual {p0}, Lcom/aide/ui/AIDEEditor;->getEditorPager()Lcom/aide/ui/AIDEEditorPager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/aide/ui/AIDEEditorPager;->XL()Z

    move-result v0
    :try_end_14
    .catchall {:try_start_5 .. :try_end_14} :catchall_15

    return v0

    :catchall_15
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/AIDEEditor;->J8:Z

    if-eqz v3, :cond_1d

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1d
    throw v2
.end method

.method public getCurrentFileSpan()Labcd/Tl;
    .registers 10

    const-wide v0, 0x27e0f7f4a9955cabL

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/AIDEEditor;->J0:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    new-instance v2, Labcd/Tl;

    invoke-virtual {p0}, Lcom/aide/ui/AIDEEditor;->getFilePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Lcom/aide/ui/views/CodeEditText;->getSelectionStartLine()I

    move-result v5

    invoke-virtual {p0}, Lcom/aide/ui/views/CodeEditText;->getSelectionStartColumn()I

    move-result v6

    invoke-virtual {p0}, Lcom/aide/ui/views/CodeEditText;->getSelectionEndLine()I

    move-result v7

    invoke-virtual {p0}, Lcom/aide/ui/views/CodeEditText;->getSelectionEndColumn()I

    move-result v8

    move-object v3, v2

    invoke-direct/range {v3 .. v8}, Labcd/Tl;-><init>(Ljava/lang/String;IIII)V
    :try_end_26
    .catchall {:try_start_5 .. :try_end_26} :catchall_27

    return-object v2

    :catchall_27
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/AIDEEditor;->J8:Z

    if-eqz v3, :cond_2f

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_2f
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

    const-wide v0, -0x1ae25cff9f2e0L

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/AIDEEditor;->J0:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    invoke-static {}, Lcom/aide/ui/V;->FH()Ljava/util/List;

    move-result-object v0
    :try_end_10
    .catchall {:try_start_5 .. :try_end_10} :catchall_11

    return-object v0

    :catchall_11
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/AIDEEditor;->J8:Z

    if-eqz v3, :cond_19

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_19
    throw v2
.end method

.method public getDefaultFontSize()F
    .registers 5

    const-wide v0, 0x3b9c62e932e85883L  # 1.5027619592397368E-21

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/AIDEEditor;->J0:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    invoke-static {}, Lcom/aide/ui/U;->dx()Z

    move-result v2

    if-eqz v2, :cond_1c

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/aide/common/g;->Zo(Landroid/content/Context;)I

    move-result v0

    int-to-float v0, v0

    return v0

    :cond_1c
    invoke-static {}, Lcom/aide/ui/aa;->tp()I

    move-result v0
    :try_end_20
    .catchall {:try_start_5 .. :try_end_20} :catchall_22

    int-to-float v0, v0

    return v0

    :catchall_22
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/AIDEEditor;->J8:Z

    if-eqz v3, :cond_2a

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_2a
    throw v2
.end method

.method public getEditorPager()Lcom/aide/ui/AIDEEditorPager;
    .registers 5

    const-wide v0, -0x378a5fdd3be1fa70L

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/AIDEEditor;->J0:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    invoke-static {}, Lcom/aide/ui/U;->lg()Lcom/aide/ui/MainActivity;

    move-result-object v2

    invoke-virtual {v2}, Lcom/aide/ui/MainActivity;->J8()Lcom/aide/ui/AIDEEditorPager;

    move-result-object v0
    :try_end_14
    .catchall {:try_start_5 .. :try_end_14} :catchall_15

    return-object v0

    :catchall_15
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/AIDEEditor;->J8:Z

    if-eqz v3, :cond_1d

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1d
    throw v2
.end method

.method public getFilePath()Ljava/lang/String;
    .registers 5

    const-wide v0, 0x3a0d5fae785d81bL

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/AIDEEditor;->J0:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    invoke-virtual {p0}, Lcom/aide/ui/AIDEEditor;->getModel()Labcd/Nk$a;

    move-result-object v2

    invoke-interface {v2}, Labcd/Nk$a;->Ws()Ljava/lang/String;

    move-result-object v0
    :try_end_14
    .catchall {:try_start_5 .. :try_end_14} :catchall_15

    return-object v0

    :catchall_15
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/AIDEEditor;->J8:Z

    if-eqz v3, :cond_1d

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1d
    throw v2
.end method

.method public getKeyStrokeDetector()Lcom/aide/common/KeyStrokeDetector;
    .registers 5

    const-wide v0, 0xf35fb3560bf86f3L

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/AIDEEditor;->J0:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    invoke-static {}, Lcom/aide/ui/U;->lg()Lcom/aide/ui/MainActivity;

    move-result-object v2

    invoke-virtual {v2}, Lcom/aide/ui/MainActivity;->j3()Lcom/aide/common/KeyStrokeDetector;

    move-result-object v0
    :try_end_14
    .catchall {:try_start_5 .. :try_end_14} :catchall_15

    return-object v0

    :catchall_15
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/AIDEEditor;->J8:Z

    if-eqz v3, :cond_1d

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1d
    throw v2
.end method

.method public getModel()Labcd/Nk$a;
    .registers 5

    const-wide v0, 0x413837b6718899L

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/AIDEEditor;->J0:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    invoke-virtual {p0}, Lcom/aide/ui/views/CodeEditText;->getOEditorView()Lcom/aide/ui/views/CodeEditText$c;

    move-result-object v2

    invoke-virtual {v2}, Lcom/aide/ui/views/editor/OConsole;->getModel()Lcom/aide/ui/views/editor/o;

    move-result-object v2

    check-cast v2, Labcd/Nk$a;
    :try_end_16
    .catchall {:try_start_5 .. :try_end_16} :catchall_17

    return-object v2

    :catchall_17
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/AIDEEditor;->J8:Z

    if-eqz v3, :cond_1f

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1f
    throw v2
.end method

.method protected getQuickKeyBarHeight()I
    .registers 5
    .annotation runtime Labcd/su;
        method = -0x29e811c1661c52c3L
    .end annotation

    const-wide v0, 0x523952d4dccf5bd8L  # 1.259399507750452E88

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/AIDEEditor;->J0:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    invoke-direct {p0}, Lcom/aide/ui/AIDEEditor;->getActivity()Lcom/aide/ui/MainActivity;

    move-result-object v2

    invoke-virtual {v2}, Lcom/aide/ui/MainActivity;->a8()I

    move-result v0
    :try_end_14
    .catchall {:try_start_5 .. :try_end_14} :catchall_15

    return v0

    :catchall_15
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/AIDEEditor;->J8:Z

    if-eqz v3, :cond_1d

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1d
    throw v2
.end method

.method public getQuickKeys()Ljava/lang/String;
    .registers 7

    const-wide v0, -0x8639856d43fa337L  # -1.465445955471059E268

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/AIDEEditor;->J0:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    invoke-direct {p0}, Lcom/aide/ui/AIDEEditor;->getIndentationSize()I

    move-result v2

    invoke-virtual {p0}, Lcom/aide/ui/views/CodeEditText;->getTabSize()I

    move-result v3
    :try_end_14
    .catchall {:try_start_5 .. :try_end_14} :catchall_cf

    rem-int v3, v2, v3

    const/4 v4, 0x0

    const-string v5, ""

    if-nez v3, :cond_37

    :goto_1b
    :try_start_1b
    invoke-virtual {p0}, Lcom/aide/ui/views/CodeEditText;->getTabSize()I

    move-result v3

    div-int v3, v2, v3

    if-ge v4, v3, :cond_4d

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "\t"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    add-int/lit8 v4, v4, 0x1

    goto :goto_1b

    :cond_37
    :goto_37
    if-ge v4, v2, :cond_4d

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "s"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    add-int/lit8 v4, v4, 0x1

    goto :goto_37

    :cond_4d
    invoke-virtual {p0}, Lcom/aide/ui/AIDEEditor;->getFilePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    const-string v3, ".java"

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_bd

    const-string v3, ".js"

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_66

    goto :goto_bd

    :cond_66
    const-string v3, ".xml"

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_ab

    const-string v3, ".html"

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_ab

    const-string v3, ".htm"

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_7f

    goto :goto_ab

    :cond_7f
    const-string v3, ".css"

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_99

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " { } - : . ; # % ( ) \" \' @ > = [ ] / * !"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_99
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " { } ( ) ; , . = \" | & ! [ ] < > + - / *"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_ab
    :goto_ab
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " < > / = \" : @ + ( ) ; , . | & ! [ ] { } _ -"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_bd
    :goto_bd
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " { } ( ) ; , . = \" | & ! [ ] < > + - / * ? : _"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_ce
    .catchall {:try_start_1b .. :try_end_ce} :catchall_cf

    return-object v0

    :catchall_cf
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/AIDEEditor;->J8:Z

    if-eqz v3, :cond_d7

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_d7
    goto :goto_d9

    :goto_d8
    throw v2

    :goto_d9
    goto :goto_d8
.end method

.method public getSelectionContent()Ljava/lang/String;
    .registers 5

    const-wide v0, 0x488374b3f53e61fbL  # 2.118556740569402E41

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/AIDEEditor;->J0:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V
    :try_end_c
    .catchall {:try_start_5 .. :try_end_c} :catchall_2d

    :cond_c
    :try_start_c
    invoke-direct {p0}, Lcom/aide/ui/AIDEEditor;->getEditorModel()Lcom/aide/ui/AIDEEditor$a;

    move-result-object v2

    invoke-virtual {p0}, Lcom/aide/ui/views/CodeEditText;->getOEditorView()Lcom/aide/ui/views/CodeEditText$c;

    move-result-object v3

    invoke-virtual {v3}, Lcom/aide/ui/views/editor/OConsole;->getSelectedRegion()Labcd/hm;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/aide/ui/views/editor/b;->j6(Labcd/hm;)Ljava/io/Reader;

    move-result-object v2

    new-instance v3, Ljava/io/StringWriter;

    invoke-direct {v3}, Ljava/io/StringWriter;-><init>()V

    invoke-static {v2, v3}, Lcom/aide/common/Xa;->j6(Ljava/io/Reader;Ljava/io/Writer;)V

    invoke-virtual {v3}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_28
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_28} :catch_29
    .catchall {:try_start_c .. :try_end_28} :catchall_2d

    return-object v0

    :catch_29
    move-exception v0

    const-string v0, ""

    return-object v0

    :catchall_2d
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/AIDEEditor;->J8:Z

    if-eqz v3, :cond_35

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_35
    throw v2
.end method

.method protected getSideBarPadding()F
    .registers 5
    .annotation runtime Labcd/su;
        method = 0x1a2d9f336e073150L
    .end annotation

    const-wide v0, 0x2de676abfa8abbd3L  # 1.4115292656893567E-87

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/AIDEEditor;->J0:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    invoke-direct {p0}, Lcom/aide/ui/AIDEEditor;->cb()Z

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

    sget-boolean v3, Lcom/aide/ui/AIDEEditor;->J8:Z

    if-eqz v3, :cond_2b

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_2b
    throw v2
.end method

.method protected getTextPaddingRight()I
    .registers 5
    .annotation runtime Labcd/su;
        method = 0x3b5a519aad761b03L
    .end annotation

    const-wide v0, 0x1e68e644e94b9448L

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/AIDEEditor;->J0:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    iget-object v2, p0, Lcom/aide/ui/AIDEEditor;->XL:Ljava/lang/String;

    if-eqz v2, :cond_1f

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v0, v2, Landroid/util/DisplayMetrics;->density:F
    :try_end_1a
    .catchall {:try_start_5 .. :try_end_1a} :catchall_22

    const/high16 v1, 0x42c80000  # 100.0f

    mul-float v0, v0, v1

    goto :goto_20

    :cond_1f
    const/4 v0, 0x0

    :goto_20
    float-to-int v0, v0

    return v0

    :catchall_22
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/AIDEEditor;->J8:Z

    if-eqz v3, :cond_2a

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_2a
    throw v2
.end method

.method public gn(II)V
    .registers 10

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/AIDEEditor;->J0:Z

    if-eqz v0, :cond_16

    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p2}, Ljava/lang/Integer;-><init>(I)V

    const-wide v2, 0xfc1c99b1cbda1b4L  # 8.95094393525065E-233

    invoke-static {v2, v3, p0, v0, v1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_16
    invoke-direct {p0}, Lcom/aide/ui/AIDEEditor;->getEditorModel()Lcom/aide/ui/AIDEEditor$a;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/aide/ui/AIDEEditor$a;->aM(II)V
    :try_end_1d
    .catchall {:try_start_0 .. :try_end_1d} :catchall_1e

    return-void

    :catchall_1e
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/AIDEEditor;->J8:Z

    if-eqz v1, :cond_37

    const-wide v2, 0xfc1c99b1cbda1b4L  # 8.95094393525065E-233

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

    const-wide v0, 0x7b6cdc6ad575afL

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/AIDEEditor;->J0:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    invoke-static {}, Lcom/aide/ui/U;->j3()Labcd/Bk;

    move-result-object v2

    invoke-virtual {v2, p1}, Labcd/Bk;->j6(Labcd/Wl;)Ljava/util/List;

    move-result-object p1
    :try_end_14
    .catchall {:try_start_5 .. :try_end_14} :catchall_15

    return-object p1

    :catchall_15
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/AIDEEditor;->J8:Z

    if-eqz v3, :cond_1d

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1d
    throw v2
.end method

.method public j6()V
    .registers 5

    const-wide v0, -0x9c1c6f45c5980fcL

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/AIDEEditor;->J0:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V
    :try_end_c
    .catchall {:try_start_5 .. :try_end_c} :catchall_d

    :cond_c
    return-void

    :catchall_d
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/AIDEEditor;->J8:Z

    if-eqz v3, :cond_15

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_15
    throw v2
.end method

.method public j6(IIC)V
    .registers 12

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/AIDEEditor;->J0:Z

    if-eqz v0, :cond_1c

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v6, Ljava/lang/Character;

    invoke-direct {v6, p3}, Ljava/lang/Character;-><init>(C)V

    const-wide v1, 0x448624a7619cdae4L  # 1.3071025812940844E22

    move-object v3, p0

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1c
    invoke-direct {p0}, Lcom/aide/ui/AIDEEditor;->getEditorModel()Lcom/aide/ui/AIDEEditor$a;

    move-result-object v0

    add-int/lit8 v1, p1, -0x1

    add-int/lit8 v2, p2, -0x1

    invoke-virtual {v0, v1, v2, p3, p0}, Lcom/aide/ui/views/editor/g;->j6(IICLjava/lang/Object;)V
    :try_end_27
    .catchall {:try_start_0 .. :try_end_27} :catchall_28

    return-void

    :catchall_28
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/AIDEEditor;->J8:Z

    if-eqz v1, :cond_46

    const-wide v2, 0x448624a7619cdae4L  # 1.3071025812940844E22

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v7, Ljava/lang/Character;

    invoke-direct {v7, p3}, Ljava/lang/Character;-><init>(C)V

    move-object v1, v0

    move-object v4, p0

    invoke-static/range {v1 .. v7}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_46
    throw v0
.end method

.method public j6(IIII)V
    .registers 14

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/AIDEEditor;->J0:Z

    if-eqz v0, :cond_21

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p3}, Ljava/lang/Integer;-><init>(I)V

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, p4}, Ljava/lang/Integer;-><init>(I)V

    const-wide v1, 0x39841c4821a39f1cL  # 1.2394037512585022E-31

    move-object v3, p0

    invoke-static/range {v1 .. v7}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_21
    invoke-super {p0, p1, p2, p3, p4}, Lcom/aide/ui/views/CodeEditText;->j6(IIII)V

    invoke-static {}, Lcom/aide/ui/U;->XL()Labcd/Ak;

    move-result-object v0

    invoke-virtual {p0}, Lcom/aide/ui/AIDEEditor;->getCurrentFileSpan()Labcd/Tl;

    move-result-object v1

    invoke-virtual {v0, v1}, Labcd/Ak;->j6(Labcd/Tl;)V
    :try_end_2f
    .catchall {:try_start_0 .. :try_end_2f} :catchall_30

    return-void

    :catchall_30
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/AIDEEditor;->J8:Z

    if-eqz v1, :cond_53

    const-wide v2, 0x39841c4821a39f1cL  # 1.2394037512585022E-31

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

    :cond_53
    throw v0
.end method

.method public j6(Ljava/lang/String;)V
    .registers 6

    const-wide v0, -0x22c027c21de24f38L  # -1.5168934349509753E141

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/AIDEEditor;->J0:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    invoke-virtual {p0}, Lcom/aide/ui/AIDEEditor;->getFilePath()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1f

    invoke-virtual {p0}, Lcom/aide/ui/AIDEEditor;->getFilePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1f

    invoke-direct {p0}, Lcom/aide/ui/AIDEEditor;->sG()V
    :try_end_1f
    .catchall {:try_start_5 .. :try_end_1f} :catchall_20

    :cond_1f
    return-void

    :catchall_20
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/AIDEEditor;->J8:Z

    if-eqz v3, :cond_28

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_28
    throw v2
.end method

.method public j6(Ljava/lang/String;IZLjava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;IZ)V
    .registers 14

    sget-boolean v0, Lcom/aide/ui/AIDEEditor;->J0:Z

    if-eqz v0, :cond_49

    const/16 v0, 0xa

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p2}, Ljava/lang/Integer;-><init>(I)V

    const/4 v2, 0x1

    aput-object v1, v0, v2

    new-instance v1, Ljava/lang/Boolean;

    invoke-direct {v1, p3}, Ljava/lang/Boolean;-><init>(Z)V

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const/4 v1, 0x3

    aput-object p4, v0, v1

    const/4 v1, 0x4

    aput-object p5, v0, v1

    new-instance v1, Ljava/lang/Boolean;

    invoke-direct {v1, p6}, Ljava/lang/Boolean;-><init>(Z)V

    const/4 v2, 0x5

    aput-object v1, v0, v2

    const/4 v1, 0x6

    aput-object p7, v0, v1

    const/4 v1, 0x7

    aput-object p8, v0, v1

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p9}, Ljava/lang/Integer;-><init>(I)V

    const/16 v2, 0x8

    aput-object v1, v0, v2

    new-instance v1, Ljava/lang/Boolean;

    invoke-direct {v1, p10}, Ljava/lang/Boolean;-><init>(Z)V

    const/16 v2, 0x9

    aput-object v1, v0, v2

    const-wide v1, -0x1ce8a0bd05c3355L  # -7.308340493872736E299

    invoke-static {v1, v2, p0, v0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;[Ljava/lang/Object;)V

    :cond_49
    invoke-virtual {p0}, Lcom/aide/ui/views/CodeEditText;->getScrollView()Lcom/aide/ui/views/CodeEditTextScrollView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aide/ui/views/CodeEditTextScrollView;->Hw()V

    iput-object p4, p0, Lcom/aide/ui/AIDEEditor;->QX:Ljava/lang/String;

    iput-object p1, p0, Lcom/aide/ui/AIDEEditor;->XL:Ljava/lang/String;

    iput-boolean p6, p0, Lcom/aide/ui/AIDEEditor;->lg:Z

    iput-object p5, p0, Lcom/aide/ui/AIDEEditor;->aM:Ljava/lang/String;

    iput-object p7, p0, Lcom/aide/ui/AIDEEditor;->Mr:Ljava/lang/String;

    iput-object p8, p0, Lcom/aide/ui/AIDEEditor;->j3:Ljava/lang/String;

    iput p2, p0, Lcom/aide/ui/AIDEEditor;->U2:I

    iput-boolean p3, p0, Lcom/aide/ui/AIDEEditor;->a8:Z

    invoke-virtual {p0}, Lcom/aide/ui/AIDEEditor;->cn()V

    invoke-virtual {p0}, Lcom/aide/ui/AIDEEditor;->lg()V

    if-ltz p9, :cond_6f

    invoke-direct {p0}, Lcom/aide/ui/AIDEEditor;->getEditorModel()Lcom/aide/ui/AIDEEditor$a;

    move-result-object p1

    invoke-virtual {p1, p9, p10}, Lcom/aide/ui/AIDEEditor$a;->j6(IZ)V

    :cond_6f
    new-instance p1, Lcom/aide/ui/o;

    invoke-direct {p1, p0}, Lcom/aide/ui/o;-><init>(Lcom/aide/ui/AIDEEditor;)V

    const-wide/16 p2, 0xa

    invoke-virtual {p0, p1, p2, p3}, Landroid/view/ViewGroup;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public varargs j6(Ljava/lang/String;[Ljava/lang/String;)V
    .registers 10

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/AIDEEditor;->J0:Z

    if-eqz v0, :cond_c

    const-wide v0, 0x613a676c73134100L

    invoke-static {v0, v1, p0, p1, p2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    invoke-direct {p0}, Lcom/aide/ui/AIDEEditor;->getEditorModel()Lcom/aide/ui/AIDEEditor$a;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/aide/ui/AIDEEditor$a;->j6(Ljava/lang/String;[Ljava/lang/String;)V
    :try_end_13
    .catchall {:try_start_0 .. :try_end_13} :catchall_14

    return-void

    :catchall_14
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/AIDEEditor;->J8:Z

    if-eqz v1, :cond_25

    const-wide v2, 0x613a676c73134100L

    move-object v1, v0

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_25
    throw v0
.end method

.method public j6(Z)V
    .registers 6

    const-wide v0, -0x2f6f37084ee33104L  # -1.2438871239196752E80

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/AIDEEditor;->J0:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Z)V

    :cond_c
    iget-object v2, p0, Lcom/aide/ui/AIDEEditor;->Ws:Lcom/aide/ui/j;

    invoke-virtual {v2, p1}, Lcom/aide/ui/j;->j6(Z)V
    :try_end_11
    .catchall {:try_start_5 .. :try_end_11} :catchall_12

    return-void

    :catchall_12
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/AIDEEditor;->J8:Z

    if-eqz v3, :cond_1f

    new-instance v3, Ljava/lang/Boolean;

    invoke-direct {v3, p1}, Ljava/lang/Boolean;-><init>(Z)V

    invoke-static {v2, v0, v1, p0, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1f
    throw v2
.end method

.method public j6(IILjava/lang/String;)Z
    .registers 12

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/AIDEEditor;->J0:Z

    if-eqz v0, :cond_18

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p2}, Ljava/lang/Integer;-><init>(I)V

    const-wide v1, -0x10e2c59cb62bf3c0L  # -1.7309997235848172E227

    move-object v3, p0

    move-object v6, p3

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_18
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_20

    return v1

    :cond_20
    invoke-direct {p0}, Lcom/aide/ui/AIDEEditor;->getEditorModel()Lcom/aide/ui/AIDEEditor$a;

    move-result-object v0

    move v2, p1

    :goto_25
    invoke-virtual {v0}, Lcom/aide/ui/views/editor/g;->v5()I

    move-result v3

    const/4 v4, 0x0

    if-gt v2, v3, :cond_52

    add-int/lit8 v3, v2, -0x1

    invoke-virtual {v0, v3}, Lcom/aide/ui/views/editor/g;->J0(I)[C

    move-result-object v5

    invoke-virtual {v0, v3}, Lcom/aide/ui/views/editor/g;->EQ(I)I

    move-result v3

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v6

    if-ne v2, p1, :cond_3e

    add-int/lit8 v4, p2, -0x1

    :cond_3e
    sub-int/2addr v3, v6

    invoke-direct {p0, v5, v4, v3, p3}, Lcom/aide/ui/AIDEEditor;->j6([CIILjava/lang/String;)I

    move-result v3

    if-ltz v3, :cond_4f

    add-int/2addr v3, v1

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v0

    add-int/2addr v0, v3

    invoke-virtual {p0, v2, v3, v2, v0}, Lcom/aide/ui/AIDEEditor;->j6(IIII)V
    :try_end_4e
    .catchall {:try_start_0 .. :try_end_4e} :catchall_53

    return v1

    :cond_4f
    add-int/lit8 v2, v2, 0x1

    goto :goto_25

    :cond_52
    return v4

    :catchall_53
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/AIDEEditor;->J8:Z

    if-eqz v1, :cond_6d

    const-wide v2, -0x10e2c59cb62bf3c0L  # -1.7309997235848172E227

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    move-object v1, v0

    move-object v4, p0

    move-object v7, p3

    invoke-static/range {v1 .. v7}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_6d
    goto :goto_6f

    :goto_6e
    throw v0

    :goto_6f
    goto :goto_6e
.end method

.method public lg()V
    .registers 5

    const-wide v0, -0x44d78d7f5e3158dcL  # -1.0111156066323418E-23

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/AIDEEditor;->J0:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    invoke-virtual {p0}, Lcom/aide/ui/views/CodeEditText;->getOEditorView()Lcom/aide/ui/views/CodeEditText$c;

    move-result-object v2

    invoke-virtual {p0}, Lcom/aide/ui/AIDEEditor;->getDefaultFontSize()F

    move-result v3

    invoke-virtual {v2, v3}, Lcom/aide/ui/views/editor/OConsole;->setFontSize(F)V
    :try_end_17
    .catchall {:try_start_5 .. :try_end_17} :catchall_18

    return-void

    :catchall_18
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/AIDEEditor;->J8:Z

    if-eqz v3, :cond_20

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_20
    throw v2
.end method

.method public nw()V
    .registers 8

    const-wide v0, -0x2e8fa97526fa525L  # -3.6757196999834045E294

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/AIDEEditor;->J0:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    invoke-virtual {p0}, Lcom/aide/ui/views/CodeEditText;->getOEditorView()Lcom/aide/ui/views/CodeEditText$c;

    move-result-object v2

    invoke-virtual {v2}, Lcom/aide/ui/views/editor/OEditor;->lg()Z

    move-result v2

    if-eqz v2, :cond_6d

    invoke-static {}, Lcom/aide/ui/U;->Zo()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/aide/common/g;->we(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_26

    invoke-static {}, Lcom/aide/ui/aa;->Ws()Z

    move-result v2

    if-eqz v2, :cond_6d

    :cond_26
    invoke-virtual {p0}, Lcom/aide/ui/AIDEEditor;->gW()Z

    move-result v2

    if-nez v2, :cond_6d

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

    invoke-virtual {p0}, Lcom/aide/ui/views/CodeEditText;->getScrollView()Lcom/aide/ui/views/CodeEditTextScrollView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/aide/ui/views/CodeEditTextScrollView;->v5()Z

    move-result v2

    if-eqz v2, :cond_6a

    invoke-virtual {p0}, Lcom/aide/ui/views/CodeEditText;->getScrollView()Lcom/aide/ui/views/CodeEditTextScrollView;

    move-result-object v2

    invoke-virtual {p0}, Lcom/aide/ui/views/CodeEditText;->getSelectionStartLine()I

    move-result v3

    invoke-virtual {p0}, Lcom/aide/ui/views/CodeEditText;->getSelectionStartColumn()I

    move-result v4

    invoke-virtual {p0}, Lcom/aide/ui/AIDEEditor;->getDefaultFontSize()F

    move-result v5

    new-instance v6, Lcom/aide/ui/t;

    invoke-direct {v6, p0}, Lcom/aide/ui/t;-><init>(Lcom/aide/ui/AIDEEditor;)V

    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/aide/ui/views/CodeEditTextScrollView;->j6(IIFLjava/lang/Runnable;)V

    goto :goto_6d

    :cond_6a
    invoke-virtual {p0}, Lcom/aide/ui/AIDEEditor;->er()V
    :try_end_6d
    .catchall {:try_start_5 .. :try_end_6d} :catchall_6e

    :cond_6d
    :goto_6d
    return-void

    :catchall_6e
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/AIDEEditor;->J8:Z

    if-eqz v3, :cond_76

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_76
    throw v2
.end method

.method public rN()V
    .registers 5

    const-wide v0, -0x11374fab33e0abf9L  # -4.56926813298182E225

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/AIDEEditor;->J0:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    invoke-virtual {p0}, Lcom/aide/ui/views/CodeEditText;->getScrollView()Lcom/aide/ui/views/CodeEditTextScrollView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/aide/ui/views/CodeEditTextScrollView;->j6()Z
    :try_end_13
    .catchall {:try_start_5 .. :try_end_13} :catchall_14

    return-void

    :catchall_14
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/AIDEEditor;->J8:Z

    if-eqz v3, :cond_1c

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1c
    throw v2
.end method

.method public ro()V
    .registers 5

    const-wide v0, -0x63c03e57708a570L

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/AIDEEditor;->J0:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    iget-object v2, p0, Lcom/aide/ui/AIDEEditor;->Ws:Lcom/aide/ui/j;

    invoke-virtual {v2}, Lcom/aide/ui/j;->VH()V
    :try_end_11
    .catchall {:try_start_5 .. :try_end_11} :catchall_12

    return-void

    :catchall_12
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/AIDEEditor;->J8:Z

    if-eqz v3, :cond_1a

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1a
    throw v2
.end method

.method public tp(II)V
    .registers 10

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/AIDEEditor;->J0:Z

    if-eqz v0, :cond_16

    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p2}, Ljava/lang/Integer;-><init>(I)V

    const-wide v2, 0xb2342f836e63340L  # 5.1312838562102E-255

    invoke-static {v2, v3, p0, v0, v1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_16
    invoke-direct {p0}, Lcom/aide/ui/AIDEEditor;->getEditorModel()Lcom/aide/ui/AIDEEditor$a;

    move-result-object v0

    add-int/lit8 v1, p1, -0x1

    add-int/lit8 v2, p2, -0x1

    invoke-virtual {v0, v1, v2, p0}, Lcom/aide/ui/views/editor/g;->DW(IILjava/lang/Object;)V
    :try_end_21
    .catchall {:try_start_0 .. :try_end_21} :catchall_22

    return-void

    :catchall_22
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/AIDEEditor;->J8:Z

    if-eqz v1, :cond_3b

    const-wide v2, 0xb2342f836e63340L  # 5.1312838562102E-255

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    move-object v1, v0

    move-object v4, p0

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_3b
    throw v0
.end method

.method public u7(II)V
    .registers 10

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/AIDEEditor;->J0:Z

    if-eqz v0, :cond_16

    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p2}, Ljava/lang/Integer;-><init>(I)V

    const-wide v2, -0x1bd5f566fb698fe4L  # -3.2204146329952773E174

    invoke-static {v2, v3, p0, v0, v1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_16
    invoke-direct {p0}, Lcom/aide/ui/AIDEEditor;->getEditorModel()Lcom/aide/ui/AIDEEditor$a;

    move-result-object v0

    add-int/lit8 v1, p2, -0x1

    add-int/lit8 v2, p1, -0x1

    invoke-virtual {v0, v1, v2, p0}, Lcom/aide/ui/views/editor/g;->j6(IILjava/lang/Object;)V
    :try_end_21
    .catchall {:try_start_0 .. :try_end_21} :catchall_22

    return-void

    :catchall_22
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/AIDEEditor;->J8:Z

    if-eqz v1, :cond_3b

    const-wide v2, -0x1bd5f566fb698fe4L  # -3.2204146329952773E174

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    move-object v1, v0

    move-object v4, p0

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_3b
    throw v0
.end method

.method protected u7()Z
    .registers 5
    .annotation runtime Labcd/su;
        method = -0xd941b8342404899L
    .end annotation

    const-wide v0, 0x170e96ff036ab8L

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/AIDEEditor;->J0:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    iget-object v2, p0, Lcom/aide/ui/AIDEEditor;->Ws:Lcom/aide/ui/j;

    invoke-virtual {v2}, Lcom/aide/ui/j;->FH()Z

    move-result v0
    :try_end_12
    .catchall {:try_start_5 .. :try_end_12} :catchall_13

    return v0

    :catchall_13
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/AIDEEditor;->J8:Z

    if-eqz v3, :cond_1b

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1b
    throw v2
.end method

.method public v5(I)V
    .registers 6

    const-wide v0, 0x208bea9b580b0730L

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/AIDEEditor;->J0:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;I)V

    :cond_c
    invoke-virtual {p0}, Lcom/aide/ui/AIDEEditor;->FH()Z

    move-result v2

    if-eqz v2, :cond_19

    invoke-direct {p0}, Lcom/aide/ui/AIDEEditor;->getEditorModel()Lcom/aide/ui/AIDEEditor$a;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/aide/ui/AIDEEditor$a;->Ws(I)V
    :try_end_19
    .catchall {:try_start_5 .. :try_end_19} :catchall_1a

    :cond_19
    return-void

    :catchall_1a
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/AIDEEditor;->J8:Z

    if-eqz v3, :cond_27

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-static {v2, v0, v1, p0, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_27
    throw v2
.end method

.method protected v5(II)V
    .registers 10
    .annotation runtime Labcd/su;
        method = -0x96a3d76c3f1d79L
    .end annotation

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/AIDEEditor;->J0:Z

    if-eqz v0, :cond_16

    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p2}, Ljava/lang/Integer;-><init>(I)V

    const-wide v2, -0x5eab64685e259ca0L  # -4.029149699325597E-148

    invoke-static {v2, v3, p0, v0, v1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_16
    add-int/lit8 v0, p1, 0x1

    add-int/lit8 v1, p2, 0x1

    invoke-direct {p0, v0, v1}, Lcom/aide/ui/AIDEEditor;->we(II)V

    invoke-static {}, Lcom/aide/ui/U;->SI()Labcd/Cl;

    move-result-object v0

    invoke-virtual {v0}, Labcd/Cl;->rN()V
    :try_end_24
    .catchall {:try_start_0 .. :try_end_24} :catchall_25

    return-void

    :catchall_25
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/AIDEEditor;->J8:Z

    if-eqz v1, :cond_3e

    const-wide v2, -0x5eab64685e259ca0L  # -4.029149699325597E-148

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    move-object v1, v0

    move-object v4, p0

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_3e
    throw v0
.end method

.method public vy()V
    .registers 5

    const-wide v0, 0x2d9bfb92a6c08599L  # 5.494788859399962E-89

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/AIDEEditor;->J0:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    iget-object v2, p0, Lcom/aide/ui/AIDEEditor;->Ws:Lcom/aide/ui/j;

    invoke-virtual {v2}, Lcom/aide/ui/j;->v5()V

    invoke-virtual {p0}, Lcom/aide/ui/views/CodeEditText;->getScrollView()Lcom/aide/ui/views/CodeEditTextScrollView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/aide/ui/views/CodeEditTextScrollView;->Zo()V

    invoke-virtual {p0}, Lcom/aide/ui/views/CodeEditText;->getOEditorView()Lcom/aide/ui/views/CodeEditText$c;

    move-result-object v2

    invoke-virtual {v2}, Lcom/aide/ui/views/editor/OConsole;->Ws()V

    invoke-static {}, Lcom/aide/ui/U;->we()Labcd/ck;

    move-result-object v2

    invoke-virtual {v2, p0}, Labcd/ck;->DW(Labcd/ck$a;)V
    :try_end_26
    .catchall {:try_start_5 .. :try_end_26} :catchall_27

    return-void

    :catchall_27
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/AIDEEditor;->J8:Z

    if-eqz v3, :cond_2f

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_2f
    throw v2
.end method

.method public yS()V
    .registers 6

    const-wide v0, 0x359c9c8042eb1d9bL  # 1.9117839695521937E-50

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/AIDEEditor;->J0:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "input_method"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {p0}, Lcom/aide/ui/views/CodeEditText;->getOEditorView()Lcom/aide/ui/views/CodeEditText$c;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z
    :try_end_24
    .catchall {:try_start_5 .. :try_end_24} :catchall_25

    return-void

    :catchall_25
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/AIDEEditor;->J8:Z

    if-eqz v3, :cond_2d

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_2d
    throw v2
.end method
