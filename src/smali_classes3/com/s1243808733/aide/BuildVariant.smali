.class public Lcom/s1243808733/aide/BuildVariant;
.super Ljava/lang/Object;
.source "BuildVariant.java"


# static fields
.field public static DEBUG:I

.field public static RELEASE:I

.field public static UNKNOWN:I


# direct methods
.method static final constructor <clinit>()V
    .registers 1

    const/4 v0, 0x1

    sput v0, Lcom/s1243808733/aide/BuildVariant;->DEBUG:I

    const/4 v0, 0x2

    sput v0, Lcom/s1243808733/aide/BuildVariant;->RELEASE:I

    const/4 v0, 0x0

    sput v0, Lcom/s1243808733/aide/BuildVariant;->UNKNOWN:I

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getBuildVariant(Ljava/io/File;)I
    .registers 4

    .line 14
    if-nez p0, :cond_0

    sget v0, Lcom/s1243808733/aide/BuildVariant;->UNKNOWN:I

    .line 28
    :goto_0
    return v0

    .line 15
    :cond_0
    const-string v0, "ProjectService"

    invoke-static {v0}, Lcom/s1243808733/util/Utils;->getSp(Ljava/lang/String;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "BuildVariant_"

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 17
    const-string v1, "release"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 18
    sget v0, Lcom/s1243808733/aide/BuildVariant;->RELEASE:I

    goto :goto_0

    .line 19
    :cond_1
    const-string v1, "debug"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 20
    sget v0, Lcom/s1243808733/aide/BuildVariant;->DEBUG:I

    goto :goto_0

    .line 28
    :cond_2
    sget v0, Lcom/s1243808733/aide/BuildVariant;->UNKNOWN:I

    goto :goto_0
.end method
