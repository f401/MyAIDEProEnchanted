.class public Labcd/Se;
.super Ljava/lang/Object;

# interfaces
.implements Labcd/am;


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
.field private FH:Landroid/view/KeyCharacterMap;
    .annotation runtime Labcd/ru;
        field = -0x32d5a81400c425b0L
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const-class v0, Labcd/Se;

    const-wide v1, -0xc37c6527ab94865L  # -5.42020431743778E249

    invoke-static {v0, v1, v2, v1, v2}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method public constructor <init>()V
    .registers 6

    const/4 v0, 0x0

    const-wide v1, 0x40d73c0aa3b12f7dL  # 23792.166240974784

    :try_start_6
    sget-boolean v3, Labcd/Se;->j6:Z

    if-eqz v3, :cond_d

    invoke-static {v1, v2, v0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_d
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V
    :try_end_10
    .catchall {:try_start_6 .. :try_end_10} :catchall_11

    return-void

    :catchall_11
    move-exception v3

    sget-boolean v4, Labcd/Se;->DW:Z

    if-eqz v4, :cond_19

    invoke-static {v3, v1, v2, v0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_19
    throw v3
.end method

.method static synthetic j6(Labcd/Se;)Landroid/view/KeyCharacterMap;
    .registers 1

    iget-object p0, p0, Labcd/Se;->FH:Landroid/view/KeyCharacterMap;

    return-object p0
.end method

.method static synthetic j6(Labcd/Se;Landroid/view/KeyCharacterMap;)Landroid/view/KeyCharacterMap;
    .registers 2

    iput-object p1, p0, Labcd/Se;->FH:Landroid/view/KeyCharacterMap;

    return-object p1
.end method


# virtual methods
.method public FH()Lcom/aide/common/u;
    .registers 6

    const-wide v0, 0x4acbf7b6421f4c9cL  # 2.0927861465095913E52

    :try_start_5
    sget-boolean v2, Labcd/Se;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    new-instance v2, Lcom/aide/common/u;

    const/16 v3, 0x3f

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4, v4, v4}, Lcom/aide/common/u;-><init>(IZZZ)V
    :try_end_14
    .catchall {:try_start_5 .. :try_end_14} :catchall_15

    return-object v2

    :catchall_15
    move-exception v2

    sget-boolean v3, Labcd/Se;->DW:Z

    if-eqz v3, :cond_1d

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1d
    throw v2
.end method

.method public Hw()Ljava/util/List;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/aide/common/u;",
            ">;"
        }
    .end annotation

    const-wide v0, 0x14b45261ba0dabb0L

    :try_start_5
    sget-boolean v2, Labcd/Se;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    new-instance v2, Lcom/aide/common/u;

    const/16 v3, 0x5e

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4, v4, v4}, Lcom/aide/common/u;-><init>(IZZZ)V

    new-instance v3, Lcom/aide/common/u;

    const/16 v5, 0x74

    invoke-direct {v3, v5, v4, v4, v4}, Lcom/aide/common/u;-><init>(IZZZ)V

    const/4 v5, 0x2

    new-array v5, v5, [Lcom/aide/common/u;

    aput-object v2, v5, v4

    const/4 v2, 0x1

    aput-object v3, v5, v2

    invoke-static {v5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0
    :try_end_27
    .catchall {:try_start_5 .. :try_end_27} :catchall_28

    return-object v0

    :catchall_28
    move-exception v2

    sget-boolean v3, Labcd/Se;->DW:Z

    if-eqz v3, :cond_30

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_30
    throw v2
.end method

.method public getName()Ljava/lang/String;
    .registers 3

    .line 10
    nop

    .line 12
    :try_start_1
    invoke-static {}, Lcom/s1243808733/aide/util/AIDEUtils;->getMainActivity()Lcom/s1243808733/aide/AideMainActivity;

    move-result-object v0

    .line 13
    if-nez v0, :cond_b

    .line 14
    invoke-static {}, Lcom/blankj/utilcode/util/ActivityUtils;->getTopActivity()Landroid/app/Activity;

    move-result-object v0

    .line 16
    :cond_b
    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0d0768

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0
    :try_end_16
    .catchall {:try_start_1 .. :try_end_16} :catchall_17

    goto :goto_1a

    :catchall_17
    move-exception v0

    const-string v0, "Show Character Picker"

    .line 20
    :goto_1a
    return-object v0
.end method

.method public isEnabled()Z
    .registers 5

    const-wide v0, 0x1b987c8385331a79L  # 9.668234120783038E-176

    :try_start_5
    sget-boolean v2, Labcd/Se;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V
    :try_end_c
    .catchall {:try_start_5 .. :try_end_c} :catchall_e

    :cond_c
    const/4 v0, 0x1

    return v0

    :catchall_e
    move-exception v2

    sget-boolean v3, Labcd/Se;->DW:Z

    if-eqz v3, :cond_16

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_16
    throw v2
.end method

.method public j6(Landroid/view/View;)V
    .registers 13

    const-wide v0, 0x430d124c617eedc4L  # 1.0228616983914805E15

    :try_start_5
    sget-boolean v2, Labcd/Se;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    invoke-static {}, Landroid/text/Editable$Factory;->getInstance()Landroid/text/Editable$Factory;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Landroid/text/Editable$Factory;->newEditable(Ljava/lang/CharSequence;)Landroid/text/Editable;

    move-result-object v8

    new-instance v2, Labcd/Re;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v6

    const-string v9, "(){}[]\\!@#$%&*?/:_\"\'-+;,.\ufffd~=^<>|\ufffd"

    const/4 v10, 0x1

    move-object v4, v2

    move-object v5, p0

    move-object v7, p1

    invoke-direct/range {v4 .. v10}, Labcd/Re;-><init>(Labcd/Se;Landroid/content/Context;Landroid/view/View;Landroid/text/Editable;Ljava/lang/String;Z)V

    invoke-virtual {v2}, Landroid/text/method/CharacterPickerDialog;->show()V
    :try_end_28
    .catchall {:try_start_5 .. :try_end_28} :catchall_29

    return-void

    :catchall_29
    move-exception v2

    sget-boolean v3, Labcd/Se;->DW:Z

    if-eqz v3, :cond_31

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_31
    throw v2
.end method

.method public run()Z
    .registers 5

    const-wide v0, -0x2808eb8a9c17609L

    :try_start_5
    sget-boolean v2, Labcd/Se;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    invoke-static {}, Lcom/aide/ui/U;->lg()Lcom/aide/ui/MainActivity;

    move-result-object v2

    invoke-virtual {v2}, Lcom/aide/ui/MainActivity;->J8()Lcom/aide/ui/AIDEEditorPager;

    move-result-object v2

    invoke-virtual {p0, v2}, Labcd/Se;->j6(Landroid/view/View;)V
    :try_end_17
    .catchall {:try_start_5 .. :try_end_17} :catchall_19

    const/4 v0, 0x1

    return v0

    :catchall_19
    move-exception v2

    sget-boolean v3, Labcd/Se;->DW:Z

    if-eqz v3, :cond_21

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_21
    throw v2
.end method
