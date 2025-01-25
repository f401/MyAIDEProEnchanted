.class public final synthetic Lorg/apache/tools/ant/util/ResourceUtils$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/apache/tools/ant/types/resources/selectors/ResourceSelector;


# instance fields
.field public final f$0:Lorg/apache/tools/ant/types/Resource;

.field public final f$1:J


# direct methods
.method public synthetic constructor <init>(Lorg/apache/tools/ant/types/Resource;J)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/tools/ant/util/ResourceUtils$$ExternalSyntheticLambda0;->f$0:Lorg/apache/tools/ant/types/Resource;

    iput-wide p2, p0, Lorg/apache/tools/ant/util/ResourceUtils$$ExternalSyntheticLambda0;->f$1:J

    return-void
.end method


# virtual methods
.method public final isSelected(Lorg/apache/tools/ant/types/Resource;)Z
    .registers 6

    iget-object v0, p0, Lorg/apache/tools/ant/util/ResourceUtils$$ExternalSyntheticLambda0;->f$0:Lorg/apache/tools/ant/types/Resource;

    iget-wide v2, p0, Lorg/apache/tools/ant/util/ResourceUtils$$ExternalSyntheticLambda0;->f$1:J

    invoke-static {v0, v2, v3, p1}, Lorg/apache/tools/ant/util/ResourceUtils;->lambda$selectOutOfDateSources$0(Lorg/apache/tools/ant/types/Resource;JLorg/apache/tools/ant/types/Resource;)Z

    move-result v0

    return v0
.end method
