.class public Lorg/xutils/common/util/KeyValue;
.super Ljava/lang/Object;
.source "KeyValue.java"


# instance fields
.field public final key:Ljava/lang/String;

.field public final value:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 3

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lorg/xutils/common/util/KeyValue;->key:Ljava/lang/String;

    .line 24
    iput-object p2, p0, Lorg/xutils/common/util/KeyValue;->value:Ljava/lang/Object;

    .line 25
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 43
    if-ne p0, p1, :cond_5

    .line 48
    :cond_4
    :goto_4
    return v0

    .line 44
    :cond_5
    if-eqz p1, :cond_11

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_13

    :cond_11
    move v0, v1

    goto :goto_4

    .line 46
    :cond_13
    check-cast p1, Lorg/xutils/common/util/KeyValue;

    .line 48
    iget-object v2, p0, Lorg/xutils/common/util/KeyValue;->key:Ljava/lang/String;

    if-nez v2, :cond_1f

    iget-object v2, p1, Lorg/xutils/common/util/KeyValue;->key:Ljava/lang/String;

    if-eqz v2, :cond_4

    move v0, v1

    goto :goto_4

    :cond_1f
    iget-object v0, p1, Lorg/xutils/common/util/KeyValue;->key:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_4
.end method

.method public getValueStrOrEmpty()Ljava/lang/String;
    .registers 2

    .line 31
    iget-object v0, p0, Lorg/xutils/common/util/KeyValue;->value:Ljava/lang/Object;

    if-nez v0, :cond_7

    const-string v0, ""

    :goto_6
    return-object v0

    :cond_7
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_6
.end method

.method public getValueStrOrNull()Ljava/lang/String;
    .registers 2

    .line 38
    iget-object v0, p0, Lorg/xutils/common/util/KeyValue;->value:Ljava/lang/Object;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    :goto_5
    return-object v0

    :cond_6
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_5
.end method

.method public hashCode()I
    .registers 2

    .line 54
    iget-object v0, p0, Lorg/xutils/common/util/KeyValue;->key:Ljava/lang/String;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 59
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "KeyValue{key=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/xutils/common/util/KeyValue;->key:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", value="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/xutils/common/util/KeyValue;->value:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
