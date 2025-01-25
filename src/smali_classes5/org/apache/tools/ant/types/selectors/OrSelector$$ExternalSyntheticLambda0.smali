.class public final synthetic Lorg/apache/tools/ant/types/selectors/OrSelector$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final f$0:Ljava/io/File;

.field public final f$1:Ljava/lang/String;

.field public final f$2:Ljava/io/File;


# direct methods
.method public synthetic constructor <init>(Ljava/io/File;Ljava/lang/String;Ljava/io/File;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/tools/ant/types/selectors/OrSelector$$ExternalSyntheticLambda0;->f$0:Ljava/io/File;

    iput-object p2, p0, Lorg/apache/tools/ant/types/selectors/OrSelector$$ExternalSyntheticLambda0;->f$1:Ljava/lang/String;

    iput-object p3, p0, Lorg/apache/tools/ant/types/selectors/OrSelector$$ExternalSyntheticLambda0;->f$2:Ljava/io/File;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .registers 5

    iget-object v0, p0, Lorg/apache/tools/ant/types/selectors/OrSelector$$ExternalSyntheticLambda0;->f$0:Ljava/io/File;

    iget-object v1, p0, Lorg/apache/tools/ant/types/selectors/OrSelector$$ExternalSyntheticLambda0;->f$1:Ljava/lang/String;

    iget-object v2, p0, Lorg/apache/tools/ant/types/selectors/OrSelector$$ExternalSyntheticLambda0;->f$2:Ljava/io/File;

    check-cast p1, Lorg/apache/tools/ant/types/selectors/FileSelector;

    invoke-static {v0, v1, v2, p1}, Lorg/apache/tools/ant/types/selectors/OrSelector;->lambda$isSelected$0(Ljava/io/File;Ljava/lang/String;Ljava/io/File;Lorg/apache/tools/ant/types/selectors/FileSelector;)Z

    move-result v0

    return v0
.end method
