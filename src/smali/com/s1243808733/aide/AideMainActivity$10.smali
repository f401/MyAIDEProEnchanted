.class Lcom/s1243808733/aide/AideMainActivity$10;
.super Ljava/lang/Object;
.source "AideMainActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/s1243808733/aide/AideMainActivity;->adjutActionBarTitle(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final this$0:Lcom/s1243808733/aide/AideMainActivity;


# direct methods
.method constructor <init>(Lcom/s1243808733/aide/AideMainActivity;)V
    .locals 0

    .line 555
    iput-object p1, p0, Lcom/s1243808733/aide/AideMainActivity$10;->this$0:Lcom/s1243808733/aide/AideMainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5

    .line 559
    invoke-static {}, Lcom/s1243808733/util/Utils;->getSp()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "hideMainActionBarSubTitle"

    invoke-static {}, Lcom/s1243808733/util/Utils;->getSp()Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v3, "hideMainActionBarSubTitle"

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 561
    iget-object v0, p0, Lcom/s1243808733/aide/AideMainActivity$10;->this$0:Lcom/s1243808733/aide/AideMainActivity;

    invoke-static {v0}, Lcom/s1243808733/aide/AideMainActivity;->-$$Nest$msetActionBarTitle(Lcom/s1243808733/aide/AideMainActivity;)V

    return-void
.end method
