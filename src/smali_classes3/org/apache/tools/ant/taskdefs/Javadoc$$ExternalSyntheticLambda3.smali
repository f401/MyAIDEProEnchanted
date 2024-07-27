.class public final synthetic Lorg/apache/tools/ant/taskdefs/Javadoc$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final f$0:Lorg/apache/tools/ant/types/PatternSet;


# direct methods
.method public synthetic constructor <init>(Lorg/apache/tools/ant/types/PatternSet;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/Javadoc$$ExternalSyntheticLambda3;->f$0:Lorg/apache/tools/ant/types/PatternSet;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 3

    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Javadoc$$ExternalSyntheticLambda3;->f$0:Lorg/apache/tools/ant/types/PatternSet;

    check-cast p1, Ljava/lang/String;

    invoke-static {v0, p1}, Lorg/apache/tools/ant/taskdefs/Javadoc;->lambda$parsePackages$4(Lorg/apache/tools/ant/types/PatternSet;Ljava/lang/String;)V

    return-void
.end method
