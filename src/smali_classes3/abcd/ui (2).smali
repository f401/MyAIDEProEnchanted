.class public Labcd/ui;
.super Lcom/aide/common/ma;


# annotations
.annotation runtime Labcd/xu;
.end annotation


# static fields
.field private static VH:Z
    .annotation runtime Labcd/uu;
    .end annotation
.end field

.field private static Zo:Z
    .annotation runtime Labcd/tu;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const-class v0, Labcd/ui;

    const-wide v1, -0x3a3825ba9a29b7e1L  # -1.4764057552832041E28

    invoke-static {v0, v1, v2, v1, v2}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method public constructor <init>()V
    .registers 6

    const/4 v0, 0x0

    const-wide v1, -0x4425df44637d94d8L  # -2.2131160567078707E-20

    :try_start_6
    sget-boolean v3, Labcd/ui;->Zo:Z

    if-eqz v3, :cond_d

    invoke-static {v1, v2, v0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_d
    invoke-direct {p0}, Lcom/aide/common/ma;-><init>()V
    :try_end_10
    .catchall {:try_start_6 .. :try_end_10} :catchall_11

    return-void

    :catchall_11
    move-exception v3

    sget-boolean v4, Labcd/ui;->VH:Z

    if-eqz v4, :cond_19

    invoke-static {v3, v1, v2, v0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_19
    throw v3
.end method

.method static synthetic DW(Labcd/ui;Landroid/app/AlertDialog;)Z
    .registers 2

    invoke-direct {p0, p1}, Labcd/ui;->FH(Landroid/app/AlertDialog;)Z

    move-result p0

    return p0
.end method

.method private FH(Landroid/app/AlertDialog;)Z
    .registers 6
    .annotation runtime Labcd/su;
        method = -0x1ecce2d4102fbbfbL
    .end annotation

    const-wide v0, -0xc30bba01d4f3f10L  # -6.995743217294732E249

    :try_start_5
    sget-boolean v2, Labcd/ui;->Zo:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    invoke-direct {p0, p1}, Labcd/ui;->Zo(Landroid/app/AlertDialog;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_26

    invoke-direct {p0, p1}, Labcd/ui;->gn(Landroid/app/AlertDialog;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, p1}, Labcd/ui;->Zo(Landroid/app/AlertDialog;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1
    :try_end_22
    .catchall {:try_start_5 .. :try_end_22} :catchall_28

    if-nez p1, :cond_26

    const/4 p1, 0x1

    goto :goto_27

    :cond_26
    const/4 p1, 0x0

    :goto_27
    return p1

    :catchall_28
    move-exception v2

    sget-boolean v3, Labcd/ui;->VH:Z

    if-eqz v3, :cond_30

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_30
    throw v2
.end method

.method private Hw(Landroid/app/AlertDialog;)V
    .registers 7
    .annotation runtime Labcd/su;
        method = -0x4d5aaf4148832380L
    .end annotation

    const-wide v0, 0x3b5224552a852623L  # 6.002659298731721E-23

    :try_start_5
    sget-boolean v2, Labcd/ui;->Zo:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    invoke-virtual {p1}, Landroid/app/AlertDialog;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "input_method"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/inputmethod/InputMethodManager;

    invoke-direct {p0, p1}, Labcd/ui;->v5(Landroid/app/AlertDialog;)Landroid/widget/EditText;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    invoke-direct {p0, p1}, Labcd/ui;->VH(Landroid/app/AlertDialog;)Landroid/widget/EditText;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v3

    invoke-virtual {v2, v3, v4}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z
    :try_end_2f
    .catchall {:try_start_5 .. :try_end_2f} :catchall_30

    return-void

    :catchall_30
    move-exception v2

    sget-boolean v3, Labcd/ui;->VH:Z

    if-eqz v3, :cond_38

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_38
    throw v2
.end method

.method private VH(Landroid/app/AlertDialog;)Landroid/widget/EditText;
    .registers 6
    .annotation runtime Labcd/su;
        method = -0x1dd747025ec9db9fL
    .end annotation

    const-wide v0, 0x27818e500f0f2320L

    :try_start_5
    sget-boolean v2, Labcd/ui;->Zo:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    const v2, 0x7f080148

    invoke-virtual {p1, v2}, Landroid/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;
    :try_end_15
    .catchall {:try_start_5 .. :try_end_15} :catchall_16

    return-object v2

    :catchall_16
    move-exception v2

    sget-boolean v3, Labcd/ui;->VH:Z

    if-eqz v3, :cond_1e

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1e
    throw v2
.end method

.method private Zo(Landroid/app/AlertDialog;)Ljava/lang/String;
    .registers 6
    .annotation runtime Labcd/su;
        method = 0x8e2432c97ec99e1L
    .end annotation

    const-wide v0, 0x1fa482d8db74514L

    :try_start_5
    sget-boolean v2, Labcd/ui;->Zo:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    invoke-direct {p0, p1}, Labcd/ui;->v5(Landroid/app/AlertDialog;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1
    :try_end_18
    .catchall {:try_start_5 .. :try_end_18} :catchall_19

    return-object p1

    :catchall_19
    move-exception v2

    sget-boolean v3, Labcd/ui;->VH:Z

    if-eqz v3, :cond_21

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_21
    throw v2
.end method

.method private gn(Landroid/app/AlertDialog;)Ljava/lang/String;
    .registers 6
    .annotation runtime Labcd/su;
        method = -0x506f1922734b000L
    .end annotation

    const-wide v0, -0x8b6163ca8efaa9fL

    :try_start_5
    sget-boolean v2, Labcd/ui;->Zo:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    invoke-direct {p0, p1}, Labcd/ui;->VH(Landroid/app/AlertDialog;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1
    :try_end_18
    .catchall {:try_start_5 .. :try_end_18} :catchall_19

    return-object p1

    :catchall_19
    move-exception v2

    sget-boolean v3, Labcd/ui;->VH:Z

    if-eqz v3, :cond_21

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_21
    throw v2
.end method

.method static synthetic j6(Labcd/ui;Landroid/app/AlertDialog;)V
    .registers 2

    invoke-direct {p0, p1}, Labcd/ui;->Hw(Landroid/app/AlertDialog;)V

    return-void
.end method

.method private v5(Landroid/app/AlertDialog;)Landroid/widget/EditText;
    .registers 6
    .annotation runtime Labcd/su;
        method = -0x272b25d92de7e0b8L
    .end annotation

    const-wide v0, 0x1e430294cd8e3275L  # 6.60231694283452E-163

    :try_start_5
    sget-boolean v2, Labcd/ui;->Zo:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    const v2, 0x7f080146

    invoke-virtual {p1, v2}, Landroid/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;
    :try_end_15
    .catchall {:try_start_5 .. :try_end_15} :catchall_16

    return-object v2

    :catchall_16
    move-exception v2

    sget-boolean v3, Labcd/ui;->VH:Z

    if-eqz v3, :cond_1e

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1e
    throw v2
.end method


# virtual methods
.method protected DW(Landroid/app/AlertDialog;)V
    .registers 6
    .annotation runtime Labcd/su;
        method = -0x23faa11498498985L
    .end annotation

    const-wide v0, 0x96c343b8e69bad4L

    :try_start_5
    sget-boolean v2, Labcd/ui;->Zo:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    const/4 v2, -0x1

    invoke-virtual {p1, v2}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v2

    if-eqz v2, :cond_1a

    invoke-direct {p0, p1}, Labcd/ui;->FH(Landroid/app/AlertDialog;)Z

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setEnabled(Z)V
    :try_end_1a
    .catchall {:try_start_5 .. :try_end_1a} :catchall_1b

    :cond_1a
    return-void

    :catchall_1b
    move-exception v2

    sget-boolean v3, Labcd/ui;->VH:Z

    if-eqz v3, :cond_23

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_23
    throw v2
.end method

.method protected j6(Landroid/app/Activity;)Landroid/app/Dialog;
    .registers 11
    .annotation runtime Labcd/su;
        method = 0x19b9d7c8eee06e00L
    .end annotation

    const-wide v0, 0x12ac681d1cd68031L

    :try_start_5
    sget-boolean v2, Labcd/ui;->Zo:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    invoke-static {}, Lcom/aide/ui/U;->lg()Lcom/aide/ui/MainActivity;

    move-result-object v2

    invoke-virtual {v2}, Lcom/aide/ui/MainActivity;->J8()Lcom/aide/ui/AIDEEditorPager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/aide/ui/AIDEEditorPager;->getCurrentFileSpan()Labcd/Tl;

    move-result-object v2

    iget v3, v2, Labcd/Tl;->Hw:I

    iget v4, v2, Labcd/Tl;->Zo:I

    if-ne v3, v4, :cond_35

    iget v3, v2, Labcd/Tl;->v5:I

    iget v4, v2, Labcd/Tl;->VH:I

    if-eq v3, v4, :cond_35

    invoke-static {}, Lcom/aide/ui/U;->lg()Lcom/aide/ui/MainActivity;

    move-result-object v3

    invoke-virtual {v3}, Lcom/aide/ui/MainActivity;->J8()Lcom/aide/ui/AIDEEditorPager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/aide/ui/AIDEEditorPager;->getSelectionContent()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3
    :try_end_34
    .catchall {:try_start_5 .. :try_end_34} :catchall_d8

    goto :goto_37

    :cond_35
    const-string v3, ""

    :goto_37
    :try_start_37
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    const v5, 0x7f0a003d

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    new-instance v5, Landroid/app/AlertDialog$Builder;

    invoke-direct {v5, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v6, 0x7f0d0066

    invoke-virtual {v5, v6}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    invoke-virtual {v6, v4}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    new-instance v7, Labcd/oi;

    invoke-direct {v7, p0}, Labcd/oi;-><init>(Labcd/ui;)V

    const v8, 0x7f0d05e1

    invoke-virtual {v6, v8, v7}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    new-instance v7, Labcd/ni;

    invoke-direct {v7, p0}, Labcd/ni;-><init>(Labcd/ui;)V

    const v8, 0x7f0d05be

    invoke-virtual {v6, v8, v7}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v5}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v5

    const v6, 0x7f080146

    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/EditText;

    const v7, 0x7f080148

    invoke-virtual {v4, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/EditText;

    const v8, 0x7f080147

    invoke-virtual {v4, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iget v8, v2, Labcd/Tl;->Hw:I

    iget v2, v2, Labcd/Tl;->Zo:I

    if-ne v8, v2, :cond_9b

    const v2, 0x7f0d05e3

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setText(I)V

    goto :goto_a1

    :cond_9b
    const v2, 0x7f0d05e2

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setText(I)V

    :goto_a1
    invoke-virtual {v6, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    new-instance v2, Labcd/pi;

    invoke-direct {v2, p0, v7}, Labcd/pi;-><init>(Labcd/ui;Landroid/widget/EditText;)V

    invoke-virtual {v6, v2}, Landroid/widget/EditText;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    new-instance v2, Labcd/qi;

    invoke-direct {v2, p0, v5}, Labcd/qi;-><init>(Labcd/ui;Landroid/app/AlertDialog;)V

    invoke-virtual {v6, v2}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    invoke-virtual {v7, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    new-instance v2, Labcd/ri;

    invoke-direct {v2, p0, v5}, Labcd/ri;-><init>(Labcd/ui;Landroid/app/AlertDialog;)V

    invoke-virtual {v7, v2}, Landroid/widget/EditText;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    new-instance v2, Labcd/si;

    invoke-direct {v2, p0, v5}, Labcd/si;-><init>(Labcd/ui;Landroid/app/AlertDialog;)V

    invoke-virtual {v7, v2}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    invoke-virtual {v5}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Landroid/view/Window;->setSoftInputMode(I)V

    new-instance v2, Labcd/ti;

    invoke-direct {v2, p0, v6}, Labcd/ti;-><init>(Labcd/ui;Landroid/widget/EditText;)V

    invoke-virtual {v5, v2}, Landroid/app/AlertDialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V
    :try_end_d7
    .catchall {:try_start_37 .. :try_end_d7} :catchall_d8

    return-object v5

    :catchall_d8
    move-exception v2

    sget-boolean v3, Labcd/ui;->VH:Z

    if-eqz v3, :cond_e0

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_e0
    throw v2
.end method

.method protected j6(Landroid/app/AlertDialog;)V
    .registers 21
    .annotation runtime Labcd/su;
        method = -0x50a92752d21efc0L
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    const-wide v3, -0xda1c893fdebd691L

    :try_start_9
    sget-boolean v0, Labcd/ui;->Zo:Z

    if-eqz v0, :cond_10

    invoke-static {v3, v4, v1, v2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_10
    invoke-direct/range {p0 .. p1}, Labcd/ui;->Zo(Landroid/app/AlertDialog;)Ljava/lang/String;

    move-result-object v11

    invoke-direct/range {p0 .. p1}, Labcd/ui;->gn(Landroid/app/AlertDialog;)Ljava/lang/String;

    move-result-object v12

    invoke-static {}, Lcom/aide/ui/U;->lg()Lcom/aide/ui/MainActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aide/ui/MainActivity;->J8()Lcom/aide/ui/AIDEEditorPager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aide/ui/AIDEEditorPager;->getCurrentFileSpan()Labcd/Tl;

    move-result-object v0

    iget v5, v0, Labcd/Tl;->Hw:I

    iget v6, v0, Labcd/Tl;->Zo:I

    if-ne v5, v6, :cond_3b

    new-instance v5, Labcd/Tl;

    iget-object v14, v0, Labcd/Tl;->FH:Ljava/lang/String;

    const/4 v15, 0x1

    const/16 v16, 0x1

    const v17, 0x7fffffff

    const/16 v18, 0x1

    move-object v13, v5

    invoke-direct/range {v13 .. v18}, Labcd/Tl;-><init>(Ljava/lang/String;IIII)V

    move-object v0, v5

    :cond_3b
    invoke-static {}, Lcom/aide/ui/U;->EQ()Labcd/Xj;

    move-result-object v5

    iget-object v6, v0, Labcd/Tl;->FH:Ljava/lang/String;

    iget v7, v0, Labcd/Tl;->Hw:I

    iget v8, v0, Labcd/Tl;->v5:I

    iget v9, v0, Labcd/Tl;->Zo:I

    iget v10, v0, Labcd/Tl;->VH:I

    invoke-virtual/range {v5 .. v12}, Labcd/Xj;->j6(Ljava/lang/String;IIIILjava/lang/String;Ljava/lang/String;)V
    :try_end_4c
    .catchall {:try_start_9 .. :try_end_4c} :catchall_4d

    return-void

    :catchall_4d
    move-exception v0

    sget-boolean v5, Labcd/ui;->VH:Z

    if-eqz v5, :cond_55

    invoke-static {v0, v3, v4, v1, v2}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_55
    throw v0
.end method
