.class public Lorg/apache/tools/ant/taskdefs/Echo$EchoLevel;
.super Lorg/apache/tools/ant/types/LogLevel;
.source "Echo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/tools/ant/taskdefs/Echo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "EchoLevel"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 165
    invoke-direct {p0}, Lorg/apache/tools/ant/types/LogLevel;-><init>()V

    return-void
.end method
