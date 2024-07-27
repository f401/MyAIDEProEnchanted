.class public final synthetic Lorg/apache/tools/ant/taskdefs/Jar$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final f$0:Ljava/util/Set;

.field public final f$1:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(Ljava/util/Set;Ljava/util/List;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/Jar$$ExternalSyntheticLambda2;->f$0:Ljava/util/Set;

    iput-object p2, p0, Lorg/apache/tools/ant/taskdefs/Jar$$ExternalSyntheticLambda2;->f$1:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 4

    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Jar$$ExternalSyntheticLambda2;->f$0:Ljava/util/Set;

    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/Jar$$ExternalSyntheticLambda2;->f$1:Ljava/util/List;

    check-cast p1, Lorg/apache/tools/zip/ZipEntry;

    invoke-static {v0, v1, p1}, Lorg/apache/tools/ant/taskdefs/Jar;->lambda$grabFilesAndDirs$4(Ljava/util/Set;Ljava/util/List;Lorg/apache/tools/zip/ZipEntry;)V

    return-void
.end method
