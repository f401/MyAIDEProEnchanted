.class Lcom/s1243808733/aide/preference/PreferenceTheme$100000006$100000005$100000004;
.super Ljava/lang/Object;
.source "PreferenceTheme.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final this$0:Lcom/s1243808733/aide/preference/PreferenceTheme$100000006$100000005;


# direct methods
.method constructor <init>(Lcom/s1243808733/aide/preference/PreferenceTheme$100000006$100000005;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/s1243808733/aide/preference/PreferenceTheme$100000006$100000005$100000004;->this$0:Lcom/s1243808733/aide/preference/PreferenceTheme$100000006$100000005;

    return-void
.end method

.method static access$0(Lcom/s1243808733/aide/preference/PreferenceTheme$100000006$100000005$100000004;)Lcom/s1243808733/aide/preference/PreferenceTheme$100000006$100000005;
    .registers 2

    iget-object v0, p0, Lcom/s1243808733/aide/preference/PreferenceTheme$100000006$100000005$100000004;->this$0:Lcom/s1243808733/aide/preference/PreferenceTheme$100000006$100000005;

    return-object v0
.end method


# virtual methods
.method public run()V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 203
    :goto_0
    invoke-static {}, Lorg/xutils/x;->task()Lorg/xutils/common/TaskController;

    move-result-object v0

    new-instance v1, Lcom/s1243808733/aide/preference/PreferenceTheme$100000006$100000005$100000004$100000003;

    invoke-direct {v1, p0}, Lcom/s1243808733/aide/preference/PreferenceTheme$100000006$100000005$100000004$100000003;-><init>(Lcom/s1243808733/aide/preference/PreferenceTheme$100000006$100000005$100000004;)V

    invoke-interface {v0, v1}, Lorg/xutils/common/TaskController;->post(Ljava/lang/Runnable;)V

    .line 214
    :try_start_0
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    const/16 v1, 0x15b3

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    int-to-long v0, v0

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0
.end method
