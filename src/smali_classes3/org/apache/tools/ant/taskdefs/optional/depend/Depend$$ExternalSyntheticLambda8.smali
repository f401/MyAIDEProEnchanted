.class public final synthetic Lorg/apache/tools/ant/taskdefs/optional/depend/Depend$$ExternalSyntheticLambda8;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final f$0:Lorg/apache/tools/ant/taskdefs/optional/depend/Depend;

.field public final f$1:Lorg/apache/tools/ant/taskdefs/optional/depend/Depend$ClassFileInfo;


# direct methods
.method public synthetic constructor <init>(Lorg/apache/tools/ant/taskdefs/optional/depend/Depend;Lorg/apache/tools/ant/taskdefs/optional/depend/Depend$ClassFileInfo;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/optional/depend/Depend$$ExternalSyntheticLambda8;->f$0:Lorg/apache/tools/ant/taskdefs/optional/depend/Depend;

    iput-object p2, p0, Lorg/apache/tools/ant/taskdefs/optional/depend/Depend$$ExternalSyntheticLambda8;->f$1:Lorg/apache/tools/ant/taskdefs/optional/depend/Depend$ClassFileInfo;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 4

    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/depend/Depend$$ExternalSyntheticLambda8;->f$0:Lorg/apache/tools/ant/taskdefs/optional/depend/Depend;

    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/optional/depend/Depend$$ExternalSyntheticLambda8;->f$1:Lorg/apache/tools/ant/taskdefs/optional/depend/Depend$ClassFileInfo;

    check-cast p1, Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Lorg/apache/tools/ant/taskdefs/optional/depend/Depend;->lambda$determineDependencies$1$Depend(Lorg/apache/tools/ant/taskdefs/optional/depend/Depend$ClassFileInfo;Ljava/lang/String;)V

    return-void
.end method
