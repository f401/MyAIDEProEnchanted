.class public final synthetic Lorg/apache/tools/ant/types/resources/URLResource$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/apache/tools/ant/types/resources/URLResource$ConnectionUser;


# instance fields
.field public final f$0:Lorg/apache/tools/ant/types/resources/URLResource;


# direct methods
.method public synthetic constructor <init>(Lorg/apache/tools/ant/types/resources/URLResource;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/tools/ant/types/resources/URLResource$$ExternalSyntheticLambda0;->f$0:Lorg/apache/tools/ant/types/resources/URLResource;

    return-void
.end method


# virtual methods
.method public final useConnection(Ljava/net/URLConnection;)J
    .registers 4

    iget-object v0, p0, Lorg/apache/tools/ant/types/resources/URLResource$$ExternalSyntheticLambda0;->f$0:Lorg/apache/tools/ant/types/resources/URLResource;

    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/types/resources/URLResource;->lambda$getLastModified$0$URLResource(Ljava/net/URLConnection;)J

    move-result-wide v0

    return-wide v0
.end method
