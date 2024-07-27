.class public final synthetic Lorg/apache/tools/ant/taskdefs/optional/Javah$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final f$0:Lorg/apache/tools/ant/taskdefs/optional/Javah;


# direct methods
.method public synthetic constructor <init>(Lorg/apache/tools/ant/taskdefs/optional/Javah;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/optional/Javah$$ExternalSyntheticLambda0;->f$0:Lorg/apache/tools/ant/taskdefs/optional/Javah;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/Javah$$ExternalSyntheticLambda0;->f$0:Lorg/apache/tools/ant/taskdefs/optional/Javah;

    check-cast p1, Lorg/apache/tools/ant/types/FileSet;

    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/taskdefs/optional/Javah;->lambda$getClasses$0$Javah(Lorg/apache/tools/ant/types/FileSet;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
