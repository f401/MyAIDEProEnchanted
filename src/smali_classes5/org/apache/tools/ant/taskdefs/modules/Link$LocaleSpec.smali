.class public Lorg/apache/tools/ant/taskdefs/modules/Link$LocaleSpec;
.super Ljava/lang/Object;
.source "Link.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/tools/ant/taskdefs/modules/Link;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "LocaleSpec"
.end annotation


# instance fields
.field private name:Ljava/lang/String;

.field final this$0:Lorg/apache/tools/ant/taskdefs/modules/Link;


# direct methods
.method public constructor <init>(Lorg/apache/tools/ant/taskdefs/modules/Link;)V
    .registers 2

    .line 996
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/modules/Link$LocaleSpec;->this$0:Lorg/apache/tools/ant/taskdefs/modules/Link;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 998
    return-void
.end method

.method public constructor <init>(Lorg/apache/tools/ant/taskdefs/modules/Link;Ljava/lang/String;)V
    .registers 3

    .line 1005
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/modules/Link$LocaleSpec;->this$0:Lorg/apache/tools/ant/taskdefs/modules/Link;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1006
    invoke-virtual {p0, p2}, Lorg/apache/tools/ant/taskdefs/modules/Link$LocaleSpec;->setName(Ljava/lang/String;)V

    .line 1007
    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .registers 2

    .line 1017
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/modules/Link$LocaleSpec;->name:Ljava/lang/String;

    return-object v0
.end method

.method public setName(Ljava/lang/String;)V
    .registers 2

    .line 1028
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/modules/Link$LocaleSpec;->name:Ljava/lang/String;

    .line 1029
    return-void
.end method

.method public validate()V
    .registers 4

    .line 1037
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/modules/Link$LocaleSpec;->name:Ljava/lang/String;

    if-eqz v0, :cond_5

    .line 1041
    return-void

    .line 1038
    :cond_5
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/modules/Link$LocaleSpec;->this$0:Lorg/apache/tools/ant/taskdefs/modules/Link;

    .line 1039
    new-instance v1, Lorg/apache/tools/ant/BuildException;

    const-string v2, "name is required for locale."

    invoke-virtual {v0}, Lorg/apache/tools/ant/taskdefs/modules/Link;->getLocation()Lorg/apache/tools/ant/Location;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;Lorg/apache/tools/ant/Location;)V

    throw v1
.end method
