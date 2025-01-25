.class public Labcd/Vi1;
.super Ljava/lang/Object;


# direct methods
.method public static BT(Ljava/lang/String;)Z
    .registers 1

    invoke-static {p0}, Labcd/ProjectFilesUtil;->isGradleProject(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method
