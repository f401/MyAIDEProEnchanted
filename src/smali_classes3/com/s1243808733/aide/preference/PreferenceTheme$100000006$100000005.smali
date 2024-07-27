.class Lcom/s1243808733/aide/preference/PreferenceTheme$100000006$100000005;
.super Ljava/lang/Object;
.source "PreferenceTheme.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final this$0:Lcom/s1243808733/aide/preference/PreferenceTheme$100000006;


# direct methods
.method constructor <init>(Lcom/s1243808733/aide/preference/PreferenceTheme$100000006;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/s1243808733/aide/preference/PreferenceTheme$100000006$100000005;->this$0:Lcom/s1243808733/aide/preference/PreferenceTheme$100000006;

    return-void
.end method

.method static access$0(Lcom/s1243808733/aide/preference/PreferenceTheme$100000006$100000005;)Lcom/s1243808733/aide/preference/PreferenceTheme$100000006;
    .registers 2

    iget-object v0, p0, Lcom/s1243808733/aide/preference/PreferenceTheme$100000006$100000005;->this$0:Lcom/s1243808733/aide/preference/PreferenceTheme$100000006;

    return-object v0
.end method


# virtual methods
.method public run()V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 195
    const-string v0, "niubi"

    invoke-static {v0}, Lcom/blankj/utilcode/util/CacheMemoryStaticUtils;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    .line 196
    invoke-static {}, Lcom/s1243808733/util/Utils;->getSp()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "niubi"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 197
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/s1243808733/aide/preference/PreferenceTheme$100000006$100000005$100000004;

    invoke-direct {v1, p0}, Lcom/s1243808733/aide/preference/PreferenceTheme$100000006$100000005$100000004;-><init>(Lcom/s1243808733/aide/preference/PreferenceTheme$100000006$100000005;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 222
    :goto_0
    return-void

    :cond_0
    invoke-static {}, Lcom/s1243808733/util/Utils;->getSp()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "niubi"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0
.end method
