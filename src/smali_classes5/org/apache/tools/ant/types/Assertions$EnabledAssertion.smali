.class public Lorg/apache/tools/ant/types/Assertions$EnabledAssertion;
.super Lorg/apache/tools/ant/types/Assertions$BaseAssertion;
.source "Assertions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/tools/ant/types/Assertions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "EnabledAssertion"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 334
    invoke-direct {p0}, Lorg/apache/tools/ant/types/Assertions$BaseAssertion;-><init>()V

    return-void
.end method


# virtual methods
.method public getCommandPrefix()Ljava/lang/String;
    .registers 2

    .line 341
    const-string v0, "-ea"

    return-object v0
.end method
