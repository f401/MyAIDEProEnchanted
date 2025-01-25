.class Lcom/aide/common/A;
.super Landroid/widget/EditText;


# annotations
.annotation runtime Labcd/xu;
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/aide/common/H;->j6(Landroid/app/Activity;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
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
.field final FH:Landroid/app/Activity;

.field final Hw:[Landroid/app/AlertDialog;

.field final v5:Lcom/aide/common/H;
    .annotation runtime Labcd/vu;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 5

    const-wide v0, 0x45bbebac5e17d6f9L  # 8.641006815532585E27

    const-wide v2, -0x5105e2ceb7151a5cL  # -2.150775842977189E-82

    const-class v4, Lcom/aide/common/A;

    invoke-static {v4, v0, v1, v2, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method constructor <init>(Lcom/aide/common/H;Landroid/content/Context;Landroid/app/Activity;[Landroid/app/AlertDialog;)V
    .registers 5

    iput-object p1, p0, Lcom/aide/common/A;->v5:Lcom/aide/common/H;

    iput-object p3, p0, Lcom/aide/common/A;->FH:Landroid/app/Activity;

    iput-object p4, p0, Lcom/aide/common/A;->Hw:[Landroid/app/AlertDialog;

    invoke-direct {p0, p2}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 10
    .annotation runtime Labcd/su;
        method = 0xc81cb849e47cc3cL
    .end annotation

    :try_start_0
    sget-boolean v0, Lcom/aide/common/A;->j6:Z

    if-eqz v0, :cond_11

    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, p1}, Ljava/lang/Integer;-><init>(I)V

    const-wide v1, 0xd9ad7f78ada2fb7L

    invoke-static {v1, v2, p0, v0, p2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_11
    const/16 v0, 0x42

    if-ne p1, v0, :cond_17

    const/4 p1, 0x1

    return p1

    :cond_17
    invoke-super {p0, p1, p2}, Landroid/widget/EditText;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p1
    :try_end_1b
    .catchall {:try_start_0 .. :try_end_1b} :catchall_1c

    return p1

    :catchall_1c
    move-exception v0

    sget-boolean v1, Lcom/aide/common/A;->DW:Z

    if-eqz v1, :cond_31

    const-wide v2, 0xd9ad7f78ada2fb7L

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p1}, Ljava/lang/Integer;-><init>(I)V

    move-object v1, v0

    move-object v4, p0

    move-object v6, p2

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_31
    throw v0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .registers 10
    .annotation runtime Labcd/su;
        method = -0x46cb116b696eb07L
    .end annotation

    :try_start_0
    sget-boolean v0, Lcom/aide/common/A;->j6:Z

    if-eqz v0, :cond_11

    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, p1}, Ljava/lang/Integer;-><init>(I)V

    const-wide v1, -0x5f629cdfc31b2e0L  # -7.32795920373302E279

    invoke-static {v1, v2, p0, v0, p2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_11
    const/16 v0, 0x42

    if-ne p1, v0, :cond_43

    iget-object v0, p0, Lcom/aide/common/A;->FH:Landroid/app/Activity;

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {p0}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    iget-object v0, p0, Lcom/aide/common/A;->Hw:[Landroid/app/AlertDialog;

    aget-object v0, v0, v2

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    iget-object v0, p0, Lcom/aide/common/A;->v5:Lcom/aide/common/H;

    iget-object v0, v0, Lcom/aide/common/H;->gn:Lcom/aide/common/ab;

    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/aide/common/ab;->j6(Ljava/lang/Object;)V

    const/4 p1, 0x1

    return p1

    :cond_43
    invoke-super {p0, p1, p2}, Landroid/widget/EditText;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result p1
    :try_end_47
    .catchall {:try_start_0 .. :try_end_47} :catchall_48

    return p1

    :catchall_48
    move-exception v0

    sget-boolean v1, Lcom/aide/common/A;->DW:Z

    if-eqz v1, :cond_5d

    const-wide v2, -0x5f629cdfc31b2e0L  # -7.32795920373302E279

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p1}, Ljava/lang/Integer;-><init>(I)V

    move-object v1, v0

    move-object v4, p0

    move-object v6, p2

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_5d
    throw v0
.end method
