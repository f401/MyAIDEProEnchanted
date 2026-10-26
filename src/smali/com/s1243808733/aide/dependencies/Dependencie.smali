.class public Lcom/s1243808733/aide/dependencies/Dependencie;
.super Ljava/lang/Object;
.source "Dependencie.java"


# instance fields
.field private androidx:Z

.field private dependencies:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object p1, p0, Lcom/s1243808733/aide/dependencies/Dependencie;->dependencies:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 0

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
    .locals 1

    .line 40
    iget-object v0, p0, Lcom/s1243808733/aide/dependencies/Dependencie;->dependencies:Ljava/lang/String;

    return-object v0
.end method

.method getName()Ljava/lang/String;
    .locals 1

    .line 32
    iget-object v0, p0, Lcom/s1243808733/aide/dependencies/Dependencie;->dependencies:Ljava/lang/String;

    return-object v0
.end method

.method public isAndroidx()Z
    .locals 1

    .line 22
    iget-boolean v0, p0, Lcom/s1243808733/aide/dependencies/Dependencie;->androidx:Z

    return v0
.end method

.method public setAndroidx(Z)V
    .locals 0

    .line 18
    iput-boolean p1, p0, Lcom/s1243808733/aide/dependencies/Dependencie;->androidx:Z

    return-void
.end method

.method public setDependencies(Ljava/lang/String;)V
    .locals 0

    .line 36
    iput-object p1, p0, Lcom/s1243808733/aide/dependencies/Dependencie;->dependencies:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 45
    new-instance v2, Ljava/lang/StringBuffer;

    iget-object v0, p0, Lcom/s1243808733/aide/dependencies/Dependencie;->dependencies:Ljava/lang/String;

    invoke-direct {v2, v0}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 46
    const-string v0, ":"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 47
    iget-boolean v1, p0, Lcom/s1243808733/aide/dependencies/Dependencie;->androidx:Z

    const-string v0, "+"

    if-eqz v1, :cond_1

    .line 48
    invoke-static {}, Lcom/s1243808733/aide/dependencies/Migration;->get()Lcom/s1243808733/aide/dependencies/Migration;

    move-result-object v1

    iget-object v3, p0, Lcom/s1243808733/aide/dependencies/Dependencie;->dependencies:Ljava/lang/String;

    invoke-virtual {v1, v3}, Lcom/s1243808733/aide/dependencies/Migration;->getNewDependencyBaseVersion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    .line 49
    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 53
    :goto_1
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    move-object v0, v1

    .line 48
    goto :goto_0

    .line 51
    :cond_1
    const-string v0, "+"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1
.end method
