.class public Lcom/aide/ui/AndroidProject;
.super Labcd/gj;
.source "AndroidProject.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 5
    invoke-direct {p0}, Labcd/gj;-><init>()V

    return-void
.end method


# virtual methods
.method public QX(Ljava/lang/String;)Z
    .registers 2

    .line 17
    invoke-super {p0, p1}, Labcd/gj;->QX(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public aM(Ljava/lang/String;)Z
    .registers 3

    .line 10
    invoke-static {p1}, Lio/github/zeroaicy/aide/extend/DistributeEvents;->isCmakeProject(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_f

    .line 11
    invoke-super {p0, p1}, Labcd/gj;->aM(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_d

    goto :goto_f

    :cond_d
    const/4 p1, 0x0

    goto :goto_10

    :cond_f
    :goto_f
    const/4 p1, 0x1

    :goto_10
    return p1
.end method
