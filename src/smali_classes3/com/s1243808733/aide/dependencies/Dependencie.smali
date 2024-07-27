.class public Lcom/s1243808733/aide/dependencies/Dependencie;
.super Ljava/lang/Object;
.source "Dependencie.java"


# instance fields
.field private androidx:Z

.field private dependencies:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 2

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object p1, p0, Lcom/s1243808733/aide/dependencies/Dependencie;->dependencies:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Z)V
    .registers 3

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    iput-object p1, p0, Lcom/s1243808733/aide/dependencies/Dependencie;->dependencies:Ljava/lang/String;

    .line 10
    iput-boolean p2, p0, Lcom/s1243808733/aide/dependencies/Dependencie;->androidx:Z

    return-void
.end method


# virtual methods
.method public getDependencies()Ljava/lang/String;
    .registers 2

    .line 40
    iget-object v0, p0, Lcom/s1243808733/aide/dependencies/Dependencie;->dependencies:Ljava/lang/String;

    return-object v0
.end method

.method getName()Ljava/lang/String;
    .registers 2

    .line 32
    iget-object v0, p0, Lcom/s1243808733/aide/dependencies/Dependencie;->dependencies:Ljava/lang/String;

    return-object v0
.end method

.method public isAndroidx()Z
    .registers 2

    .line 22
    iget-boolean v0, p0, Lcom/s1243808733/aide/dependencies/Dependencie;->androidx:Z

    return v0
.end method

.method public setAndroidx(Z)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)V"
        }
    .end annotation

    .line 18
    iput-boolean p1, p0, Lcom/s1243808733/aide/dependencies/Dependencie;->androidx:Z

    return-void
.end method

.method public setDependencies(Ljava/lang/String;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 36
    iput-object p1, p0, Lcom/s1243808733/aide/dependencies/Dependencie;->dependencies:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 4
    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 45
    new-instance v1, Ljava/lang/StringBuffer;

    iget-object v0, p0, Lcom/s1243808733/aide/dependencies/Dependencie;->dependencies:Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 46
    const-string v0, ":"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 47
    iget-boolean v0, p0, Lcom/s1243808733/aide/dependencies/Dependencie;->androidx:Z

    if-eqz v0, :cond_1

    .line 48
    invoke-static {}, Lcom/s1243808733/aide/dependencies/Migration;->get()Lcom/s1243808733/aide/dependencies/Migration;

    move-result-object v0

    iget-object v2, p0, Lcom/s1243808733/aide/dependencies/Dependencie;->dependencies:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/s1243808733/aide/dependencies/Migration;->getNewDependencyBaseVersion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 49
    if-nez v0, :cond_0

    const-string v0, "+"

    :cond_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 53
    :goto_0
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 51
    :cond_1
    const-string v0, "+"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0
.end method
