.class public final synthetic Lorg/apache/tools/ant/util/SourceFileScanner$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final f$0:Lorg/apache/tools/ant/util/SourceFileScanner;

.field public final f$1:Ljava/io/File;


# direct methods
.method public synthetic constructor <init>(Lorg/apache/tools/ant/util/SourceFileScanner;Ljava/io/File;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/tools/ant/util/SourceFileScanner$$ExternalSyntheticLambda1;->f$0:Lorg/apache/tools/ant/util/SourceFileScanner;

    iput-object p2, p0, Lorg/apache/tools/ant/util/SourceFileScanner$$ExternalSyntheticLambda1;->f$1:Ljava/io/File;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    iget-object v0, p0, Lorg/apache/tools/ant/util/SourceFileScanner$$ExternalSyntheticLambda1;->f$0:Lorg/apache/tools/ant/util/SourceFileScanner;

    iget-object v1, p0, Lorg/apache/tools/ant/util/SourceFileScanner$$ExternalSyntheticLambda1;->f$1:Ljava/io/File;

    check-cast p1, Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Lorg/apache/tools/ant/util/SourceFileScanner;->lambda$restrict$0$SourceFileScanner(Ljava/io/File;Ljava/lang/String;)Lorg/apache/tools/ant/util/SourceFileScanner$1;

    move-result-object v0

    return-object v0
.end method
