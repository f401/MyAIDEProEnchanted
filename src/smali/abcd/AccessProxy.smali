.class public Labcd/AccessProxy;
.super Ljava/lang/Object;
.source "AccessProxy.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isAndroidNdkProject(Ljava/lang/String;)Z
    .registers 1

    .line 8
    invoke-static {p0}, Labcd/ProjectFilesUtil;->containsNDKFiles(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static isGradle(Ljava/lang/String;)Z
    .registers 1

    .line 5
    invoke-static {p0}, Labcd/ProjectFilesUtil;->isGradleProject(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method
