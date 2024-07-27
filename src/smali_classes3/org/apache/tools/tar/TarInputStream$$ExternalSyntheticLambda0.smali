.class public final synthetic Lorg/apache/tools/tar/TarInputStream$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/BiConsumer;


# instance fields
.field public final f$0:Lorg/apache/tools/tar/TarInputStream;


# direct methods
.method public synthetic constructor <init>(Lorg/apache/tools/tar/TarInputStream;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/tools/tar/TarInputStream$$ExternalSyntheticLambda0;->f$0:Lorg/apache/tools/tar/TarInputStream;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 4

    iget-object v0, p0, Lorg/apache/tools/tar/TarInputStream$$ExternalSyntheticLambda0;->f$0:Lorg/apache/tools/tar/TarInputStream;

    check-cast p1, Ljava/lang/String;

    check-cast p2, Ljava/lang/String;

    invoke-virtual {v0, p1, p2}, Lorg/apache/tools/tar/TarInputStream;->lambda$applyPaxHeadersToCurrentEntry$0$TarInputStream(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
