.class Lorg/apache/tools/ant/taskdefs/condition/IsLastModified$1;
.super Ljava/lang/Object;
.source "IsLastModified.java"

# interfaces
.implements Lorg/apache/tools/ant/taskdefs/Touch$DateFormatFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/tools/ant/taskdefs/condition/IsLastModified;->setPattern(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final this$0:Lorg/apache/tools/ant/taskdefs/condition/IsLastModified;

.field final val$pattern:Ljava/lang/String;


# direct methods
.method constructor <init>(Lorg/apache/tools/ant/taskdefs/condition/IsLastModified;Ljava/lang/String;)V
    .registers 3

    .line 71
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/condition/IsLastModified$1;->this$0:Lorg/apache/tools/ant/taskdefs/condition/IsLastModified;

    iput-object p2, p0, Lorg/apache/tools/ant/taskdefs/condition/IsLastModified$1;->val$pattern:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getFallbackFormat()Ljava/text/DateFormat;
    .registers 2

    .line 78
    const/4 v0, 0x0

    return-object v0
.end method

.method public getPrimaryFormat()Ljava/text/DateFormat;
    .registers 3

    .line 74
    new-instance v0, Ljava/text/SimpleDateFormat;

    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/condition/IsLastModified$1;->val$pattern:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    return-object v0
.end method
