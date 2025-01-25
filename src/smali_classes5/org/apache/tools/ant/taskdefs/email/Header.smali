.class public Lorg/apache/tools/ant/taskdefs/email/Header;
.super Ljava/lang/Object;
.source "Header.java"


# instance fields
.field private name:Ljava/lang/String;

.field private value:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .registers 2

    .line 44
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/email/Header;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getValue()Ljava/lang/String;
    .registers 2

    .line 60
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/email/Header;->value:Ljava/lang/String;

    return-object v0
.end method

.method public setName(Ljava/lang/String;)V
    .registers 2

    .line 36
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/email/Header;->name:Ljava/lang/String;

    .line 37
    return-void
.end method

.method public setValue(Ljava/lang/String;)V
    .registers 2

    .line 52
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/email/Header;->value:Ljava/lang/String;

    .line 53
    return-void
.end method
