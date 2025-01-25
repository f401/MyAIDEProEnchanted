.class public Labcd/Ch;
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
        field = 0x275b11cdceeffd00L
    .end annotation
.end field

.field private tp:Lcom/aide/common/ab;
    .annotation runtime Labcd/ru;
        field = -0x244e425874eab6cdL
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/aide/common/ab<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private u7:Labcd/Sk$a;
    .annotation runtime Labcd/ru;
        field = 0x4de75b55e3d797dL
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const-class v0, Labcd/Ch;

    const-wide v1, -0x5d17df730569d4b9L  # -1.58284387075899E-140

    invoke-static {v0, v1, v2, v1, v2}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Labcd/Sk$a;Lcom/aide/common/ab;)V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Labcd/Sk$a;",
            "Lcom/aide/common/ab<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    :try_start_0
    sget-boolean v0, Labcd/Ch;->Zo:Z

    if-eqz v0, :cond_10

    const-wide v1, -0x422b732bab5dff00L  # -7.476088251784271E-11

    const/4 v3, 0x0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_10
    invoke-direct {p0}, Lcom/aide/common/ma;-><init>()V

    iput-object p1, p0, Labcd/Ch;->gn:Ljava/lang/String;

    iput-object p2, p0, Labcd/Ch;->u7:Labcd/Sk$a;

    iput-object p3, p0, Labcd/Ch;->tp:Lcom/aide/common/ab;
    :try_end_19
    .catchall {:try_start_0 .. :try_end_19} :catchall_1a

    return-void

    :catchall_1a
    move-exception v0

    sget-boolean v1, Labcd/Ch;->VH:Z

    if-eqz v1, :cond_2c

    const-wide v2, -0x422b732bab5dff00L  # -7.476088251784271E-11

    const/4 v4, 0x0

    move-object v1, v0

    move-object v5, p1

    move-object v6, p2

    move-object v7, p3

    invoke-static/range {v1 .. v7}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_2c
    throw v0
.end method

.method static synthetic DW(Labcd/Ch;)Lcom/aide/common/ab;
    .registers 1

    iget-object p0, p0, Labcd/Ch;->tp:Lcom/aide/common/ab;

    return-object p0
.end method

.method static synthetic DW(Labcd/Ch;Landroid/app/AlertDialog;)Ljava/lang/String;
    .registers 2

    invoke-direct {p0, p1}, Labcd/Ch;->v5(Landroid/app/AlertDialog;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private DW(Landroid/app/AlertDialog;)V
    .registers 7
    .annotation runtime Labcd/su;
        method = -0x5e46258694cc4a51L
    .end annotation

    const-wide v0, 0xb301530002c8198L

    :try_start_5
    sget-boolean v2, Labcd/Ch;->Zo:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    invoke-virtual {p1}, Landroid/app/AlertDialog;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "input_method"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/inputmethod/InputMethodManager;

    invoke-direct {p0, p1}, Labcd/Ch;->FH(Landroid/app/AlertDialog;)Landroid/widget/EditText;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    invoke-direct {p0, p1}, Labcd/Ch;->VH(Landroid/app/AlertDialog;)Landroid/widget/EditText;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v3

    invoke-virtual {v2, v3, v4}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z
    :try_end_2f
    .catchall {:try_start_5 .. :try_end_2f} :catchall_30

    return-void

    :catchall_30
    move-exception v2

    sget-boolean v3, Labcd/Ch;->VH:Z

    if-eqz v3, :cond_38

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_38
    throw v2
.end method

.method private FH(Landroid/app/AlertDialog;)Landroid/widget/EditText;
    .registers 6
    .annotation runtime Labcd/su;
        method = 0x24f438d2fb32189L
    .end annotation

    const-wide v0, 0xf8b1162ba9af828L  # 8.513108046941063E-234

    :try_start_5
    sget-boolean v2, Labcd/Ch;->Zo:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    const v2, 0x7f080034

    invoke-virtual {p1, v2}, Landroid/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;
    :try_end_15
    .catchall {:try_start_5 .. :try_end_15} :catchall_16

    return-object v2

    :catchall_16
    move-exception v2

    sget-boolean v3, Labcd/Ch;->VH:Z

    if-eqz v3, :cond_1e

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1e
    throw v2
.end method

.method static synthetic FH(Labcd/Ch;Landroid/app/AlertDialog;)Ljava/lang/String;
    .registers 2

    invoke-direct {p0, p1}, Labcd/Ch;->Hw(Landroid/app/AlertDialog;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic Hw(Labcd/Ch;Landroid/app/AlertDialog;)Labcd/Sk$a;
    .registers 2

    invoke-direct {p0, p1}, Labcd/Ch;->Zo(Landroid/app/AlertDialog;)Labcd/Sk$a;

    move-result-object p0

    return-object p0
.end method

.method private Hw(Landroid/app/AlertDialog;)Ljava/lang/String;
    .registers 6
    .annotation runtime Labcd/su;
        method = 0x43973e6525316110L
    .end annotation

    const-wide v0, -0xea9aa0f4f36055dL  # -9.090258542024079E237

    :try_start_5
    sget-boolean v2, Labcd/Ch;->Zo:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    invoke-direct {p0, p1}, Labcd/Ch;->VH(Landroid/app/AlertDialog;)Landroid/widget/EditText;

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

    sget-boolean v3, Labcd/Ch;->VH:Z

    if-eqz v3, :cond_25

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_25
    throw v2
.end method

.method private VH(Landroid/app/AlertDialog;)Landroid/widget/EditText;
    .registers 6
    .annotation runtime Labcd/su;
        method = -0x512737ae3897dc40L
    .end annotation

    const-wide v0, -0x4a76857de0fee489L  # -8.512270491701555E-51

    :try_start_5
    sget-boolean v2, Labcd/Ch;->Zo:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    const v2, 0x7f080035

    invoke-virtual {p1, v2}, Landroid/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;
    :try_end_15
    .catchall {:try_start_5 .. :try_end_15} :catchall_16

    return-object v2

    :catchall_16
    move-exception v2

    sget-boolean v3, Labcd/Ch;->VH:Z

    if-eqz v3, :cond_1e

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1e
    throw v2
.end method

.method private Zo(Landroid/app/AlertDialog;)Labcd/Sk$a;
    .registers 6
    .annotation runtime Labcd/su;
        method = -0x15a356bd347639f9L
    .end annotation

    const-wide v0, -0x4f0fc4f9a627030L  # -5.764869075289404E284

    :try_start_5
    sget-boolean v2, Labcd/Ch;->Zo:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    iget-object p1, p0, Labcd/Ch;->u7:Labcd/Sk$a;
    :try_end_e
    .catchall {:try_start_5 .. :try_end_e} :catchall_f

    return-object p1

    :catchall_f
    move-exception v2

    sget-boolean v3, Labcd/Ch;->VH:Z

    if-eqz v3, :cond_17

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_17
    throw v2
.end method

.method static synthetic j6(Labcd/Ch;)Ljava/lang/String;
    .registers 1

    invoke-direct {p0}, Labcd/Ch;->v5()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic j6(Labcd/Ch;Landroid/app/AlertDialog;)V
    .registers 2

    invoke-direct {p0, p1}, Labcd/Ch;->DW(Landroid/app/AlertDialog;)V

    return-void
.end method

.method static synthetic j6(Labcd/Ch;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Labcd/Sk$a;)V
    .registers 5

    invoke-direct {p0, p1, p2, p3, p4}, Labcd/Ch;->j6(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Labcd/Sk$a;)V

    return-void
.end method

.method private j6(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Labcd/Sk$a;)V
    .registers 14
    .annotation runtime Labcd/su;
        method = 0x3344c39858ab4dfL
    .end annotation

    :try_start_0
    sget-boolean v0, Labcd/Ch;->Zo:Z

    if-eqz v0, :cond_11

    const-wide v1, -0x15afce7d10832400L

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    invoke-static/range {v1 .. v7}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_11
    invoke-static {}, Lcom/aide/ui/U;->lg()Lcom/aide/ui/MainActivity;

    move-result-object v0

    invoke-static {}, Lcom/s1243808733/util/Utils;->getApp()Landroid/app/Application;

    move-result-object v1

    const v2, 0x7f0d0782

    invoke-virtual {v1, v2}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v8, Labcd/Bh;

    move-object v2, v8

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    invoke-direct/range {v2 .. v7}, Labcd/Bh;-><init>(Labcd/Ch;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Labcd/Sk$a;)V

    const/4 v2, 0x0

    invoke-static {v0, v1, v8, v2}, Lcom/aide/ui/U;->j6(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/Runnable;Ljava/lang/Runnable;)V
    :try_end_2f
    .catchall {:try_start_0 .. :try_end_2f} :catchall_30

    return-void

    :catchall_30
    move-exception v0

    sget-boolean v1, Labcd/Ch;->VH:Z

    if-eqz v1, :cond_43

    const-wide v2, -0x15afce7d10832400L

    move-object v1, v0

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    move-object v7, p3

    move-object v8, p4

    invoke-static/range {v1 .. v8}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_43
    throw v0
.end method

.method private v5()Ljava/lang/String;
    .registers 5
    .annotation runtime Labcd/su;
        method = -0x3951a948c966676dL
    .end annotation

    const-wide v0, 0xdef3a1898b93448L

    :try_start_5
    sget-boolean v2, Labcd/Ch;->Zo:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    iget-object v0, p0, Labcd/Ch;->gn:Ljava/lang/String;
    :try_end_e
    .catchall {:try_start_5 .. :try_end_e} :catchall_f

    return-object v0

    :catchall_f
    move-exception v2

    sget-boolean v3, Labcd/Ch;->VH:Z

    if-eqz v3, :cond_17

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_17
    throw v2
.end method

.method private v5(Landroid/app/AlertDialog;)Ljava/lang/String;
    .registers 6
    .annotation runtime Labcd/su;
        method = -0x12c9907183e09ed3L
    .end annotation

    const-wide v0, 0x4d0e722c7736ec20L  # 1.5655942790703693E63

    :try_start_5
    sget-boolean v2, Labcd/Ch;->Zo:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    invoke-direct {p0, p1}, Labcd/Ch;->FH(Landroid/app/AlertDialog;)Landroid/widget/EditText;

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

    sget-boolean v3, Labcd/Ch;->VH:Z

    if-eqz v3, :cond_25

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_25
    throw v2
.end method


# virtual methods
.method protected j6(Landroid/app/Activity;)Landroid/app/Dialog;
    .registers 12
    .annotation runtime Labcd/su;
        method = -0x871251192b54b0bL
    .end annotation

    const-wide v0, 0x544eed77b716c00L

    :try_start_5
    sget-boolean v2, Labcd/Ch;->Zo:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f0a000a

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-direct {v3, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v4, 0x7f0d05d1

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    new-instance v6, Labcd/wh;

    invoke-direct {v6, p0}, Labcd/wh;-><init>(Labcd/Ch;)V

    const v7, 0x7f0d05cb

    invoke-virtual {v4, v7, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    new-instance v6, Labcd/vh;

    invoke-direct {v6, p0}, Labcd/vh;-><init>(Labcd/Ch;)V

    const v7, 0x7f0d05be

    invoke-virtual {v4, v7, v6}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    const v4, 0x7f080037

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    new-array v7, v5, [Ljava/lang/Object;

    iget-object v8, p0, Labcd/Ch;->u7:Labcd/Sk$a;

    iget-object v8, v8, Labcd/Sk$a;->DW:Ljava/lang/String;

    const/4 v9, 0x0

    aput-object v8, v7, v9

    const v8, 0x7f0d05ce

    invoke-virtual {v6, v8, v7}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v4, 0x7f080033

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    new-array v5, v5, [Ljava/lang/Object;

    iget-object v7, p0, Labcd/Ch;->gn:Ljava/lang/String;

    aput-object v7, v5, v9

    const v7, 0x7f0d05cc

    invoke-virtual {v6, v7, v5}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v4, 0x7f080034

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/EditText;

    invoke-static {}, Lcom/aide/ui/U;->gW()Labcd/Sk;

    move-result-object v5

    iget-object v6, p0, Labcd/Ch;->gn:Ljava/lang/String;

    iget-object v7, p0, Labcd/Ch;->u7:Labcd/Sk$a;

    iget-object v7, v7, Labcd/Sk$a;->VH:Labcd/Sk$b;

    iget-object v7, v7, Labcd/Sk$b;->Zo:Ljava/lang/String;

    invoke-virtual {v5, v6, v7}, Labcd/Sk;->Hw(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    new-instance v6, Labcd/xh;

    invoke-direct {v6, p0, v3}, Labcd/xh;-><init>(Labcd/Ch;Landroid/app/AlertDialog;)V

    invoke-virtual {v4, v6}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    const v4, 0x7f080035

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/EditText;

    invoke-static {}, Lcom/aide/ui/U;->gW()Labcd/Sk;

    move-result-object v6

    invoke-virtual {v6, v5}, Labcd/Sk;->FH(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    new-instance v5, Labcd/yh;

    invoke-direct {v5, p0, v3}, Labcd/yh;-><init>(Labcd/Ch;Landroid/app/AlertDialog;)V

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object v5, p0, Labcd/Ch;->u7:Labcd/Sk$a;

    iget-object v5, v5, Labcd/Sk$a;->VH:Labcd/Sk$b;

    iget-boolean v5, v5, Labcd/Sk$b;->VH:Z

    const/16 v6, 0x8

    if-eqz v5, :cond_d1

    const/4 v5, 0x0

    goto :goto_d3

    :cond_d1
    const/16 v5, 0x8

    :goto_d3
    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setVisibility(I)V

    const v4, 0x7f080036

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iget-object v4, p0, Labcd/Ch;->u7:Labcd/Sk$a;

    iget-object v4, v4, Labcd/Sk$a;->VH:Labcd/Sk$b;

    iget-boolean v4, v4, Labcd/Sk$b;->VH:Z

    if-eqz v4, :cond_e8

    goto :goto_ea

    :cond_e8
    const/16 v9, 0x8

    :goto_ea
    invoke-virtual {v2, v9}, Landroid/widget/TextView;->setVisibility(I)V

    invoke-virtual {v3}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/4 v4, 0x2

    invoke-virtual {v2, v4}, Landroid/view/Window;->setSoftInputMode(I)V
    :try_end_f5
    .catchall {:try_start_5 .. :try_end_f5} :catchall_f6

    return-object v3

    :catchall_f6
    move-exception v2

    sget-boolean v3, Labcd/Ch;->VH:Z

    if-eqz v3, :cond_fe

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_fe
    throw v2
.end method

.method protected j6(Landroid/app/AlertDialog;)V
    .registers 8
    .annotation runtime Labcd/su;
        method = 0x2f042e6fa1407c6cL
    .end annotation

    const-wide v0, 0x372db3e4d31d242fL  # 6.659577981104502E-43

    :try_start_5
    sget-boolean v2, Labcd/Ch;->Zo:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    const/4 v2, -0x1

    invoke-virtual {p1, v2}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v2

    if-eqz v2, :cond_3d

    invoke-static {}, Lcom/aide/ui/U;->gW()Labcd/Sk;

    move-result-object v3

    invoke-direct {p0}, Labcd/Ch;->v5()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, p1}, Labcd/Ch;->Hw(Landroid/app/AlertDialog;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Labcd/Sk;->DW(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_39

    invoke-static {}, Lcom/aide/ui/U;->gW()Labcd/Sk;

    move-result-object v3

    invoke-direct {p0}, Labcd/Ch;->v5()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, p1}, Labcd/Ch;->v5(Landroid/app/AlertDialog;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Labcd/Sk;->FH(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_39

    const/4 v3, 0x1

    goto :goto_3a

    :cond_39
    const/4 v3, 0x0

    :goto_3a
    invoke-virtual {v2, v3}, Landroid/widget/Button;->setEnabled(Z)V
    :try_end_3d
    .catchall {:try_start_5 .. :try_end_3d} :catchall_3e

    :cond_3d
    return-void

    :catchall_3e
    move-exception v2

    sget-boolean v3, Labcd/Ch;->VH:Z

    if-eqz v3, :cond_46

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_46
    throw v2
.end method
