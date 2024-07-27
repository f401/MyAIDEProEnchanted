.class public final synthetic Lorg/apache/tools/ant/util/ChainedMapper$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final f$0:Lorg/apache/tools/ant/util/FileNameMapper;


# direct methods
.method public synthetic constructor <init>(Lorg/apache/tools/ant/util/FileNameMapper;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/tools/ant/util/ChainedMapper$$ExternalSyntheticLambda2;->f$0:Lorg/apache/tools/ant/util/FileNameMapper;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    iget-object v0, p0, Lorg/apache/tools/ant/util/ChainedMapper$$ExternalSyntheticLambda2;->f$0:Lorg/apache/tools/ant/util/FileNameMapper;

    check-cast p1, Ljava/lang/String;

    invoke-interface {v0, p1}, Lorg/apache/tools/ant/util/FileNameMapper;->mapFileName(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
