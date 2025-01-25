.class public Lcom/s1243808733/translate/web/WebTranslateActivity;
.super Ljava/lang/Object;
.source "WebTranslateActivity.java"


# static fields
.field public static final default_api:Ljava/lang/String; = "https://dictweb.translator.qq.com/eduTranslate?sentence=%s&channel=tencent"

.field public static final pref_key:Ljava/lang/String; = "api_web_translation"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getApi()Ljava/lang/String;
    .registers 4

    .line 16
    invoke-static {}, Lcom/s1243808733/util/Utils;->getSp()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 17
    const-string v1, ""

    const-string v2, "api_web_translation"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 18
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_23

    .line 19
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "https://dictweb.translator.qq.com/eduTranslate?sentence=%s&channel=tencent"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_23
    return-object v1
.end method

.method public static translate(Landroid/app/Activity;Ljava/lang/CharSequence;)V
    .registers 5

    .line 26
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, " _ "

    const-string v1, ""

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 27
    const-string v0, "_"

    const-string v1, " "

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 29
    invoke-static {p1}, Lcom/s1243808733/translate/TUtil;->wordSegmentation(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 30
    invoke-static {}, Lcom/s1243808733/translate/web/WebTranslateActivity;->getApi()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/yt/plugin/WebActivity;->smallWindow(Landroid/app/Activity;Ljava/lang/String;)V

    return-void
.end method
