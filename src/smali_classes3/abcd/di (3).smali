.class public Labcd/di;
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


# instance fields
.field private gn:Ljava/lang/String;
    .annotation runtime Labcd/ru;
        field = 0x2da69c03934ff6cbL
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const-class v0, Labcd/di;

    const-wide v1, 0x41623341de9b130L

    invoke-static {v0, v1, v2, v1, v2}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 7

    const/4 v0, 0x0

    const-wide v1, -0x121455476b7ebfffL  # -3.1252660960676987E221

    :try_start_6
    sget-boolean v3, Labcd/di;->Zo:Z

    if-eqz v3, :cond_d

    invoke-static {v1, v2, v0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_d
    invoke-direct {p0}, Lcom/aide/common/ma;-><init>()V

    iput-object p1, p0, Labcd/di;->gn:Ljava/lang/String;
    :try_end_12
    .catchall {:try_start_6 .. :try_end_12} :catchall_13

    return-void

    :catchall_13
    move-exception v3

    sget-boolean v4, Labcd/di;->VH:Z

    if-eqz v4, :cond_1b

    invoke-static {v3, v1, v2, v0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1b
    throw v3
.end method

.method static synthetic DW(Labcd/di;Landroid/app/AlertDialog;)Ljava/lang/String;
    .registers 2

    invoke-direct {p0, p1}, Labcd/di;->FH(Landroid/app/AlertDialog;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private DW(Landroid/app/AlertDialog;)V
    .registers 7
    .annotation runtime Labcd/su;
        method = 0x378772d2af12dab4L
    .end annotation

    const-wide v0, 0x18ec92e7ebc1768bL

    :try_start_5
    sget-boolean v2, Labcd/di;->Zo:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    invoke-virtual {p1}, Landroid/app/AlertDialog;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "input_method"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/inputmethod/InputMethodManager;

    invoke-direct {p0, p1}, Labcd/di;->Hw(Landroid/app/AlertDialog;)Landroid/widget/EditText;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    invoke-direct {p0, p1}, Labcd/di;->Zo(Landroid/app/AlertDialog;)Landroid/widget/EditText;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v3

    invoke-virtual {v2, v3, v4}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z
    :try_end_2f
    .catchall {:try_start_5 .. :try_end_2f} :catchall_30

    return-void

    :catchall_30
    move-exception v2

    sget-boolean v3, Labcd/di;->VH:Z

    if-eqz v3, :cond_38

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_38
    throw v2
.end method

.method static synthetic FH(Labcd/di;Landroid/app/AlertDialog;)Ljava/lang/String;
    .registers 2

    invoke-direct {p0, p1}, Labcd/di;->v5(Landroid/app/AlertDialog;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private FH(Landroid/app/AlertDialog;)Ljava/lang/String;
    .registers 6
    .annotation runtime Labcd/su;
        method = -0x43b40e78bc08924bL
    .end annotation

    const-wide v0, -0xca80a3524c9d314L

    :try_start_5
    sget-boolean v2, Labcd/di;->Zo:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    invoke-direct {p0, p1}, Labcd/di;->Hw(Landroid/app/AlertDialog;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1
    :try_end_1c
    .catchall {:try_start_5 .. :try_end_1c} :catchall_1d

    return-object p1

    :catchall_1d
    move-exception v2

    sget-boolean v3, Labcd/di;->VH:Z

    if-eqz v3, :cond_25

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_25
    throw v2
.end method

.method static synthetic Hw(Labcd/di;Landroid/app/AlertDialog;)Landroid/widget/EditText;
    .registers 2

    invoke-direct {p0, p1}, Labcd/di;->Zo(Landroid/app/AlertDialog;)Landroid/widget/EditText;

    move-result-object p0

    return-object p0
.end method

.method private Hw(Landroid/app/AlertDialog;)Landroid/widget/EditText;
    .registers 6
    .annotation runtime Labcd/su;
        method = -0x32281f7aa1e0f6c0L
    .end annotation

    const-wide v0, -0x237589a642cbf213L  # -6.154825383496405E137

    :try_start_5
    sget-boolean v2, Labcd/di;->Zo:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    const v2, 0x7f0800c1

    invoke-virtual {p1, v2}, Landroid/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;
    :try_end_15
    .catchall {:try_start_5 .. :try_end_15} :catchall_16

    return-object v2

    :catchall_16
    move-exception v2

    sget-boolean v3, Labcd/di;->VH:Z

    if-eqz v3, :cond_1e

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1e
    throw v2
.end method

.method private Zo(Landroid/app/AlertDialog;)Landroid/widget/EditText;
    .registers 6
    .annotation runtime Labcd/su;
        method = -0x2b841dc437fed3dL
    .end annotation

    const-wide v0, -0x5820836e80d08498L

    :try_start_5
    sget-boolean v2, Labcd/di;->Zo:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    const v2, 0x7f0800c3

    invoke-virtual {p1, v2}, Landroid/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;
    :try_end_15
    .catchall {:try_start_5 .. :try_end_15} :catchall_16

    return-object v2

    :catchall_16
    move-exception v2

    sget-boolean v3, Labcd/di;->VH:Z

    if-eqz v3, :cond_1e

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1e
    throw v2
.end method

.method static synthetic j6(Labcd/di;)Ljava/lang/String;
    .registers 1

    invoke-direct {p0}, Labcd/di;->v5()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic j6(Labcd/di;Landroid/app/AlertDialog;)V
    .registers 2

    invoke-direct {p0, p1}, Labcd/di;->DW(Landroid/app/AlertDialog;)V

    return-void
.end method

.method private v5()Ljava/lang/String;
    .registers 5
    .annotation runtime Labcd/su;
        method = 0x450d91ec5eed57acL
    .end annotation

    const-wide v0, 0x2caebef2ae066f5L

    :try_start_5
    sget-boolean v2, Labcd/di;->Zo:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    iget-object v0, p0, Labcd/di;->gn:Ljava/lang/String;
    :try_end_e
    .catchall {:try_start_5 .. :try_end_e} :catchall_f

    return-object v0

    :catchall_f
    move-exception v2

    sget-boolean v3, Labcd/di;->VH:Z

    if-eqz v3, :cond_17

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_17
    throw v2
.end method

.method private v5(Landroid/app/AlertDialog;)Ljava/lang/String;
    .registers 6
    .annotation runtime Labcd/su;
        method = 0x310d76a7d35f05e8L
    .end annotation

    const-wide v0, -0x3d89c342aba61ae9L  # -1.528133141918318E12

    :try_start_5
    sget-boolean v2, Labcd/di;->Zo:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    invoke-direct {p0, p1}, Labcd/di;->Zo(Landroid/app/AlertDialog;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1
    :try_end_1c
    .catchall {:try_start_5 .. :try_end_1c} :catchall_1d

    return-object p1

    :catchall_1d
    move-exception v2

    sget-boolean v3, Labcd/di;->VH:Z

    if-eqz v3, :cond_25

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_25
    throw v2
.end method


# virtual methods
.method protected j6(Landroid/app/Activity;)Landroid/app/Dialog;
    .registers 11
    .annotation runtime Labcd/su;
        method = 0x1b33e4b2c89339c0L
    .end annotation

    const-string v0, ""

    const-wide v1, 0x11b3ddffa5639f71L  # 2.1469379779993655E-223

    :try_start_7
    sget-boolean v3, Labcd/di;->Zo:Z

    if-eqz v3, :cond_e

    invoke-static {v1, v2, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_e
    invoke-direct {p0}, Labcd/di;->v5()Ljava/lang/String;

    move-result-object v3

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    const v5, 0x7f0a001e

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    new-instance v5, Landroid/app/AlertDialog$Builder;

    invoke-direct {v5, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v7, 0x7f0d0024

    invoke-virtual {v5, v7}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    invoke-virtual {v7, v4}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    const v8, 0x7f0d0694

    invoke-virtual {v7, v8, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    new-instance v7, Labcd/Zh;

    invoke-direct {v7, p0}, Labcd/Zh;-><init>(Labcd/di;)V

    const/high16 v8, 0x1040000

    invoke-virtual {v6, v8, v7}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v5}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v5

    const v6, 0x7f0800c3

    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    invoke-virtual {v7, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v7, 0x7f0800c2

    invoke-virtual {v4, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    invoke-virtual {v7, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v3, 0x7f0800c1

    invoke-virtual {v4, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    invoke-virtual {v3, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    new-instance v0, Labcd/_h;

    invoke-direct {v0, p0, v5}, Labcd/_h;-><init>(Labcd/di;Landroid/app/AlertDialog;)V

    invoke-virtual {v3, v0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    new-instance v4, Labcd/ai;

    invoke-direct {v4, p0, v5, v3}, Labcd/ai;-><init>(Labcd/di;Landroid/app/AlertDialog;Landroid/widget/EditText;)V

    invoke-virtual {v0, v4}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    new-instance v0, Labcd/ci;

    invoke-direct {v0, p0, p1}, Labcd/ci;-><init>(Labcd/di;Landroid/app/Activity;)V

    invoke-virtual {v5, v0}, Landroid/app/AlertDialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V
    :try_end_8a
    .catchall {:try_start_7 .. :try_end_8a} :catchall_8b

    return-object v5

    :catchall_8b
    move-exception v0

    sget-boolean v3, Labcd/di;->VH:Z

    if-eqz v3, :cond_93

    invoke-static {v0, v1, v2, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_93
    throw v0
.end method

.method protected j6(Landroid/app/AlertDialog;)V
    .registers 10
    .annotation runtime Labcd/su;
        method = 0x18c058dc75b599d1L
    .end annotation

    const-wide v0, 0x2fc491d3d0772fd4L

    :try_start_5
    sget-boolean v2, Labcd/di;->Zo:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    const/4 v2, -0x1

    invoke-virtual {p1, v2}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v2
    :try_end_11
    .catchall {:try_start_5 .. :try_end_11} :catchall_39

    if-eqz v2, :cond_38

    const/4 v3, 0x0

    :try_start_14
    new-instance v4, Labcd/HJ;

    invoke-direct {p0, p1}, Labcd/di;->v5(Landroid/app/AlertDialog;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Labcd/HJ;-><init>(Ljava/lang/String;)V
    :try_end_1d
    .catch Ljava/net/URISyntaxException; {:try_start_14 .. :try_end_1d} :catch_1f
    .catchall {:try_start_14 .. :try_end_1d} :catchall_39

    const/4 v4, 0x1

    goto :goto_21

    :catch_1f
    move-exception v4

    const/4 v4, 0x0

    :goto_21
    :try_start_21
    invoke-static {}, Lcom/aide/ui/U;->Ws()Lcom/aide/ui/scm/ua;

    move-result-object v5

    invoke-direct {p0}, Labcd/di;->v5()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, p1}, Labcd/di;->FH(Landroid/app/AlertDialog;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lcom/aide/ui/scm/ua;->j6(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_34

    goto :goto_35

    :cond_34
    move v3, v4

    :goto_35
    invoke-virtual {v2, v3}, Landroid/widget/Button;->setEnabled(Z)V
    :try_end_38
    .catchall {:try_start_21 .. :try_end_38} :catchall_39

    :cond_38
    return-void

    :catchall_39
    move-exception v2

    sget-boolean v3, Labcd/di;->VH:Z

    if-eqz v3, :cond_41

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_41
    throw v2
.end method
