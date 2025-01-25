.class Lcom/s1243808733/aide/util/CreateClassDialog$DialogView$5;
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

.field final val$ll_more:Landroid/widget/LinearLayout;


# direct methods
.method constructor <init>(Lcom/s1243808733/aide/util/CreateClassDialog$DialogView;Landroid/widget/LinearLayout;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 807
    iput-object p1, p0, Lcom/s1243808733/aide/util/CreateClassDialog$DialogView$5;->this$0:Lcom/s1243808733/aide/util/CreateClassDialog$DialogView;

    iput-object p2, p0, Lcom/s1243808733/aide/util/CreateClassDialog$DialogView$5;->val$ll_more:Landroid/widget/LinearLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .registers 4

    .line 811
    iget-object p1, p0, Lcom/s1243808733/aide/util/CreateClassDialog$DialogView$5;->val$ll_more:Landroid/widget/LinearLayout;

    if-eqz p2, :cond_6

    const/4 v0, 0x0

    goto :goto_8

    :cond_6
    const/16 v0, 0x8

    :goto_8
    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 812
    invoke-static {}, Lcom/s1243808733/util/Utils;->getSp()Landroid/content/SharedPreferences;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string v0, "create_new_class_cb_more"

    invoke-interface {p1, v0, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method
