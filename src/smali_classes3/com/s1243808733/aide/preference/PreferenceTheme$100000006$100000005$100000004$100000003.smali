.class Lcom/s1243808733/aide/preference/PreferenceTheme$100000006$100000005$100000004$100000003;
.super Ljava/lang/Object;
.source "PreferenceTheme.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final this$0:Lcom/s1243808733/aide/preference/PreferenceTheme$100000006$100000005$100000004;


# direct methods
.method constructor <init>(Lcom/s1243808733/aide/preference/PreferenceTheme$100000006$100000005$100000004;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/s1243808733/aide/preference/PreferenceTheme$100000006$100000005$100000004$100000003;->this$0:Lcom/s1243808733/aide/preference/PreferenceTheme$100000006$100000005$100000004;

    return-void
.end method

.method static access$0(Lcom/s1243808733/aide/preference/PreferenceTheme$100000006$100000005$100000004$100000003;)Lcom/s1243808733/aide/preference/PreferenceTheme$100000006$100000005$100000004;
    .registers 2

    iget-object v0, p0, Lcom/s1243808733/aide/preference/PreferenceTheme$100000006$100000005$100000004$100000003;->this$0:Lcom/s1243808733/aide/preference/PreferenceTheme$100000006$100000005$100000004;

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

    .line 208
    const/16 v0, 0xfa

    int-to-long v0, v0

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method
