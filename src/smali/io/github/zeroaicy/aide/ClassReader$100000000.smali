.class Lio/github/zeroaicy/aide/ClassReader$100000000;
.super Ljava/lang/Object;
.source "ClassReader.java"

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/SharedPreferences;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 110
    invoke-static {}, Lio/github/zeroaicy/aide/ClassReader;->access$L1000010()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-static {v0}, Lio/github/zeroaicy/aide/ClassReader;->access$S1000008(Z)V

    .line 112
    invoke-static {}, Lio/github/zeroaicy/aide/ClassReader;->access$L1000011()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-static {v0}, Lio/github/zeroaicy/aide/ClassReader;->access$S1000009(Z)V

    .line 114
    const-string v0, "ZeroAicyClassReader"

    new-instance v1, Ljava/lang/StringBuffer;

    const-string v2, "useReaderClassFromZeroAicy\u6539\u53d8\u4e3a: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lio/github/zeroaicy/aide/ClassReader;->access$L1000008()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lio/github/zeroaicy/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    const-string v0, "ZeroAicyClassReader"

    new-instance v1, Ljava/lang/StringBuffer;

    const-string v2, "disableDefaultMethod\u6539\u53d8\u4e3a: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lio/github/zeroaicy/aide/ClassReader;->access$L1000009()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lio/github/zeroaicy/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
