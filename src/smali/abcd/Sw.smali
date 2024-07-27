.class Labcd/Sw;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/apache/http/conn/params/ConnPerRoute;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Labcd/Ww;->v5()Lorg/apache/http/client/HttpClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final j6:Labcd/Ww;


# direct methods
.method constructor <init>(Labcd/Ww;)V
    .registers 2

    iput-object p1, p0, Labcd/Sw;->j6:Labcd/Ww;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getMaxForRoute(Lorg/apache/http/conn/routing/HttpRoute;)I
    .registers 3

    const/16 v0, 0xa

    return v0
.end method
