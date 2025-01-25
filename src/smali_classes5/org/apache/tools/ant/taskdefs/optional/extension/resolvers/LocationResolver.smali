.class public Lorg/apache/tools/ant/taskdefs/optional/extension/resolvers/LocationResolver;
.super Ljava/lang/Object;
.source "LocationResolver.java"

# interfaces
.implements Lorg/apache/tools/ant/taskdefs/optional/extension/ExtensionResolver;


# instance fields
.field private location:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public resolve(Lorg/apache/tools/ant/taskdefs/optional/extension/Extension;Lorg/apache/tools/ant/Project;)Ljava/io/File;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    .line 52
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/extension/resolvers/LocationResolver;->location:Ljava/lang/String;

    if-eqz v0, :cond_9

    .line 55
    invoke-virtual {p2, v0}, Lorg/apache/tools/ant/Project;->resolveFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    return-object v0

    .line 53
    :cond_9
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "No location specified for resolver"

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setLocation(Ljava/lang/String;)V
    .registers 2

    .line 39
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/optional/extension/resolvers/LocationResolver;->location:Ljava/lang/String;

    .line 40
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 63
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Location["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/optional/extension/resolvers/LocationResolver;->location:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
