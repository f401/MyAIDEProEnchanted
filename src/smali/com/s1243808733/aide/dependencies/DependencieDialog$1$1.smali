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
    .registers 4
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
    .registers 10

    .line 170
    invoke-static {}, Lcom/s1243808733/aide/util/AIDEUtils;->getFileBrowserCurrentDir()Ljava/lang/String;

    move-result-object p1

    .line 172
    const-string v0, "abcd.Vi"

    invoke-static {v0}, Lcom/blankj/utilcode/util/ReflectUtils;->reflect(Ljava/lang/String;)Lcom/blankj/utilcode/util/ReflectUtils;

    move-result-object v0

    .line 173
    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const-string v4, "BT"

    invoke-virtual {v0, v4, v2}, Lcom/blankj/utilcode/util/ReflectUtils;->method(Ljava/lang/String;[Ljava/lang/Object;)Lcom/blankj/utilcode/util/ReflectUtils;

    move-result-object v2

    invoke-virtual {v2}, Lcom/blankj/utilcode/util/ReflectUtils;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_a5

    .line 174
    new-array v2, v1, [Ljava/lang/Object;

    aput-object p1, v2, v3

    const-string p1, "v5"

    invoke-virtual {v0, p1, v2}, Lcom/blankj/utilcode/util/ReflectUtils;->method(Ljava/lang/String;[Ljava/lang/Object;)Lcom/blankj/utilcode/util/ReflectUtils;

    move-result-object p1

    invoke-virtual {p1}, Lcom/blankj/utilcode/util/ReflectUtils;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 176
    iget-object v0, p0, Lcom/s1243808733/aide/dependencies/DependencieDialog$1$1;->val$input:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "\n"

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    :goto_43
    if-eqz v0, :cond_7d

    .line 178
    array-length v4, v0

    if-ge v2, v4, :cond_7d

    .line 179
    aget-object v4, v0, v2

    .line 180
    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_7a

    .line 181
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_5d

    goto :goto_7a

    .line 185
    :cond_5d
    const-string v5, "abcd.Be"

    invoke-static {v5}, Lcom/blankj/utilcode/util/ReflectUtils;->reflect(Ljava/lang/String;)Lcom/blankj/utilcode/util/ReflectUtils;

    move-result-object v5

    .line 186
    invoke-virtual {v5}, Lcom/blankj/utilcode/util/ReflectUtils;->newInstance()Lcom/blankj/utilcode/util/ReflectUtils;

    move-result-object v5

    .line 187
    new-array v6, v1, [Ljava/lang/Object;

    aput-object p1, v6, v3

    const-string v7, "j6"

    invoke-virtual {v5, v7, v6}, Lcom/blankj/utilcode/util/ReflectUtils;->method(Ljava/lang/String;[Ljava/lang/Object;)Lcom/blankj/utilcode/util/ReflectUtils;

    move-result-object v5

    .line 188
    new-array v6, v1, [Ljava/lang/Object;

    aput-object v4, v6, v3

    const-string v4, "Hw"

    invoke-virtual {v5, v4, v6}, Lcom/blankj/utilcode/util/ReflectUtils;->method(Ljava/lang/String;[Ljava/lang/Object;)Lcom/blankj/utilcode/util/ReflectUtils;

    :cond_7a
    :goto_7a
    add-int/lit8 v2, v2, 0x1

    goto :goto_43

    .line 192
    :cond_7d
    const-string p1, "com.aide.ui.U"

    invoke-static {p1}, Lcom/blankj/utilcode/util/ReflectUtils;->reflect(Ljava/lang/String;)Lcom/blankj/utilcode/util/ReflectUtils;

    move-result-object p1

    .line 193
    const-string v0, "vy"

    invoke-virtual {p1, v0}, Lcom/blankj/utilcode/util/ReflectUtils;->method(Ljava/lang/String;)Lcom/blankj/utilcode/util/ReflectUtils;

    move-result-object p1

    .line 194
    const-string v0, "yS"

    invoke-virtual {p1, v0}, Lcom/blankj/utilcode/util/ReflectUtils;->method(Ljava/lang/String;)Lcom/blankj/utilcode/util/ReflectUtils;

    .line 196
    invoke-static {}, Lcom/s1243808733/util/Utils;->isCN()Z

    move-result p1

    if-eqz p1, :cond_97

    const-string p1, "已添加到项目"

    goto :goto_99

    :cond_97
    const-string p1, "Added to project"

    :goto_99
    invoke-static {p1}, Lcom/s1243808733/util/Toasty;->success(Ljava/lang/CharSequence;)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 199
    iget-object p1, p0, Lcom/s1243808733/aide/dependencies/DependencieDialog$1$1;->val$dialog:Landroid/app/AlertDialog;

    invoke-virtual {p1}, Landroid/app/AlertDialog;->dismiss()V

    :cond_a5
    return-void
.end method
