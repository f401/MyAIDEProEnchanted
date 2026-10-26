.class Lcom/s1243808733/aide/dependencies/DependencieDialog$1$1;
.super Ljava/lang/Object;
.source "DependencieDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/s1243808733/aide/dependencies/DependencieDialog$1;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final this$1:Lcom/s1243808733/aide/dependencies/DependencieDialog$1;

.field final val$dialog:Landroid/app/AlertDialog;

.field final val$input:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Lcom/s1243808733/aide/dependencies/DependencieDialog$1;Landroid/widget/EditText;Landroid/app/AlertDialog;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 165
    iput-object p1, p0, Lcom/s1243808733/aide/dependencies/DependencieDialog$1$1;->this$1:Lcom/s1243808733/aide/dependencies/DependencieDialog$1;

    iput-object p2, p0, Lcom/s1243808733/aide/dependencies/DependencieDialog$1$1;->val$input:Landroid/widget/EditText;

    iput-object p3, p0, Lcom/s1243808733/aide/dependencies/DependencieDialog$1$1;->val$dialog:Landroid/app/AlertDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 9

    const/4 v8, 0x1

    const/4 v2, 0x0

    .line 170
    invoke-static {}, Lcom/s1243808733/aide/util/AIDEUtils;->getFileBrowserCurrentDir()Ljava/lang/String;

    move-result-object v1

    .line 172
    const-string v0, "abcd.Vi"

    invoke-static {v0}, Lcom/blankj/utilcode/util/ReflectUtils;->reflect(Ljava/lang/String;)Lcom/blankj/utilcode/util/ReflectUtils;

    move-result-object v3

    .line 173
    const-string v0, "BT"

    new-array v4, v8, [Ljava/lang/Object;

    aput-object v1, v4, v2

    invoke-virtual {v3, v0, v4}, Lcom/blankj/utilcode/util/ReflectUtils;->method(Ljava/lang/String;[Ljava/lang/Object;)Lcom/blankj/utilcode/util/ReflectUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/blankj/utilcode/util/ReflectUtils;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 174
    const-string v0, "v5"

    new-array v4, v8, [Ljava/lang/Object;

    aput-object v1, v4, v2

    invoke-virtual {v3, v0, v4}, Lcom/blankj/utilcode/util/ReflectUtils;->method(Ljava/lang/String;[Ljava/lang/Object;)Lcom/blankj/utilcode/util/ReflectUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/blankj/utilcode/util/ReflectUtils;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 176
    iget-object v1, p0, Lcom/s1243808733/aide/dependencies/DependencieDialog$1$1;->val$input:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "\n"

    invoke-virtual {v1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    move v1, v2

    :goto_0
    if-eqz v3, :cond_2

    .line 178
    array-length v4, v3

    if-ge v1, v4, :cond_2

    .line 179
    aget-object v4, v3, v1

    .line 180
    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 181
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_1

    .line 188
    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 185
    :cond_1
    const-string v5, "abcd.Be"

    invoke-static {v5}, Lcom/blankj/utilcode/util/ReflectUtils;->reflect(Ljava/lang/String;)Lcom/blankj/utilcode/util/ReflectUtils;

    move-result-object v5

    .line 186
    invoke-virtual {v5}, Lcom/blankj/utilcode/util/ReflectUtils;->newInstance()Lcom/blankj/utilcode/util/ReflectUtils;

    move-result-object v5

    .line 187
    const-string v6, "j6"

    new-array v7, v8, [Ljava/lang/Object;

    aput-object v0, v7, v2

    invoke-virtual {v5, v6, v7}, Lcom/blankj/utilcode/util/ReflectUtils;->method(Ljava/lang/String;[Ljava/lang/Object;)Lcom/blankj/utilcode/util/ReflectUtils;

    move-result-object v5

    .line 188
    const-string v6, "Hw"

    new-array v7, v8, [Ljava/lang/Object;

    aput-object v4, v7, v2

    invoke-virtual {v5, v6, v7}, Lcom/blankj/utilcode/util/ReflectUtils;->method(Ljava/lang/String;[Ljava/lang/Object;)Lcom/blankj/utilcode/util/ReflectUtils;

    goto :goto_1

    .line 192
    :cond_2
    const-string v0, "com.aide.ui.U"

    invoke-static {v0}, Lcom/blankj/utilcode/util/ReflectUtils;->reflect(Ljava/lang/String;)Lcom/blankj/utilcode/util/ReflectUtils;

    move-result-object v0

    .line 193
    const-string v1, "vy"

    invoke-virtual {v0, v1}, Lcom/blankj/utilcode/util/ReflectUtils;->method(Ljava/lang/String;)Lcom/blankj/utilcode/util/ReflectUtils;

    move-result-object v0

    .line 194
    const-string v1, "yS"

    invoke-virtual {v0, v1}, Lcom/blankj/utilcode/util/ReflectUtils;->method(Ljava/lang/String;)Lcom/blankj/utilcode/util/ReflectUtils;

    .line 196
    invoke-static {}, Lcom/s1243808733/util/Utils;->isCN()Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "\u5df2\u6dfb\u52a0\u5230\u9879\u76ee"

    :goto_2
    invoke-static {v0}, Lcom/s1243808733/util/Toasty;->success(Ljava/lang/CharSequence;)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 199
    iget-object v0, p0, Lcom/s1243808733/aide/dependencies/DependencieDialog$1$1;->val$dialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    :cond_3
    return-void

    .line 196
    :cond_4
    const-string v0, "Added to project"

    goto :goto_2
.end method
