.class public Lcom/s1243808733/aide/application/activity/androidr/FragmentThemePreview;
.super Landroid/app/Fragment;
.source "FragmentThemePreview.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 15
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    return-void
.end method

.method private getContentView()Landroid/widget/LinearLayout;
    .registers 7

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
    const/4 v3, -0x1

    const/4 v4, -0x2

    invoke-virtual {v1, v2, v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;II)V

    .line 31
    new-instance v2, Landroid/widget/Button;

    invoke-direct {v2, v0}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    .line 32
    const-string v5, "AlertDialog"

    invoke-virtual {v2, v5}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 33
    new-instance v5, Lcom/s1243808733/aide/application/activity/androidr/FragmentThemePreview$1;

    invoke-direct {v5, p0}, Lcom/s1243808733/aide/application/activity/androidr/FragmentThemePreview$1;-><init>(Lcom/s1243808733/aide/application/activity/androidr/FragmentThemePreview;)V

    invoke-virtual {v2, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 46
    invoke-virtual {v1, v2, v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;II)V

    .line 48
    new-instance v2, Landroid/widget/SeekBar;

    invoke-direct {v2, v0}, Landroid/widget/SeekBar;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v2, v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;II)V

    return-object v1
.end method


# virtual methods
.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 4

    .line 19
    invoke-direct {p0}, Lcom/s1243808733/aide/application/activity/androidr/FragmentThemePreview;->getContentView()Landroid/widget/LinearLayout;

    move-result-object p1

    return-object p1
.end method
