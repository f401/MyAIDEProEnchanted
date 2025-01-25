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
    .registers 3
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
    .registers 4

    .line 84
    invoke-static {}, Lcom/s1243808733/util/Utils;->getSp()Landroid/content/SharedPreferences;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    iget-object p2, p0, Lcom/s1243808733/aide/util/QuickKey$2;->val$key:Ljava/lang/String;

    iget-object v0, p0, Lcom/s1243808733/aide/util/QuickKey$2;->val$edit:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, p2, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 85
    invoke-static {}, Lcom/s1243808733/aide/util/AIDEUtils;->initQuickKey()V

    return-void
.end method
