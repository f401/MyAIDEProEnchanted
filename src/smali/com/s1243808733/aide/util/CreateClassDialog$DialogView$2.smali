.class Lcom/s1243808733/aide/util/CreateClassDialog$DialogView$2;
.super Ljava/lang/Object;
.source "CreateClassDialog.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/s1243808733/aide/util/CreateClassDialog$DialogView;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final this$0:Lcom/s1243808733/aide/util/CreateClassDialog$DialogView;


# direct methods
.method constructor <init>(Lcom/s1243808733/aide/util/CreateClassDialog$DialogView;)V
    .locals 0

    .line 737
    iput-object p1, p0, Lcom/s1243808733/aide/util/CreateClassDialog$DialogView$2;->this$0:Lcom/s1243808733/aide/util/CreateClassDialog$DialogView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2

    .line 741
    iget-object v0, p0, Lcom/s1243808733/aide/util/CreateClassDialog$DialogView$2;->this$0:Lcom/s1243808733/aide/util/CreateClassDialog$DialogView;

    invoke-static {v0}, Lcom/s1243808733/aide/util/CreateClassDialog$DialogView;->-$$Nest$fgetlayoutNamecontainer(Lcom/s1243808733/aide/util/CreateClassDialog$DialogView;)Landroid/widget/LinearLayout;

    move-result-object v1

    if-eqz p2, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 743
    invoke-static {}, Lcom/s1243808733/util/Utils;->getSp()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "create_new_class_cb_addlayout"

    invoke-interface {v0, v1, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void

    .line 741
    :cond_0
    const/16 v0, 0x8

    goto :goto_0
.end method
