.class Lcom/s1243808733/aide/util/AIDEUtils$1;
.super Ljava/lang/Object;
.source "AIDEUtils.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/s1243808733/aide/util/AIDEUtils;->updateBuild(Ljava/lang/Object;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final val$a:Ljava/lang/Object;

.field final val$msg:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 162
    iput-object p1, p0, Lcom/s1243808733/aide/util/AIDEUtils$1;->val$a:Ljava/lang/Object;

    iput-object p2, p0, Lcom/s1243808733/aide/util/AIDEUtils$1;->val$msg:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    const/4 v5, 0x0

    .line 166
    iget-object v0, p0, Lcom/s1243808733/aide/util/AIDEUtils$1;->val$a:Ljava/lang/Object;

    invoke-static {v0}, Lcom/blankj/utilcode/util/ReflectUtils;->reflect(Ljava/lang/Object;)Lcom/blankj/utilcode/util/ReflectUtils;

    move-result-object v0

    const-string v1, "a"

    invoke-virtual {v0, v1}, Lcom/blankj/utilcode/util/ReflectUtils;->field(Ljava/lang/String;)Lcom/blankj/utilcode/util/ReflectUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/blankj/utilcode/util/ReflectUtils;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/aide/ui/build/android/B;

    .line 168
    const-string v1, "com.aide.ui.build.android.fb"

    invoke-static {v1}, Lcom/blankj/utilcode/util/ReflectUtils;->reflect(Ljava/lang/String;)Lcom/blankj/utilcode/util/ReflectUtils;

    move-result-object v1

    iget-object v2, p0, Lcom/s1243808733/aide/util/AIDEUtils$1;->val$msg:Ljava/lang/String;

    .line 169
    const-string v3, "j6"

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v0, v4, v5

    const/4 v0, 0x1

    aput-object v2, v4, v0

    const/4 v0, 0x2

    const/16 v2, 0x32

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v4, v0

    const/4 v0, 0x3

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v4, v0

    invoke-virtual {v1, v3, v4}, Lcom/blankj/utilcode/util/ReflectUtils;->method(Ljava/lang/String;[Ljava/lang/Object;)Lcom/blankj/utilcode/util/ReflectUtils;

    return-void
.end method
