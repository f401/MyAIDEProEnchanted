.class public Lcom/aide/ui/LogCatConsole;
.super Lcom/aide/ui/views/CodeEditText;


# annotations
.annotation runtime Labcd/xu;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/aide/ui/LogCatConsole$a;
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
.field private QX:Lcom/aide/ui/Z;
    .annotation runtime Labcd/ru;
        field = -0x480ba522085eb580L
    .end annotation
.end field

.field private Ws:Lcom/aide/ui/Z;
    .annotation runtime Labcd/ru;
        field = 0x3be63d1be9bd1ad4L
    .end annotation
.end field

.field private XL:Labcd/Sl;
    .annotation runtime Labcd/ru;
        field = 0x3c3492021eb1f199L
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LSl<",
            "Labcd/Gk$a;",
            ">;"
        }
    .end annotation
.end field

.field private aM:Landroid/os/Handler;
    .annotation runtime Labcd/ru;
        field = -0x2b27a01ae33d83acL
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const-class v0, Lcom/aide/ui/LogCatConsole;

    const-wide v1, -0x328fc7caf0341855L  # -1.0675743733575116E65

    invoke-static {v0, v1, v2, v1, v2}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 8

    const/4 v0, 0x0

    const-wide v1, -0x983a8506c249855L  # -5.577951602935373E262

    :try_start_6
    sget-boolean v3, Lcom/aide/ui/LogCatConsole;->J0:Z

    if-eqz v3, :cond_d

    invoke-static {v1, v2, v0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_d
    invoke-direct {p0, p1}, Lcom/aide/ui/views/CodeEditText;-><init>(Landroid/content/Context;)V

    new-instance v3, Lcom/aide/ui/Z;

    invoke-static {}, Lcom/aide/ui/U;->lg()Lcom/aide/ui/MainActivity;

    move-result-object v4

    const v5, 0x7f0b000b

    invoke-direct {v3, v4, v5}, Lcom/aide/ui/Z;-><init>(Lcom/aide/ui/MainActivity;I)V

    iput-object v3, p0, Lcom/aide/ui/LogCatConsole;->Ws:Lcom/aide/ui/Z;

    new-instance v3, Lcom/aide/ui/Z;

    invoke-static {}, Lcom/aide/ui/U;->lg()Lcom/aide/ui/MainActivity;

    move-result-object v4

    const v5, 0x7f0b000a

    invoke-direct {v3, v4, v5}, Lcom/aide/ui/Z;-><init>(Lcom/aide/ui/MainActivity;I)V

    iput-object v3, p0, Lcom/aide/ui/LogCatConsole;->QX:Lcom/aide/ui/Z;

    new-instance v3, Labcd/Sl;

    const/16 v4, 0x2710

    invoke-direct {v3, v4}, Labcd/Sl;-><init>(I)V

    iput-object v3, p0, Lcom/aide/ui/LogCatConsole;->XL:Labcd/Sl;

    invoke-direct {p0}, Lcom/aide/ui/LogCatConsole;->yS()V
    :try_end_38
    .catchall {:try_start_6 .. :try_end_38} :catchall_39

    return-void

    :catchall_39
    move-exception v3

    sget-boolean v4, Lcom/aide/ui/LogCatConsole;->J8:Z

    if-eqz v4, :cond_41

    invoke-static {v3, v1, v2, v0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_41
    throw v3
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 10

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/LogCatConsole;->J0:Z

    if-eqz v0, :cond_d

    const-wide v0, -0x37650475b3ae0b40L  # -5.8762853451579195E41

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, p1, p2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_d
    invoke-direct {p0, p1, p2}, Lcom/aide/ui/views/CodeEditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance v0, Lcom/aide/ui/Z;

    invoke-static {}, Lcom/aide/ui/U;->lg()Lcom/aide/ui/MainActivity;

    move-result-object v1

    const v2, 0x7f0b000b

    invoke-direct {v0, v1, v2}, Lcom/aide/ui/Z;-><init>(Lcom/aide/ui/MainActivity;I)V

    iput-object v0, p0, Lcom/aide/ui/LogCatConsole;->Ws:Lcom/aide/ui/Z;

    new-instance v0, Lcom/aide/ui/Z;

    invoke-static {}, Lcom/aide/ui/U;->lg()Lcom/aide/ui/MainActivity;

    move-result-object v1

    const v2, 0x7f0b000a

    invoke-direct {v0, v1, v2}, Lcom/aide/ui/Z;-><init>(Lcom/aide/ui/MainActivity;I)V

    iput-object v0, p0, Lcom/aide/ui/LogCatConsole;->QX:Lcom/aide/ui/Z;

    new-instance v0, Labcd/Sl;

    const/16 v1, 0x2710

    invoke-direct {v0, v1}, Labcd/Sl;-><init>(I)V

    iput-object v0, p0, Lcom/aide/ui/LogCatConsole;->XL:Labcd/Sl;

    invoke-direct {p0}, Lcom/aide/ui/LogCatConsole;->yS()V
    :try_end_38
    .catchall {:try_start_0 .. :try_end_38} :catchall_39

    return-void

    :catchall_39
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/LogCatConsole;->J8:Z

    if-eqz v1, :cond_4a

    const-wide v2, -0x37650475b3ae0b40L  # -5.8762853451579195E41

    const/4 v4, 0x0

    move-object v1, v0

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_4a
    throw v0
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 12

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/LogCatConsole;->J0:Z

    if-eqz v0, :cond_14

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p3}, Ljava/lang/Integer;-><init>(I)V

    const-wide v1, -0x104aadad3f18f1fL

    const/4 v3, 0x0

    move-object v4, p1

    move-object v5, p2

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_14
    invoke-direct {p0, p1, p2, p3}, Lcom/aide/ui/views/CodeEditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance v0, Lcom/aide/ui/Z;

    invoke-static {}, Lcom/aide/ui/U;->lg()Lcom/aide/ui/MainActivity;

    move-result-object v1

    const v2, 0x7f0b000b

    invoke-direct {v0, v1, v2}, Lcom/aide/ui/Z;-><init>(Lcom/aide/ui/MainActivity;I)V

    iput-object v0, p0, Lcom/aide/ui/LogCatConsole;->Ws:Lcom/aide/ui/Z;

    new-instance v0, Lcom/aide/ui/Z;

    invoke-static {}, Lcom/aide/ui/U;->lg()Lcom/aide/ui/MainActivity;

    move-result-object v1

    const v2, 0x7f0b000a

    invoke-direct {v0, v1, v2}, Lcom/aide/ui/Z;-><init>(Lcom/aide/ui/MainActivity;I)V

    iput-object v0, p0, Lcom/aide/ui/LogCatConsole;->QX:Lcom/aide/ui/Z;

    new-instance v0, Labcd/Sl;

    const/16 v1, 0x2710

    invoke-direct {v0, v1}, Labcd/Sl;-><init>(I)V

    iput-object v0, p0, Lcom/aide/ui/LogCatConsole;->XL:Labcd/Sl;

    invoke-direct {p0}, Lcom/aide/ui/LogCatConsole;->yS()V
    :try_end_3f
    .catchall {:try_start_0 .. :try_end_3f} :catchall_40

    return-void

    :catchall_40
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/LogCatConsole;->J8:Z

    if-eqz v1, :cond_56

    const-wide v2, -0x104aadad3f18f1fL

    const/4 v4, 0x0

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, p3}, Ljava/lang/Integer;-><init>(I)V

    move-object v1, v0

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v1 .. v7}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_56
    throw v0
.end method

.method static synthetic DW(Lcom/aide/ui/LogCatConsole;)Lcom/aide/ui/LogCatConsole$a;
    .registers 1

    invoke-direct {p0}, Lcom/aide/ui/LogCatConsole;->getLogCatModel()Lcom/aide/ui/LogCatConsole$a;

    move-result-object p0

    return-object p0
.end method

.method private DW(Labcd/Gk$a;)V
    .registers 12
    .annotation runtime Labcd/su;
        method = 0x5d34e96b045668bcL
    .end annotation

    const-wide v0, -0x3b5d1d9fc8ebfa80L  # -4.458924694223859E22

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/LogCatConsole;->J0:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    invoke-static {}, Lcom/aide/ui/U;->vy()Labcd/Zk;

    move-result-object v2

    invoke-virtual {v2}, Labcd/Zk;->j3()Z

    move-result v2

    if-nez v2, :cond_17

    return-void

    :cond_17
    invoke-static {}, Lcom/aide/ui/U;->vy()Labcd/Zk;

    move-result-object v2

    invoke-virtual {v2}, Labcd/Zk;->J0()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Labcd/gj;->P8(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_26

    return-void

    :cond_26
    iget-object v2, p1, Labcd/Gk$a;->u7:Ljava/lang/String;

    const-string v3, "at "

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_ac

    iget-object v2, p1, Labcd/Gk$a;->u7:Ljava/lang/String;

    const/16 v3, 0x28

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    if-lez v2, :cond_ac

    iget-object v3, p1, Labcd/Gk$a;->u7:Ljava/lang/String;

    const/4 v4, 0x3

    invoke-virtual {v3, v4, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x2e

    invoke-virtual {v2, v3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v4

    if-lez v4, :cond_ac

    const/4 v5, 0x0

    invoke-virtual {v2, v5, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    const/16 v4, 0x24

    invoke-virtual {v2, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    if-lez v4, :cond_5a

    invoke-virtual {v2, v5, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    :cond_5a
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v5, 0x2f

    invoke-virtual {v2, v3, v5}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ".java"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/aide/ui/U;->vy()Labcd/Zk;

    move-result-object v3

    invoke-virtual {v3, v2}, Labcd/Zk;->a8(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_ac

    iget-object v2, p1, Labcd/Gk$a;->u7:Ljava/lang/String;

    const/16 v3, 0x3a

    invoke-virtual {v2, v3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v2
    :try_end_83
    .catchall {:try_start_5 .. :try_end_83} :catchall_ad

    const/4 v3, 0x1

    if-lez v2, :cond_9b

    :try_start_86
    iget-object v4, p1, Labcd/Gk$a;->u7:Ljava/lang/String;

    add-int/2addr v2, v3

    iget-object v6, p1, Labcd/Gk$a;->u7:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    sub-int/2addr v6, v3

    invoke-virtual {v4, v2, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2
    :try_end_98
    .catch Ljava/lang/Exception; {:try_start_86 .. :try_end_98} :catch_9a
    .catchall {:try_start_86 .. :try_end_98} :catchall_ad

    move v8, v2

    goto :goto_9c

    :catch_9a
    move-exception v2

    :cond_9b
    const/4 v8, 0x1

    :goto_9c
    :try_start_9c
    invoke-static {}, Lcom/aide/ui/U;->lg()Lcom/aide/ui/MainActivity;

    move-result-object v2

    new-instance v3, Labcd/Tl;

    const/4 v7, 0x1

    const/4 v9, 0x1

    move-object v4, v3

    move v6, v8

    invoke-direct/range {v4 .. v9}, Labcd/Tl;-><init>(Ljava/lang/String;IIII)V

    invoke-virtual {v2, v3}, Lcom/aide/ui/MainActivity;->j6(Labcd/Tl;)V
    :try_end_ac
    .catchall {:try_start_9c .. :try_end_ac} :catchall_ad

    :cond_ac
    return-void

    :catchall_ad
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/LogCatConsole;->J8:Z

    if-eqz v3, :cond_b5

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_b5
    throw v2
.end method

.method static synthetic FH(Lcom/aide/ui/LogCatConsole;)Lcom/aide/ui/views/CodeEditText$c;
    .registers 1

    invoke-virtual {p0}, Lcom/aide/ui/views/CodeEditText;->getOEditorView()Lcom/aide/ui/views/CodeEditText$c;

    move-result-object p0

    return-object p0
.end method

.method private getLogCatModel()Lcom/aide/ui/LogCatConsole$a;
    .registers 5
    .annotation runtime Labcd/su;
        method = -0x3b5e08f1a558298cL
    .end annotation

    const-wide v0, -0x1de43081906c4a60L  # -4.0037486590026093E164

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/LogCatConsole;->J0:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    invoke-virtual {p0}, Lcom/aide/ui/views/CodeEditText;->getOEditorView()Lcom/aide/ui/views/CodeEditText$c;

    move-result-object v2

    invoke-virtual {v2}, Lcom/aide/ui/views/editor/OConsole;->getModel()Lcom/aide/ui/views/editor/o;

    move-result-object v2

    check-cast v2, Lcom/aide/ui/LogCatConsole$a;
    :try_end_16
    .catchall {:try_start_5 .. :try_end_16} :catchall_17

    return-object v2

    :catchall_17
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/LogCatConsole;->J8:Z

    if-eqz v3, :cond_1f

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1f
    throw v2
.end method

.method static synthetic j6(Lcom/aide/ui/LogCatConsole;)Lcom/aide/ui/Z;
    .registers 1

    iget-object p0, p0, Lcom/aide/ui/LogCatConsole;->QX:Lcom/aide/ui/Z;

    return-object p0
.end method

.method static synthetic j6(Lcom/aide/ui/LogCatConsole;Labcd/Gk$a;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/aide/ui/LogCatConsole;->DW(Labcd/Gk$a;)V

    return-void
.end method

.method private setHeader(Ljava/lang/String;)V
    .registers 6
    .annotation runtime Labcd/su;
        method = 0xe6f4f26113f918L
    .end annotation

    const-wide v0, -0x123b81830545090L

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/LogCatConsole;->J0:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    invoke-virtual {p0}, Lcom/aide/ui/views/CodeEditText;->getScrollView()Lcom/aide/ui/views/CodeEditTextScrollView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/aide/ui/views/CodeEditTextScrollView;->getHeaderView()Landroid/view/View;

    move-result-object v2

    const v3, 0x7f0800e1

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_20
    .catchall {:try_start_5 .. :try_end_20} :catchall_21

    return-void

    :catchall_21
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/LogCatConsole;->J8:Z

    if-eqz v3, :cond_29

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_29
    throw v2
.end method

.method private yS()V
    .registers 6
    .annotation runtime Labcd/su;
        method = -0x292a8074cfe375a7L
    .end annotation

    const-wide v0, -0x13b484842daf4783L  # -4.625950034864545E213

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/LogCatConsole;->J0:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    iput-object v2, p0, Lcom/aide/ui/LogCatConsole;->aM:Landroid/os/Handler;

    invoke-virtual {p0}, Lcom/aide/ui/views/CodeEditText;->getOEditorView()Lcom/aide/ui/views/CodeEditText$c;

    move-result-object v2

    new-instance v3, Lcom/aide/ui/LogCatConsole$a;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lcom/aide/ui/LogCatConsole$a;-><init>(Lcom/aide/ui/LogCatConsole;Lcom/aide/ui/ga;)V

    invoke-virtual {v2, v3}, Lcom/aide/ui/views/editor/OEditor;->setModel(Lcom/aide/ui/views/editor/o;)V

    invoke-virtual {p0}, Lcom/aide/ui/views/CodeEditText;->getOEditorView()Lcom/aide/ui/views/CodeEditText$c;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/aide/ui/views/editor/OConsole;->setHidden(Z)V

    invoke-virtual {p0}, Lcom/aide/ui/views/CodeEditText;->getOEditorView()Lcom/aide/ui/views/CodeEditText$c;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/aide/ui/views/editor/OEditor;->setEditable(Z)V

    new-instance v2, Lcom/aide/ui/ga;

    invoke-direct {v2, p0}, Lcom/aide/ui/ga;-><init>(Lcom/aide/ui/LogCatConsole;)V

    invoke-virtual {p0, v2}, Lcom/aide/ui/views/CodeEditText;->DW(Lcom/aide/ui/views/CodeEditText$d;)V

    new-instance v2, Lcom/aide/ui/ha;

    invoke-direct {v2, p0}, Lcom/aide/ui/ha;-><init>(Lcom/aide/ui/LogCatConsole;)V

    invoke-virtual {p0, v2}, Lcom/aide/ui/views/CodeEditText;->VH(Lcom/aide/ui/views/CodeEditText$d;)V

    invoke-virtual {p0}, Lcom/aide/ui/LogCatConsole;->rN()V
    :try_end_42
    .catchall {:try_start_5 .. :try_end_42} :catchall_43

    return-void

    :catchall_43
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/LogCatConsole;->J8:Z

    if-eqz v3, :cond_4b

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_4b
    throw v2
.end method


# virtual methods
.method public DW(Ljava/lang/String;)V
    .registers 7

    const-wide v0, 0x279b0c37233bb6c3L  # 6.703665125639132E-118

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/LogCatConsole;->J0:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    iget-object v2, p0, Lcom/aide/ui/LogCatConsole;->XL:Labcd/Sl;

    monitor-enter v2
    :try_end_f
    .catchall {:try_start_5 .. :try_end_f} :catchall_31

    :try_start_f
    invoke-direct {p0}, Lcom/aide/ui/LogCatConsole;->getLogCatModel()Lcom/aide/ui/LogCatConsole$a;

    move-result-object v3

    iget-object v4, p0, Lcom/aide/ui/LogCatConsole;->XL:Labcd/Sl;

    invoke-virtual {v3, p1, v4}, Lcom/aide/ui/LogCatConsole$a;->j6(Ljava/lang/String;Labcd/Sl;)V

    monitor-exit v2
    :try_end_19
    .catchall {:try_start_f .. :try_end_19} :catchall_2e

    :try_start_19
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "LogCat - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/aide/ui/LogCatConsole;->setHeader(Ljava/lang/String;)V
    :try_end_2d
    .catchall {:try_start_19 .. :try_end_2d} :catchall_31

    return-void

    :catchall_2e
    move-exception v3

    :try_start_2f
    monitor-exit v2
    :try_end_30
    .catchall {:try_start_2f .. :try_end_30} :catchall_2e

    :try_start_30
    throw v3
    :try_end_31
    .catchall {:try_start_30 .. :try_end_31} :catchall_31

    :catchall_31
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/LogCatConsole;->J8:Z

    if-eqz v3, :cond_39

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_39
    throw v2
.end method

.method protected DW()Z
    .registers 5
    .annotation runtime Labcd/su;
        method = 0x31b3078b394c180L
    .end annotation

    const-wide v0, 0x5c28c62645160fe4L  # 9.00335907386427E135

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/LogCatConsole;->J0:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V
    :try_end_c
    .catchall {:try_start_5 .. :try_end_c} :catchall_e

    :cond_c
    const/4 v0, 0x0

    return v0

    :catchall_e
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/LogCatConsole;->J8:Z

    if-eqz v3, :cond_16

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_16
    throw v2
.end method

.method public FH(Ljava/lang/String;)V
    .registers 7

    const-wide v0, -0x56bda1d051064360L  # -6.110144125647758E-110

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/LogCatConsole;->J0:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    iget-object v2, p0, Lcom/aide/ui/LogCatConsole;->XL:Labcd/Sl;

    monitor-enter v2
    :try_end_f
    .catchall {:try_start_5 .. :try_end_f} :catchall_31

    :try_start_f
    invoke-direct {p0}, Lcom/aide/ui/LogCatConsole;->getLogCatModel()Lcom/aide/ui/LogCatConsole$a;

    move-result-object v3

    iget-object v4, p0, Lcom/aide/ui/LogCatConsole;->XL:Labcd/Sl;

    invoke-virtual {v3, p1, v4}, Lcom/aide/ui/LogCatConsole$a;->DW(Ljava/lang/String;Labcd/Sl;)V

    monitor-exit v2
    :try_end_19
    .catchall {:try_start_f .. :try_end_19} :catchall_2e

    :try_start_19
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "LogCat - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/aide/ui/LogCatConsole;->setHeader(Ljava/lang/String;)V
    :try_end_2d
    .catchall {:try_start_19 .. :try_end_2d} :catchall_31

    return-void

    :catchall_2e
    move-exception v3

    :try_start_2f
    monitor-exit v2
    :try_end_30
    .catchall {:try_start_2f .. :try_end_30} :catchall_2e

    :try_start_30
    throw v3
    :try_end_31
    .catchall {:try_start_30 .. :try_end_31} :catchall_31

    :catchall_31
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/LogCatConsole;->J8:Z

    if-eqz v3, :cond_39

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_39
    throw v2
.end method

.method public Hw(Ljava/lang/String;)V
    .registers 7

    const-wide v0, -0x24935f8c91a1028dL  # -2.5399217154079925E132

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/LogCatConsole;->J0:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    iget-object v2, p0, Lcom/aide/ui/LogCatConsole;->XL:Labcd/Sl;

    monitor-enter v2
    :try_end_f
    .catchall {:try_start_5 .. :try_end_f} :catchall_31

    :try_start_f
    invoke-direct {p0}, Lcom/aide/ui/LogCatConsole;->getLogCatModel()Lcom/aide/ui/LogCatConsole$a;

    move-result-object v3

    iget-object v4, p0, Lcom/aide/ui/LogCatConsole;->XL:Labcd/Sl;

    invoke-virtual {v3, p1, v4}, Lcom/aide/ui/LogCatConsole$a;->FH(Ljava/lang/String;Labcd/Sl;)V

    monitor-exit v2
    :try_end_19
    .catchall {:try_start_f .. :try_end_19} :catchall_2e

    :try_start_19
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "LogCat - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/aide/ui/LogCatConsole;->setHeader(Ljava/lang/String;)V
    :try_end_2d
    .catchall {:try_start_19 .. :try_end_2d} :catchall_31

    return-void

    :catchall_2e
    move-exception v3

    :try_start_2f
    monitor-exit v2
    :try_end_30
    .catchall {:try_start_2f .. :try_end_30} :catchall_2e

    :try_start_30
    throw v3
    :try_end_31
    .catchall {:try_start_30 .. :try_end_31} :catchall_31

    :catchall_31
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/LogCatConsole;->J8:Z

    if-eqz v3, :cond_39

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_39
    throw v2
.end method

.method public a8()V
    .registers 5

    const-wide v0, -0x17a0b322614d2960L  # -5.712222491562288E194

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/LogCatConsole;->J0:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    iget-object v2, p0, Lcom/aide/ui/LogCatConsole;->XL:Labcd/Sl;

    monitor-enter v2
    :try_end_f
    .catchall {:try_start_5 .. :try_end_f} :catchall_20

    :try_start_f
    iget-object v3, p0, Lcom/aide/ui/LogCatConsole;->XL:Labcd/Sl;

    invoke-virtual {v3}, Labcd/Sl;->j6()V

    invoke-direct {p0}, Lcom/aide/ui/LogCatConsole;->getLogCatModel()Lcom/aide/ui/LogCatConsole$a;

    move-result-object v3

    invoke-virtual {v3}, Lcom/aide/ui/LogCatConsole$a;->vy()V

    monitor-exit v2

    return-void

    :catchall_1d
    move-exception v3

    monitor-exit v2
    :try_end_1f
    .catchall {:try_start_f .. :try_end_1f} :catchall_1d

    :try_start_1f
    throw v3
    :try_end_20
    .catchall {:try_start_1f .. :try_end_20} :catchall_20

    :catchall_20
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/LogCatConsole;->J8:Z

    if-eqz v3, :cond_28

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_28
    throw v2
.end method

.method public er()V
    .registers 5

    const-wide v0, -0x2b27c1cc44e961f3L  # -5.302546868513459E100

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/LogCatConsole;->J0:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    invoke-virtual {p0}, Lcom/aide/ui/views/CodeEditText;->getScrollView()Lcom/aide/ui/views/CodeEditTextScrollView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/aide/ui/views/CodeEditTextScrollView;->getHeaderView()Landroid/view/View;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V
    :try_end_18
    .catchall {:try_start_5 .. :try_end_18} :catchall_19

    return-void

    :catchall_19
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/LogCatConsole;->J8:Z

    if-eqz v3, :cond_21

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_21
    throw v2
.end method

.method public getAllPriortities()Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-wide v0, 0x55975888c215d278L

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/LogCatConsole;->J0:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "E"

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-string v3, "W"

    const/4 v4, 0x1

    aput-object v3, v2, v4

    const-string v3, "I"

    const/4 v4, 0x2

    aput-object v3, v2, v4

    const-string v3, "D"

    const/4 v4, 0x3

    aput-object v3, v2, v4

    const-string v3, "V"

    const/4 v4, 0x4

    aput-object v3, v2, v4

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0
    :try_end_2c
    .catchall {:try_start_5 .. :try_end_2c} :catchall_2d

    return-object v0

    :catchall_2d
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/LogCatConsole;->J8:Z

    if-eqz v3, :cond_35

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_35
    throw v2
.end method

.method public getAllProcesses()Ljava/util/List;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-wide v0, 0x36ceb64f8d8ac217L  # 1.075922264154092E-44

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/LogCatConsole;->J0:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    iget-object v2, p0, Lcom/aide/ui/LogCatConsole;->XL:Labcd/Sl;

    monitor-enter v2
    :try_end_f
    .catchall {:try_start_5 .. :try_end_f} :catchall_44

    :try_start_f
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    const/4 v4, 0x0

    :goto_15
    iget-object v5, p0, Lcom/aide/ui/LogCatConsole;->XL:Labcd/Sl;

    invoke-virtual {v5}, Labcd/Sl;->Hw()I

    move-result v5

    if-ge v4, v5, :cond_35

    iget-object v5, p0, Lcom/aide/ui/LogCatConsole;->XL:Labcd/Sl;

    invoke-virtual {v5, v4}, Labcd/Sl;->j6(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Labcd/Gk$a;

    iget-object v6, v5, Labcd/Gk$a;->gn:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_32

    iget-object v5, v5, Labcd/Gk$a;->gn:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_32
    add-int/lit8 v4, v4, 0x1

    goto :goto_15

    :cond_35
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    sget-object v3, Ljava/lang/String;->CASE_INSENSITIVE_ORDER:Ljava/util/Comparator;

    invoke-static {v4, v3}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    monitor-exit v2

    return-object v4

    :catchall_41
    move-exception v3

    monitor-exit v2
    :try_end_43
    .catchall {:try_start_f .. :try_end_43} :catchall_41

    :try_start_43
    throw v3
    :try_end_44
    .catchall {:try_start_43 .. :try_end_44} :catchall_44

    :catchall_44
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/LogCatConsole;->J8:Z

    if-eqz v3, :cond_4c

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_4c
    goto :goto_4e

    :goto_4d
    throw v2

    :goto_4e
    goto :goto_4d
.end method

.method public getAllTags()Ljava/util/List;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-wide v0, 0x1ca9f471970bf93dL

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/LogCatConsole;->J0:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    iget-object v2, p0, Lcom/aide/ui/LogCatConsole;->XL:Labcd/Sl;

    monitor-enter v2
    :try_end_f
    .catchall {:try_start_5 .. :try_end_f} :catchall_44

    :try_start_f
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    const/4 v4, 0x0

    :goto_15
    iget-object v5, p0, Lcom/aide/ui/LogCatConsole;->XL:Labcd/Sl;

    invoke-virtual {v5}, Labcd/Sl;->Hw()I

    move-result v5

    if-ge v4, v5, :cond_35

    iget-object v5, p0, Lcom/aide/ui/LogCatConsole;->XL:Labcd/Sl;

    invoke-virtual {v5, v4}, Labcd/Sl;->j6(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Labcd/Gk$a;

    iget-object v6, v5, Labcd/Gk$a;->VH:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_32

    iget-object v5, v5, Labcd/Gk$a;->VH:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_32
    add-int/lit8 v4, v4, 0x1

    goto :goto_15

    :cond_35
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    sget-object v3, Ljava/lang/String;->CASE_INSENSITIVE_ORDER:Ljava/util/Comparator;

    invoke-static {v4, v3}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    monitor-exit v2

    return-object v4

    :catchall_41
    move-exception v3

    monitor-exit v2
    :try_end_43
    .catchall {:try_start_f .. :try_end_43} :catchall_41

    :try_start_43
    throw v3
    :try_end_44
    .catchall {:try_start_43 .. :try_end_44} :catchall_44

    :catchall_44
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/LogCatConsole;->J8:Z

    if-eqz v3, :cond_4c

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_4c
    goto :goto_4e

    :goto_4d
    throw v2

    :goto_4e
    goto :goto_4d
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

    const-wide v0, -0x1f07e2977e6e8c7L

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/LogCatConsole;->J0:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    invoke-static {}, Lcom/aide/ui/V;->Zo()Ljava/util/List;

    move-result-object v0
    :try_end_10
    .catchall {:try_start_5 .. :try_end_10} :catchall_11

    return-object v0

    :catchall_11
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/LogCatConsole;->J8:Z

    if-eqz v3, :cond_19

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_19
    throw v2
.end method

.method public getKeyStrokeDetector()Lcom/aide/common/KeyStrokeDetector;
    .registers 5

    const-wide v0, -0x109593f7f886b810L  # -5.007401022702321E228

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/LogCatConsole;->J0:Z

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

    sget-boolean v3, Lcom/aide/ui/LogCatConsole;->J8:Z

    if-eqz v3, :cond_1d

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1d
    throw v2
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

    const-wide v0, -0xb40b03b49d4c1c0L

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/LogCatConsole;->J0:Z

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

    sget-boolean v3, Lcom/aide/ui/LogCatConsole;->J8:Z

    if-eqz v3, :cond_1d

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1d
    throw v2
.end method

.method public j6(Labcd/Gk$a;)V
    .registers 6

    const-wide v0, 0x9dc56eb9aeb0f14L  # 3.599949883229829E-261

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/LogCatConsole;->J0:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    iget-object v2, p0, Lcom/aide/ui/LogCatConsole;->XL:Labcd/Sl;

    monitor-enter v2
    :try_end_f
    .catchall {:try_start_5 .. :try_end_f} :catchall_23

    :try_start_f
    iget-object v3, p0, Lcom/aide/ui/LogCatConsole;->XL:Labcd/Sl;

    invoke-virtual {v3, p1}, Labcd/Sl;->j6(Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v2
    :try_end_15
    .catchall {:try_start_f .. :try_end_15} :catchall_20

    :try_start_15
    iget-object v2, p0, Lcom/aide/ui/LogCatConsole;->aM:Landroid/os/Handler;

    new-instance v3, Lcom/aide/ui/ia;

    invoke-direct {v3, p0, p1}, Lcom/aide/ui/ia;-><init>(Lcom/aide/ui/LogCatConsole;Labcd/Gk$a;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_1f
    .catchall {:try_start_15 .. :try_end_1f} :catchall_23

    return-void

    :catchall_20
    move-exception v3

    :try_start_21
    monitor-exit v2
    :try_end_22
    .catchall {:try_start_21 .. :try_end_22} :catchall_20

    :try_start_22
    throw v3
    :try_end_23
    .catchall {:try_start_22 .. :try_end_23} :catchall_23

    :catchall_23
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/LogCatConsole;->J8:Z

    if-eqz v3, :cond_2b

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_2b
    throw v2
.end method

.method public j6(Landroid/view/View;Z)V
    .registers 10

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/LogCatConsole;->J0:Z

    if-eqz v0, :cond_11

    new-instance v0, Ljava/lang/Boolean;

    invoke-direct {v0, p2}, Ljava/lang/Boolean;-><init>(Z)V

    const-wide v1, -0x4c44cecbd41e9ef9L  # -1.6921749049164678E-59

    invoke-static {v1, v2, p0, p1, v0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_11
    iget-object v0, p0, Lcom/aide/ui/LogCatConsole;->Ws:Lcom/aide/ui/Z;

    invoke-virtual {v0, p1, p2}, Lcom/aide/ui/Z;->j6(Landroid/view/View;Z)V
    :try_end_16
    .catchall {:try_start_0 .. :try_end_16} :catchall_17

    return-void

    :catchall_17
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/LogCatConsole;->J8:Z

    if-eqz v1, :cond_2c

    const-wide v2, -0x4c44cecbd41e9ef9L  # -1.6921749049164678E-59

    new-instance v6, Ljava/lang/Boolean;

    invoke-direct {v6, p2}, Ljava/lang/Boolean;-><init>(Z)V

    move-object v1, v0

    move-object v4, p0

    move-object v5, p1

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_2c
    throw v0
.end method

.method public lg()V
    .registers 6

    const-wide v0, 0x32ecc9ce67aa9be0L

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/LogCatConsole;->J0:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    iget-object v2, p0, Lcom/aide/ui/LogCatConsole;->XL:Labcd/Sl;

    monitor-enter v2
    :try_end_f
    .catchall {:try_start_5 .. :try_end_f} :catchall_22

    :try_start_f
    invoke-direct {p0}, Lcom/aide/ui/LogCatConsole;->getLogCatModel()Lcom/aide/ui/LogCatConsole$a;

    move-result-object v3

    iget-object v4, p0, Lcom/aide/ui/LogCatConsole;->XL:Labcd/Sl;

    invoke-virtual {v3, v4}, Lcom/aide/ui/LogCatConsole$a;->j6(Labcd/Sl;)V

    monitor-exit v2
    :try_end_19
    .catchall {:try_start_f .. :try_end_19} :catchall_1f

    :try_start_19
    const-string v2, "LogCat"

    invoke-direct {p0, v2}, Lcom/aide/ui/LogCatConsole;->setHeader(Ljava/lang/String;)V
    :try_end_1e
    .catchall {:try_start_19 .. :try_end_1e} :catchall_22

    return-void

    :catchall_1f
    move-exception v3

    :try_start_20
    monitor-exit v2
    :try_end_21
    .catchall {:try_start_20 .. :try_end_21} :catchall_1f

    :try_start_21
    throw v3
    :try_end_22
    .catchall {:try_start_21 .. :try_end_22} :catchall_22

    :catchall_22
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/LogCatConsole;->J8:Z

    if-eqz v3, :cond_2a

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_2a
    throw v2
.end method

.method public rN()V
    .registers 5

    const-wide v0, 0x86f45a4ce6421a1L

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/LogCatConsole;->J0:Z

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

    invoke-virtual {p0}, Lcom/aide/ui/views/CodeEditText;->getOEditorView()Lcom/aide/ui/views/CodeEditText$c;

    move-result-object v2

    invoke-static {}, Lcom/aide/ui/aa;->tp()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Lcom/aide/ui/views/editor/OConsole;->setFontSize(F)V
    :try_end_35
    .catchall {:try_start_5 .. :try_end_35} :catchall_36

    return-void

    :catchall_36
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/LogCatConsole;->J8:Z

    if-eqz v3, :cond_3e

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_3e
    throw v2
.end method

.method public v5(Ljava/lang/String;)V
    .registers 7

    const-wide v0, 0x4cb31554739abb8L

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/LogCatConsole;->J0:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    iget-object v2, p0, Lcom/aide/ui/LogCatConsole;->XL:Labcd/Sl;

    monitor-enter v2
    :try_end_f
    .catchall {:try_start_5 .. :try_end_f} :catchall_31

    :try_start_f
    invoke-direct {p0}, Lcom/aide/ui/LogCatConsole;->getLogCatModel()Lcom/aide/ui/LogCatConsole$a;

    move-result-object v3

    iget-object v4, p0, Lcom/aide/ui/LogCatConsole;->XL:Labcd/Sl;

    invoke-virtual {v3, p1, v4}, Lcom/aide/ui/LogCatConsole$a;->Hw(Ljava/lang/String;Labcd/Sl;)V

    monitor-exit v2
    :try_end_19
    .catchall {:try_start_f .. :try_end_19} :catchall_2e

    :try_start_19
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "LogCat - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/aide/ui/LogCatConsole;->setHeader(Ljava/lang/String;)V
    :try_end_2d
    .catchall {:try_start_19 .. :try_end_2d} :catchall_31

    return-void

    :catchall_2e
    move-exception v3

    :try_start_2f
    monitor-exit v2
    :try_end_30
    .catchall {:try_start_2f .. :try_end_30} :catchall_2e

    :try_start_30
    throw v3
    :try_end_31
    .catchall {:try_start_30 .. :try_end_31} :catchall_31

    :catchall_31
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/LogCatConsole;->J8:Z

    if-eqz v3, :cond_39

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_39
    throw v2
.end method
