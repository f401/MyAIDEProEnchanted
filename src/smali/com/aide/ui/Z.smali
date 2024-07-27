.class public Lcom/aide/ui/Z;
.super Ljava/lang/Object;


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
.field private FH:I
    .annotation runtime Labcd/ru;
        field = 0x251a6247d24e77b8L
    .end annotation
.end field

.field private Hw:Lcom/aide/ui/MainActivity;
    .annotation runtime Labcd/ru;
        field = 0xdd19ccfcb33ce5fL
    .end annotation
.end field

.field private VH:Z
    .annotation runtime Labcd/ru;
        field = 0x27872b3437a1c618L
    .end annotation
.end field

.field private Zo:Landroid/widget/PopupMenu;
    .annotation runtime Labcd/ru;
        field = -0xd7708b91f7b5d1cL
    .end annotation
.end field

.field private v5:Landroid/view/ActionMode;
    .annotation runtime Labcd/ru;
        field = 0xde47a7fc8feaa83L
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 4

    const-wide v2, -0x818ea629444fba9L

    const-class v0, Lcom/aide/ui/Z;

    invoke-static {v0, v2, v3, v2, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method public constructor <init>(Lcom/aide/ui/MainActivity;I)V
    .registers 11

    const-wide v2, 0x4836b88b605e674dL    # 7.731513707339146E39

    const/4 v4, 0x0

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/Z;->j6:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, p2}, Ljava/lang/Integer;-><init>(I)V

    const-wide v6, 0x4836b88b605e674dL    # 7.731513707339146E39

    const/4 v1, 0x0

    invoke-static {v6, v7, v1, p1, v0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/aide/ui/Z;->Hw:Lcom/aide/ui/MainActivity;

    iput p2, p0, Lcom/aide/ui/Z;->FH:I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v1

    sget-boolean v0, Lcom/aide/ui/Z;->DW:Z

    if-eqz v0, :cond_1

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    move-object v5, p1

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v1
.end method

.method static synthetic DW(Lcom/aide/ui/Z;)Lcom/aide/ui/MainActivity;
    .registers 2

    iget-object v0, p0, Lcom/aide/ui/Z;->Hw:Lcom/aide/ui/MainActivity;

    return-object v0
.end method

.method private DW(Landroid/view/MenuItem;)V
    .registers 10
    .annotation runtime Labcd/su;
        method = 0x33e21f911dd684c1L
    .end annotation

    const-wide v6, -0x185c7560b03a0151L    # -1.7413457661674514E191

    const/4 v1, 0x1

    const/4 v2, 0x0

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/Z;->j6:Z

    if-eqz v0, :cond_0

    const-wide v4, -0x185c7560b03a0151L    # -1.7413457661674514E191

    invoke-static {v4, v5, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v3

    invoke-direct {p0, v3}, Lcom/aide/ui/Z;->j6(I)I

    move-result v4

    invoke-static {v3}, Lcom/aide/ui/V;->DW(I)Labcd/Yl;

    move-result-object v0

    const v5, 0x7f08007e

    if-ne v3, v5, :cond_3

    invoke-direct {p0}, Lcom/aide/ui/Z;->FH()Lcom/aide/engine/SyntaxError;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v3, v0, Lcom/aide/engine/SyntaxError;->tp:[Ljava/lang/String;

    if-eqz v3, :cond_2

    iget-object v0, v0, Lcom/aide/engine/SyntaxError;->tp:[Ljava/lang/String;

    array-length v0, v0

    if-lez v0, :cond_2

    :goto_0
    invoke-interface {p1, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :cond_1
    :goto_1
    return-void

    :cond_2
    move v1, v2

    goto :goto_0

    :cond_3
    if-ltz v4, :cond_6

    invoke-direct {p0}, Lcom/aide/ui/Z;->FH()Lcom/aide/engine/SyntaxError;

    move-result-object v0

    if-eqz v0, :cond_5

    iget-object v1, v0, Lcom/aide/engine/SyntaxError;->tp:[Ljava/lang/String;

    if-eqz v1, :cond_5

    iget-object v1, v0, Lcom/aide/engine/SyntaxError;->tp:[Ljava/lang/String;

    array-length v1, v1

    if-le v1, v4, :cond_5

    iget-object v0, v0, Lcom/aide/engine/SyntaxError;->tp:[Ljava/lang/String;

    aget-object v0, v0, v4

    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    const/4 v0, 0x1

    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/Z;->DW:Z

    if-eqz v1, :cond_4

    invoke-static {v0, v6, v7, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_4
    throw v0

    :cond_5
    const/4 v0, 0x0

    :try_start_1
    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_1

    :cond_6
    if-eqz v0, :cond_1

    invoke-interface {v0}, Labcd/Yl;->isEnabled()Z

    move-result v3

    invoke-interface {p1, v3}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    instance-of v3, v0, Labcd/_l;

    if-eqz v3, :cond_1

    check-cast v0, Labcd/_l;

    iget-boolean v3, p0, Lcom/aide/ui/Z;->VH:Z

    if-nez v3, :cond_7

    :goto_2
    invoke-interface {v0, v1}, Labcd/_l;->j6(Z)Z

    move-result v0

    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :cond_7
    move v1, v2

    goto :goto_2
.end method

.method static synthetic FH(Lcom/aide/ui/Z;)I
    .registers 2

    iget v0, p0, Lcom/aide/ui/Z;->FH:I

    return v0
.end method

.method private FH()Lcom/aide/engine/SyntaxError;
    .registers 9
    .annotation runtime Labcd/su;
        method = 0x47c4dd4b8f2316a4L
    .end annotation

    const-wide v6, -0x484c23fb33c2c928L

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/Z;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x484c23fb33c2c928L

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    invoke-static {}, Lcom/aide/ui/U;->lg()Lcom/aide/ui/MainActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aide/ui/MainActivity;->J8()Lcom/aide/ui/AIDEEditorPager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aide/ui/AIDEEditorPager;->getCurrentFileSpan()Labcd/Tl;

    move-result-object v5

    invoke-static {}, Lcom/aide/ui/U;->we()Labcd/ck;

    move-result-object v0

    iget-object v1, v5, Labcd/Tl;->FH:Ljava/lang/String;

    iget v2, v5, Labcd/Tl;->Hw:I

    iget v3, v5, Labcd/Tl;->v5:I

    iget v4, v5, Labcd/Tl;->Zo:I

    iget v5, v5, Labcd/Tl;->VH:I

    invoke-virtual/range {v0 .. v5}, Labcd/ck;->DW(Ljava/lang/String;IIII)Lcom/aide/engine/SyntaxError;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/Z;->DW:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v6, v7, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method private j6(I)I
    .registers 6
    .annotation runtime Labcd/su;
        method = 0x7e0a0eb05f16a14L
    .end annotation

    const-wide v2, 0x32ee4eaec935478L

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/Z;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x32ee4eaec935478L

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;I)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    packed-switch p1, :pswitch_data_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :pswitch_0
    const/4 v0, 0x5

    goto :goto_0

    :pswitch_1
    const/4 v0, 0x4

    goto :goto_0

    :pswitch_2
    const/4 v0, 0x3

    goto :goto_0

    :pswitch_3
    const/4 v0, 0x2

    goto :goto_0

    :pswitch_4
    const/4 v0, 0x1

    goto :goto_0

    :pswitch_5
    const/4 v0, 0x0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/Z;->DW:Z

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-static {v0, v2, v3, p0, v1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v0

    :pswitch_data_0
    .packed-switch 0x7f08007f
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method static synthetic j6(Lcom/aide/ui/Z;Landroid/view/ActionMode;)Landroid/view/ActionMode;
    .registers 2

    iput-object p1, p0, Lcom/aide/ui/Z;->v5:Landroid/view/ActionMode;

    return-object p1
.end method

.method static synthetic j6(Lcom/aide/ui/Z;)Landroid/widget/PopupMenu;
    .registers 2

    iget-object v0, p0, Lcom/aide/ui/Z;->Zo:Landroid/widget/PopupMenu;

    return-object v0
.end method

.method static synthetic j6(Lcom/aide/ui/Z;Landroid/widget/PopupMenu;)Landroid/widget/PopupMenu;
    .registers 2

    iput-object p1, p0, Lcom/aide/ui/Z;->Zo:Landroid/widget/PopupMenu;

    return-object p1
.end method

.method private j6(Landroid/view/Menu;)Z
    .registers 8
    .annotation runtime Labcd/su;
        method = -0x32f6afdc47b75979L
    .end annotation

    const-wide v4, 0x252d73b9bd4d3c39L

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/Z;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x252d73b9bd4d3c39L

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-interface {p1}, Landroid/view/Menu;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    invoke-interface {p1, v0}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/aide/ui/Z;->DW(Landroid/view/MenuItem;)V

    invoke-interface {v1}, Landroid/view/MenuItem;->getSubMenu()Landroid/view/SubMenu;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Landroid/view/MenuItem;->getSubMenu()Landroid/view/SubMenu;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/aide/ui/Z;->j6(Landroid/view/Menu;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x1

    return v0

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/Z;->DW:Z

    if-eqz v1, :cond_3

    invoke-static {v0, v4, v5, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_3
    throw v0
.end method

.method private j6(Landroid/view/MenuItem;)Z
    .registers 8
    .annotation runtime Labcd/su;
        method = -0xfb22ffd729bf9a9L
    .end annotation

    const-wide v4, 0x17957e13cafbfe45L

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/Z;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x17957e13cafbfe45L

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/aide/ui/Z;->j6(I)I

    move-result v1

    invoke-static {v0}, Lcom/aide/ui/V;->DW(I)Labcd/Yl;

    move-result-object v0

    if-ltz v1, :cond_2

    invoke-direct {p0}, Lcom/aide/ui/Z;->FH()Lcom/aide/engine/SyntaxError;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v2, v0, Lcom/aide/engine/SyntaxError;->tp:[Ljava/lang/String;

    if-eqz v2, :cond_1

    iget-object v2, v0, Lcom/aide/engine/SyntaxError;->tp:[Ljava/lang/String;

    array-length v2, v2

    if-le v2, v1, :cond_1

    invoke-static {}, Lcom/aide/ui/U;->lg()Lcom/aide/ui/MainActivity;

    move-result-object v2

    invoke-virtual {v2}, Lcom/aide/ui/MainActivity;->cb()V

    invoke-static {}, Lcom/aide/ui/U;->EQ()Labcd/Xj;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Labcd/Xj;->j6(Lcom/aide/engine/SyntaxError;I)V

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    if-eqz v0, :cond_3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Quick Action Menu: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Landroid/view/MenuItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Labcd/F;->j6(Ljava/lang/String;)V

    invoke-interface {v0}, Labcd/Yl;->run()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/Z;->DW:Z

    if-eqz v1, :cond_4

    invoke-static {v0, v4, v5, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_4
    throw v0
.end method

.method static synthetic j6(Lcom/aide/ui/Z;Landroid/view/Menu;)Z
    .registers 3

    invoke-direct {p0, p1}, Lcom/aide/ui/Z;->j6(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method static synthetic j6(Lcom/aide/ui/Z;Landroid/view/MenuItem;)Z
    .registers 3

    invoke-direct {p0, p1}, Lcom/aide/ui/Z;->j6(Landroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public DW()V
    .registers 5

    const-wide v2, 0x1848803033a0640dL

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/Z;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x1848803033a0640dL

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/aide/ui/Z;->v5:Landroid/view/ActionMode;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/aide/ui/Z;->v5:Landroid/view/ActionMode;

    invoke-virtual {v0}, Landroid/view/ActionMode;->invalidate()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/Z;->DW:Z

    if-eqz v1, :cond_2

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_2
    throw v0
.end method

.method public j6()V
    .registers 5

    const-wide v2, -0x1f1c171ebe2c9d6cL    # -5.467038950740588E158

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/Z;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x1f1c171ebe2c9d6cL    # -5.467038950740588E158

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/aide/ui/Z;->v5:Landroid/view/ActionMode;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/aide/ui/Z;->v5:Landroid/view/ActionMode;

    invoke-virtual {v0}, Landroid/view/ActionMode;->finish()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/aide/ui/Z;->v5:Landroid/view/ActionMode;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/Z;->DW:Z

    if-eqz v1, :cond_2

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_2
    throw v0
.end method

.method public j6(Landroid/view/View;Z)V
    .registers 10

    const-wide v2, -0x1f442c6493ac0d34L    # -9.551195605616417E157

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/Z;->j6:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/Boolean;

    invoke-direct {v0, p2}, Ljava/lang/Boolean;-><init>(Z)V

    const-wide v4, -0x1f442c6493ac0d34L    # -9.551195605616417E157

    invoke-static {v4, v5, p0, p1, v0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    invoke-virtual {p0}, Lcom/aide/ui/Z;->j6()V

    iput-boolean p2, p0, Lcom/aide/ui/Z;->VH:Z

    iget-object v0, p0, Lcom/aide/ui/Z;->Zo:Landroid/widget/PopupMenu;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/aide/ui/Z;->Zo:Landroid/widget/PopupMenu;

    invoke-virtual {v0}, Landroid/widget/PopupMenu;->dismiss()V

    :cond_1
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/aide/ui/X;

    invoke-direct {v1, p0, p1}, Lcom/aide/ui/X;-><init>(Lcom/aide/ui/Z;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v1

    sget-boolean v0, Lcom/aide/ui/Z;->DW:Z

    if-eqz v0, :cond_2

    new-instance v6, Ljava/lang/Boolean;

    invoke-direct {v6, p2}, Ljava/lang/Boolean;-><init>(Z)V

    move-object v4, p0

    move-object v5, p1

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_2
    throw v1
.end method

.method public j6(Z)V
    .registers 6

    const-wide v2, -0xf34e876a9c3e0f0L

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/Z;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, -0xf34e876a9c3e0f0L

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Z)V

    :cond_0
    iget-object v0, p0, Lcom/aide/ui/Z;->v5:Landroid/view/ActionMode;

    if-nez v0, :cond_1

    iput-boolean p1, p0, Lcom/aide/ui/Z;->VH:Z

    iget-object v0, p0, Lcom/aide/ui/Z;->Hw:Lcom/aide/ui/MainActivity;

    new-instance v1, Lcom/aide/ui/Y;

    invoke-direct {v1, p0}, Lcom/aide/ui/Y;-><init>(Lcom/aide/ui/Z;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object v0

    iput-object v0, p0, Lcom/aide/ui/Z;->v5:Landroid/view/ActionMode;

    iget-object v0, p0, Lcom/aide/ui/Z;->Hw:Lcom/aide/ui/MainActivity;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/aide/ui/MainActivity;->v5(Z)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/Z;->DW:Z

    if-eqz v1, :cond_2

    new-instance v1, Ljava/lang/Boolean;

    invoke-direct {v1, p1}, Ljava/lang/Boolean;-><init>(Z)V

    invoke-static {v0, v2, v3, p0, v1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_2
    throw v0
.end method
