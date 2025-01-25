.class public Lio/github/zeroaicy/aide/extend/GradleParser;
.super Labcd/Be;
.source "GradleParser.java"


# instance fields
.field be:Labcd/Be;


# direct methods
.method public constructor <init>(Labcd/Be;)V
    .registers 2

    .line 6
    invoke-direct {p0}, Labcd/Be;-><init>()V

    .line 7
    iput-object p1, p0, Lio/github/zeroaicy/aide/extend/GradleParser;->be:Labcd/Be;

    return-void
.end method


# virtual methods
.method public bridge j6(Ljava/lang/String;)Labcd/BaseProjectConfig;
    .registers 2

    invoke-virtual {p0, p1}, Lio/github/zeroaicy/aide/extend/GradleParser;->j6(Ljava/lang/String;)Labcd/Be;

    move-result-object p1

    return-object p1
.end method

.method public j6(Ljava/lang/String;)Labcd/Be;
    .registers 3
    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 13
    invoke-super {p0, p1}, Labcd/BaseProjectConfig;->j6(Ljava/lang/String;)Labcd/BaseProjectConfig;

    move-result-object p1

    check-cast p1, Labcd/Be;

    .line 14
    instance-of v0, p1, Lio/github/zeroaicy/aide/extend/GradleParser;

    if-eqz v0, :cond_b

    .line 15
    return-object p1

    .line 17
    :cond_b
    new-instance v0, Lio/github/zeroaicy/aide/extend/GradleParser;

    invoke-direct {v0, p1}, Lio/github/zeroaicy/aide/extend/GradleParser;-><init>(Labcd/Be;)V

    .line 18
    return-object p1
.end method
