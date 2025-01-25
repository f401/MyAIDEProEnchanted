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

    .line 18
    iput-boolean p1, p0, Lcom/s1243808733/aide/dependencies/Dependencie;->androidx:Z

    return-void
.end method

.method public setDependencies(Ljava/lang/String;)V
    .registers 2

    .line 36
    iput-object p1, p0, Lcom/s1243808733/aide/dependencies/Dependencie;->dependencies:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    .line 45
    new-instance v0, Ljava/lang/StringBuffer;

    iget-object v1, p0, Lcom/s1243808733/aide/dependencies/Dependencie;->dependencies:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 46
    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 47
    iget-boolean v1, p0, Lcom/s1243808733/aide/dependencies/Dependencie;->androidx:Z

    const-string v2, "+"

    if-eqz v1, :cond_24

    .line 48
    invoke-static {}, Lcom/s1243808733/aide/dependencies/Migration;->get()Lcom/s1243808733/aide/dependencies/Migration;

    move-result-object v1

    iget-object v3, p0, Lcom/s1243808733/aide/dependencies/Dependencie;->dependencies:Ljava/lang/String;

    invoke-virtual {v1, v3}, Lcom/s1243808733/aide/dependencies/Migration;->getNewDependencyBaseVersion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1f

    goto :goto_20

    :cond_1f
    move-object v2, v1

    .line 49
    :goto_20
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_27

    .line 51
    :cond_24
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 53
    :goto_27
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
