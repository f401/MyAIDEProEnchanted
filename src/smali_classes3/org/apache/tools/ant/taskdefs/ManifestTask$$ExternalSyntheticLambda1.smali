.class public final synthetic Lorg/apache/tools/ant/taskdefs/ManifestTask$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final f$0:Lorg/apache/tools/ant/taskdefs/ManifestTask;


# direct methods
.method public synthetic constructor <init>(Lorg/apache/tools/ant/taskdefs/ManifestTask;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/ManifestTask$$ExternalSyntheticLambda1;->f$0:Lorg/apache/tools/ant/taskdefs/ManifestTask;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 3

    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/ManifestTask$$ExternalSyntheticLambda1;->f$0:Lorg/apache/tools/ant/taskdefs/ManifestTask;

    check-cast p1, Lorg/apache/tools/ant/taskdefs/Manifest$Attribute;

    invoke-static {v0, p1}, Lorg/apache/tools/ant/taskdefs/ManifestTask;->$r8$lambda$U01hvaVAKsJqXdxfAUGYhxw0CII(Lorg/apache/tools/ant/taskdefs/ManifestTask;Lorg/apache/tools/ant/taskdefs/Manifest$Attribute;)V

    return-void
.end method
