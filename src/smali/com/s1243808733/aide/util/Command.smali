.class public final Lcom/s1243808733/aide/util/Command;
.super Ljava/lang/Object;
.source "Command.java"


# instance fields
.field private cmd:Ljava/lang/String;

.field private name:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput-object p1, p0, Lcom/s1243808733/aide/util/Command;->name:Ljava/lang/String;

    .line 13
    iput-object p2, p0, Lcom/s1243808733/aide/util/Command;->cmd:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 5

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    :cond_4
    if-ne p1, p0, :cond_8

    const/4 p1, 0x1

    return p1

    .line 36
    :cond_8
    instance-of v1, p1, Lcom/s1243808733/aide/util/Command;

    if-nez v1, :cond_d

    return v0

    .line 37
    :cond_d
    check-cast p1, Lcom/s1243808733/aide/util/Command;

    .line 38
    new-instance v0, Lorg/apache/commons/lang3/builder/EqualsBuilder;

    invoke-direct {v0}, Lorg/apache/commons/lang3/builder/EqualsBuilder;-><init>()V

    iget-object v1, p0, Lcom/s1243808733/aide/util/Command;->name:Ljava/lang/String;

    iget-object v2, p1, Lcom/s1243808733/aide/util/Command;->name:Ljava/lang/String;

    .line 39
    invoke-virtual {v0, v1, v2}, Lorg/apache/commons/lang3/builder/EqualsBuilder;->append(Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/commons/lang3/builder/EqualsBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/s1243808733/aide/util/Command;->cmd:Ljava/lang/String;

    iget-object p1, p1, Lcom/s1243808733/aide/util/Command;->cmd:Ljava/lang/String;

    .line 40
    invoke-virtual {v0, v1, p1}, Lorg/apache/commons/lang3/builder/EqualsBuilder;->append(Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/commons/lang3/builder/EqualsBuilder;

    move-result-object p1

    .line 41
    invoke-virtual {p1}, Lorg/apache/commons/lang3/builder/EqualsBuilder;->isEquals()Z

    move-result p1

    return p1
.end method

.method public getCmd()Ljava/lang/String;
    .registers 2

    .line 29
    iget-object v0, p0, Lcom/s1243808733/aide/util/Command;->cmd:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .line 21
    iget-object v0, p0, Lcom/s1243808733/aide/util/Command;->name:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .registers 3

    .line 46
    new-instance v0, Lorg/apache/commons/lang3/builder/HashCodeBuilder;

    invoke-direct {v0}, Lorg/apache/commons/lang3/builder/HashCodeBuilder;-><init>()V

    iget-object v1, p0, Lcom/s1243808733/aide/util/Command;->name:Ljava/lang/String;

    .line 47
    invoke-virtual {v0, v1}, Lorg/apache/commons/lang3/builder/HashCodeBuilder;->append(Ljava/lang/Object;)Lorg/apache/commons/lang3/builder/HashCodeBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/s1243808733/aide/util/Command;->cmd:Ljava/lang/String;

    .line 48
    invoke-virtual {v0, v1}, Lorg/apache/commons/lang3/builder/HashCodeBuilder;->append(Ljava/lang/Object;)Lorg/apache/commons/lang3/builder/HashCodeBuilder;

    move-result-object v0

    .line 49
    invoke-virtual {v0}, Lorg/apache/commons/lang3/builder/HashCodeBuilder;->toHashCode()I

    move-result v0

    return v0
.end method

.method public setCmd(Ljava/lang/String;)V
    .registers 2

    .line 25
    iput-object p1, p0, Lcom/s1243808733/aide/util/Command;->cmd:Ljava/lang/String;

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .registers 2

    .line 17
    iput-object p1, p0, Lcom/s1243808733/aide/util/Command;->name:Ljava/lang/String;

    return-void
.end method
