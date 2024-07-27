.class public Lcom/s1243808733/aide/application/activity/androidr/FragmentThemePreview;
.super Landroid/app/Fragment;
.source "FragmentThemePreview.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 51
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    return-void
.end method

.method private getContentView()Landroid/widget/LinearLayout;
    .registers 7

    const/4 v5, -0x1

    const/4 v4, -0x2

    .line 23
    invoke-virtual {p0}, Lcom/s1243808733/aide/application/activity/androidr/FragmentThemePreview;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 24
    new-instance v1, Landroid/widget/LinearLayout;

    invoke-direct {v1, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 25
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 27
    new-instance v2, Landroid/widget/EditText;

    invoke-direct {v2, v0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 28
    const v3, 0x104000f

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setHint(I)V

    .line 29
    invoke-virtual {v1, v2, v5, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;II)V

    .line 31
    new-instance v2, Landroid/widget/Button;

    invoke-direct {v2, v0}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    .line 32
    :try_start_0
    const-string v3, "android.app.AlertDialog"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 33
    new-instance v3, Lcom/s1243808733/aide/application/activity/androidr/FragmentThemePreview$100000000;

    invoke-direct {v3, p0}, Lcom/s1243808733/aide/application/activity/androidr/FragmentThemePreview$100000000;-><init>(Lcom/s1243808733/aide/application/activity/androidr/FragmentThemePreview;)V

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 46
    invoke-virtual {v1, v2, v5, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;II)V

    .line 48
    new-instance v2, Landroid/widget/SeekBar;

    invoke-direct {v2, v0}, Landroid/widget/SeekBar;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v2, v5, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;II)V

    .line 50
    return-object v1

    .line 32
    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/NoClassDefFoundError;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/NoClassDefFoundError;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 5
    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 19
    invoke-direct {p0}, Lcom/s1243808733/aide/application/activity/androidr/FragmentThemePreview;->getContentView()Landroid/widget/LinearLayout;

    move-result-object v0

    return-object v0
.end method
