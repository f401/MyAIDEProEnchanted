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
    .registers 4

    const-wide v2, -0x3a3825ba9a29b7e1L    # -1.4764057552832041E28

    const-class v0, Labcd/ui;

    invoke-static {v0, v2, v3, v2, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method public constructor <init>()V
    .registers 7

    const-wide v4, -0x4425df44637d94d8L    # -2.2131160567078707E-20

    const/4 v3, 0x0

    :try_start_0
    sget-boolean v0, Labcd/ui;->Zo:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x4425df44637d94d8L    # -2.2131160567078707E-20

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    invoke-direct {p0}, Lcom/aide/common/ma;-><init>()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/ui;->VH:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v4, v5, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method static synthetic DW(Labcd/ui;Landroid/app/AlertDialog;)Z
    .registers 3

    invoke-direct {p0, p1}, Labcd/ui;->FH(Landroid/app/AlertDialog;)Z

    move-result v0

    return v0
.end method

.method private FH(Landroid/app/AlertDialog;)Z
    .registers 6
    .annotation runtime Labcd/su;
        method = -0x1ecce2d4102fbbfbL
    .end annotation

    const-wide v2, -0xc30bba01d4f3f10L    # -6.995743217294732E249

    :try_start_0
    sget-boolean v0, Labcd/ui;->Zo:Z

    if-eqz v0, :cond_0

    const-wide v0, -0xc30bba01d4f3f10L    # -6.995743217294732E249

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    invoke-direct {p0, p1}, Labcd/ui;->Zo(Landroid/app/AlertDialog;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0, p1}, Labcd/ui;->gn(Landroid/app/AlertDialog;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1}, Labcd/ui;->Zo(Landroid/app/AlertDialog;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/ui;->VH:Z

    if-eqz v1, :cond_2

    invoke-static {v0, v2, v3, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_2
    throw v0
.end method

.method private Hw(Landroid/app/AlertDialog;)V
    .registers 8
    .annotation runtime Labcd/su;
        method = -0x4d5aaf4148832380L
    .end annotation

    const-wide v4, 0x3b5224552a852623L    # 6.002659298731721E-23

    :try_start_0
    sget-boolean v0, Labcd/ui;->Zo:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x3b5224552a852623L    # 6.002659298731721E-23

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    invoke-virtual {p1}, Landroid/app/AlertDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    invoke-direct {p0, p1}, Labcd/ui;->v5(Landroid/app/AlertDialog;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    invoke-direct {p0, p1}, Labcd/ui;->VH(Landroid/app/AlertDialog;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/ui;->VH:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v4, v5, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method private VH(Landroid/app/AlertDialog;)Landroid/widget/EditText;
    .registers 6
    .annotation runtime Labcd/su;
        method = -0x1dd747025ec9db9fL
    .end annotation

    const-wide v2, 0x27818e500f0f2320L

    :try_start_0
    sget-boolean v0, Labcd/ui;->Zo:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x27818e500f0f2320L

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    const v0, 0x7f080148

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/ui;->VH:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method private Zo(Landroid/app/AlertDialog;)Ljava/lang/String;
    .registers 6
    .annotation runtime Labcd/su;
        method = 0x8e2432c97ec99e1L
    .end annotation

    const-wide v2, 0x1fa482d8db74514L

    :try_start_0
    sget-boolean v0, Labcd/ui;->Zo:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x1fa482d8db74514L

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    invoke-direct {p0, p1}, Labcd/ui;->v5(Landroid/app/AlertDialog;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/ui;->VH:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method private gn(Landroid/app/AlertDialog;)Ljava/lang/String;
    .registers 6
    .annotation runtime Labcd/su;
        method = -0x506f1922734b000L
    .end annotation

    const-wide v2, -0x8b6163ca8efaa9fL

    :try_start_0
    sget-boolean v0, Labcd/ui;->Zo:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x8b6163ca8efaa9fL

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    invoke-direct {p0, p1}, Labcd/ui;->VH(Landroid/app/AlertDialog;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/ui;->VH:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v0
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

    const-wide v2, 0x1e430294cd8e3275L    # 6.60231694283452E-163

    :try_start_0
    sget-boolean v0, Labcd/ui;->Zo:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x1e430294cd8e3275L    # 6.60231694283452E-163

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    const v0, 0x7f080146

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/ui;->VH:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v0
.end method


# virtual methods
.method protected DW(Landroid/app/AlertDialog;)V
    .registers 6
    .annotation runtime Labcd/su;
        method = -0x23faa11498498985L
    .end annotation

    const-wide v2, 0x96c343b8e69bad4L

    :try_start_0
    sget-boolean v0, Labcd/ui;->Zo:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x96c343b8e69bad4L

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    const/4 v0, -0x1

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-direct {p0, p1}, Labcd/ui;->FH(Landroid/app/AlertDialog;)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/ui;->VH:Z

    if-eqz v1, :cond_2

    invoke-static {v0, v2, v3, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_2
    throw v0
.end method

.method protected j6(Landroid/app/Activity;)Landroid/app/Dialog;
    .registers 12
    .annotation runtime Labcd/su;
        method = 0x19b9d7c8eee06e00L
    .end annotation

    const-wide v8, 0x12ac681d1cd68031L

    :try_start_0
    sget-boolean v0, Labcd/ui;->Zo:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x12ac681d1cd68031L

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    invoke-static {}, Lcom/aide/ui/U;->lg()Lcom/aide/ui/MainActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aide/ui/MainActivity;->J8()Lcom/aide/ui/AIDEEditorPager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aide/ui/AIDEEditorPager;->getCurrentFileSpan()Labcd/Tl;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    const-string v0, ""

    :try_start_1
    iget v1, v4, Labcd/Tl;->Hw:I

    iget v2, v4, Labcd/Tl;->Zo:I

    if-ne v1, v2, :cond_3

    iget v1, v4, Labcd/Tl;->v5:I

    iget v2, v4, Labcd/Tl;->VH:I

    if-eq v1, v2, :cond_3

    invoke-static {}, Lcom/aide/ui/U;->lg()Lcom/aide/ui/MainActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aide/ui/MainActivity;->J8()Lcom/aide/ui/AIDEEditorPager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aide/ui/AIDEEditorPager;->getSelectionContent()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    move-object v3, v0

    :goto_0
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0a003d

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0d0066

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const/4 v5, 0x1

    invoke-virtual {v1, v5}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v5, Labcd/oi;

    invoke-direct {v5, p0}, Labcd/oi;-><init>(Labcd/ui;)V

    const v6, 0x7f0d05e1

    invoke-virtual {v1, v6, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v5, Labcd/ni;

    invoke-direct {v5, p0}, Labcd/ni;-><init>(Labcd/ui;)V

    const v6, 0x7f0d05be

    invoke-virtual {v1, v6, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v5

    const v0, 0x7f080146

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    const v1, 0x7f080148

    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    const v6, 0x7f080147

    invoke-virtual {v2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iget v6, v4, Labcd/Tl;->Hw:I

    iget v4, v4, Labcd/Tl;->Zo:I

    if-ne v6, v4, :cond_1

    const v4, 0x7f0d05e3

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(I)V

    :goto_1
    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    new-instance v2, Labcd/pi;

    invoke-direct {v2, p0, v1}, Labcd/pi;-><init>(Labcd/ui;Landroid/widget/EditText;)V

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    new-instance v2, Labcd/qi;

    invoke-direct {v2, p0, v5}, Labcd/qi;-><init>(Labcd/ui;Landroid/app/AlertDialog;)V

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    invoke-virtual {v1, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    new-instance v2, Labcd/ri;

    invoke-direct {v2, p0, v5}, Labcd/ri;-><init>(Labcd/ui;Landroid/app/AlertDialog;)V

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    new-instance v2, Labcd/si;

    invoke-direct {v2, p0, v5}, Labcd/si;-><init>(Labcd/ui;Landroid/app/AlertDialog;)V

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    invoke-virtual {v5}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/view/Window;->setSoftInputMode(I)V

    new-instance v1, Labcd/ti;

    invoke-direct {v1, p0, v0}, Labcd/ti;-><init>(Labcd/ui;Landroid/widget/EditText;)V

    invoke-virtual {v5, v1}, Landroid/app/AlertDialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    return-object v5

    :cond_1
    const v4, 0x7f0d05e2

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(I)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/ui;->VH:Z

    if-eqz v1, :cond_2

    invoke-static {v0, v8, v9, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_2
    throw v0

    :cond_3
    move-object v3, v0

    goto/16 :goto_0
.end method

.method protected j6(Landroid/app/AlertDialog;)V
    .registers 12
    .annotation runtime Labcd/su;
        method = -0x50a92752d21efc0L
    .end annotation

    const-wide v8, -0xda1c893fdebd691L

    :try_start_0
    sget-boolean v0, Labcd/ui;->Zo:Z

    if-eqz v0, :cond_0

    const-wide v0, -0xda1c893fdebd691L

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    invoke-direct {p0, p1}, Labcd/ui;->Zo(Landroid/app/AlertDialog;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, p1}, Labcd/ui;->gn(Landroid/app/AlertDialog;)Ljava/lang/String;

    move-result-object v7

    invoke-static {}, Lcom/aide/ui/U;->lg()Lcom/aide/ui/MainActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aide/ui/MainActivity;->J8()Lcom/aide/ui/AIDEEditorPager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aide/ui/AIDEEditorPager;->getCurrentFileSpan()Labcd/Tl;

    move-result-object v1

    iget v0, v1, Labcd/Tl;->Hw:I

    iget v2, v1, Labcd/Tl;->Zo:I

    if-ne v0, v2, :cond_2

    new-instance v0, Labcd/Tl;

    iget-object v1, v1, Labcd/Tl;->FH:Ljava/lang/String;

    const/4 v2, 0x1

    const/4 v3, 0x1

    const v4, 0x7fffffff

    const/4 v5, 0x1

    invoke-direct/range {v0 .. v5}, Labcd/Tl;-><init>(Ljava/lang/String;IIII)V

    move-object v5, v0

    :goto_0
    invoke-static {}, Lcom/aide/ui/U;->EQ()Labcd/Xj;

    move-result-object v0

    iget-object v1, v5, Labcd/Tl;->FH:Ljava/lang/String;

    iget v2, v5, Labcd/Tl;->Hw:I

    iget v3, v5, Labcd/Tl;->v5:I

    iget v4, v5, Labcd/Tl;->Zo:I

    iget v5, v5, Labcd/Tl;->VH:I

    invoke-virtual/range {v0 .. v7}, Labcd/Xj;->j6(Ljava/lang/String;IIIILjava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/ui;->VH:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v8, v9, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v0

    :cond_2
    move-object v5, v1

    goto :goto_0
.end method
