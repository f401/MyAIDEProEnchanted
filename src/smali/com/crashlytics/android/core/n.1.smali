.class Lcom/crashlytics/android/core/n;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/crashlytics/android/core/n$b;
    }
.end annotation


# instance fields
.field private final DW:Landroid/app/AlertDialog$Builder;

.field private final j6:Lcom/crashlytics/android/core/n$b;


# direct methods
.method private constructor <init>(Landroid/app/AlertDialog$Builder;Lcom/crashlytics/android/core/n$b;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/crashlytics/android/core/n;->j6:Lcom/crashlytics/android/core/n$b;

    iput-object p1, p0, Lcom/crashlytics/android/core/n;->DW:Landroid/app/AlertDialog$Builder;

    return-void
.end method

.method private static j6(FI)I
    .registers 3

    int-to-float v0, p1

    mul-float/2addr v0, p0

    float-to-int v0, v0

    return v0
.end method

.method private static j6(Landroid/app/Activity;Ljava/lang/String;)Landroid/widget/ScrollView;
    .registers 9

    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    const/4 v1, 0x5

    invoke-static {v0, v1}, Lcom/crashlytics/android/core/n;->j6(FI)I

    move-result v1

    new-instance v2, Landroid/widget/TextView;

    invoke-direct {v2, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const/16 v3, 0xf

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setAutoLinkMask(I)V

    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v3, 0x1030044

    invoke-virtual {v2, p0, v3}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    invoke-virtual {v2, v1, v1, v1, v1}, Landroid/widget/TextView;->setPadding(IIII)V

    const/4 v1, 0x0

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setFocusable(Z)V

    new-instance v1, Landroid/widget/ScrollView;

    invoke-direct {v1, p0}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    const/16 v3, 0xe

    invoke-static {v0, v3}, Lcom/crashlytics/android/core/n;->j6(FI)I

    move-result v3

    const/4 v4, 0x2

    invoke-static {v0, v4}, Lcom/crashlytics/android/core/n;->j6(FI)I

    move-result v4

    const/16 v5, 0xa

    invoke-static {v0, v5}, Lcom/crashlytics/android/core/n;->j6(FI)I

    move-result v5

    const/16 v6, 0xc

    invoke-static {v0, v6}, Lcom/crashlytics/android/core/n;->j6(FI)I

    move-result v0

    invoke-virtual {v1, v3, v4, v5, v0}, Landroid/widget/ScrollView;->setPadding(IIII)V

    invoke-virtual {v1, v2}, Landroid/widget/ScrollView;->addView(Landroid/view/View;)V

    return-object v1
.end method

.method public static j6(Landroid/app/Activity;Labcd/gA;Lcom/crashlytics/android/core/n$a;)Lcom/crashlytics/android/core/n;
    .registers 9

    new-instance v0, Lcom/crashlytics/android/core/n$b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/crashlytics/android/core/n$b;-><init>(Lcom/crashlytics/android/core/k;)V

    new-instance v1, Lcom/crashlytics/android/core/qa;

    invoke-direct {v1, p0, p1}, Lcom/crashlytics/android/core/qa;-><init>(Landroid/content/Context;Labcd/gA;)V

    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1}, Lcom/crashlytics/android/core/qa;->FH()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/crashlytics/android/core/n;->j6(Landroid/app/Activity;Ljava/lang/String;)Landroid/widget/ScrollView;

    move-result-object v3

    new-instance v4, Lcom/crashlytics/android/core/k;

    invoke-direct {v4, v0}, Lcom/crashlytics/android/core/k;-><init>(Lcom/crashlytics/android/core/n$b;)V

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v1}, Lcom/crashlytics/android/core/qa;->v5()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v1}, Lcom/crashlytics/android/core/qa;->Hw()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5, v4}, Landroid/app/AlertDialog$Builder;->setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    iget-boolean v3, p1, Labcd/gA;->Hw:Z

    if-eqz v3, :cond_0

    new-instance v3, Lcom/crashlytics/android/core/l;

    invoke-direct {v3, v0}, Lcom/crashlytics/android/core/l;-><init>(Lcom/crashlytics/android/core/n$b;)V

    invoke-virtual {v1}, Lcom/crashlytics/android/core/qa;->DW()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    :cond_0
    iget-boolean v3, p1, Labcd/gA;->Zo:Z

    if-eqz v3, :cond_1

    new-instance v3, Lcom/crashlytics/android/core/m;

    invoke-direct {v3, p2, v0}, Lcom/crashlytics/android/core/m;-><init>(Lcom/crashlytics/android/core/n$a;Lcom/crashlytics/android/core/n$b;)V

    invoke-virtual {v1}, Lcom/crashlytics/android/core/qa;->j6()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    :cond_1
    new-instance v1, Lcom/crashlytics/android/core/n;

    invoke-direct {v1, v2, v0}, Lcom/crashlytics/android/core/n;-><init>(Landroid/app/AlertDialog$Builder;Lcom/crashlytics/android/core/n$b;)V

    return-object v1
.end method


# virtual methods
.method public DW()Z
    .registers 2

    iget-object v0, p0, Lcom/crashlytics/android/core/n;->j6:Lcom/crashlytics/android/core/n$b;

    invoke-virtual {v0}, Lcom/crashlytics/android/core/n$b;->DW()Z

    move-result v0

    return v0
.end method

.method public FH()V
    .registers 2

    iget-object v0, p0, Lcom/crashlytics/android/core/n;->DW:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void
.end method

.method public j6()V
    .registers 2

    iget-object v0, p0, Lcom/crashlytics/android/core/n;->j6:Lcom/crashlytics/android/core/n$b;

    invoke-virtual {v0}, Lcom/crashlytics/android/core/n$b;->j6()V

    return-void
.end method
