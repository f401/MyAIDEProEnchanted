.class Lcom/s1243808733/aide/application/activity/androidr/FragmentThemePreview$1;
.super Ljava/lang/Object;
.source "FragmentThemePreview.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/s1243808733/aide/application/activity/androidr/FragmentThemePreview;->getContentView()Landroid/widget/LinearLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final this$0:Lcom/s1243808733/aide/application/activity/androidr/FragmentThemePreview;


# direct methods
.method constructor <init>(Lcom/s1243808733/aide/application/activity/androidr/FragmentThemePreview;)V
    .locals 0

    .line 33
    iput-object p1, p0, Lcom/s1243808733/aide/application/activity/androidr/FragmentThemePreview$1;->this$0:Lcom/s1243808733/aide/application/activity/androidr/FragmentThemePreview;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    const/4 v2, 0x0

    .line 37
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/s1243808733/aide/application/activity/androidr/FragmentThemePreview$1;->this$0:Lcom/s1243808733/aide/application/activity/androidr/FragmentThemePreview;

    invoke-virtual {v1}, Lcom/s1243808733/aide/application/activity/androidr/FragmentThemePreview;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    check-cast p1, Landroid/widget/Button;

    .line 38
    invoke-virtual {p1}, Landroid/widget/Button;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 39
    const-class v1, Landroid/app/AlertDialog;

    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 40
    const v1, 0x104000a

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 41
    const/high16 v1, 0x1040000

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 42
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 43
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    return-void
.end method
