.class public Lorg/apache/tools/ant/taskdefs/GenerateKey$DnameParam;
.super Ljava/lang/Object;
.source "GenerateKey.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/tools/ant/taskdefs/GenerateKey;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DnameParam"
.end annotation


# instance fields
.field private name:Ljava/lang/String;

.field private value:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .registers 2

    .line 61
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/GenerateKey$DnameParam;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getValue()Ljava/lang/String;
    .registers 2

    .line 77
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/GenerateKey$DnameParam;->value:Ljava/lang/String;

    return-object v0
.end method

.method public isComplete()Z
    .registers 2

    .line 81
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/GenerateKey$DnameParam;->name:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/GenerateKey$DnameParam;->value:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setName(Ljava/lang/String;)V
    .registers 2

    .line 53
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/GenerateKey$DnameParam;->name:Ljava/lang/String;

    .line 54
    return-void
.end method

.method public setValue(Ljava/lang/String;)V
    .registers 2

    .line 69
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/GenerateKey$DnameParam;->value:Ljava/lang/String;

    .line 70
    return-void
.end method
