.class public final synthetic Lorg/apache/tools/ant/types/optional/depend/DependScanner$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final f$0:Lorg/apache/tools/ant/util/depend/DependencyAnalyzer;


# direct methods
.method public synthetic constructor <init>(Lorg/apache/tools/ant/util/depend/DependencyAnalyzer;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/tools/ant/types/optional/depend/DependScanner$$ExternalSyntheticLambda2;->f$0:Lorg/apache/tools/ant/util/depend/DependencyAnalyzer;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 3

    iget-object v0, p0, Lorg/apache/tools/ant/types/optional/depend/DependScanner$$ExternalSyntheticLambda2;->f$0:Lorg/apache/tools/ant/util/depend/DependencyAnalyzer;

    check-cast p1, Lorg/apache/tools/ant/types/Path;

    invoke-interface {v0, p1}, Lorg/apache/tools/ant/util/depend/DependencyAnalyzer;->addClassPath(Lorg/apache/tools/ant/types/Path;)V

    return-void
.end method
