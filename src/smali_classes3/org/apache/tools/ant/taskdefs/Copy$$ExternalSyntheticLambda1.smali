.class public final synthetic Lorg/apache/tools/ant/taskdefs/Copy$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/apache/tools/ant/types/ResourceFactory;


# instance fields
.field public final f$0:Ljava/io/File;


# direct methods
.method public synthetic constructor <init>(Ljava/io/File;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/Copy$$ExternalSyntheticLambda1;->f$0:Ljava/io/File;

    return-void
.end method


# virtual methods
.method public final getResource(Ljava/lang/String;)Lorg/apache/tools/ant/types/Resource;
    .registers 3

    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Copy$$ExternalSyntheticLambda1;->f$0:Ljava/io/File;

    invoke-static {v0, p1}, Lorg/apache/tools/ant/taskdefs/Copy;->lambda$buildMap$0(Ljava/io/File;Ljava/lang/String;)Lorg/apache/tools/ant/types/Resource;

    move-result-object v0

    return-object v0
.end method
