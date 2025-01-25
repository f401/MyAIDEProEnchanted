.class Lorg/xutils/http/cookie/DbCookieStore$1;
.super Ljava/lang/Object;
.source "DbCookieStore.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/xutils/http/cookie/DbCookieStore;-><init>(Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final this$0:Lorg/xutils/http/cookie/DbCookieStore;


# direct methods
.method constructor <init>(Lorg/xutils/http/cookie/DbCookieStore;)V
    .registers 2

    .line 37
    iput-object p1, p0, Lorg/xutils/http/cookie/DbCookieStore$1;->this$0:Lorg/xutils/http/cookie/DbCookieStore;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .line 40
    iget-object v0, p0, Lorg/xutils/http/cookie/DbCookieStore$1;->this$0:Lorg/xutils/http/cookie/DbCookieStore;

    invoke-static {v0}, Lorg/xutils/http/cookie/DbCookieStore;->access$000(Lorg/xutils/http/cookie/DbCookieStore;)V

    .line 41
    return-void
.end method
