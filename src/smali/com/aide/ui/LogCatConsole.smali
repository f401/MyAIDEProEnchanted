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
            "LSl",
            "<",
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
    .registers 4

    const-wide v2, -0x328fc7caf0341855L    # -1.0675743733575116E65

    const-class v0, Lcom/aide/ui/LogCatConsole;

    invoke-static {v0, v2, v3, v2, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 8

    const-wide v4, -0x983a8506c249855L    # -5.577951602935373E262

    const/4 v3, 0x0

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/LogCatConsole;->J0:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x983a8506c249855L    # -5.577951602935373E262

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    invoke-direct {p0, p1}, Lcom/aide/ui/views/CodeEditText;-><init>(Landroid/content/Context;)V

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
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/LogCatConsole;->J8:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v4, v5, v3, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 10

    const-wide v2, -0x37650475b3ae0b40L    # -5.8762853451579195E41

    const/4 v4, 0x0

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/LogCatConsole;->J0:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x37650475b3ae0b40L    # -5.8762853451579195E41

    const/4 v5, 0x0

    invoke-static {v0, v1, v5, p1, p2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/aide/ui/views/CodeEditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance v0, Lcom/aide/ui/Z;

    invoke-static {}, Lcom/aide/ui/U;->lg()Lcom/aide/ui/MainActivity;

    move-result-object v1

    const v5, 0x7f0b000b

    invoke-direct {v0, v1, v5}, Lcom/aide/ui/Z;-><init>(Lcom/aide/ui/MainActivity;I)V

    iput-object v0, p0, Lcom/aide/ui/LogCatConsole;->Ws:Lcom/aide/ui/Z;

    new-instance v0, Lcom/aide/ui/Z;

    invoke-static {}, Lcom/aide/ui/U;->lg()Lcom/aide/ui/MainActivity;

    move-result-object v1

    const v5, 0x7f0b000a

    invoke-direct {v0, v1, v5}, Lcom/aide/ui/Z;-><init>(Lcom/aide/ui/MainActivity;I)V

    iput-object v0, p0, Lcom/aide/ui/LogCatConsole;->QX:Lcom/aide/ui/Z;

    new-instance v0, Labcd/Sl;

    const/16 v1, 0x2710

    invoke-direct {v0, v1}, Labcd/Sl;-><init>(I)V

    iput-object v0, p0, Lcom/aide/ui/LogCatConsole;->XL:Labcd/Sl;

    invoke-direct {p0}, Lcom/aide/ui/LogCatConsole;->yS()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v1

    sget-boolean v0, Lcom/aide/ui/LogCatConsole;->J8:Z

    if-eqz v0, :cond_1

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v1
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 14

    const-wide v8, -0x104aadad3f18f1fL

    const/4 v6, 0x0

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/LogCatConsole;->J0:Z

    if-eqz v0, :cond_0

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p3}, Ljava/lang/Integer;-><init>(I)V

    const-wide v0, -0x104aadad3f18f1fL

    const/4 v2, 0x0

    move-object v3, p1

    move-object v4, p2

    invoke-static/range {v0 .. v5}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
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
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v1

    sget-boolean v0, Lcom/aide/ui/LogCatConsole;->J8:Z

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

.method static synthetic DW(Lcom/aide/ui/LogCatConsole;)Lcom/aide/ui/LogCatConsole$a;
    .registers 2

    invoke-direct {p0}, Lcom/aide/ui/LogCatConsole;->getLogCatModel()Lcom/aide/ui/LogCatConsole$a;

    move-result-object v0

    return-object v0
.end method

.method private DW(Labcd/Gk$a;)V
    .registers 12
    .annotation runtime Labcd/su;
        method = 0x5d34e96b045668bcL
    .end annotation

    const-wide v8, -0x3b5d1d9fc8ebfa80L    # -4.458924694223859E22

    const/4 v2, 0x1

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/LogCatConsole;->J0:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x3b5d1d9fc8ebfa80L    # -4.458924694223859E22

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    invoke-static {}, Lcom/aide/ui/U;->vy()Labcd/Zk;

    move-result-object v0

    invoke-virtual {v0}, Labcd/Zk;->j3()Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    :goto_0
    return-void

    :cond_2
    invoke-static {}, Lcom/aide/ui/U;->vy()Labcd/Zk;

    move-result-object v0

    invoke-virtual {v0}, Labcd/Zk;->J0()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Labcd/gj;->P8(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p1, Labcd/Gk$a;->u7:Ljava/lang/String;

    const-string v1, "at "

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p1, Labcd/Gk$a;->u7:Ljava/lang/String;

    const/16 v1, 0x28

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-lez v0, :cond_1

    iget-object v1, p1, Labcd/Gk$a;->u7:Ljava/lang/String;

    const/4 v3, 0x3

    invoke-virtual {v1, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x2e

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    if-lez v1, :cond_1

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x24

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-lez v1, :cond_3

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v3, 0x2e

    const/16 v4, 0x2f

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ".java"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/aide/ui/U;->vy()Labcd/Zk;

    move-result-object v1

    invoke-virtual {v1, v0}, Labcd/Zk;->a8(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v0, p1, Labcd/Gk$a;->u7:Ljava/lang/String;

    const/16 v3, 0x3a

    invoke-virtual {v0, v3}, Ljava/lang/String;->lastIndexOf(I)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-lez v0, :cond_4

    :try_start_1
    iget-object v3, p1, Labcd/Gk$a;->u7:Ljava/lang/String;

    add-int/lit8 v0, v0, 0x1

    iget-object v4, p1, Labcd/Gk$a;->u7:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v3, v0, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    move-result v2

    :cond_4
    :goto_1
    :try_start_2
    invoke-static {}, Lcom/aide/ui/U;->lg()Lcom/aide/ui/MainActivity;

    move-result-object v6

    new-instance v0, Labcd/Tl;

    const/4 v3, 0x1

    const/4 v5, 0x1

    move v4, v2

    invoke-direct/range {v0 .. v5}, Labcd/Tl;-><init>(Ljava/lang/String;IIII)V

    invoke-virtual {v6, v0}, Lcom/aide/ui/MainActivity;->j6(Labcd/Tl;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/LogCatConsole;->J8:Z

    if-eqz v1, :cond_5

    invoke-static {v0, v8, v9, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_5
    throw v0

    :catch_1
    move-exception v0

    goto :goto_1
.end method

.method static synthetic FH(Lcom/aide/ui/LogCatConsole;)Lcom/aide/ui/views/CodeEditText$c;
    .registers 2

    invoke-virtual {p0}, Lcom/aide/ui/views/CodeEditText;->getOEditorView()Lcom/aide/ui/views/CodeEditText$c;

    move-result-object v0

    return-object v0
.end method

.method private getLogCatModel()Lcom/aide/ui/LogCatConsole$a;
    .registers 5
    .annotation runtime Labcd/su;
        method = -0x3b5e08f1a558298cL
    .end annotation

    const-wide v2, -0x1de43081906c4a60L    # -4.0037486590026093E164

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/LogCatConsole;->J0:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x1de43081906c4a60L    # -4.0037486590026093E164

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    invoke-virtual {p0}, Lcom/aide/ui/views/CodeEditText;->getOEditorView()Lcom/aide/ui/views/CodeEditText$c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aide/ui/views/editor/OConsole;->getModel()Lcom/aide/ui/views/editor/o;

    move-result-object v0

    check-cast v0, Lcom/aide/ui/LogCatConsole$a;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/LogCatConsole;->J8:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method static synthetic j6(Lcom/aide/ui/LogCatConsole;)Lcom/aide/ui/Z;
    .registers 2

    iget-object v0, p0, Lcom/aide/ui/LogCatConsole;->QX:Lcom/aide/ui/Z;

    return-object v0
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

    const-wide v2, -0x123b81830545090L

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/LogCatConsole;->J0:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x123b81830545090L

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    invoke-virtual {p0}, Lcom/aide/ui/views/CodeEditText;->getScrollView()Lcom/aide/ui/views/CodeEditTextScrollView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aide/ui/views/CodeEditTextScrollView;->getHeaderView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0800e1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/LogCatConsole;->J8:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method private yS()V
    .registers 7
    .annotation runtime Labcd/su;
        method = -0x292a8074cfe375a7L
    .end annotation

    const-wide v4, -0x13b484842daf4783L    # -4.625950034864545E213

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/LogCatConsole;->J0:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x13b484842daf4783L    # -4.625950034864545E213

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/aide/ui/LogCatConsole;->aM:Landroid/os/Handler;

    invoke-virtual {p0}, Lcom/aide/ui/views/CodeEditText;->getOEditorView()Lcom/aide/ui/views/CodeEditText$c;

    move-result-object v0

    new-instance v1, Lcom/aide/ui/LogCatConsole$a;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/aide/ui/LogCatConsole$a;-><init>(Lcom/aide/ui/LogCatConsole;Lcom/aide/ui/ga;)V

    invoke-virtual {v0, v1}, Lcom/aide/ui/views/editor/OEditor;->setModel(Lcom/aide/ui/views/editor/o;)V

    invoke-virtual {p0}, Lcom/aide/ui/views/CodeEditText;->getOEditorView()Lcom/aide/ui/views/CodeEditText$c;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/aide/ui/views/editor/OConsole;->setHidden(Z)V

    invoke-virtual {p0}, Lcom/aide/ui/views/CodeEditText;->getOEditorView()Lcom/aide/ui/views/CodeEditText$c;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/aide/ui/views/editor/OEditor;->setEditable(Z)V

    new-instance v0, Lcom/aide/ui/ga;

    invoke-direct {v0, p0}, Lcom/aide/ui/ga;-><init>(Lcom/aide/ui/LogCatConsole;)V

    invoke-virtual {p0, v0}, Lcom/aide/ui/views/CodeEditText;->DW(Lcom/aide/ui/views/CodeEditText$d;)V

    new-instance v0, Lcom/aide/ui/ha;

    invoke-direct {v0, p0}, Lcom/aide/ui/ha;-><init>(Lcom/aide/ui/LogCatConsole;)V

    invoke-virtual {p0, v0}, Lcom/aide/ui/views/CodeEditText;->VH(Lcom/aide/ui/views/CodeEditText$d;)V

    invoke-virtual {p0}, Lcom/aide/ui/LogCatConsole;->rN()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/LogCatConsole;->J8:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v4, v5, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method


# virtual methods
.method public DW(Ljava/lang/String;)V
    .registers 8

    const-wide v4, 0x279b0c37233bb6c3L    # 6.703665125639132E-118

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/LogCatConsole;->J0:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x279b0c37233bb6c3L    # 6.703665125639132E-118

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    iget-object v1, p0, Lcom/aide/ui/LogCatConsole;->XL:Labcd/Sl;

    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-direct {p0}, Lcom/aide/ui/LogCatConsole;->getLogCatModel()Lcom/aide/ui/LogCatConsole$a;

    move-result-object v0

    iget-object v2, p0, Lcom/aide/ui/LogCatConsole;->XL:Labcd/Sl;

    invoke-virtual {v0, p1, v2}, Lcom/aide/ui/LogCatConsole$a;->j6(Ljava/lang/String;Labcd/Sl;)V

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "LogCat - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/aide/ui/LogCatConsole;->setHeader(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    return-void

    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v0
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/LogCatConsole;->J8:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v4, v5, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method protected DW()Z
    .registers 5
    .annotation runtime Labcd/su;
        method = 0x31b3078b394c180L
    .end annotation

    const-wide v2, 0x5c28c62645160fe4L    # 9.00335907386427E135

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/LogCatConsole;->J0:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x5c28c62645160fe4L    # 9.00335907386427E135

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/LogCatConsole;->J8:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public FH(Ljava/lang/String;)V
    .registers 8

    const-wide v4, -0x56bda1d051064360L    # -6.110144125647758E-110

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/LogCatConsole;->J0:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x56bda1d051064360L    # -6.110144125647758E-110

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    iget-object v1, p0, Lcom/aide/ui/LogCatConsole;->XL:Labcd/Sl;

    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-direct {p0}, Lcom/aide/ui/LogCatConsole;->getLogCatModel()Lcom/aide/ui/LogCatConsole$a;

    move-result-object v0

    iget-object v2, p0, Lcom/aide/ui/LogCatConsole;->XL:Labcd/Sl;

    invoke-virtual {v0, p1, v2}, Lcom/aide/ui/LogCatConsole$a;->DW(Ljava/lang/String;Labcd/Sl;)V

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "LogCat - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/aide/ui/LogCatConsole;->setHeader(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    return-void

    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v0
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/LogCatConsole;->J8:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v4, v5, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public Hw(Ljava/lang/String;)V
    .registers 8

    const-wide v4, -0x24935f8c91a1028dL    # -2.5399217154079925E132

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/LogCatConsole;->J0:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x24935f8c91a1028dL    # -2.5399217154079925E132

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    iget-object v1, p0, Lcom/aide/ui/LogCatConsole;->XL:Labcd/Sl;

    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-direct {p0}, Lcom/aide/ui/LogCatConsole;->getLogCatModel()Lcom/aide/ui/LogCatConsole$a;

    move-result-object v0

    iget-object v2, p0, Lcom/aide/ui/LogCatConsole;->XL:Labcd/Sl;

    invoke-virtual {v0, p1, v2}, Lcom/aide/ui/LogCatConsole$a;->FH(Ljava/lang/String;Labcd/Sl;)V

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "LogCat - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/aide/ui/LogCatConsole;->setHeader(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    return-void

    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v0
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/LogCatConsole;->J8:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v4, v5, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public a8()V
    .registers 5

    const-wide v2, -0x17a0b322614d2960L    # -5.712222491562288E194

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/LogCatConsole;->J0:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x17a0b322614d2960L    # -5.712222491562288E194

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    iget-object v1, p0, Lcom/aide/ui/LogCatConsole;->XL:Labcd/Sl;

    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v0, p0, Lcom/aide/ui/LogCatConsole;->XL:Labcd/Sl;

    invoke-virtual {v0}, Labcd/Sl;->j6()V

    invoke-direct {p0}, Lcom/aide/ui/LogCatConsole;->getLogCatModel()Lcom/aide/ui/LogCatConsole$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aide/ui/LogCatConsole$a;->vy()V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v0
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/LogCatConsole;->J8:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public er()V
    .registers 5

    const-wide v2, -0x2b27c1cc44e961f3L    # -5.302546868513459E100

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/LogCatConsole;->J0:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x2b27c1cc44e961f3L    # -5.302546868513459E100

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    invoke-virtual {p0}, Lcom/aide/ui/views/CodeEditText;->getScrollView()Lcom/aide/ui/views/CodeEditTextScrollView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aide/ui/views/CodeEditTextScrollView;->getHeaderView()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/LogCatConsole;->J8:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public getAllPriortities()Ljava/util/List;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-wide v4, 0x55975888c215d278L

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/LogCatConsole;->J0:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x55975888c215d278L

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "E"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "W"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "I"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "D"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "V"

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/LogCatConsole;->J8:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v4, v5, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public getAllProcesses()Ljava/util/List;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-wide v6, 0x36ceb64f8d8ac217L    # 1.075922264154092E-44

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/LogCatConsole;->J0:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x36ceb64f8d8ac217L    # 1.075922264154092E-44

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    iget-object v2, p0, Lcom/aide/ui/LogCatConsole;->XL:Labcd/Sl;

    monitor-enter v2
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/aide/ui/LogCatConsole;->XL:Labcd/Sl;

    invoke-virtual {v0}, Labcd/Sl;->Hw()I

    move-result v0

    if-ge v1, v0, :cond_2

    iget-object v0, p0, Lcom/aide/ui/LogCatConsole;->XL:Labcd/Sl;

    invoke-virtual {v0, v1}, Labcd/Sl;->j6(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Labcd/Gk$a;

    iget-object v4, v0, Labcd/Gk$a;->gn:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_1

    iget-object v0, v0, Labcd/Gk$a;->gn:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    sget-object v1, Ljava/lang/String;->CASE_INSENSITIVE_ORDER:Ljava/util/Comparator;

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    monitor-exit v2

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v0
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/LogCatConsole;->J8:Z

    if-eqz v1, :cond_3

    invoke-static {v0, v6, v7, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_3
    throw v0
.end method

.method public getAllTags()Ljava/util/List;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-wide v6, 0x1ca9f471970bf93dL

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/LogCatConsole;->J0:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x1ca9f471970bf93dL

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    iget-object v2, p0, Lcom/aide/ui/LogCatConsole;->XL:Labcd/Sl;

    monitor-enter v2
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/aide/ui/LogCatConsole;->XL:Labcd/Sl;

    invoke-virtual {v0}, Labcd/Sl;->Hw()I

    move-result v0

    if-ge v1, v0, :cond_2

    iget-object v0, p0, Lcom/aide/ui/LogCatConsole;->XL:Labcd/Sl;

    invoke-virtual {v0, v1}, Labcd/Sl;->j6(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Labcd/Gk$a;

    iget-object v4, v0, Labcd/Gk$a;->VH:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_1

    iget-object v0, v0, Labcd/Gk$a;->VH:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    sget-object v1, Ljava/lang/String;->CASE_INSENSITIVE_ORDER:Ljava/util/Comparator;

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    monitor-exit v2

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v0
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/LogCatConsole;->J8:Z

    if-eqz v1, :cond_3

    invoke-static {v0, v6, v7, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_3
    throw v0
.end method

.method public getCustomEditorCommands()Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Labcd/Wl;",
            ">;"
        }
    .end annotation

    const-wide v2, -0x1f07e2977e6e8c7L

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/LogCatConsole;->J0:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x1f07e2977e6e8c7L

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    invoke-static {}, Lcom/aide/ui/V;->Zo()Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/LogCatConsole;->J8:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public getKeyStrokeDetector()Lcom/aide/common/KeyStrokeDetector;
    .registers 5

    const-wide v2, -0x109593f7f886b810L    # -5.007401022702321E228

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/LogCatConsole;->J0:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x109593f7f886b810L    # -5.007401022702321E228

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    invoke-static {}, Lcom/aide/ui/U;->lg()Lcom/aide/ui/MainActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aide/ui/MainActivity;->j3()Lcom/aide/common/KeyStrokeDetector;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/LogCatConsole;->J8:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public j6(Labcd/Wl;)Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Labcd/Wl;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/aide/common/u;",
            ">;"
        }
    .end annotation

    const-wide v2, -0xb40b03b49d4c1c0L

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/LogCatConsole;->J0:Z

    if-eqz v0, :cond_0

    const-wide v0, -0xb40b03b49d4c1c0L

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    invoke-static {}, Lcom/aide/ui/U;->j3()Labcd/Bk;

    move-result-object v0

    invoke-virtual {v0, p1}, Labcd/Bk;->j6(Labcd/Wl;)Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/LogCatConsole;->J8:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public j6(Labcd/Gk$a;)V
    .registers 6

    const-wide v2, 0x9dc56eb9aeb0f14L    # 3.599949883229829E-261

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/LogCatConsole;->J0:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x9dc56eb9aeb0f14L    # 3.599949883229829E-261

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    iget-object v1, p0, Lcom/aide/ui/LogCatConsole;->XL:Labcd/Sl;

    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v0, p0, Lcom/aide/ui/LogCatConsole;->XL:Labcd/Sl;

    invoke-virtual {v0, p1}, Labcd/Sl;->j6(Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    iget-object v0, p0, Lcom/aide/ui/LogCatConsole;->aM:Landroid/os/Handler;

    new-instance v1, Lcom/aide/ui/ia;

    invoke-direct {v1, p0, p1}, Lcom/aide/ui/ia;-><init>(Lcom/aide/ui/LogCatConsole;Labcd/Gk$a;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    return-void

    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v0
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/LogCatConsole;->J8:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public j6(Landroid/view/View;Z)V
    .registers 10

    const-wide v2, -0x4c44cecbd41e9ef9L    # -1.6921749049164678E-59

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/LogCatConsole;->J0:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/Boolean;

    invoke-direct {v0, p2}, Ljava/lang/Boolean;-><init>(Z)V

    const-wide v4, -0x4c44cecbd41e9ef9L    # -1.6921749049164678E-59

    invoke-static {v4, v5, p0, p1, v0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/aide/ui/LogCatConsole;->Ws:Lcom/aide/ui/Z;

    invoke-virtual {v0, p1, p2}, Lcom/aide/ui/Z;->j6(Landroid/view/View;Z)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v1

    sget-boolean v0, Lcom/aide/ui/LogCatConsole;->J8:Z

    if-eqz v0, :cond_1

    new-instance v6, Ljava/lang/Boolean;

    invoke-direct {v6, p2}, Ljava/lang/Boolean;-><init>(Z)V

    move-object v4, p0

    move-object v5, p1

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v1
.end method

.method public lg()V
    .registers 7

    const-wide v4, 0x32ecc9ce67aa9be0L

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/LogCatConsole;->J0:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x32ecc9ce67aa9be0L

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    iget-object v1, p0, Lcom/aide/ui/LogCatConsole;->XL:Labcd/Sl;

    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-direct {p0}, Lcom/aide/ui/LogCatConsole;->getLogCatModel()Lcom/aide/ui/LogCatConsole$a;

    move-result-object v0

    iget-object v2, p0, Lcom/aide/ui/LogCatConsole;->XL:Labcd/Sl;

    invoke-virtual {v0, v2}, Lcom/aide/ui/LogCatConsole$a;->j6(Labcd/Sl;)V

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    const-string v0, "LogCat"

    invoke-direct {p0, v0}, Lcom/aide/ui/LogCatConsole;->setHeader(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    return-void

    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v0
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/LogCatConsole;->J8:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v4, v5, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public rN()V
    .registers 5

    const-wide v2, 0x86f45a4ce6421a1L

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/LogCatConsole;->J0:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x86f45a4ce6421a1L

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    invoke-static {}, Lcom/aide/ui/aa;->lg()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/aide/ui/views/CodeEditText;->setIsLightTheme(Z)V

    invoke-virtual {p0}, Lcom/aide/ui/views/CodeEditText;->getOEditorView()Lcom/aide/ui/views/CodeEditText$c;

    move-result-object v0

    invoke-static {}, Lcom/aide/ui/aa;->cn()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/aide/ui/views/editor/OConsole;->setTabSize(I)V

    invoke-virtual {p0}, Lcom/aide/ui/views/CodeEditText;->getOEditorView()Lcom/aide/ui/views/CodeEditText$c;

    move-result-object v0

    invoke-static {}, Lcom/aide/ui/aa;->a8()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/aide/ui/views/editor/OConsole;->setInsertTabsAsSpaces(Z)V

    invoke-virtual {p0}, Lcom/aide/ui/views/CodeEditText;->getOEditorView()Lcom/aide/ui/views/CodeEditText$c;

    move-result-object v0

    invoke-static {}, Lcom/aide/ui/aa;->tp()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Lcom/aide/ui/views/editor/OConsole;->setFontSize(F)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/LogCatConsole;->J8:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public v5(Ljava/lang/String;)V
    .registers 8

    const-wide v4, 0x4cb31554739abb8L

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/LogCatConsole;->J0:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x4cb31554739abb8L

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    iget-object v1, p0, Lcom/aide/ui/LogCatConsole;->XL:Labcd/Sl;

    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-direct {p0}, Lcom/aide/ui/LogCatConsole;->getLogCatModel()Lcom/aide/ui/LogCatConsole$a;

    move-result-object v0

    iget-object v2, p0, Lcom/aide/ui/LogCatConsole;->XL:Labcd/Sl;

    invoke-virtual {v0, p1, v2}, Lcom/aide/ui/LogCatConsole$a;->Hw(Ljava/lang/String;Labcd/Sl;)V

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "LogCat - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/aide/ui/LogCatConsole;->setHeader(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    return-void

    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v0
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/LogCatConsole;->J8:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v4, v5, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v0
.end method
