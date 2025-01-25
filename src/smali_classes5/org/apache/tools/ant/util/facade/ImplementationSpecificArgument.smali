.class public Lorg/apache/tools/ant/util/facade/ImplementationSpecificArgument;
.super Lorg/apache/tools/ant/types/Commandline$Argument;
.source "ImplementationSpecificArgument.java"


# instance fields
.field private impl:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 30
    invoke-direct {p0}, Lorg/apache/tools/ant/types/Commandline$Argument;-><init>()V

    return-void
.end method


# virtual methods
.method public final getParts(Ljava/lang/String;)[Ljava/lang/String;
    .registers 3

    .line 50
    iget-object v0, p0, Lorg/apache/tools/ant/util/facade/ImplementationSpecificArgument;->impl:Ljava/lang/String;

    if-eqz v0, :cond_a

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 51
    :cond_a
    invoke-super {p0}, Lorg/apache/tools/ant/types/Commandline$Argument;->getParts()[Ljava/lang/String;

    move-result-object v0

    .line 53
    :goto_e
    return-object v0

    :cond_f
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    goto :goto_e
.end method

.method public setImplementation(Ljava/lang/String;)V
    .registers 2

    .line 38
    iput-object p1, p0, Lorg/apache/tools/ant/util/facade/ImplementationSpecificArgument;->impl:Ljava/lang/String;

    .line 39
    return-void
.end method
