.class Lcom/s1243808733/aide/application/App$3;
.super Ljava/lang/Object;
.source "App.java"

# interfaces
.implements Ljavax/net/ssl/HostnameVerifier;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/s1243808733/aide/application/App;->initX()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final this$0:Lcom/s1243808733/aide/application/App;


# direct methods
.method constructor <init>(Lcom/s1243808733/aide/application/App;)V
    .registers 2

    .line 166
    iput-object p1, p0, Lcom/s1243808733/aide/application/App$3;->this$0:Lcom/s1243808733/aide/application/App;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public verify(Ljava/lang/String;Ljavax/net/ssl/SSLSession;)Z
    .registers 3

    const/4 p1, 0x1

    return p1
.end method
