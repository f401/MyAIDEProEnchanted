.class public final synthetic Lorg/apache/tools/ant/taskdefs/optional/depend/AntAnalyzer$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final f$0:Ljava/util/Set;


# direct methods
.method public synthetic constructor <init>(Ljava/util/Set;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/optional/depend/AntAnalyzer$$ExternalSyntheticLambda0;->f$0:Ljava/util/Set;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .registers 3

    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/depend/AntAnalyzer$$ExternalSyntheticLambda0;->f$0:Ljava/util/Set;

    check-cast p1, Ljava/lang/String;

    invoke-static {v0, p1}, Lorg/apache/tools/ant/taskdefs/optional/depend/AntAnalyzer;->lambda$determineDependencies$0(Ljava/util/Set;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
