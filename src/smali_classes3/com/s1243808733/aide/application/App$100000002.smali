.class Lcom/s1243808733/aide/application/App$100000002;
.super Ljava/lang/Object;
.source "App.java"

# interfaces
.implements Ljavax/net/ssl/HostnameVerifier;


# instance fields
.field private final this$0:Lcom/s1243808733/aide/application/App;


# direct methods
.method constructor <init>(Lcom/s1243808733/aide/application/App;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/s1243808733/aide/application/App$100000002;->this$0:Lcom/s1243808733/aide/application/App;

    return-void
.end method

.method static access$0(Lcom/s1243808733/aide/application/App$100000002;)Lcom/s1243808733/aide/application/App;
    .registers 2

    iget-object v0, p0, Lcom/s1243808733/aide/application/App$100000002;->this$0:Lcom/s1243808733/aide/application/App;

    return-object v0
.end method


# virtual methods
.method public verify(Ljava/lang/String;Ljavax/net/ssl/SSLSession;)Z
    .registers 4
    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 158
    const/4 v0, 0x1

    return v0
.end method
