.class public Lcom/s1243808733/util/CrashUtils$CrashActiviy;
.super Landroid/app/Activity;
.source "CrashUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/s1243808733/util/CrashUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CrashActiviy"
.end annotation


# instance fields
.field private log:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 224
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method static synthetic access$1000008(Lcom/s1243808733/util/CrashUtils$CrashActiviy;)V
    .registers 1

    invoke-direct {p0}, Lcom/s1243808733/util/CrashUtils$CrashActiviy;->reset()V

    return-void
.end method

.method static synthetic access$L1000005(Lcom/s1243808733/util/CrashUtils$CrashActiviy;)Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/s1243808733/util/CrashUtils$CrashActiviy;->log:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$S1000005(Lcom/s1243808733/util/CrashUtils$CrashActiviy;Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/s1243808733/util/CrashUtils$CrashActiviy;->log:Ljava/lang/String;

    return-void
.end method

.method private reset()V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 216
    invoke-virtual {p0}, Lcom/s1243808733/util/CrashUtils$CrashActiviy;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/s1243808733/util/CrashUtils$CrashActiviy;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 218
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 219
    invoke-virtual {p0, v0}, Lcom/s1243808733/util/CrashUtils$CrashActiviy;->startActivity(Landroid/content/Intent;)V

    .line 220
    invoke-virtual {p0}, Lcom/s1243808733/util/CrashUtils$CrashActiviy;->finish()V

    .line 222
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {v0}, Landroid/os/Process;->killProcess(I)V

    .line 223
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/System;->exit(I)V

    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 188
    invoke-direct {p0}, Lcom/s1243808733/util/CrashUtils$CrashActiviy;->reset()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    const/4 v4, 0x1

    const/4 v3, -0x1

    .line 162
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 163
    const v0, 0x1030128

    invoke-virtual {p0, v0}, Lcom/s1243808733/util/CrashUtils$CrashActiviy;->setTheme(I)V

    .line 164
    invoke-virtual {p0}, Lcom/s1243808733/util/CrashUtils$CrashActiviy;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    invoke-static {}, Lcom/s1243808733/util/Utils;->isCN()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "\u8f6f\u4ef6\u5d29\u6e83"

    :goto_0
    invoke-virtual {v1, v0}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 166
    new-instance v0, Landroid/widget/ScrollView;

    invoke-direct {v0, p0}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    .line 167
    new-instance v1, Landroid/widget/HorizontalScrollView;

    invoke-direct {v1, p0}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;)V

    .line 168
    new-instance v2, Landroid/widget/TextView;

    invoke-direct {v2, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 170
    invoke-virtual {v1, v2}, Landroid/widget/HorizontalScrollView;->addView(Landroid/view/View;)V

    .line 171
    invoke-virtual {v0, v1, v3, v3}, Landroid/widget/ScrollView;->addView(Landroid/view/View;II)V

    .line 173
    invoke-virtual {p0, v0}, Lcom/s1243808733/util/CrashUtils$CrashActiviy;->setContentView(Landroid/view/View;)V

    .line 175
    invoke-virtual {p0}, Lcom/s1243808733/util/CrashUtils$CrashActiviy;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v3, "crashInfo"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/s1243808733/util/CrashUtils$CrashActiviy;->log:Ljava/lang/String;

    .line 176
    iget-object v1, p0, Lcom/s1243808733/util/CrashUtils$CrashActiviy;->log:Ljava/lang/String;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 177
    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setTextIsSelectable(Z)V

    .line 179
    const/16 v1, 0x10

    int-to-float v1, v1

    invoke-static {v1}, Lcom/s1243808733/util/Utils;->dp2px(F)I

    move-result v1

    .line 180
    invoke-virtual {v2, v1, v1, v1, v1}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 182
    invoke-virtual {v0, v4}, Landroid/widget/ScrollView;->setFillViewport(Z)V

    return-void

    .line 164
    :cond_0
    const-string v0, "App crash"

    goto :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .registers 5
    .annotation runtime Ljava/lang/Override;
    .end annotation

    const/4 v2, 0x1

    .line 193
    const v0, 0x1040001

    invoke-interface {p1, v0}, Landroid/view/Menu;->add(I)Landroid/view/MenuItem;

    move-result-object v0

    new-instance v1, Lcom/s1243808733/util/CrashUtils$CrashActiviy$100000001;

    invoke-direct {v1, p0}, Lcom/s1243808733/util/CrashUtils$CrashActiviy$100000001;-><init>(Lcom/s1243808733/util/CrashUtils$CrashActiviy;)V

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 202
    invoke-static {}, Lcom/s1243808733/util/Utils;->isCN()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "\u91cd\u542f"

    :goto_0
    invoke-interface {p1, v0}, Landroid/view/Menu;->add(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    new-instance v1, Lcom/s1243808733/util/CrashUtils$CrashActiviy$100000002;

    invoke-direct {v1, p0}, Lcom/s1243808733/util/CrashUtils$CrashActiviy$100000002;-><init>(Lcom/s1243808733/util/CrashUtils$CrashActiviy;)V

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 212
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0

    .line 202
    :cond_0
    const-string v0, "Restart"

    goto :goto_0
.end method
