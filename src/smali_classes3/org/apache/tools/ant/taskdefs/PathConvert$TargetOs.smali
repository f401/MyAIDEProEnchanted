.class public Lorg/apache/tools/ant/taskdefs/PathConvert$TargetOs;
.super Lorg/apache/tools/ant/types/EnumeratedAttribute;
.source "PathConvert.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/tools/ant/taskdefs/PathConvert;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TargetOs"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 160
    invoke-direct {p0}, Lorg/apache/tools/ant/types/EnumeratedAttribute;-><init>()V

    return-void
.end method


# virtual methods
.method public getValues()[Ljava/lang/String;
    .registers 4

    .line 166
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "windows"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "unix"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "netware"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "os/2"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "tandem"

    aput-object v2, v0, v1

    return-object v0
.end method
