.class Lcom/s1243808733/aide/util/AIDEUtils$100000000;
.super Ljava/lang/Object;
.source "AIDEUtils.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final val$a:Ljava/lang/Object;

.field private final val$msg:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/Object;Ljava/lang/String;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/s1243808733/aide/util/AIDEUtils$100000000;->val$a:Ljava/lang/Object;

    iput-object p2, p0, Lcom/s1243808733/aide/util/AIDEUtils$100000000;->val$msg:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public run()V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    const/4 v6, 0x0

    .line 165
    iget-object v0, p0, Lcom/s1243808733/aide/util/AIDEUtils$100000000;->val$a:Ljava/lang/Object;

    invoke-static {v0}, Lcom/blankj/utilcode/util/ReflectUtils;->reflect(Ljava/lang/Object;)Lcom/blankj/utilcode/util/ReflectUtils;

    move-result-object v0

    const-string v1, "a"

    invoke-virtual {v0, v1}, Lcom/blankj/utilcode/util/ReflectUtils;->field(Ljava/lang/String;)Lcom/blankj/utilcode/util/ReflectUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/blankj/utilcode/util/ReflectUtils;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/aide/ui/build/android/B;

    .line 167
    const-string v1, "com.aide.ui.build.android.fb"

    invoke-static {v1}, Lcom/blankj/utilcode/util/ReflectUtils;->reflect(Ljava/lang/String;)Lcom/blankj/utilcode/util/ReflectUtils;

    move-result-object v1

    const-string v2, "j6"

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v0, v3, v6

    const/4 v0, 0x1

    iget-object v4, p0, Lcom/s1243808733/aide/util/AIDEUtils$100000000;->val$msg:Ljava/lang/String;

    aput-object v4, v3, v0

    const/4 v0, 0x2

    new-instance v4, Ljava/lang/Integer;

    const/16 v5, 0x32

    invoke-direct {v4, v5}, Ljava/lang/Integer;-><init>(I)V

    aput-object v4, v3, v0

    const/4 v0, 0x3

    new-instance v4, Ljava/lang/Boolean;

    invoke-direct {v4, v6}, Ljava/lang/Boolean;-><init>(Z)V

    aput-object v4, v3, v0

    invoke-virtual {v1, v2, v3}, Lcom/blankj/utilcode/util/ReflectUtils;->method(Ljava/lang/String;[Ljava/lang/Object;)Lcom/blankj/utilcode/util/ReflectUtils;

    return-void
.end method
