.class Lio/github/zeroaicy/aide/ClassReader$100000000;
.super Ljava/lang/Object;
.source "ClassReader.java"

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .registers 4
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

    move-result-object p2

    const/4 v0, 0x1

    invoke-interface {p1, p2, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p2

    invoke-static {p2}, Lio/github/zeroaicy/aide/ClassReader;->access$S1000008(Z)V

    .line 112
    invoke-static {}, Lio/github/zeroaicy/aide/ClassReader;->access$L1000011()Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x0

    invoke-interface {p1, p2, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    invoke-static {p1}, Lio/github/zeroaicy/aide/ClassReader;->access$S1000009(Z)V

    .line 114
    new-instance p1, Ljava/lang/StringBuffer;

    const-string p2, "useReaderClassFromZeroAicy改变为: "

    invoke-direct {p1, p2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lio/github/zeroaicy/aide/ClassReader;->access$L1000008()Z

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "ZeroAicyClassReader"

    invoke-static {p2, p1}, Lio/github/zeroaicy/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    new-instance p1, Ljava/lang/StringBuffer;

    const-string v0, "disableDefaultMethod改变为: "

    invoke-direct {p1, v0}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lio/github/zeroaicy/aide/ClassReader;->access$L1000009()Z

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lio/github/zeroaicy/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
