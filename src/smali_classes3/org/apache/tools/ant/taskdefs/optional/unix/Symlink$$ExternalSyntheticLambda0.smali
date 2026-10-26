.class public final synthetic Lorg/apache/tools/ant/taskdefs/optional/unix/Symlink$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/BiConsumer;


# instance fields
.field public final f$0:Lorg/apache/tools/ant/taskdefs/optional/unix/Symlink;


# direct methods
.method public synthetic constructor <init>(Lorg/apache/tools/ant/taskdefs/optional/unix/Symlink;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/optional/unix/Symlink$$ExternalSyntheticLambda0;->f$0:Lorg/apache/tools/ant/taskdefs/optional/unix/Symlink;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/unix/Symlink$$ExternalSyntheticLambda0;->f$0:Lorg/apache/tools/ant/taskdefs/optional/unix/Symlink;

    check-cast p1, Ljava/io/File;

    check-cast p2, Ljava/util/List;

    invoke-virtual {v0, p1, p2}, Lorg/apache/tools/ant/taskdefs/optional/unix/Symlink;->lambda$record$2$Symlink(Ljava/io/File;Ljava/util/List;)V

    return-void
.end method
