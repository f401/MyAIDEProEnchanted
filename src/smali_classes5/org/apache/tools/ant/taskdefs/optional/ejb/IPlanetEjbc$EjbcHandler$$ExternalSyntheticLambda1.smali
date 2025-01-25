.class public final synthetic Lorg/apache/tools/ant/taskdefs/optional/ejb/IPlanetEjbc$EjbcHandler$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final f$0:Lorg/apache/tools/ant/taskdefs/optional/ejb/IPlanetEjbc$EjbcHandler;


# direct methods
.method public synthetic constructor <init>(Lorg/apache/tools/ant/taskdefs/optional/ejb/IPlanetEjbc$EjbcHandler;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/IPlanetEjbc$EjbcHandler$$ExternalSyntheticLambda1;->f$0:Lorg/apache/tools/ant/taskdefs/optional/ejb/IPlanetEjbc$EjbcHandler;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/IPlanetEjbc$EjbcHandler$$ExternalSyntheticLambda1;->f$0:Lorg/apache/tools/ant/taskdefs/optional/ejb/IPlanetEjbc$EjbcHandler;

    check-cast p1, Ljava/lang/String;

    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/taskdefs/optional/ejb/IPlanetEjbc$EjbcHandler;->lambda$stdCharacters$0$IPlanetEjbc$EjbcHandler(Ljava/lang/String;)Lorg/apache/tools/ant/taskdefs/optional/ejb/IPlanetEjbc$EjbInfo;

    move-result-object v0

    return-object v0
.end method
