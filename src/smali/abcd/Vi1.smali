.class public Labcd/Vi1;
.super Ljava/lang/Object;


# direct methods
.method public static BT(Ljava/lang/String;)Z
    .registers 2

    invoke-static {p0}, Labcd/ProjectFilesUtil;->isGradleProject(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
