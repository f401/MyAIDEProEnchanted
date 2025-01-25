.class public Lorg/apache/tools/ant/taskdefs/ExecuteOn$FileDirBoth;
.super Lorg/apache/tools/ant/types/EnumeratedAttribute;
.source "ExecuteOn.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/tools/ant/taskdefs/ExecuteOn;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FileDirBoth"
.end annotation


# static fields
.field public static final DIR:Ljava/lang/String; = "dir"

.field public static final FILE:Ljava/lang/String; = "file"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 757
    invoke-direct {p0}, Lorg/apache/tools/ant/types/EnumeratedAttribute;-><init>()V

    return-void
.end method


# virtual methods
.method public getValues()[Ljava/lang/String;
    .registers 4

    .line 769
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "file"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "dir"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "both"

    aput-object v2, v0, v1

    return-object v0
.end method
