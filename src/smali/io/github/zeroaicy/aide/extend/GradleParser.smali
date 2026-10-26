.class public Lio/github/zeroaicy/aide/extend/GradleParser;
.super Labcd/Be;
.source "GradleParser.java"


# instance fields
.field be:Labcd/Be;


# direct methods
.method public constructor <init>(Labcd/Be;)V
    .locals 0

    .line 6
    invoke-direct {p0}, Labcd/Be;-><init>()V

    .line 7
    iput-object p1, p0, Lio/github/zeroaicy/aide/extend/GradleParser;->be:Labcd/Be;

    return-void
.end method


# virtual methods
.method public bridge j6(Ljava/lang/String;)Labcd/BaseProjectConfig;
    .locals 1

    invoke-virtual {p0, p1}, Lio/github/zeroaicy/aide/extend/GradleParser;->j6(Ljava/lang/String;)Labcd/Be;

    move-result-object v0

    return-object v0
.end method

.method public j6(Ljava/lang/String;)Labcd/Be;
    .locals 2
    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 13
    invoke-super {p0, p1}, Labcd/BaseProjectConfig;->j6(Ljava/lang/String;)Labcd/BaseProjectConfig;

    move-result-object v0

    check-cast v0, Labcd/Be;

    .line 14
    instance-of v1, v0, Lio/github/zeroaicy/aide/extend/GradleParser;

    if-eqz v1, :cond_0

    .line 18
    :goto_0
    return-object v0

    .line 17
    :cond_0
    new-instance v1, Lio/github/zeroaicy/aide/extend/GradleParser;

    invoke-direct {v1, v0}, Lio/github/zeroaicy/aide/extend/GradleParser;-><init>(Labcd/Be;)V

    goto :goto_0
.end method
