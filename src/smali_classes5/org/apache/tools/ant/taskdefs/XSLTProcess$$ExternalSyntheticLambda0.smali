.class public final synthetic Lorg/apache/tools/ant/taskdefs/XSLTProcess$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;

# interfaces
.implements Ljavax/xml/xpath/XPathVariableResolver;


# instance fields
.field public final f$0:Lorg/apache/tools/ant/taskdefs/XSLTProcess;


# direct methods
.method public synthetic constructor <init>(Lorg/apache/tools/ant/taskdefs/XSLTProcess;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/XSLTProcess$$ExternalSyntheticLambda0;->f$0:Lorg/apache/tools/ant/taskdefs/XSLTProcess;

    return-void
.end method


# virtual methods
.method public final resolveVariable(Ljavax/xml/namespace/QName;)Ljava/lang/Object;
    .registers 3

    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/XSLTProcess$$ExternalSyntheticLambda0;->f$0:Lorg/apache/tools/ant/taskdefs/XSLTProcess;

    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/taskdefs/XSLTProcess;->lambda$init$0$XSLTProcess(Ljavax/xml/namespace/QName;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
