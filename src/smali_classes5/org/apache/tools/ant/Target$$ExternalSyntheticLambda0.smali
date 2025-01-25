.class public final synthetic Lorg/apache/tools/ant/Target$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/apache/tools/ant/taskdefs/condition/Condition;


# instance fields
.field public final f$0:Lorg/apache/tools/ant/Target;


# direct methods
.method public synthetic constructor <init>(Lorg/apache/tools/ant/Target;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/tools/ant/Target$$ExternalSyntheticLambda0;->f$0:Lorg/apache/tools/ant/Target;

    return-void
.end method


# virtual methods
.method public final eval()Z
    .registers 2

    iget-object v0, p0, Lorg/apache/tools/ant/Target$$ExternalSyntheticLambda0;->f$0:Lorg/apache/tools/ant/Target;

    invoke-virtual {v0}, Lorg/apache/tools/ant/Target;->lambda$setIf$0$Target()Z

    move-result v0

    return v0
.end method
