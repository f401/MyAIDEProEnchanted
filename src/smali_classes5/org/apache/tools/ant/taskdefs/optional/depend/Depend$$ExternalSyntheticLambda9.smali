.class public final synthetic Lorg/apache/tools/ant/taskdefs/optional/depend/Depend$$ExternalSyntheticLambda9;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final f$0:Lorg/apache/tools/ant/types/Path;


# direct methods
.method public synthetic constructor <init>(Lorg/apache/tools/ant/types/Path;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/optional/depend/Depend$$ExternalSyntheticLambda9;->f$0:Lorg/apache/tools/ant/types/Path;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 3

    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/depend/Depend$$ExternalSyntheticLambda9;->f$0:Lorg/apache/tools/ant/types/Path;

    check-cast p1, Lorg/apache/tools/ant/types/Resource;

    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/types/Path;->add(Lorg/apache/tools/ant/types/ResourceCollection;)V

    return-void
.end method
