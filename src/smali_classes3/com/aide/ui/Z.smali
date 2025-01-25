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
    .registers 3

    const-class v0, Lcom/aide/ui/Z;

    const-wide v1, -0x818ea629444fba9L

    invoke-static {v0, v1, v2, v1, v2}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method public constructor <init>(Lcom/aide/ui/MainActivity;I)V
    .registers 10

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/Z;->j6:Z

    if-eqz v0, :cond_12

    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, p2}, Ljava/lang/Integer;-><init>(I)V

    const-wide v1, 0x4836b88b605e674dL  # 7.731513707339146E39

    const/4 v3, 0x0

    invoke-static {v1, v2, v3, p1, v0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/aide/ui/Z;->Hw:Lcom/aide/ui/MainActivity;

    iput p2, p0, Lcom/aide/ui/Z;->FH:I
    :try_end_19
    .catchall {:try_start_0 .. :try_end_19} :catchall_1a

    return-void

    :catchall_1a
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/Z;->DW:Z

    if-eqz v1, :cond_2f

    const-wide v2, 0x4836b88b605e674dL  # 7.731513707339146E39

    const/4 v4, 0x0

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    move-object v1, v0

    move-object v5, p1

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_2f
    throw v0
.end method

.method static synthetic DW(Lcom/aide/ui/Z;)Lcom/aide/ui/MainActivity;
    .registers 1

    iget-object p0, p0, Lcom/aide/ui/Z;->Hw:Lcom/aide/ui/MainActivity;

    return-object p0
.end method

.method private DW(Landroid/view/MenuItem;)V
    .registers 10
    .annotation runtime Labcd/su;
        method = 0x33e21f911dd684c1L
    .end annotation

    const-wide v0, -0x185c7560b03a0151L  # -1.7413457661674514E191

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/Z;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/aide/ui/Z;->j6(I)I

    move-result v3

    invoke-static {v2}, Lcom/aide/ui/V;->DW(I)Labcd/Yl;

    move-result-object v4

    const v5, 0x7f08007e

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-ne v2, v5, :cond_33

    invoke-direct {p0}, Lcom/aide/ui/Z;->FH()Lcom/aide/engine/SyntaxError;

    move-result-object v2

    if-eqz v2, :cond_2f

    iget-object v3, v2, Lcom/aide/engine/SyntaxError;->tp:[Ljava/lang/String;

    if-eqz v3, :cond_2f

    iget-object v2, v2, Lcom/aide/engine/SyntaxError;->tp:[Ljava/lang/String;

    array-length v2, v2

    if-lez v2, :cond_2f

    const/4 v6, 0x1

    :cond_2f
    invoke-interface {p1, v6}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_68

    :cond_33
    if-ltz v3, :cond_4f

    invoke-direct {p0}, Lcom/aide/ui/Z;->FH()Lcom/aide/engine/SyntaxError;

    move-result-object v2

    if-eqz v2, :cond_2f

    iget-object v4, v2, Lcom/aide/engine/SyntaxError;->tp:[Ljava/lang/String;

    if-eqz v4, :cond_2f

    iget-object v4, v2, Lcom/aide/engine/SyntaxError;->tp:[Ljava/lang/String;

    array-length v4, v4

    if-le v4, v3, :cond_2f

    iget-object v2, v2, Lcom/aide/engine/SyntaxError;->tp:[Ljava/lang/String;

    aget-object v2, v2, v3

    invoke-interface {p1, v2}, Landroid/view/MenuItem;->setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    invoke-interface {p1, v7}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_68

    :cond_4f
    if-eqz v4, :cond_68

    invoke-interface {v4}, Labcd/Yl;->isEnabled()Z

    move-result v2

    invoke-interface {p1, v2}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    instance-of v2, v4, Labcd/_l;

    if-eqz v2, :cond_68

    check-cast v4, Labcd/_l;

    iget-boolean v2, p0, Lcom/aide/ui/Z;->VH:Z

    xor-int/2addr v2, v7

    invoke-interface {v4, v2}, Labcd/_l;->j6(Z)Z

    move-result v2

    invoke-interface {p1, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;
    :try_end_68
    .catchall {:try_start_5 .. :try_end_68} :catchall_69

    :cond_68
    :goto_68
    return-void

    :catchall_69
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/Z;->DW:Z

    if-eqz v3, :cond_71

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_71
    goto :goto_73

    :goto_72
    throw v2

    :goto_73
    goto :goto_72
.end method

.method static synthetic FH(Lcom/aide/ui/Z;)I
    .registers 1

    iget p0, p0, Lcom/aide/ui/Z;->FH:I

    return p0
.end method

.method private FH()Lcom/aide/engine/SyntaxError;
    .registers 10
    .annotation runtime Labcd/su;
        method = 0x47c4dd4b8f2316a4L
    .end annotation

    const-wide v0, -0x484c23fb33c2c928L

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/Z;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    invoke-static {}, Lcom/aide/ui/U;->lg()Lcom/aide/ui/MainActivity;

    move-result-object v2

    invoke-virtual {v2}, Lcom/aide/ui/MainActivity;->J8()Lcom/aide/ui/AIDEEditorPager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/aide/ui/AIDEEditorPager;->getCurrentFileSpan()Labcd/Tl;

    move-result-object v2

    invoke-static {}, Lcom/aide/ui/U;->we()Labcd/ck;

    move-result-object v3

    iget-object v4, v2, Labcd/Tl;->FH:Ljava/lang/String;

    iget v5, v2, Labcd/Tl;->Hw:I

    iget v6, v2, Labcd/Tl;->v5:I

    iget v7, v2, Labcd/Tl;->Zo:I

    iget v8, v2, Labcd/Tl;->VH:I

    invoke-virtual/range {v3 .. v8}, Labcd/ck;->DW(Ljava/lang/String;IIII)Lcom/aide/engine/SyntaxError;

    move-result-object v0
    :try_end_2a
    .catchall {:try_start_5 .. :try_end_2a} :catchall_2b

    return-object v0

    :catchall_2b
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/Z;->DW:Z

    if-eqz v3, :cond_33

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_33
    throw v2
.end method

.method private j6(I)I
    .registers 6
    .annotation runtime Labcd/su;
        method = 0x7e0a0eb05f16a14L
    .end annotation

    const-wide v0, 0x32ee4eaec935478L

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/Z;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;I)V
    :try_end_c
    .catchall {:try_start_5 .. :try_end_c} :catchall_1d

    :cond_c
    packed-switch p1, :pswitch_data_2c

    const/4 p1, -0x1

    return p1

    :pswitch_11  #0x7f080084
    const/4 p1, 0x5

    return p1

    :pswitch_13  #0x7f080083
    const/4 p1, 0x4

    return p1

    :pswitch_15  #0x7f080082
    const/4 p1, 0x3

    return p1

    :pswitch_17  #0x7f080081
    const/4 p1, 0x2

    return p1

    :pswitch_19  #0x7f080080
    const/4 p1, 0x1

    return p1

    :pswitch_1b  #0x7f08007f
    const/4 p1, 0x0

    return p1

    :catchall_1d
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/Z;->DW:Z

    if-eqz v3, :cond_2a

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-static {v2, v0, v1, p0, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_2a
    throw v2

    nop

    :pswitch_data_2c
    .packed-switch 0x7f08007f
        :pswitch_1b  #7f08007f
        :pswitch_19  #7f080080
        :pswitch_17  #7f080081
        :pswitch_15  #7f080082
        :pswitch_13  #7f080083
        :pswitch_11  #7f080084
    .end packed-switch
.end method

.method static synthetic j6(Lcom/aide/ui/Z;Landroid/view/ActionMode;)Landroid/view/ActionMode;
    .registers 2

    iput-object p1, p0, Lcom/aide/ui/Z;->v5:Landroid/view/ActionMode;

    return-object p1
.end method

.method static synthetic j6(Lcom/aide/ui/Z;)Landroid/widget/PopupMenu;
    .registers 1

    iget-object p0, p0, Lcom/aide/ui/Z;->Zo:Landroid/widget/PopupMenu;

    return-object p0
.end method

.method static synthetic j6(Lcom/aide/ui/Z;Landroid/widget/PopupMenu;)Landroid/widget/PopupMenu;
    .registers 2

    iput-object p1, p0, Lcom/aide/ui/Z;->Zo:Landroid/widget/PopupMenu;

    return-object p1
.end method

.method private j6(Landroid/view/Menu;)Z
    .registers 7
    .annotation runtime Labcd/su;
        method = -0x32f6afdc47b75979L
    .end annotation

    const-wide v0, 0x252d73b9bd4d3c39L

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/Z;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    const/4 v2, 0x0

    :goto_d
    invoke-interface {p1}, Landroid/view/Menu;->size()I

    move-result v3

    if-ge v2, v3, :cond_2a

    invoke-interface {p1, v2}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/aide/ui/Z;->DW(Landroid/view/MenuItem;)V

    invoke-interface {v3}, Landroid/view/MenuItem;->getSubMenu()Landroid/view/SubMenu;

    move-result-object v4

    if-eqz v4, :cond_27

    invoke-interface {v3}, Landroid/view/MenuItem;->getSubMenu()Landroid/view/SubMenu;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/aide/ui/Z;->j6(Landroid/view/Menu;)Z
    :try_end_27
    .catchall {:try_start_5 .. :try_end_27} :catchall_2c

    :cond_27
    add-int/lit8 v2, v2, 0x1

    goto :goto_d

    :cond_2a
    const/4 p1, 0x1

    return p1

    :catchall_2c
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/Z;->DW:Z

    if-eqz v3, :cond_34

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_34
    goto :goto_36

    :goto_35
    throw v2

    :goto_36
    goto :goto_35
.end method

.method private j6(Landroid/view/MenuItem;)Z
    .registers 7
    .annotation runtime Labcd/su;
        method = -0xfb22ffd729bf9a9L
    .end annotation

    const-wide v0, 0x17957e13cafbfe45L

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/Z;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/aide/ui/Z;->j6(I)I

    move-result v3

    invoke-static {v2}, Lcom/aide/ui/V;->DW(I)Labcd/Yl;

    move-result-object v2

    if-ltz v3, :cond_39

    invoke-direct {p0}, Lcom/aide/ui/Z;->FH()Lcom/aide/engine/SyntaxError;

    move-result-object v2

    if-eqz v2, :cond_37

    iget-object v4, v2, Lcom/aide/engine/SyntaxError;->tp:[Ljava/lang/String;

    if-eqz v4, :cond_37

    iget-object v4, v2, Lcom/aide/engine/SyntaxError;->tp:[Ljava/lang/String;

    array-length v4, v4

    if-le v4, v3, :cond_37

    invoke-static {}, Lcom/aide/ui/U;->lg()Lcom/aide/ui/MainActivity;

    move-result-object v4

    invoke-virtual {v4}, Lcom/aide/ui/MainActivity;->cb()V

    invoke-static {}, Lcom/aide/ui/U;->EQ()Labcd/Xj;

    move-result-object v4

    invoke-virtual {v4, v2, v3}, Labcd/Xj;->j6(Lcom/aide/engine/SyntaxError;I)V

    :cond_37
    const/4 p1, 0x1

    return p1

    :cond_39
    if-eqz v2, :cond_58

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Quick Action Menu: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Landroid/view/MenuItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Labcd/F;->j6(Ljava/lang/String;)V

    invoke-interface {v2}, Labcd/Yl;->run()Z

    move-result p1
    :try_end_57
    .catchall {:try_start_5 .. :try_end_57} :catchall_5a

    return p1

    :cond_58
    const/4 p1, 0x0

    return p1

    :catchall_5a
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/Z;->DW:Z

    if-eqz v3, :cond_62

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_62
    throw v2
.end method

.method static synthetic j6(Lcom/aide/ui/Z;Landroid/view/Menu;)Z
    .registers 2

    invoke-direct {p0, p1}, Lcom/aide/ui/Z;->j6(Landroid/view/Menu;)Z

    move-result p0

    return p0
.end method

.method static synthetic j6(Lcom/aide/ui/Z;Landroid/view/MenuItem;)Z
    .registers 2

    invoke-direct {p0, p1}, Lcom/aide/ui/Z;->j6(Landroid/view/MenuItem;)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public DW()V
    .registers 5

    const-wide v0, 0x1848803033a0640dL

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/Z;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    iget-object v2, p0, Lcom/aide/ui/Z;->v5:Landroid/view/ActionMode;

    if-eqz v2, :cond_13

    invoke-virtual {v2}, Landroid/view/ActionMode;->invalidate()V
    :try_end_13
    .catchall {:try_start_5 .. :try_end_13} :catchall_14

    :cond_13
    return-void

    :catchall_14
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/Z;->DW:Z

    if-eqz v3, :cond_1c

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1c
    throw v2
.end method

.method public j6()V
    .registers 5

    const-wide v0, -0x1f1c171ebe2c9d6cL  # -5.467038950740588E158

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/Z;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    iget-object v2, p0, Lcom/aide/ui/Z;->v5:Landroid/view/ActionMode;

    if-eqz v2, :cond_16

    invoke-virtual {v2}, Landroid/view/ActionMode;->finish()V

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/aide/ui/Z;->v5:Landroid/view/ActionMode;
    :try_end_16
    .catchall {:try_start_5 .. :try_end_16} :catchall_17

    :cond_16
    return-void

    :catchall_17
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/Z;->DW:Z

    if-eqz v3, :cond_1f

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1f
    throw v2
.end method

.method public j6(Landroid/view/View;Z)V
    .registers 10

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/Z;->j6:Z

    if-eqz v0, :cond_11

    new-instance v0, Ljava/lang/Boolean;

    invoke-direct {v0, p2}, Ljava/lang/Boolean;-><init>(Z)V

    const-wide v1, -0x1f442c6493ac0d34L  # -9.551195605616417E157

    invoke-static {v1, v2, p0, p1, v0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_11
    invoke-virtual {p0}, Lcom/aide/ui/Z;->j6()V

    iput-boolean p2, p0, Lcom/aide/ui/Z;->VH:Z

    iget-object v0, p0, Lcom/aide/ui/Z;->Zo:Landroid/widget/PopupMenu;

    if-eqz v0, :cond_1d

    invoke-virtual {v0}, Landroid/widget/PopupMenu;->dismiss()V

    :cond_1d
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/aide/ui/X;

    invoke-direct {v1, p0, p1}, Lcom/aide/ui/X;-><init>(Lcom/aide/ui/Z;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_2a
    .catchall {:try_start_0 .. :try_end_2a} :catchall_2b

    return-void

    :catchall_2b
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/Z;->DW:Z

    if-eqz v1, :cond_40

    const-wide v2, -0x1f442c6493ac0d34L  # -9.551195605616417E157

    new-instance v6, Ljava/lang/Boolean;

    invoke-direct {v6, p2}, Ljava/lang/Boolean;-><init>(Z)V

    move-object v1, v0

    move-object v4, p0

    move-object v5, p1

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_40
    throw v0
.end method

.method public j6(Z)V
    .registers 6

    const-wide v0, -0xf34e876a9c3e0f0L

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/Z;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Z)V

    :cond_c
    iget-object v2, p0, Lcom/aide/ui/Z;->v5:Landroid/view/ActionMode;

    if-nez v2, :cond_25

    iput-boolean p1, p0, Lcom/aide/ui/Z;->VH:Z

    iget-object v2, p0, Lcom/aide/ui/Z;->Hw:Lcom/aide/ui/MainActivity;

    new-instance v3, Lcom/aide/ui/Y;

    invoke-direct {v3, p0}, Lcom/aide/ui/Y;-><init>(Lcom/aide/ui/Z;)V

    invoke-virtual {v2, v3}, Landroid/app/Activity;->startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object v2

    iput-object v2, p0, Lcom/aide/ui/Z;->v5:Landroid/view/ActionMode;

    iget-object v2, p0, Lcom/aide/ui/Z;->Hw:Lcom/aide/ui/MainActivity;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/aide/ui/MainActivity;->v5(Z)V
    :try_end_25
    .catchall {:try_start_5 .. :try_end_25} :catchall_26

    :cond_25
    return-void

    :catchall_26
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/Z;->DW:Z

    if-eqz v3, :cond_33

    new-instance v3, Ljava/lang/Boolean;

    invoke-direct {v3, p1}, Ljava/lang/Boolean;-><init>(Z)V

    invoke-static {v2, v0, v1, p0, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_33
    throw v2
.end method
