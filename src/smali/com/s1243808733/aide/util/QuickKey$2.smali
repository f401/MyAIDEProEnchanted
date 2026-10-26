.class Lcom/s1243808733/aide/util/QuickKey$2;
.super Ljava/lang/Object;
.source "QuickKey.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/s1243808733/aide/util/QuickKey;->showModifyKeyDialog(Landroid/app/Activity;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final val$edit:Landroid/widget/EditText;

.field final val$key:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Landroid/widget/EditText;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 80
    iput-object p1, p0, Lcom/s1243808733/aide/util/QuickKey$2;->val$key:Ljava/lang/String;

    iput-object p2, p0, Lcom/s1243808733/aide/util/QuickKey$2;->val$edit:Landroid/widget/EditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    .line 84
    invoke-static {}, Lcom/s1243808733/util/Utils;->getSp()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iget-object v1, p0, Lcom/s1243808733/aide/util/QuickKey$2;->val$key:Ljava/lang/String;

    iget-object v2, p0, Lcom/s1243808733/aide/util/QuickKey$2;->val$edit:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 85
    invoke-static {}, Lcom/s1243808733/aide/util/AIDEUtils;->initQuickKey()V

    return-void
.end method
