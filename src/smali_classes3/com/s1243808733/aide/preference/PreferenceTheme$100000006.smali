.class Lcom/s1243808733/aide/preference/PreferenceTheme$100000006;
.super Ljava/lang/Object;
.source "PreferenceTheme.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final this$0:Lcom/s1243808733/aide/preference/PreferenceTheme;


# direct methods
.method constructor <init>(Lcom/s1243808733/aide/preference/PreferenceTheme;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/s1243808733/aide/preference/PreferenceTheme$100000006;->this$0:Lcom/s1243808733/aide/preference/PreferenceTheme;

    return-void
.end method

.method static access$0(Lcom/s1243808733/aide/preference/PreferenceTheme$100000006;)Lcom/s1243808733/aide/preference/PreferenceTheme;
    .registers 2

    iget-object v0, p0, Lcom/s1243808733/aide/preference/PreferenceTheme$100000006;->this$0:Lcom/s1243808733/aide/preference/PreferenceTheme;

    return-object v0
.end method


# virtual methods
.method public run()V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 191
    new-instance v0, Lcom/s1243808733/aide/preference/PreferenceTheme$100000006$100000005;

    invoke-direct {v0, p0}, Lcom/s1243808733/aide/preference/PreferenceTheme$100000006$100000005;-><init>(Lcom/s1243808733/aide/preference/PreferenceTheme$100000006;)V

    const/16 v1, 0x1388

    int-to-long v2, v1

    invoke-static {v0, v2, v3}, Lcom/blankj/utilcode/util/ThreadUtils;->runOnUiThreadDelayed(Ljava/lang/Runnable;J)V

    return-void
.end method
