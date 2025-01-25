.class public final synthetic Lorg/apache/tools/ant/taskdefs/Jar$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final f$0:Ljava/io/PrintWriter;


# direct methods
.method public synthetic constructor <init>(Ljava/io/PrintWriter;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/Jar$$ExternalSyntheticLambda1;->f$0:Ljava/io/PrintWriter;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 3

    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Jar$$ExternalSyntheticLambda1;->f$0:Ljava/io/PrintWriter;

    check-cast p1, Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method
