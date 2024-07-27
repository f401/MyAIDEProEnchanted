.class public Lorg/apache/tools/ant/taskdefs/XSLTProcess$Factory$Feature;
.super Ljava/lang/Object;
.source "XSLTProcess.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/tools/ant/taskdefs/XSLTProcess$Factory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Feature"
.end annotation


# instance fields
.field private name:Ljava/lang/String;

.field private value:Z


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1599
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1600
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Z)V
    .registers 3

    .line 1602
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1603
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/XSLTProcess$Factory$Feature;->name:Ljava/lang/String;

    .line 1604
    iput-boolean p2, p0, Lorg/apache/tools/ant/taskdefs/XSLTProcess$Factory$Feature;->value:Z

    .line 1605
    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .registers 2

    .line 1625
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/XSLTProcess$Factory$Feature;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getValue()Z
    .registers 2

    .line 1632
    iget-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/XSLTProcess$Factory$Feature;->value:Z

    return v0
.end method

.method public setName(Ljava/lang/String;)V
    .registers 2

    .line 1611
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/XSLTProcess$Factory$Feature;->name:Ljava/lang/String;

    .line 1612
    return-void
.end method

.method public setValue(Z)V
    .registers 2

    .line 1618
    iput-boolean p1, p0, Lorg/apache/tools/ant/taskdefs/XSLTProcess$Factory$Feature;->value:Z

    .line 1619
    return-void
.end method
