.class Lcom/s1243808733/aide/util/CreateClassDialog$DialogView$100000006;
.super Ljava/lang/Object;
.source "CreateClassDialog.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field private final this$0:Lcom/s1243808733/aide/util/CreateClassDialog$DialogView;

.field private final val$ll_more:Landroid/widget/LinearLayout;


# direct methods
.method constructor <init>(Lcom/s1243808733/aide/util/CreateClassDialog$DialogView;Landroid/widget/LinearLayout;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/s1243808733/aide/util/CreateClassDialog$DialogView$100000006;->this$0:Lcom/s1243808733/aide/util/CreateClassDialog$DialogView;

    iput-object p2, p0, Lcom/s1243808733/aide/util/CreateClassDialog$DialogView$100000006;->val$ll_more:Landroid/widget/LinearLayout;

    return-void
.end method

.method static access$0(Lcom/s1243808733/aide/util/CreateClassDialog$DialogView$100000006;)Lcom/s1243808733/aide/util/CreateClassDialog$DialogView;
    .registers 2

    iget-object v0, p0, Lcom/s1243808733/aide/util/CreateClassDialog$DialogView$100000006;->this$0:Lcom/s1243808733/aide/util/CreateClassDialog$DialogView;

    return-object v0
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/CompoundButton;",
            "Z)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 811
    iget-object v1, p0, Lcom/s1243808733/aide/util/CreateClassDialog$DialogView$100000006;->val$ll_more:Landroid/widget/LinearLayout;

    if-eqz p2, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 812
    invoke-static {}, Lcom/s1243808733/util/Utils;->getSp()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "create_new_class_cb_more"

    invoke-interface {v0, v1, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void

    .line 811
    :cond_0
    const/16 v0, 0x8

    goto :goto_0
.end method
