.class public final synthetic Lorg/apache/tools/ant/taskdefs/optional/TraXLiaison$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final f$0:Lorg/apache/tools/ant/taskdefs/optional/TraXLiaison;


# direct methods
.method public synthetic constructor <init>(Lorg/apache/tools/ant/taskdefs/optional/TraXLiaison;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/optional/TraXLiaison$$ExternalSyntheticLambda2;->f$0:Lorg/apache/tools/ant/taskdefs/optional/TraXLiaison;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 3

    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/TraXLiaison$$ExternalSyntheticLambda2;->f$0:Lorg/apache/tools/ant/taskdefs/optional/TraXLiaison;

    check-cast p1, Lorg/apache/tools/ant/taskdefs/XSLTProcess$Factory$Feature;

    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/taskdefs/optional/TraXLiaison;->lambda$configure$2$TraXLiaison(Lorg/apache/tools/ant/taskdefs/XSLTProcess$Factory$Feature;)V

    return-void
.end method
