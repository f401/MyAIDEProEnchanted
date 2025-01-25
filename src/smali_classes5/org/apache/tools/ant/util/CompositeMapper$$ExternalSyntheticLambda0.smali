.class public final synthetic Lorg/apache/tools/ant/util/CompositeMapper$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final f$0:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/tools/ant/util/CompositeMapper$$ExternalSyntheticLambda0;->f$0:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    iget-object v0, p0, Lorg/apache/tools/ant/util/CompositeMapper$$ExternalSyntheticLambda0;->f$0:Ljava/lang/String;

    check-cast p1, Lorg/apache/tools/ant/util/FileNameMapper;

    invoke-static {v0, p1}, Lorg/apache/tools/ant/util/CompositeMapper;->lambda$mapFileName$0(Ljava/lang/String;Lorg/apache/tools/ant/util/FileNameMapper;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
