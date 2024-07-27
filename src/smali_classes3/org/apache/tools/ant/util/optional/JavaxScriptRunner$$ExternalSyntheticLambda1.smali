.class public final synthetic Lorg/apache/tools/ant/util/optional/JavaxScriptRunner$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/BiConsumer;


# instance fields
.field public final f$0:Ljavax/script/ScriptEngine;


# direct methods
.method public synthetic constructor <init>(Ljavax/script/ScriptEngine;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/tools/ant/util/optional/JavaxScriptRunner$$ExternalSyntheticLambda1;->f$0:Ljavax/script/ScriptEngine;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 4

    iget-object v0, p0, Lorg/apache/tools/ant/util/optional/JavaxScriptRunner$$ExternalSyntheticLambda1;->f$0:Ljavax/script/ScriptEngine;

    check-cast p1, Ljava/lang/String;

    invoke-interface {v0, p1, p2}, Ljavax/script/ScriptEngine;->put(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method
