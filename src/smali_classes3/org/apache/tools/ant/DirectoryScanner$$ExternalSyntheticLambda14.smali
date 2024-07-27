.class public final synthetic Lorg/apache/tools/ant/DirectoryScanner$$ExternalSyntheticLambda14;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final f$0:Lorg/apache/tools/ant/DirectoryScanner;

.field public final f$1:Lorg/apache/tools/ant/types/selectors/TokenizedPath;


# direct methods
.method public synthetic constructor <init>(Lorg/apache/tools/ant/DirectoryScanner;Lorg/apache/tools/ant/types/selectors/TokenizedPath;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/tools/ant/DirectoryScanner$$ExternalSyntheticLambda14;->f$0:Lorg/apache/tools/ant/DirectoryScanner;

    iput-object p2, p0, Lorg/apache/tools/ant/DirectoryScanner$$ExternalSyntheticLambda14;->f$1:Lorg/apache/tools/ant/types/selectors/TokenizedPath;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .registers 4

    iget-object v0, p0, Lorg/apache/tools/ant/DirectoryScanner$$ExternalSyntheticLambda14;->f$0:Lorg/apache/tools/ant/DirectoryScanner;

    iget-object v1, p0, Lorg/apache/tools/ant/DirectoryScanner$$ExternalSyntheticLambda14;->f$1:Lorg/apache/tools/ant/types/selectors/TokenizedPath;

    check-cast p1, Lorg/apache/tools/ant/types/selectors/TokenizedPattern;

    invoke-virtual {v0, v1, p1}, Lorg/apache/tools/ant/DirectoryScanner;->lambda$isExcluded$7$DirectoryScanner(Lorg/apache/tools/ant/types/selectors/TokenizedPath;Lorg/apache/tools/ant/types/selectors/TokenizedPattern;)Z

    move-result v0

    return v0
.end method
