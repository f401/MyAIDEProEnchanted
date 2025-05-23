.class public final Lcom/google/android/gms/common/SignInButton;
.super Landroid/widget/FrameLayout;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private DW:I

.field private FH:Landroid/view/View;

.field private Hw:Landroid/view/View$OnClickListener;

.field private j6:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/common/SignInButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/gms/common/SignInButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p3, 0x0

    iput-object p3, p0, Lcom/google/android/gms/common/SignInButton;->Hw:Landroid/view/View$OnClickListener;

    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p1

    sget-object p3, Labcd/lx;->SignInButton:[I

    const/4 v0, 0x0

    invoke-virtual {p1, p2, p3, v0, v0}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    :try_start_11
    sget p2, Labcd/lx;->SignInButton_buttonSize:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    iput p2, p0, Lcom/google/android/gms/common/SignInButton;->j6:I

    sget p2, Labcd/lx;->SignInButton_colorScheme:I

    const/4 p3, 0x2

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    iput p2, p0, Lcom/google/android/gms/common/SignInButton;->DW:I
    :try_end_22
    .catchall {:try_start_11 .. :try_end_22} :catchall_2d

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    iget p1, p0, Lcom/google/android/gms/common/SignInButton;->j6:I

    iget p2, p0, Lcom/google/android/gms/common/SignInButton;->DW:I

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/common/SignInButton;->j6(II)V

    return-void

    :catchall_2d
    move-exception p2

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    throw p2
.end method


# virtual methods
.method public final j6(II)V
    .registers 5

    iput p1, p0, Lcom/google/android/gms/common/SignInButton;->j6:I

    iput p2, p0, Lcom/google/android/gms/common/SignInButton;->DW:I

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object p2, p0, Lcom/google/android/gms/common/SignInButton;->FH:Landroid/view/View;

    if-eqz p2, :cond_f

    invoke-virtual {p0, p2}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    :cond_f
    :try_start_f
    iget p2, p0, Lcom/google/android/gms/common/SignInButton;->j6:I

    iget v0, p0, Lcom/google/android/gms/common/SignInButton;->DW:I

    invoke-static {p1, p2, v0}, Lcom/google/android/gms/common/internal/s;->j6(Landroid/content/Context;II)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/gms/common/SignInButton;->FH:Landroid/view/View;
    :try_end_19
    .catch Labcd/qx$a; {:try_start_f .. :try_end_19} :catch_1a

    goto :goto_34

    :catch_1a
    move-exception p2

    const-string p2, "SignInButton"

    const-string v0, "Sign in button not found, using placeholder instead"

    invoke-static {p2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget p2, p0, Lcom/google/android/gms/common/SignInButton;->j6:I

    iget v0, p0, Lcom/google/android/gms/common/SignInButton;->DW:I

    new-instance v1, Lcom/google/android/gms/common/internal/SignInButtonImpl;

    invoke-direct {v1, p1}, Lcom/google/android/gms/common/internal/SignInButtonImpl;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {v1, p1, p2, v0}, Lcom/google/android/gms/common/internal/SignInButtonImpl;->j6(Landroid/content/res/Resources;II)V

    iput-object v1, p0, Lcom/google/android/gms/common/SignInButton;->FH:Landroid/view/View;

    :goto_34
    iget-object p1, p0, Lcom/google/android/gms/common/SignInButton;->FH:Landroid/view/View;

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    iget-object p1, p0, Lcom/google/android/gms/common/SignInButton;->FH:Landroid/view/View;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->isEnabled()Z

    move-result p2

    invoke-virtual {p1, p2}, Landroid/view/View;->setEnabled(Z)V

    iget-object p1, p0, Lcom/google/android/gms/common/SignInButton;->FH:Landroid/view/View;

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public final onClick(Landroid/view/View;)V
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/common/SignInButton;->Hw:Landroid/view/View$OnClickListener;

    if-eqz v0, :cond_b

    iget-object v1, p0, Lcom/google/android/gms/common/SignInButton;->FH:Landroid/view/View;

    if-ne p1, v1, :cond_b

    invoke-interface {v0, p0}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    :cond_b
    return-void
.end method

.method public final setColorScheme(I)V
    .registers 3

    iget v0, p0, Lcom/google/android/gms/common/SignInButton;->j6:I

    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/common/SignInButton;->j6(II)V

    return-void
.end method

.method public final setEnabled(Z)V
    .registers 3

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setEnabled(Z)V

    iget-object v0, p0, Lcom/google/android/gms/common/SignInButton;->FH:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    return-void
.end method

.method public final setOnClickListener(Landroid/view/View$OnClickListener;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/common/SignInButton;->Hw:Landroid/view/View$OnClickListener;

    iget-object p1, p0, Lcom/google/android/gms/common/SignInButton;->FH:Landroid/view/View;

    if-eqz p1, :cond_9

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_9
    return-void
.end method

.method public final setScopes([Lcom/google/android/gms/common/api/Scope;)V
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget p1, p0, Lcom/google/android/gms/common/SignInButton;->j6:I

    iget v0, p0, Lcom/google/android/gms/common/SignInButton;->DW:I

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/common/SignInButton;->j6(II)V

    return-void
.end method

.method public final setSize(I)V
    .registers 3

    iget v0, p0, Lcom/google/android/gms/common/SignInButton;->DW:I

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/common/SignInButton;->j6(II)V

    return-void
.end method
