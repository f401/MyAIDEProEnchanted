.class public final synthetic Lorg/apache/tools/ant/util/SourceFileScanner$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final f$0:Ljava/io/File;


# direct methods
.method public synthetic constructor <init>(Ljava/io/File;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/tools/ant/util/SourceFileScanner$$ExternalSyntheticLambda0;->f$0:Ljava/io/File;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    iget-object v0, p0, Lorg/apache/tools/ant/util/SourceFileScanner$$ExternalSyntheticLambda0;->f$0:Ljava/io/File;

    check-cast p1, Ljava/lang/String;

    invoke-static {v0, p1}, Lorg/apache/tools/ant/util/SourceFileScanner;->lambda$restrictAsFiles$3(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method
