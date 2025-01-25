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
    .registers 2

    int-to-float p1, p1

    mul-float p0, p0, p1

    float-to-int p0, p0

    return p0
.end method

.method private static j6(Landroid/app/Activity;Ljava/lang/String;)Landroid/widget/ScrollView;
    .registers 7

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

    const p1, 0x1030044

    invoke-virtual {v2, p0, p1}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    invoke-virtual {v2, v1, v1, v1, v1}, Landroid/widget/TextView;->setPadding(IIII)V

    const/4 p1, 0x0

    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setFocusable(Z)V

    new-instance p1, Landroid/widget/ScrollView;

    invoke-direct {p1, p0}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    const/16 p0, 0xe

    invoke-static {v0, p0}, Lcom/crashlytics/android/core/n;->j6(FI)I

    move-result p0

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/crashlytics/android/core/n;->j6(FI)I

    move-result v1

    const/16 v3, 0xa

    invoke-static {v0, v3}, Lcom/crashlytics/android/core/n;->j6(FI)I

    move-result v3

    const/16 v4, 0xc

    invoke-static {v0, v4}, Lcom/crashlytics/android/core/n;->j6(FI)I

    move-result v0

    invoke-virtual {p1, p0, v1, v3, v0}, Landroid/widget/ScrollView;->setPadding(IIII)V

    invoke-virtual {p1, v2}, Landroid/widget/ScrollView;->addView(Landroid/view/View;)V

    return-object p1
.end method

.method public static j6(Landroid/app/Activity;Labcd/gA;Lcom/crashlytics/android/core/n$a;)Lcom/crashlytics/android/core/n;
    .registers 8

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

    move-result-object p0

    new-instance v3, Lcom/crashlytics/android/core/k;

    invoke-direct {v3, v0}, Lcom/crashlytics/android/core/k;-><init>(Lcom/crashlytics/android/core/n$b;)V

    invoke-virtual {v2, p0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object p0

    invoke-virtual {v1}, Lcom/crashlytics/android/core/qa;->v5()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p0

    const/4 v4, 0x0

    invoke-virtual {p0, v4}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object p0

    invoke-virtual {v1}, Lcom/crashlytics/android/core/qa;->Hw()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4, v3}, Landroid/app/AlertDialog$Builder;->setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    iget-boolean p0, p1, Labcd/gA;->Hw:Z

    if-eqz p0, :cond_45

    new-instance p0, Lcom/crashlytics/android/core/l;

    invoke-direct {p0, v0}, Lcom/crashlytics/android/core/l;-><init>(Lcom/crashlytics/android/core/n$b;)V

    invoke-virtual {v1}, Lcom/crashlytics/android/core/qa;->DW()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, p0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    :cond_45
    iget-boolean p0, p1, Labcd/gA;->Zo:Z

    if-eqz p0, :cond_55

    new-instance p0, Lcom/crashlytics/android/core/m;

    invoke-direct {p0, p2, v0}, Lcom/crashlytics/android/core/m;-><init>(Lcom/crashlytics/android/core/n$a;Lcom/crashlytics/android/core/n$b;)V

    invoke-virtual {v1}, Lcom/crashlytics/android/core/qa;->j6()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    :cond_55
    new-instance p0, Lcom/crashlytics/android/core/n;

    invoke-direct {p0, v2, v0}, Lcom/crashlytics/android/core/n;-><init>(Landroid/app/AlertDialog$Builder;Lcom/crashlytics/android/core/n$b;)V

    return-object p0
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
