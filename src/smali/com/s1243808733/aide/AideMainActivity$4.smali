.class Lcom/s1243808733/aide/AideMainActivity$4;
.super Ljava/lang/Object;
.source "AideMainActivity.java"

# interfaces
.implements Lcom/blankj/utilcode/util/KeyboardUtils$OnSoftInputChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/s1243808733/aide/AideMainActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final this$0:Lcom/s1243808733/aide/AideMainActivity;


# direct methods
.method constructor <init>(Lcom/s1243808733/aide/AideMainActivity;)V
    .registers 2

    .line 268
    iput-object p1, p0, Lcom/s1243808733/aide/AideMainActivity$4;->this$0:Lcom/s1243808733/aide/AideMainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSoftInputChanged(I)V
    .registers 7

    if-nez p1, :cond_4e

    .line 272
    invoke-static {}, Lcom/s1243808733/aide/util/AIDEUtils;->getMainDrawerLayout()Landroidj/support/v4/widget/DrawerLayout;

    move-result-object p1

    if-eqz p1, :cond_4e

    .line 273
    invoke-static {}, Lcom/s1243808733/aide/util/AIDEUtils;->isDrawerOpen()Z

    move-result p1

    if-eqz p1, :cond_4e

    .line 274
    invoke-static {}, Lcom/s1243808733/aide/util/AIDEUtils;->getAIDEEditorPager()Lcom/aide/ui/AIDEEditorPager;

    move-result-object p1

    if-eqz p1, :cond_4e

    .line 276
    invoke-static {p1}, Lcom/blankj/utilcode/util/ReflectUtils;->reflect(Ljava/lang/Object;)Lcom/blankj/utilcode/util/ReflectUtils;

    move-result-object v0

    const-string v1, "hz"

    invoke-virtual {v0, v1}, Lcom/blankj/utilcode/util/ReflectUtils;->field(Ljava/lang/String;)Lcom/blankj/utilcode/util/ReflectUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/blankj/utilcode/util/ReflectUtils;->get()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/blankj/utilcode/util/ReflectUtils;->reflect(Ljava/lang/Object;)Lcom/blankj/utilcode/util/ReflectUtils;

    move-result-object v0

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    const-string v4, "j6"

    invoke-virtual {v0, v4, v2}, Lcom/blankj/utilcode/util/ReflectUtils;->method(Ljava/lang/String;[Ljava/lang/Object;)Lcom/blankj/utilcode/util/ReflectUtils;

    .line 277
    const-string v0, "com.aide.ui.K"

    invoke-static {v0}, Lcom/blankj/utilcode/util/ReflectUtils;->reflect(Ljava/lang/String;)Lcom/blankj/utilcode/util/ReflectUtils;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v3

    invoke-virtual {v0, v1}, Lcom/blankj/utilcode/util/ReflectUtils;->newInstance([Ljava/lang/Object;)Lcom/blankj/utilcode/util/ReflectUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/blankj/utilcode/util/ReflectUtils;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    const-wide/16 v1, 0x64

    invoke-virtual {p1, v0, v1, v2}, Lcom/aide/ui/AIDEEditorPager;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_4e
    return-void
.end method
