.class public final synthetic Lorg/apache/tools/ant/taskdefs/Rmic$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final f$0:Ljava/lang/Class;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Class;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/Rmic$$ExternalSyntheticLambda5;->f$0:Ljava/lang/Class;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Rmic$$ExternalSyntheticLambda5;->f$0:Ljava/lang/Class;

    check-cast p1, Ljava/lang/Class;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    return v0
.end method
