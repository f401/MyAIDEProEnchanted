.class Lorg/xutils/http/HttpManagerImpl$DefaultSyncCallback;
.super Ljava/lang/Object;
.source "HttpManagerImpl.java"

# interfaces
.implements Lorg/xutils/common/Callback$TypedCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/xutils/http/HttpManagerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DefaultSyncCallback"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lorg/xutils/common/Callback$TypedCallback",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private final resultType:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<TT;>;"
        }
    .end annotation
.end field

.field final this$0:Lorg/xutils/http/HttpManagerImpl;


# direct methods
.method public constructor <init>(Lorg/xutils/http/HttpManagerImpl;Ljava/lang/Class;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<TT;>;)V"
        }
    .end annotation

    .line 80
    iput-object p1, p0, Lorg/xutils/http/HttpManagerImpl$DefaultSyncCallback;->this$0:Lorg/xutils/http/HttpManagerImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    iput-object p2, p0, Lorg/xutils/http/HttpManagerImpl$DefaultSyncCallback;->resultType:Ljava/lang/Class;

    .line 82
    return-void
.end method


# virtual methods
.method public getLoadType()Ljava/lang/reflect/Type;
    .registers 2

    .line 86
    iget-object v0, p0, Lorg/xutils/http/HttpManagerImpl$DefaultSyncCallback;->resultType:Ljava/lang/Class;

    return-object v0
.end method

.method public onCancelled(Lorg/xutils/common/Callback$CancelledException;)V
    .registers 2

    .line 102
    return-void
.end method

.method public onError(Ljava/lang/Throwable;Z)V
    .registers 3

    .line 97
    return-void
.end method

.method public onFinished()V
    .registers 1

    .line 107
    return-void
.end method

.method public onSuccess(Ljava/lang/Object;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 92
    return-void
.end method
