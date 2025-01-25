.class public final synthetic Lorg/apache/tools/ant/taskdefs/Checksum$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final f$0:Lorg/apache/tools/ant/taskdefs/Checksum;


# direct methods
.method public synthetic constructor <init>(Lorg/apache/tools/ant/taskdefs/Checksum;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/Checksum$$ExternalSyntheticLambda2;->f$0:Lorg/apache/tools/ant/taskdefs/Checksum;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Checksum$$ExternalSyntheticLambda2;->f$0:Lorg/apache/tools/ant/taskdefs/Checksum;

    check-cast p1, Ljava/io/File;

    invoke-static {v0, p1}, Lorg/apache/tools/ant/taskdefs/Checksum;->$r8$lambda$nmdcjOks-KmmPOjXf_A76_ewm14(Lorg/apache/tools/ant/taskdefs/Checksum;Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
