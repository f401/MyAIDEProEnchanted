.class public Lorg/apache/tools/ant/taskdefs/condition/IsFailure;
.super Ljava/lang/Object;
.source "IsFailure.java"

# interfaces
.implements Lorg/apache/tools/ant/taskdefs/condition/Condition;


# instance fields
.field private code:I


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public eval()Z
    .registers 2

    .line 51
    iget v0, p0, Lorg/apache/tools/ant/taskdefs/condition/IsFailure;->code:I

    invoke-static {v0}, Lorg/apache/tools/ant/taskdefs/Execute;->isFailure(I)Z

    move-result v0

    return v0
.end method

.method public getCode()I
    .registers 2

    .line 43
    iget v0, p0, Lorg/apache/tools/ant/taskdefs/condition/IsFailure;->code:I

    return v0
.end method

.method public setCode(I)V
    .registers 2

    .line 35
    iput p1, p0, Lorg/apache/tools/ant/taskdefs/condition/IsFailure;->code:I

    .line 36
    return-void
.end method
