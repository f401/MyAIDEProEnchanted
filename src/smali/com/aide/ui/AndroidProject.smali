.class public Lcom/aide/ui/AndroidProject;
.super Labcd/gj;
.source "AndroidProject.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Labcd/gj;-><init>()V

    return-void
.end method


# virtual methods
.method public QX(Ljava/lang/String;)Z
    .locals 1

    .line 17
    invoke-super {p0, p1}, Labcd/gj;->QX(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public aM(Ljava/lang/String;)Z
    .locals 1

    .line 10
    invoke-static {p1}, Lio/github/zeroaicy/aide/extend/DistributeEvents;->isCmakeProject(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 11
    invoke-super {p0, p1}, Labcd/gj;->aM(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
