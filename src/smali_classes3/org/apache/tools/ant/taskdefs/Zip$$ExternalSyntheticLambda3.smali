.class public final synthetic Lorg/apache/tools/ant/taskdefs/Zip$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final f$0:Lorg/apache/tools/ant/types/resources/selectors/ResourceSelector;


# direct methods
.method public synthetic constructor <init>(Lorg/apache/tools/ant/types/resources/selectors/ResourceSelector;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/Zip$$ExternalSyntheticLambda3;->f$0:Lorg/apache/tools/ant/types/resources/selectors/ResourceSelector;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .registers 3

    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Zip$$ExternalSyntheticLambda3;->f$0:Lorg/apache/tools/ant/types/resources/selectors/ResourceSelector;

    check-cast p1, Lorg/apache/tools/ant/types/Resource;

    invoke-interface {v0, p1}, Lorg/apache/tools/ant/types/resources/selectors/ResourceSelector;->isSelected(Lorg/apache/tools/ant/types/Resource;)Z

    move-result v0

    return v0
.end method
