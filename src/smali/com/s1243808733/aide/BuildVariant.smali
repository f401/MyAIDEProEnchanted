.class public Lcom/s1243808733/aide/BuildVariant;
.super Ljava/lang/Object;
.source "BuildVariant.java"


# static fields
.field public static DEBUG:I = 0x1

.field public static RELEASE:I = 0x2

.field public static UNKNOWN:I


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getBuildVariant(Ljava/io/File;)I
    .registers 3

    if-nez p0, :cond_5

    .line 14
    sget p0, Lcom/s1243808733/aide/BuildVariant;->UNKNOWN:I

    return p0

    .line 15
    :cond_5
    const-string v0, "ProjectService"

    invoke-static {v0}, Lcom/s1243808733/util/Utils;->getSp(Ljava/lang/String;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "BuildVariant_"

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v1, ""

    invoke-interface {v0, p0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 17
    const-string v0, "release"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_26

    .line 18
    sget p0, Lcom/s1243808733/aide/BuildVariant;->RELEASE:I

    return p0

    .line 19
    :cond_26
    const-string v0, "debug"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_31

    .line 20
    sget p0, Lcom/s1243808733/aide/BuildVariant;->DEBUG:I

    return p0

    .line 28
    :cond_31
    sget p0, Lcom/s1243808733/aide/BuildVariant;->UNKNOWN:I

    return p0
.end method
