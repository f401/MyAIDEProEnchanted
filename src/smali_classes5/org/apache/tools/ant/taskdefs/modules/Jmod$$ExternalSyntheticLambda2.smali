.class public final synthetic Lorg/apache/tools/ant/taskdefs/modules/Jmod$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/Supplier;


# instance fields
.field public final f$0:Lorg/apache/tools/ant/taskdefs/modules/Jmod;


# direct methods
.method public synthetic constructor <init>(Lorg/apache/tools/ant/taskdefs/modules/Jmod;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/modules/Jmod$$ExternalSyntheticLambda2;->f$0:Lorg/apache/tools/ant/taskdefs/modules/Jmod;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/modules/Jmod$$ExternalSyntheticLambda2;->f$0:Lorg/apache/tools/ant/taskdefs/modules/Jmod;

    invoke-virtual {v0}, Lorg/apache/tools/ant/taskdefs/modules/Jmod;->lambda$execute$0$Jmod()Lorg/apache/tools/ant/BuildException;

    move-result-object v0

    return-object v0
.end method
