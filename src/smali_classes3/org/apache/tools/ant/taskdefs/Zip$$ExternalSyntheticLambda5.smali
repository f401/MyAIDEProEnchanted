.class public final synthetic Lorg/apache/tools/ant/taskdefs/Zip$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/apache/tools/ant/types/resources/selectors/ResourceSelector;


# instance fields
.field public final f$0:Lorg/apache/tools/ant/taskdefs/Zip;


# direct methods
.method public synthetic constructor <init>(Lorg/apache/tools/ant/taskdefs/Zip;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/Zip$$ExternalSyntheticLambda5;->f$0:Lorg/apache/tools/ant/taskdefs/Zip;

    return-void
.end method


# virtual methods
.method public final isSelected(Lorg/apache/tools/ant/types/Resource;)Z
    .registers 3

    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Zip$$ExternalSyntheticLambda5;->f$0:Lorg/apache/tools/ant/taskdefs/Zip;

    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/taskdefs/Zip;->lambda$selectFileResources$4$Zip(Lorg/apache/tools/ant/types/Resource;)Z

    move-result v0

    return v0
.end method
