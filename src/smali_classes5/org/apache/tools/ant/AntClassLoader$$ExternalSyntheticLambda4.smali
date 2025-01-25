.class public final synthetic Lorg/apache/tools/ant/AntClassLoader$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final f$0:Lorg/apache/tools/ant/AntClassLoader;

.field public final f$1:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lorg/apache/tools/ant/AntClassLoader;Ljava/lang/String;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/tools/ant/AntClassLoader$$ExternalSyntheticLambda4;->f$0:Lorg/apache/tools/ant/AntClassLoader;

    iput-object p2, p0, Lorg/apache/tools/ant/AntClassLoader$$ExternalSyntheticLambda4;->f$1:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    iget-object v0, p0, Lorg/apache/tools/ant/AntClassLoader$$ExternalSyntheticLambda4;->f$0:Lorg/apache/tools/ant/AntClassLoader;

    iget-object v1, p0, Lorg/apache/tools/ant/AntClassLoader$$ExternalSyntheticLambda4;->f$1:Ljava/lang/String;

    check-cast p1, Ljava/io/File;

    invoke-virtual {v0, v1, p1}, Lorg/apache/tools/ant/AntClassLoader;->lambda$loadResource$0$AntClassLoader(Ljava/lang/String;Ljava/io/File;)Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method
