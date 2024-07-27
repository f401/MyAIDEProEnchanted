.class public final synthetic Lorg/apache/tools/ant/util/ResourceUtils$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/apache/tools/ant/util/ResourceUtils$ResourceSelectorProvider;


# instance fields
.field public final f$0:J


# direct methods
.method public synthetic constructor <init>(J)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lorg/apache/tools/ant/util/ResourceUtils$$ExternalSyntheticLambda1;->f$0:J

    return-void
.end method


# virtual methods
.method public final getTargetSelectorForSource(Lorg/apache/tools/ant/types/Resource;)Lorg/apache/tools/ant/types/resources/selectors/ResourceSelector;
    .registers 4

    iget-wide v0, p0, Lorg/apache/tools/ant/util/ResourceUtils$$ExternalSyntheticLambda1;->f$0:J

    invoke-static {v0, v1, p1}, Lorg/apache/tools/ant/util/ResourceUtils;->lambda$selectOutOfDateSources$1(JLorg/apache/tools/ant/types/Resource;)Lorg/apache/tools/ant/types/resources/selectors/ResourceSelector;

    move-result-object v0

    return-object v0
.end method
